<?php

    include_once("../top.php");
    if($access == 0){
        $user_id = $_POST['delete_id'];
        $user = new User($user_id);
        $username = $user->getUsername();
        $user->delete();
        chatline("deletes user '$username'");
    }
