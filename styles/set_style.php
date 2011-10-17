<?php
include_once("../top.php");

if($_SESSION['session_loggedIn']==$uniqueID){


 if($_POST['style']){
  $style = $_POST['style'];
  $userid = $_SESSION["session_userid"];
  $qX = "UPDATE users SET css_id=? WHERE id=?";
  $sth = $dbh->prepare($qX);
  $sth->execute(array($style,$userid));
  $style_doc = new Document($style,$dbh);
  $_SESSION['css_id'] = $style;
  $styleName = $style_doc->getTitle();
  chatline("picks style $styleName.");
  off_pref('show_setstyle', $userid,$dbh);
 }

       print "<script>window.location=\"index.php\"</script>";

}
 
?>