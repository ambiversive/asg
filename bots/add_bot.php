<?php
/*
    File: add_bot.php
    Author: ambiversive

    Related files:
        ../classes/core/Bot.php
        ../classes/core/User.php
        ../classes/core/Document.php

    Expecting: $_POST['bot_name'];

    Description:
        This file adds a bot, which is represented by a user,
        a location in the document tree, and an entry in the bots table. 

        Each bot has a location under Codex->bots, which holds the modes
        for the bot, so this file creates both the home directory as well
        as the default mode directory, which are themselves both documents.

        (In ASG documents double as directories if they have no content).
    
*/

    include_once('../top.php');
    if($access == 0){
        $bot_name = $_POST["bot_name"];
        $bot_user = User::newUser($bot_name, $bot_name, $bot_name, $bot_name."@improvise.it", $dstyle, 4, "Canada/Newfoundland");
        $bot_uid = $bot_user->get('id');

        $bot_doc_id = Document::newDocument($bot_name, '', $uid, $bots_doc_id, '0', '0');

        $default_state_doc_id = Document::newDocument('default','', $uid, $bot_doc_id, '0', '0');

        Bot::newBot($bot_doc_id, $uid, $default_state_doc_id, $bot_uid);
 
        chatline("creates a new bot named $bot_name.");
        print $default_state_doc_id;
    }
