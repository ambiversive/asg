<?php
/*
    File: submit_emote.php
    Author: ambiversive

    Related files:
        ../classes/core/Chat.php
        ../classes/core/SiteModel.php

    Description: 

        This file submits an emote to the main chat.
        Todo: submit emotes to other chats.
*/

    include_once("../top.php");

    $msg = $_POST["msg"];
    $chat = $myModel->getMainChat();
    $chat->submit($user,$msg,1);
 
