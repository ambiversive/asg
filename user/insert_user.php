<?php

include("../top.php");

$baseUrl = $config['urls']['baseUrl'];
$newUsername = $_POST['newUsername'];
$newPassword = $_POST['newPassword'];
$newEmail = $_POST['newEmail'];

    if(isset($_POST['newFullname'])){
        $newFullname = $_POST['newFullname'];
    }else{
        $newFullname = $newUsername;
    }

    if(isset($_POST['newCss'])){
        $newCss = $_POST['newCss'];
    }else{
        $newCss = $options['default_style'];
    }

    if(isset($_POST['newAccessLevel'])){
        $newAccessLevel = $_POST['newAccessLevel'];
    }else{
        $newAccessLevel = $options['new_user_access'];
    }

    if(isset($_POST['newTimezone'])){
        $newTimezone = $_POST['newTimezone'];
    }else{
        $newTimezone = $options['new_user_timezone']; 
    }

    $loggedIn = ($_SESSION['session_loggedIn']==$uniqueID);

    $coptions['sessionName'] = 'vihash';
    $coptions['fontPath'] = '';
    $coptions['fontFile'] = 'anonymous.gdf';
    $coptions['imageWidth'] = 150;
    $coptions['imageHeight'] = 50;
    $coptions['allowedChars'] = '1234567890';
    $coptions['stringLength'] = 4;
    $coptions['charWidth'] = 40;
    $coptions['blurRadius'] = 3.0;
    $coptions['secretKey'] = 'mySecRetkEy';

    $captcha = new Captcha($coptions);
    
    $min_name_length = $options['minimum_name_length'];
    $join_msg = $options['join_msg'];

if($captcha->isKeyRight($_POST['key']) || $loggedIn){

       if(!$myModel->userExists($newUsername)){
         if(preg_match('/^\w{'.$min_name_length.',}$/', $newUsername)){

           if(!empty($newPassword)){
            $user = User::newUser($newUsername, $newPassword, $newFullname, $newEmail, $newCss, $newAccessLevel, $newTimezone);
            $user->registerLogin();
            $chat = $myModel->getMainChat();
            $chat->submit_emote($user, $join_msg);
            header("Location: $baseUrl");
           }else{
             print "<p>Invalid password. Please <a href=\"../index.php\">go back</a>.";
           }
          }else{
            print "<p>Invalid username. Please <a href=\"../index.php\">go back</a>.";
          }
       }else{
        print "<p>User already exists!</p>";
        print "<p>Please <a href=\"../index.php\">go back</a>.";
       }

}else{
   print "<p>Please <a href=\"../index.php\">go back</a> and enter the correct captcha.";
}

