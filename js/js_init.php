<?php
    include("../top.php");
    $uid = $_SESSION['session_userid'];
    $access = $_SESSION['session_accessLevel'];

    $css_rules = $user->getCssRules(); 
    $aspects = $myModel->getAspects($access);
    $commands = $myModel->getCommands($access);
?>

var asgConfig = {
    initialized: false,

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
                        $.scrollTo(moi, 800 );
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
    }

};


