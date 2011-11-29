<?php
    include_once("../top.php");
    $feeds = $myModel->getFeeds();
    $link_num = 1;
    $max_links = 100;
    foreach($feeds as $feed){
            if($link_num > $max_links){ break; }
	    $rs = $feed->getRss();
	    $subreddit = $feed->get('subreddit');
	    foreach($rs as $item){
               $title = $item['title'];
	       $url = $item['link'];
               print "<p><a href=\"$url\">$title</a></p>";
	    }
    }
