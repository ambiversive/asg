<?php
    include("../top.php");
    $uid = $_SESSION['session_userid'];
    $user = new User($uid);
    $rPageID = $_POST['rPageID'];

    $doc = new Document($rPageID);
    $title = $doc->getTitle();
    $doc->delete();
    $user->offPreference('show_delete');
    chatline("deletes document $title.");

