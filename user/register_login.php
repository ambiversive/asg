<?php
include('../top.php');

if($_POST["login_user"] && $_POST["login_password"]){
    $user = $_POST["login_user"];
    $pass = $_POST["login_password"];

    if($myModel->userExists($user)){

        $current_user = $myModel->fetchUser($user);
        $user_pass_hash = $current_user->getPassword();
        $cryptPass = crypt($pass,$user_pass_hash);
          
        if($cryptPass == $user_pass_hash){

            $current_user->registerLogin();         
            $entry_msg = $_SESSION['entry_msg'];
            $current_doc = $_SESSION['current_document'];
            $chat = $myModel->getMainChat();
            $chat->submit_emote($current_user, $entry_msg);
            print "<script>window.location=\"../index.php?id=$current_doc\"</script>";
       }

   }else{
       print "No user found!";
   }
}