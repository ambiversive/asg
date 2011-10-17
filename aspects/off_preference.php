<?php

    include_once("../top.php");

    $pref = $_POST["pref"];        
    $userid = $_SESSION['session_userid'];
    $user = new User($userid);
    $user->setAspectPreference($pref, 0);
    $_SESSION[$pref]=0;
