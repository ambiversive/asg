<?php

    include("../top.php");
    $userid = $_SESSION['session_userid'];
    $user = new User($userid);
    $user->zeroAspectPreferences();
