<?php

    include("../top.php");
    $uid = $_SESSION['session_userid'];
    $usr = new User($uid);
    $usr->updateLastActive();