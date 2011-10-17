<?php

include_once("../top.php");

if($_SESSION['session_loggedIn']==$uniqueID){
 $dbh = db_connect();
 $uid = $_SESSION['session_userid'];
 $attr = $_POST['attr'];
 $css_ident = $_POST['css_ident'];
 $value = $_POST['value'];
 
 $q = "DELETE FROM css_rules WHERE uid=? AND css_ident=? AND attr=?";
 $sth = $dbh->prepare($q);
 $sth->execute(array($uid,$css_ident,$attr));
 
 $q = "INSERT INTO css_rules VALUES ('',?,?,?,?)";
 $sth = $dbh->prepare($q);
 $sth->execute(array($uid,$css_ident,$value,$attr));
 
 //chatline("sets a css rule: $css_ident - $attr - $value");
}