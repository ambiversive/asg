<?php
    include('../top.php');
    $baseUrl = $config['urls']['baseUrl'];
    $aspect_set_id = (int)$_GET['aspect_set_id'];
    $user->loadAspectSet($aspect_set_id);
    header("Location: $baseUrl");
 

