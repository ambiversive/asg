<?php
/*
    File: activate_bot.php
    Author: ambiversive

    Related files:
        ../classes/core/Bot.php

    Expecting: $_POST['bot_id'];

    Description: 

        This file activates a bot. A bot is considered
        active if the active bit in the bots table is 
        set to 1. This file is called from the /activate
        aspect of asg.
*/

    include_once("../top.php");
    if($access == 0){
        $bot_id = (int)$_POST['bot_id'];
        $bot = new Bot($bot_id);
        $bot->activate();
        $bot_user = $bot->getUser();
        $botname = $bot_user->get('full_name');
        chatline("activates $botname.");
    }
