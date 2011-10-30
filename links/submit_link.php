<?php

    include("../top.php");

    if($access == 0){

        $uid = $_SESSION['session_userid'];
        $tit = $_POST['title'];
        $url = $_POST['url'];
        if(strpos($url,"?")===false){

        }else{
            $url = substr($url, 0, strpos($url,"?"));
        }
        $url_ = substr($url, 7);

        Link::newLink($url, $tit, $uid);
        $cmd = "wget -E -H -k -K -p $url -P ../cache/ -o ../cache/log -e robots=off";
        exec("bash -c \"exec nohup setsid $cmd > /dev/null 2>&1 &\""); 
        chatline("submits a link <a href=\"$url\">$tit</a><a href=\"cache/$url_\">&nbsp;[cached]</a>.");
    }
