<?php

    include("../top.php");

    $link_id = $_POST['link_id'];
    $uid = $_SESSION['session_userid'];
    $link = new Link($link_id);
    $link->downvote($uid);