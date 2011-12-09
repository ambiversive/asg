<?php

    include_once("../top.php");

    $pref = $_POST["pref"];        
    if($myModel->isValidAspectPreference($pref)){
        $user->setAspectPreference($pref, 0);
        $_SESSION[$pref]=0;
    }
