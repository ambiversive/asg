<?php
    include("../top.php");

    if($access == 0){
        $rPageID = $_POST['rPageID'];
        $doc = new Document($rPageID);
        $title = $doc->getTitle();
        $parent_id = $doc->get('parent_id');
        $doc->delete();
        chatline("deletes document $title.");
        print $parent_id;
    }

