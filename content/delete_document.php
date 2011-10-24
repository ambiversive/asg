<?php
    include("../top.php");
    $uid = $_SESSION['session_userid'];
    $user = new User($uid);
    $rPageID = $_POST['rPageID'];

    $doc = new Document($rPageID);
    $title = $doc->getTitle();
    $parent_id = $doc->get('parent_id');
    $doc->delete();
    $user->offPreference('show_delete');
    chatline("deletes document $title.");
    print $parent_id;

