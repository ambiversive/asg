<?php
    include_once("../top.php");
    $msg = $_POST["msg"];
    $x = strpos($msg, '!');
    if($x === 0 && $access == 0){
        $msg = substr($msg, 1); 
        $msg = "<span style=\"color: red;\">$msg</span>";
        $chat = new Chat(2);
        $chat->submit($user,$msg,0);

    }else{

        $chat = $myModel->getMainChat();
        $chat->submit($user,$msg,0);
    }
