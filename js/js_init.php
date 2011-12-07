<?php
    header("Content-Type: application/x-javascript");
    include("../top.php");
    $aspect_sets = $myModel->getAspectSets($access);
    $commands = $myModel->getCommands($access);
    $css_rules = $user->getCssRules();
?>

var asgConfig = {
    initialized: false,
    cmd_history: ['/zero','/bye','/chat'],
    history_index: 1,

    // this is to decrease number of requests when loading multiple
    // aspects at once
    renderMultiple: function(cmds){

        var urlString = 'content/output_multiple.php?';
        for(var x in cmds){
            y = cmds[x];
            urlString = urlString+'cmds[]='+y+'&';           
        }
        urlString = urlString.substring(0,urlString.length-1);
        $.ajax({
                url: urlString,
                success: function(data){ 
                   $('#all_aspects').html('');
                   $('#all_aspects').prepend(data); 
                }
              });
    },
   
    updateArb: function(xprompt, xdefault, table, column, row_id){
       var xvalue = window.prompt(xprompt,xdefault);
       if (xvalue != '' && xvalue != null) {
         $.post("database/update.php", { table: table, column: column, row_id: row_id, value: xvalue }, function (){  });
     
       }
    },

    submitLink: function(url, title){
        $.post('links/submit_link.php', { url: url, title: title });
    },

    simcom: function(msg){
        cmsg = $('#chatmsg');
        msg_temp = cmsg.val();
        cmsg.val(msg);
        var e = jQuery.Event("keyup");
        e.keyCode = 13;
        cmsg.trigger(e);
        cmsg.val(msg_temp);
    },

    removeAspectByCmd: function(cmd){
        var aspects = asgConfig.getAspects();
        if(aspects.hasOwnProperty(cmd)){
            asgConfig.removeAspect(aspects[cmd]);
        }
    },

    renderAspectByCmd: function(cmd){
        var aspects = asgConfig.getAspects();
        if(aspects.hasOwnProperty(cmd)){
            div_name = aspects[cmd].div;
            div = $('#'+div_name);
            if(div.is(':visible')){ asgConfig.removeAspectByCmd(cmd); }
            asgConfig.renderAspect(aspects[cmd]);
        }
    },

    executeCommand: function(msg){
<?php
        foreach($commands as $com){
            $key = $com->get('keyword');
            $doc_id = $com->get('document_id');
            $doc = new Document($doc_id);
            $fun = $doc->get('content');

            print "if(msg.indexOf('/$key')==0){";
            print $fun;
            print "}";
        }
?>        
    },

    getUserId: function () {
        return <?=$uid?>;
    },

    getAspects: function () {
        var returnJSON =
<?php
        print "{";
        $ret = '';
        foreach($aspects as $asp){        
            $id = $asp->get('id'); 
            $command = $asp->get('command');
            $fun = $asp->get('function'); 
            $div = $asp->get('div');
            $pc = $asp->get('pref_column');
            $tit = $asp->get('title');
            $desc = $asp->get('desc');
            $css = $asp->get('css_class');
            $sv = $asp->get('session_var');
            $on = $_SESSION[$sv];
            $ret .= "\"$command\": { \"fun\": \"$fun\", \"div\": \"$div\", \"pref\": \"$pc\", \"title\": \"$tit\", \"desc\": \"$desc\", \"css\": \"$css\", \"on\": \"$on\" },";
        }
        $ret = substr($ret,0,-1);
        echo $ret;
        $ret = null;
        print "};";
?>
        return returnJSON;


    },

    renderAspect: function (aspect){
            var allasps = $('#all_aspects');
            var div = aspect.div;
            var fun = aspect.fun;
            var css = aspect.css;
            var pref = aspect.pref;
            var exists = $('#'+div).length;

            if(asgConfig.initialized){
                asgConfig.onPreference(pref);
            }
            if(exists){ $('#'+div).remove(); }
   
            allasps.append('<div id=\"'+div+'\" class=\"'+css+'\"></div>');

            var this_div = $('#'+div);
            this_div.append('<div id=\"min_'+div+'\" class=\"rollbar\"></div>');

            var min_div = $('#min_'+div);
            this_div.append('<div id=\"'+div+'_full\"></div>');

            var full_div = $('#'+div+'_full');
            full_div.load("content/output.php?oid="+fun+"&always=true", function (){
                d = this.parentNode.id;
                if(asgConfig.initialized){
                    moi = $('#'+d);
                    if(moi.css('position')!='fixed'){
                        $.scrollTo(moi, 800, { axis: 'y', offset: { top: -30, left: 0 } });
                    }
                }
            });

            min_div.append('<div id=\"x_'+div+'\" class=\"x\">&#10006;</div>');
            x_div = $('#x_'+div);
            x_div.click(function (event) { 
                var p = this.parentNode.parentNode.id; 
                $('#'+p).remove();
                asgConfig.offPreference('show_'+p);//this is a kludge
                event.stopPropagation(); 
            });
                
            min_div.click(function(){ 
                var p = this.parentNode.id; 
                $('#'+p+'_full').toggle(); 
            });

        },

    removeAspect: function (aspect){
        div = aspect.div;
        pref = aspect.pref;
        $('#'+div).remove();
        asgConfig.offPreference(pref);
    },

    offPreference: function(pref){
        $.post("aspects/off_preference.php", { pref: pref } );
    },

    onPreference: function(pref){
        $.post("aspects/on_preference.php", { pref: pref } );
    },

    loadCssRules: function(){
<?php
   if(is_array($css_rules)){
    foreach($css_rules as $rule){

        $css_ident = $rule->get('css_ident');
        $attr = $rule->get('attr');
        $value = addslashes($rule->get('value'));

?>
        $('<?=$css_ident?>').css('<?=$attr?>','<?=$value?>');
<?php 
     }
    }

 ?>
    },
    
    loadAspectSet: function(aspect_set_id){
        asgConfig.initialized = false; //so we don't scroll to each aspect we load
        asgConfig.zeroAspects();
        $.get('aspects/load_aspect_set.php', { aspect_set_id: aspect_set_id });
<?php
        foreach($aspect_sets as $set){
            $set_id = $set->get('id');
            $set_name = $set->get('name');
            $cmds = $set->getCmds();
            print "if(aspect_set_id == $set_id){";
            if($cmds == null){
                print "asgConfig.zeroAspects(); }";
            }else{
                foreach($cmds as $cmd){
                    $ret .= "'$cmd',";
                }
                $ret = substr($ret, 0, -1);
             
                print "asgConfig.renderMultiple([$ret]); }";
                $ret = null;
            }
        }
?>
    },

    zeroAspects: function() {
            $('#all_aspects').remove();
            $('body').append('<div id="all_aspects"></div>')
        
    }

};


