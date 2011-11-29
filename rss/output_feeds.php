<?php
    include("../top.php");
    $feeds = $myModel->getFeeds();
    print "<dl>";
    foreach($feeds as $feed){
        print "<dt>";
        print $feed->get('title');
        print "</dt>";
        print "<dd>";
        print $feed->get('url');
        print "</dd>";
    }
    print "</dl>";
