<?php
    include("../top.php");
    $css_rules = $user->getCssRules(); 
    $aspects_table = $config['tables']['aspects_table'];
    $aspect_preferences_table = $config['tables']['aspect_preferences_table'];
    $uid = $_SESSION['session_userid'];
    $access = $_SESSION['session_accessLevel'];
    $q = "SELECT * FROM $aspects_table WHERE access >= '$access' ORDER BY id";
    $sth = $dbh->prepare($q);
    $sth->execute(array());
    $size = $sth->rowCount();
    while($row = $sth->fetch()){
        $id = $row['id']; 
        $command = $row['command'];
        $fun = $row['function']; 
        $div = $row['div'];
        $pc = $row['pref_column'];
        $tit = $row['title'];
        $desc = $row['desc'];
        $css = $row['css_class'];
        $sv = $row['session_var'];
        $commands[] = $command;
        $funs[$command] = $fun;
        $divs[$command] = $div;
        $pcs[$command] = $pc;
        $tits[$command] = $tit;
        $descs[$command] = $desc;
        $csss[$command] = $css;
        $ison[$command] = $_SESSION[$sv];
    }

    $q = "SELECT * FROM commands WHERE access>= '$access'";
    $sth = $dbh->prepare($q);
    $sth->execute(array());
    while($row = $sth->fetch()){
        $cmd = $row['keyword'];
        $doc_id = $row['document_id'];
        $doc_q = "SELECT content FROM documents WHERE id=?";
        $doc_sth = $dbh->prepare($doc_q);
        $doc_sth->execute(array($doc_id));
        $doc_row = $doc_sth->fetch();
        $cmds[$cmd] = $doc_row['content'];
        
    }
?>

var asgConfig = {

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
        foreach($cmds as $key => $fun){
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
        foreach($commands as $cmd){
            $fun = $funs[$cmd];
            $div = $divs[$cmd];
            $pc = $pcs[$cmd];
            $tit = $tits[$cmd];
            $desc = $descs[$cmd];
            $css = $csss[$cmd];
            $on = $ison[$cmd];
            $ret .= "\"$cmd\": { \"fun\": \"$fun\", \"div\": \"$div\", \"pref\": \"$pc\", \"title\": \"$tit\", \"desc\": \"$desc\", \"css\": \"$css\", \"on\": \"$on\" },";
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
                //$.scrollTo($('#'+d), 800 );
            });

            min_div.append('<div id=\"x_'+div+'\" class=\"x\">X</div>');
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


