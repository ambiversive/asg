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
            Chat class. The modulator is used to specify which chat
            receives the message.
    */
    include_once("../top.php");

    $msg = $_POST["msg"];
    $mod = $_POST["mod"];

    $access = $_SESSION['session_accessLevel'];
    $chats = $myModel->getChats($access);
    foreach($chats as $chat){
        $chat_id = $chat->get('id');
        $mod = $chat->get('modulator');

        if($mod == $chat_mod){
            
            $chat = new Chat($chat_id);
            $chat_access = $chat->get('access');
            if($access <= $chat_access){
                $chat->submit($user,$msg,0);
            }
        }
    }
