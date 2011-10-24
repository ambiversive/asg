<?php

    include_once("../top.php");
    $uid = $_SESSION['session_userid'];
    $user = new User($uid);
    $exit = $_POST['exit'];
    $user->setUserPreference('exit_msg', $exit);
