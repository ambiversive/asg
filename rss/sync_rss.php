<?php

    include_once("../top.php");
    if(!$loggedIn){ die(); }
 
    $links_table = $config['tables']['links_table'];
    $feeds_table = $config['tables']['rss_feeds_table'];
    $user_id = $_SESSION['session_userid'];
    $q = "SELECT id FROM $feeds_table WHERE sync='1'";
    $sth = $dbh->prepare($q);
    $sth->execute(array());
    $synced = 0;
    while($row = $sth->fetch()){
        $feed_id = $row['id'];
        $feed = new Feed($feed_id);
        $rs = $feed->getRss();
        foreach($rs as $item){
            $link_title = $item['title'];
            $link_url = $item['link'];
            $q = "SELECT id FROM $links_table WHERE url=?";
            $sth = $dbh->prepare($q);
            $sth->execute(array($link_url));
            if($sth->rowCount() == 0){
                Link::newLink($link_url, $link_title, $user_id);
                $synced++;
            }

        }
   }
   print $synced;
