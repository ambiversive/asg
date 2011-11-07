<?php

    include("../top.php");
    $baseUrl = $config['urls']['baseUrl'];
    if($access == 0){
        $feed_id = (int) $_POST['feed_id'];
        $feed = new Feed($feed_id);
        $title = $feed->get('title');
        $feed->delete();
        chatline("deletes feed $title");
        header("Location: $baseUrl");
    }

