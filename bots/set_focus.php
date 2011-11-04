<?php
/*
    File: set_focus.php
    Author: ambiversive

    Related files:
        ../classes/core/Bot.php
        ../classes/core/User.php

    Expecting: 
        $_POST['focus_id'];
        $_POST['aid'];

    Description:
        This file takes in a bot id and a user id and focuses 
        the bot on the user. This means that the bot will only
        respond to keywords said by the focused user.
 

*/
    include_once("../top.php");
    $focus_id = (int)$_POST['focus_id'];
    $aid = (int)$_POST['aid'];
    $fuser = new User($focus_id);
    $bot = new Bot($aid);
    $buser = $bot->getUser();
    $botname = $buser->get('full_name');
    $fname = $fuser->get('full_name');
    $bot->set('focus_user', $focus_id);
    chatline("tells $botname to focus on $fname.");



 
