<?php
    include('../top.php');

    $uid = $_SESSION['session_userid'];
    $aspect_set_id = $_GET['aspect_set_id'];
    $user = new User($uid);
    $user->loadAspectSet($aspect_set_id);


    print "<script type=\"text/javascript\">window.location='../index.php'</script>";
 

