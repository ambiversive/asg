<?php

    include("../top.php");
    $uid = $_SESSION['session_userid'];
    $tit = $_POST['title'];
    $url = $_POST['url'];

    Link::newLink($url, $tit, $uid);
    chatline("submits a link <a href=\"$url\">$tit</a>.");
    $cmd = "wget -E -H -k -K -p $url -P ../cache/";
    exec($cmd);

