<?php

    include("../top.php");
    $min_name = $options['minimum_name_length'];
    $uid = $_SESSION['session_userid'];
    $user = new User($uid);

    $newUsername = $_POST['newUsername'];
    $newEmail = $_POST['newEmail'];
    $newCss = $_POST['newCss'];
    $newFullname = $_POST['newFullname'];
    $newPassword = $_POST['newPassword'];
    $newTimezone = $_POST['newTimezone'];

    if(!preg_match('/^\w{'.$min_name.',}$/', $newUsername)){
        die('Username must be minimum five characters, please try again.');
    }

    if($newPassword!=$NULL){
        $user->setPassword($newPassword);
    }

    $user->set('username', $newUsername);
    $user->set('email', $newEmail);
    $user->set('css_id', $newCss);
    $user->set('full_name', $newFullname);
    $user->set('timezone', $newTimezone);
    chatline("modifies user profile.");
