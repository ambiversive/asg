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
    $user->updateLastActive();
    $msg = $_POST["msg"];
    $mod = $_POST["mod"];

    $access = $_SESSION['session_accessLevel'];
    $chats = $myModel->getChats($access);
    foreach($chats as $chat){
        $chat_id = $chat->get('id');
        $chat_mod = $chat->get('mod_char');

        if($mod == $chat_mod){
            $msg = $msg;           
            $chat_access = $chat->get('access');
            if($access <= $chat_access){
                $chat->submit($user,$msg,0);
            }
        }
    }
