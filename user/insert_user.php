<?php

include("../top.php");

$soptions = $myModel->getSiteOptions();

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
        $newCss = $soptions['default_style'];
    }

    if(isset($_POST['newAccessLevel'])){
        $newAccessLevel = $_POST['newAccessLevel'];
    }else{
        $newAccessLevel = 4;
    }

    if(isset($_POST['newTimezone'])){
        $newTimezone = $_POST['newTimezone'];
    }else{
        $newTimezone = "Canada\Newfoundland"; 
    }

    $loggedIn = $_SESSION['session_loggedIn']==$uniqueID;

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



if($captcha->isKeyRight($_POST['key']) || $loggedIn){

       if(!$myModel->userExists($newUsername)){
         if(preg_match('/^\w{5,}$/', $newUsername)){

           if(!empty($newPassword)){
            User::newUser($newUsername, $newPassword, $newFullname, $newEmail, $newCss, $newAccessLevel, $newTimezone);
            if($loggedIn){ chatline("creates user $newUsername."); }
            $_SESSION['newbie_username'] = $newUsername;
            $_SESSION['newbie_password'] = $newPassword;
            print "<script>window.location='../index.php?newbie=1'</script>";
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

