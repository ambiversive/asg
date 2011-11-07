<?php
    /*
        File: submit_chat.php
        Author: ambiversive

        Related files:
               ../js/js_init.php
               ../js/js_core.php
               ../classes/core/Chat.php
               ../classes/core/ChatMessage.php
        Description:

            This file sends data from the client to the 
            Chat class. If the message has an exclamation 
            mark as the first character, the message is sent
            to the admin chat, otherwise it is sent to the main 
            chat. This is hard coded at the moment but should be 
            handled automatically eventually.
    */
    include_once("../top.php");
    $msg = $_POST["msg"];
    $x = strpos($msg, '!');
    if($x === 0 && $access == 0){
        $msg = substr($msg, 1); 
        $chat = new Chat(2);
        $chat->submit($user,$msg,0);

    }else{

        $chat = $myModel->getMainChat();
        $chat->submit($user,$msg,0);
    }
