<?php
    include_once("../top.php");
    $msg = $_POST["msg"];
    $uid = $_SESSION['session_userid'];

    $chat = $myModel->getMainChat();
    $user = new User($uid);
    $chat->submit($user,$msg,0);
 