<?php

    include("../top.php");
    $uid = $_SESSION['session_userid'];
    $tit = $_POST['title'];
    $url = $_POST['url'];
    $url_ = substr($url, 7);

    Link::newLink($url, $tit, $uid);
    $cmd = "wget -E -H -k -K -p $url -P ../cache/";
    exec($cmd);
    chatline("submits a link <a href=\"$url\">$tit</a><a href=\"cache/$url_\">&nbsp;[cached]</a>.");


