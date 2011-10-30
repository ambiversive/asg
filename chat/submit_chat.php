<?php
    include_once("../top.php");
    $msg = $_POST["msg"];
    $chat = $myModel->getMainChat();
    $chat->submit($user,$msg,0);
 
