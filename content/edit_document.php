<?php

    include_once("../top.php");

    $session_loggedIn =	$_SESSION['session_loggedIn'];
    $userid = $_SESSION['session_userid'];

    $newSubTitle = $_POST['newSubTitle'];
    $iContent = $_POST['iContent'];
    $iPageID = $_POST['iPageID'];


    if(!isset($iPageID) || $_SESSION['session_accessLevel'] == 4){
        die('Error!');
    }

    if($session_loggedIn == $uniqueID){
        $iContent = trim($iContent);
        $doc = new Document($iPageID);
        $doc->setTitle($newSubTitle);
        $doc->setContent($iContent);
        DocumentRevision::newDocumentRevision($iPageID, $userid, $iContent);
        chatline("modifies the content of <a onclick=\"asgConfig.simcom('/go $iPageID')\">$newSubTitle</a>.");
    }
