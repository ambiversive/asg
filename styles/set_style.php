<?php
/*
    File: set_style.php
    Author: ambiversive

    Expecting: 
        $_POST['style']

    Description:
        This file specifies a the id of the style sheet 
        for a user.
*/

include_once("../top.php");

if($_SESSION['session_loggedIn']==$uniqueID){
    $users_table = $config['tables']['users_table'];

    if($_POST['style']){
        $style = (int)$_POST['style'];
        $userid = $_SESSION["session_userid"];
        $q = "UPDATE $users_table SET css_id=? WHERE id=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($style,$userid));
        $style_doc = new Document($style,$dbh);
        $_SESSION['css_id'] = $style;
        $styleName = $style_doc->getTitle();
        chatline("picks style $styleName.");
    } 
}
 
?>
