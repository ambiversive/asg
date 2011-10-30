<?php

    include_once("../top.php");
    $css_rules_table = $config['tables']['css_rules_table'];

    $attr = $_POST['attr'];
    $css_ident = $_POST['css_ident'];
    if($css_ident!="all"){
        $q = "DELETE FROM $css_rules_table WHERE uid=? AND css_ident=? AND attr=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($uid,$css_ident,$attr));
        //chatline("unsets a css rule: $css_ident - $attr");
     }else{
        $q = "DELETE FROM $css_rules_table WHERE uid=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($uid));
        //chatline("unsets a css rule: $css_ident - $attr");
     }
