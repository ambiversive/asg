<?php
    include_once("../top.php");
    $bot_id = (int)$_POST['bot_id'];
    $bot = new Bot($bot_id);
    $bot->activate();
    $bot_user = $bot->getUser();
    $botname = $bot_user->get('full_name');
    chatline("activates $botname.");
