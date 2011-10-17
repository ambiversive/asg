<?php

    include_once("../top.php");
    $current_user = new User($_SESSION['session_userid']);
    $focus_id = $_POST['focus_id'];
    $aid = $_POST['aid'];
    $fuser = new User($focus_id);
    $bot = new Bot($aid);
    $buser = $bot->getUser();
    $botname = $buser->get('full_name');
    $fname = $fuser->get('full_name');
    $bot->set('focus_user', $focus_id);
    chatline("tells $botname to focus on $fname.");
    $current_user->offPreference('show_setfocus');



 
