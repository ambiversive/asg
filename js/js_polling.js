var asgPoller = {
    
   lpOnComplete: function(response) {
        last_msg = response.id;
        user = response.user;
        msg = response.msg;
        stamp = response.stamp;
        is_emote = response.is_emote;
        if($('#chat').length>0){    
            if(is_emote==="0"){
                $('#chat_full').append("<div class=\"msg_env\"><div class=\"timestamp\">"+stamp+"</div><div class=\"username\">"+user+"&gt;&nbsp;</div><div class=\"msg\">"+msg+"</div></div>");
            }else if(is_emote==="1"){
                $('#chat_full').append("<div class=\"msg_env\"><div class=\"timestamp\">"+stamp+"</div><div class=\"username\">"+user+"&nbsp;</div><div class=\"msg\">"+msg+"</div></div>");
            }
        }

        document.getElementById("chat_full").scrollTop = document.getElementById("chat_full").scrollHeight;
        asgPoller.lpStart(response.id);
    },

    lpStart: function(last_msg) {
        $.post('user/update_lastactive.php');
        $.ajax({
            type: "POST",
            url: "chat/chat_poll.php",
            data: { last_msg: last_msg },
            dataType: "json",
            timeout: 25000, // in milliseconds
            success: asgPoller.lpOnComplete,
            error: function(request, status, err) {
                asgPoller.lpStart(last_msg);
            }
        });

    },

    apStart: function() {
        $.ajax({
            type: "POST",
            url: "aspects/aspect_poll.php",
            dataType: "json",
            data: { uid: asgConfig.getUserId() },
            timeout: 25000, // in milliseconds
            success: asgPoller.apOnComplete
        });

    },

    apOnComplete: function(response) {
        for(var asp in response) { 
           asgConfig.renderAspect(response[asp]);
           asgConfig.onPreference(response[asp].pref);
        }
        asgPoller.apStart();
    }
}
