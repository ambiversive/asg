<?php

    include("../top.php");

    $uid = $_SESSION['session_userid'];
    $user = new User($uid);
    $chat = $myModel->getMainChat();
    $exit = $_SESSION['exit_msg'];
    $chat->submit_emote($user, $exit);
    $user->logout();

    print "<script>window.location=\"../index.php\"</script>";

