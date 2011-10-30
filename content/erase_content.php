<?php

    include_once("../top.php");
    if($access == 0){
        $rPageID = $_POST['rPageID'];
        $doc = new Document($rPageID);
        $doc->eraseContent();
    }
