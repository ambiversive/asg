
        $(document).ready(runScript);
    
        function runScript(){
           
           var aspects = asgConfig.getAspects();
           asgPoller.lpStart(1);
           asgPoller.apStart();
           asgConfig.loadCssRules();
           for ( var asp in aspects ) {
                var on = aspects[asp].on;
                if(on == '1'){
                   asgConfig.renderAspect(aspects[asp]); 
               }
           }
         
           chatmsg = $('#chatmsg');
           chatmsg.focus();
           chatmsg.keyup(function(event) {
               if(event.keyCode == 13){ 
                   msg = chatmsg.val();
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
                   }else{
                       $.post("chat/submit_chat.php", { msg: msg } );
                   }
                   $('#lastmsg').val(msg);
                   chatmsg.val('');
               }
             if(event.keyCode == 38){
                 $('#chatmsg').val($('#lastmsg').val());
             }
 
           });
        }
