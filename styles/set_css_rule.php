<?php

include_once("../top.php");

if($_SESSION['session_loggedIn']==$uniqueID){
     $css_rules_table = $config['tables']['css_rules_table'];

     $attr = $_POST['attr'];
     $css_ident = $_POST['css_ident'];
     $value = $_POST['value'];
 
     $q = "DELETE FROM $css_rules_table WHERE uid=? AND css_ident=? AND attr=?";
     $sth = $dbh->prepare($q);
     $sth->execute(array($uid,$css_ident,$attr));
 
     $q = "INSERT INTO $css_rules_table VALUES ('',?,?,?,?)";
     $sth = $dbh->prepare($q);
     $sth->execute(array($uid,$css_ident,$value,$attr));
 
     //chatline("sets a css rule: $css_ident - $attr - $value");
}
