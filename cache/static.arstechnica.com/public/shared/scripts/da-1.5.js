/*	CondeNet: AdLoader v.1.5 (2/2009)
	By: esmiling@condenet.com
	Documentation: http://wiki.conde-dev.com:8081/display/prod/DOM+Based+Advertisement+Loading+Technique
*/

/* NAMESPACES USED */
cnp = window.cnp || {};
cnp.ad = {};
cnp.util = {};

/* CONSTANTS */
cnp.ad.refreshable = 1;
cnp.ad.standard = 2;
cnp.ad.maxResizeAttempts = 10;
cnp.ad.containerClassName = "adFrameContainer";
cnp.ad.resizeErrorMargin = 40;
cnp.ad.tilingDelay = 150;

/*	UTILITY FUNCTIONS */
cnp.util.randomNumber = function (min, max) {
	return Math.floor(Math.random() * (max - min)) + min;
};
cnp.util.buildURL = function (args) {
	var uri = args.uri;
	var parameters = args.parameters;
	var seperator = args.seperator || '&';
	var joiner = args.joiner || '?';
	var retString = uri + (uri.indexOf(joiner) == -1 ? joiner : seperator);
	for (var i = 0; i < parameters.length; i++) {
		for (var param in parameters[i]) {
			if (parameters[i].hasOwnProperty(param)) {
				retString += param + '=' + parameters[i][param] + seperator;
			}
		}
	}
	if (retString.lastIndexOf(seperator) == retString.length - 1) {
		retString = retString.slice(0, retString.length - 1);
	}
	return retString;
};
cnp.util.parseParams = function (str, sep) {
	var parameters = [ ], paramPairs = [ ];
	var separator = sep || '&';
	paramPairs = str.split(sep);
	for (var i = 0; i < paramPairs.length; i++) {
		if (paramPairs[i].indexOf('=') != -1) {
			var pair = paramPairs[i].split('=');
			var param = { };
			param[pair[0]] = pair[1];
			parameters.push(param);
		}
	}
	return parameters;
};
/* begin node cleanup functions */
cnp.util.CleanerNode = function (element, eFirstChild, eLastChild) {
	this.element = element;
	this.eFirstChild = eFirstChild;
	this.eLastChild = eLastChild;
};
cnp.util.CleanerNode.prototype.validate = function (){
	if(this.getChild('firstChild') != this.eFirstChild){
		this.sanitize('firstChild');
	}
	if(this.getChild('lastChild') !=this.eLastChild){
		this.sanitize('lastChild');
	}
};
cnp.util.CleanerNode.prototype.sanitize = function (position) {
	var element = this.element[position];
	var expectedNode = (position == 'lastChild' ? this.eLastChild : this.eFirstChild);
	while(element != expectedNode){
		this.element.removeChild(element);
		delete element;
		element = this.element[position]
	}
};
cnp.util.CleanerNode.prototype.getChild = function (position) {
	return cnp.util.getChild(this.element, position);
};
cnp.util.getChild = function (parent, position) {
	//this function gets the first/last child of a node excluding non-element nodes
	var element = parent[position];
	var sibling = (position == 'lastChild' ? 'previousSibling': 'nextSibling');
	while(element.nodeType != 1){
		element = element[sibling];
	}
	return element;
};
/*end node cleanup functions*/


/*	AD MANAGER 
	Manages ord, tilecount and sequential refreshes
*/
cnp.ad.manager = new function () {
	this.bodyCleanerNode = {};
	this.headCleanerNode = {};
	this.isInit = false;
	var refreshableAds = [ ], _ord, _tileCount =  0;
	function randomizeOrd() {
		_ord = cnp.util.randomNumber(10000000000000000, 99999999999999999);
	}
	randomizeOrd();
	this.addRefreshableAd = function (adUnit) {
		refreshableAds.push(adUnit);
	};
	this.reloadAds = function () {
		//this.sanitizeDocument();
		randomizeOrd();
		var i=-1, clearer;
		clearer = setInterval(
			function(){
				if((i+1) < _tileCount){
					i++;
					try {
						refreshableAds[i].load();
					} catch(e) {
						// pass
					}
				} else {
					clearInterval(clearer);
				}
			}, cnp.ad.tilingDelay);
	};
	this.sanitizeDocument = function(){ //clean up after previously loaded ads
		this.headCleanerNode.validate();
		this.bodyCleanerNode.validate();
		for (var i = 0; i < refreshableAds.length; i++) {
			refreshableAds[i].CleanerNode.validate();
		}
	};
	this.getTileCounter = function () {
		return ++_tileCount;
	};
	this.getOrd = function () {
		return _ord;
	};
	this.init = function () {
		this.isInit = true;
		var bodyNode = document.body || document.documentElement; //parent
		var headNode = document.getElementsByTagName('HEAD')[0];
		this.headCleanerNode = new cnp.util.CleanerNode(headNode, cnp.util.getChild(headNode, 'firstChild'), cnp.util.getChild(headNode, 'lastChild'));
		this.bodyCleanerNode = new cnp.util.CleanerNode(bodyNode, cnp.util.getChild(bodyNode, 'firstChild'), cnp.util.getChild(bodyNode, 'lastChild'));
		this.reloadAds();
	};
}();
if (document.addEventListener) {
	document.addEventListener("DOMContentLoaded", function(){cnp.ad.manager.init();}, false);
}
else if (window.attachEvent){
	window.attachEvent('onload', function(){cnp.ad.manager.init();});
}

/*	DART PROPERTIES 
	Stores global dart information/parameters applied to all placements
*/
cnp.ad.dart = new function () {
	var _site, _zone, _url, _parameters;
	_url = "http://ad.doubleclick.net/adj";
	_parameters = [ ];
	this.getParameters = function () {
		return _parameters; 
	};
	this.getUrl = function () {
		return _url; 
	};
	this.getSite = function () {
		return _site; 
	};
	this.getZone = function () {
		return _zone; 
	};
	this.getRequestURI = function () {
		return this.getUrl() + '/' + this.getSite() + '/' + this.getZone();
	};
	this.setSite = function (site) {
		_site = site; 
	};
	this.setZone = function (zone) {
		_zone = zone; 
	};
	this.addParameter =  function (obj) {
		_parameters.push(obj); 
	};
	this.addParameterString =  function (str) {
		var params = cnp.util.parseParams(str, ';');
		_parameters = _parameters.concat(params);
	};
}();

/*	dartAdUnit simple factory */
cnp.ad.create = function (type, useTarget) {
	var dartAdUnit;
	if (type == cnp.ad.refreshable) {
		dartAdUnit = new cnp.ad.RefreshableDartAdUnit(useTarget);
	} else {
		dartAdUnit = new cnp.ad.DartAdUnit();
	}
	dartAdUnit.addParameter({"abr": "!webtv"});
	dartAdUnit.addParameters(cnp.ad.dart.getParameters());
	dartAdUnit.addParameter({"tile": cnp.ad.manager.getTileCounter()});
	return dartAdUnit;
};

/*	STANDARD DART AD UNIT (cnp.ad.standard)
	Provides Dart URL construction methods, and standard/legacy loading technique (document.write)
*/
cnp.ad.DartAdUnit = function () {
	this.parameters = [ ];
};
cnp.ad.DartAdUnit.prototype.addParameter = function (obj) {
	this.parameters.push(obj);
};
cnp.ad.DartAdUnit.prototype.addParameters = function (parameters) {
	this.parameters = this.parameters.concat(parameters);
};
cnp.ad.DartAdUnit.prototype.addParameterString = function (str) {
	var params = cnp.util.parseParams(str, ';');
	this.addParameters(params);
};
cnp.ad.DartAdUnit.prototype.getParameter = function (name) {
	for (var i = 0; i < this.parameters.length; i++) {
		if (name in this.parameters[i]) {
			return this.parameters[i][name];
		}
	}
};
cnp.ad.DartAdUnit.prototype.setParameter = function (name, value) {
	var param = {};
	param[name] = value;
	this.removeParameter(name);
	this.addParameter(param);
};
cnp.ad.DartAdUnit.prototype.removeParameter = function (name) {
	for (var i = 0; i < this.parameters.length; i++) {
		if (this.parameters[i][name]) {
			this.parameters.splice(i, 1);
		}
	}
};
cnp.ad.DartAdUnit.prototype.load = function () {
	document.write('<scr' + 'ipt language="JavaScript 1.5" type="text/javascript" src="' + this.getDartURL() + '"></scr' + 'ipt>');
};
cnp.ad.DartAdUnit.prototype.getDartURL = function () {
	this.setParameter('ord', cnp.ad.manager.getOrd());
	var requestURI = cnp.ad.dart.getRequestURI();
	var dartURL = cnp.util.buildURL({
		uri: requestURI, 
		parameters: this.parameters,
		seperator: ';',
		joiner: ';'
	});
	return dartURL;
};

/*	REFRESHABLE DART AD UNIT (cnp.ad.refreshable): extends cnp.ad.standard  
	Extends standard DartAdUnit, overrides load method (required for refresh behavior) 
*/
cnp.ad.RefreshableDartAdUnit  = function (useTarget) {
	this.base = cnp.ad.DartAdUnit;
	this.base();
	this.useTarget = useTarget;
	this.CleanerNode = {};
	this.target = this.makeTarget();
	this.iFrame = this.makeIframe();
	cnp.ad.manager.addRefreshableAd(this);
};
cnp.ad.RefreshableDartAdUnit.prototype = new cnp.ad.DartAdUnit();
cnp.ad.RefreshableDartAdUnit.prototype.constructor = cnp.ad.RefreshableDartAdUnit;
cnp.ad.RefreshableDartAdUnit.prototype.load = function () {
	var iFrameURL = cnp.util.buildURL({
						uri: cnp.ad.loaderFrameSrc,
						parameters: [{"req": this.getDartURL()}]
					});
	try {
		this.getIframeDocument().location.replace(iFrameURL);
	} catch(e) {
		// pass
	}
};
cnp.ad.RefreshableDartAdUnit.prototype.makeTarget = function () {
	var target, targetId;
	targetId = 'dartTarget_' + cnp.util.randomNumber(1000, 9999);
	document.write('<div id="' + targetId + '"></div>');
	target = document.getElementById(targetId);
	return target;
};
cnp.ad.RefreshableDartAdUnit.prototype.makeIframe = function (frameId) {
	var currentObject = this;
	var iFrameContainer = document.createElement('DIV');
	var iFrame = document.createElement('IFRAME');
	iFrameContainer.className = cnp.ad.containerClassName;
	iFrame.src = cnp.ad.emptyFrameSrc + '?cb=' + Math.floor(Math.random()*100000);
	iFrame.width = iFrame.height = 1;
	iFrame.frameBorder = iFrame.border = 0;
	iFrame.scrolling = 'no';
	iFrameContainer.appendChild(iFrame);
	this.target.parentNode.insertBefore(iFrameContainer, this.target);
	this.CleanerNode = new cnp.util.CleanerNode(iFrameContainer, iFrame, iFrame);
	if (iFrame.readyState) { //ie
		iFrame.onreadystatechange = function () {
			if(iFrame.readyState == 'complete'){
				currentObject.loadHandler();
			}
		};
	} else {
		iFrame.onload = function () {
			currentObject.loadHandler();
		};
	}
	return iFrame;
};
cnp.ad.DartAdUnit.prototype.loadHandler = function () {
	if(this.getIframeDocument().location.href.indexOf(cnp.ad.emptyFrameSrc) != -1){
		return;
	}
	if(this.useTarget){
		this.refreshTarget();
	}else{
		var count = 0, dartAdUnit = this;
		var outputSize = dartAdUnit.resizeFrame();
		if(!outputSize){
			var resizeTimer = setInterval(
				function(){
					if(count < cnp.ad.maxResizeAttempts){
						outputSize = dartAdUnit.resizeFrame();
						count++;
						if(outputSize > 1){
							clearInterval(resizeTimer);
						}
					}else{
						clearInterval(resizeTimer);
					}
				}, 500);
		}
	}
};
cnp.ad.DartAdUnit.prototype.refreshTarget = function () {
	var iFrameDoc = this.getIframeDocument();
	var iFrameBody = iFrameDoc.body || iFrameDoc.documentElement;
	this.target.innerHTML = iFrameBody.innerHTML;
};
cnp.ad.DartAdUnit.prototype.getIframeDocument = function () {
    try{
	  var doc = (this.iFrame.contentDocument || this.iFrame.contentWindow.document || this.iFrame.document);
    } catch(e) { return null; }
	return doc;
};
cnp.ad.RefreshableDartAdUnit.prototype.resizeFrame = function () {
	var szParam, expectedWidth, expectedHeight, iframeDocument, frameWidth, frameHeight;
	function getFrameHeight() {
		var newHeight, measuredHeight;
        try{
		var bottomDiv = iframeDocument.getElementById('bottom_div');
        } catch(e){ return null; }
		measuredHeight = (bottomDiv ? measuredHeight = bottomDiv.offsetTop : iframeDocument.body.scrollHeight);
		if (expectedHeight && measuredHeight != expectedHeight) {
			newHeight = (Math.abs(measuredHeight - expectedHeight) < cnp.ad.resizeErrorMargin ? expectedHeight : measuredHeight);
		} else {
			newHeight = measuredHeight;
		}
		return newHeight;
	}
	function getFrameWidth() {
		return expectedWidth;
	}
	szParam = this.getParameter('sz');
	if (szParam) {
		expectedWidth = szParam.split('x')[0];
		expectedHeight = szParam.split('x')[1];
	}
	iframeDocument = this.getIframeDocument();
	frameWidth = getFrameWidth();
	frameHeight = getFrameHeight();

	this.iFrame.width = this.iFrame.style.width = frameWidth + "px";
	this.iFrame.height = this.iFrame.style.height = frameHeight + "px";
	
	return frameHeight;
};

