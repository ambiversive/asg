<?php
    include('../top.php');
    $baseUrl = $config['urls']['baseUrl'];
    $uid = $_SESSION['session_userid'];
    $aspect_set_id = $_GET['aspect_set_id'];
    $user = new User($uid);
    $user->loadAspectSet($aspect_set_id);
    header("Location: $baseUrl");
 

