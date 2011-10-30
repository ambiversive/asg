<?php

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



 
