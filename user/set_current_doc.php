<?php
    include("../top.php");
    $doc = (int) $_POST['current_document'];
    $user->setUserPreference('current_document', $doc);
