<?php

    include("../top.php");
    $url = $_POST['url'];
    $user->setUserPreference('meta_url', $url);
