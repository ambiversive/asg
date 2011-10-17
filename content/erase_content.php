<?php

    include_once("../top.php");

    $rPageID = $_POST['rPageID'];
    $doc = new Document($rPageID);
    $doc->eraseContent();
