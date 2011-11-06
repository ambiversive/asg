<?php
    include("../top.php");
    $q = "SELECT id FROM chats WHERE access >= ?";
    $sth = $dbh->prepare($q);
    $sth->execute(array($access));
    while($row = $sth->fetch()){
        $chats[] = $row['id'];
    }
?>
var asgPoller = {
<?php
    foreach($chats as $chat){
        print "last_msg_$chat: 1,";
    }
?>
    
   lpOnComplete: function(response) {
        last_msg = response.id;
        user = response.user;
        msg = response.msg;
        stamp = response.stamp;
        is_emote = response.is_emote;
        output_element = response.output_element;
        chat_id = response.chat_id;
<?php
    foreach($chats as $chat){
        print "if(chat_id == $chat){ asgPoller.last_msg_$chat = last_msg; }"; 
    }
?>
        if($('#'+output_element).length>0){    
            if(is_emote==="0"){
                $('#'+output_element).append("<div class=\"msg_env\"><div class=\"timestamp\">"+stamp+"</div><div class=\"username\">"+user+"&gt;&nbsp;</div><div class=\"msg\">"+msg+"</div></div>");
            }else if(is_emote==="1"){
                $('#'+output_element).append("<div class=\"msg_env\"><div class=\"timestamp\">"+stamp+"</div><div class=\"username\">"+user+"&nbsp;</div><div class=\"msg\">"+msg+"</div></div>");
            }
        document.getElementById(output_element).scrollTop = document.getElementById(output_element).scrollHeight;
        }

        asgPoller.lpStart(
<?php
    foreach($chats as $chat){
        $ret .= "asgPoller.last_msg_$chat,";
    }
    $ret = substr($ret,0,-1);
    print $ret;
    $ret = null;
?>);
    },

    lpStart: function(
<?php
    foreach($chats as $chat){
       $ret .= "last_msg_$chat,";
    }
    $ret = substr($ret,0,-1);
    print $ret;
    $ret = null;
?>
) {
        $.post('user/update_lastactive.php');
        $.ajax({
            type: "POST",
            url: "chat/chat_poll.php",
            data: {  
<?php 
    foreach($chats as $chat){ 
        $ret .= "last_msg_$chat: last_msg_$chat,"; 
    }
    $ret = substr($ret,0,-1);
    print $ret . ", uid: $uid}";
    $ret = null;  
?>,
            dataType: "json",
            timeout: 25000, 
            success: asgPoller.lpOnComplete,
            error: function(request, status, err) {
                asgPoller.lpStart(
<?php
    foreach($chats as $chat){
       $ret .= "asgPoller.last_msg_$chat,";
    }
    $ret = substr($ret,0,-1);
    print $ret;
    $ret = null;
?>);
            }
        });

    },

    apStart: function() {
        //Notifier.success('aspect polling start');
        $.ajax({
            type: "POST",
            url: "aspects/aspect_poll.php",
            dataType: "json",
            data: { uid: asgConfig.getUserId() },
            timeout: 25000, // in milliseconds
            success: asgPoller.apOnComplete,
            error: function(request, status, err){
                asgPoller.apStart();
            }
        });

    },

    apOnComplete: function(response) {
        //Notifier.success('aspect polling finish');
        for(var asp in response) {
           asgConfig.renderAspect(response[asp]);
           asgConfig.onPreference(response[asp].pref);
        }
        asgPoller.apStart();
    }

}
