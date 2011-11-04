<?php
/*
    File: set_css_rule.php
    Author: ambiversive

    Expecting:
        $_POST['css_ident']
        $_POST['attr']
        $_POST['value']

    Description:
        This file adds a css rule to the css rules table.
        CSS Rules are applied for users on top of their 
        selected style sheet. This allows them to tweak an
        existing style without creating an entirely new one.

        Todo: The db interactions should be performed in the
        CssRule class. Also some form of validation should 
        determine if the information is valid.
*/
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
