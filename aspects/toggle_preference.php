<?php

    include("../top.php");
    $userid = $_SESSION['session_userid'];
    $pref = $_POST["pref"];  
    $user = new User($userid);
    $user->togglePreference($pref);

 