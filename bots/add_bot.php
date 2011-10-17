<?php

    include_once('../top.php');

    $uid = $_SESSION['session_userid'];
    $user = new User($uid);
    $user->offPreference('show_addbot');
    $user->onPreference('show_idoc');
    
    $bot_name = $_POST["bot_name"];
    $bot_user = User::newUser($bot_name, $bot_name, $bot_name, $bot_name."@improvise.it", $dstyle, 4, "Canada/Newfoundland");
    $bot_uid = $bot_user->get('id');

    $bot_doc_id = Document::newDocument($bot_name, '', $uid, $bots_doc_id, '0', '0');

    $default_state_doc_id = Document::newDocument('default','', $uid, $bot_doc_id, '0', '0');

    Bot::newBot($bot_doc_id, $uid, $default_state_doc_id, $bot_uid);
 
    chatline("creates a new bot named $bot_name.");
    print $default_state_doc_id;