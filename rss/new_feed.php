<?php
    include("../top.php");
    $uid = $_SESSION['session_userid'];
    $feed_url = $_POST['feed_url'];
    $feed_title = $_POST['feed_title'];
    Feed::newFeed($feed_url, $feed_title, 0, $uid);
    chatline("submits a new feed: $feed_title.");
