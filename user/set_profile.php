<?php

    include("../top.php");

    $uid = $_SESSION['session_userid'];
    $user = new User($uid);

    $newUsername = $_POST['newUsername'];
    $newEmail = $_POST['newEmail'];
    $newCss = $_POST['newCss'];
    $newFullname = $_POST['newFullname'];
    $newPassword = $_POST['newPassword'];
    $newTimezone = $_POST['newTimezone'];

    if(!preg_match('/^\w{5,}$/', $newUsername)){
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
    $user->offPreference('show_setprofile');		
    chatline("modifies user profile.");
