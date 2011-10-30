<?php

    include("../top.php");
    $baseUrl = $config['urls']['baseUrl'];
    $uid = $_SESSION['session_userid'];
    $user = new User($uid);
    $chat = $myModel->getMainChat();
    $exit = $_SESSION['exit_msg'];
    $chat->submit_emote($user, $exit);
    $user->logout();
    header("Location: $baseUrl");

