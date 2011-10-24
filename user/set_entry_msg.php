<?php

    include_once("../top.php");
    $uid = $_SESSION['session_userid'];
    $user = new User($uid);
    $entry = $_POST['entry'];
    $user->setUserPreference('entry_msg', $entry);
