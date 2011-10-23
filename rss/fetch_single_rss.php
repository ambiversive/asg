<?php

    include_once("../top.php");
    $feed_id = $_GET['feed_id'];
    $feed = new Feed($feed_id);
    $rs = $feed->getRss();
    $link_num = 1;
    echo "{";
    foreach($rs['items'] as $item){
       $ret .= "\"link$link_num\":";
       $arr['title'] = $item['title'];
       $arr['url'] = $item['link'];
       $ret .= json_encode($arr).",";
       $link_num++;
    }
    $ret = substr($ret,0,-1);
    echo $ret;
    print "}";


