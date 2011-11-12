<?php
    include("../top.php");
    $chats = $myModel->getChats($access);
    $num_chats = count($chats);
?>
        $(document).ready(runScript);
    
        function runScript(){
           var aspects = asgConfig.getAspects();
           asgPoller.lpStart(<?php for($i = 0; $i < $num_chats; $i++){ $ret .=  "1,"; } $ret = substr($ret, 0, -1); print $ret; ?>);
           asgPoller.apStart();
           asgConfig.loadCssRules();
           for ( var asp in aspects ) {
               var on = aspects[asp].on;
               if(on == '1'){
                   asgConfig.renderAspect(aspects[asp]); 
               }
           }
           modulator = $('#modulator');    
           chatmsg = $('#chatmsg');
           modval = modulator.val();
           chatmsg.focus();
           modulator.focus(function(event){
	       this.select();
           });
           modulator.keyup(function(event){
               modval = $('#modulator').val();
               $.post('user/set_modulator.php', { modulator: modval });
               if(event.keyCode == 39){
                   chatmsg.focus();
               }else if(event.keyCode == 40){
                   $(this).val('!');
               }else if(event.keyCode == 37){
                   $(this).val('?');
               }
 
           });
           chatmsg.keyup(function(event) {
               asgConfig.initialized = true;
               if(event.keyCode == 37){
                   modulator.focus();
               }else if(event.keyCode == 13){ 
                   msg = chatmsg.val();
                   mod = modulator.val();
                   index = msg.indexOf('/');
                   if(index==0){
                       cmd = msg.slice(1);
                       if(aspects.hasOwnProperty(cmd)){
                          ad = aspects[cmd].div;
                          pref = aspects[cmd].pref;
                          asp_div = $('#'+ad);
                          if(asp_div.is(':visible')){
                              asgConfig.removeAspect(aspects[cmd]);
                              
                          }else{
                              asgConfig.renderAspect(aspects[cmd]);
                              asgConfig.onPreference(pref);
                          }
                       }else{
                           asgConfig.executeCommand(msg);
                       }
                   }else if(mod == '?'){
                       smsg = msg.replace(' ', '+');
                       asgConfig.zeroAspects();
                       window.location='index.php?query='+smsg;
                   }else{
                       $.post("chat/submit_chat.php", { msg: msg , mod: mod} );
                   }
                   chatmsg.val('');
               }
 
           });
           
        }
