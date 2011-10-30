<?php

include("../top.php");

if($access == 0){

    $keyword = $_POST['keyword'];
    $help = $_POST['help_desc'];
    $doc = $_POST['document_id'];
    $xaccess = $_POST['access_level'];

    if(isset($keyword) && isset($help) && isset($doc) && isset($xaccess)){
 $myModel->addCommand($keyword, $help, $doc, $xaccess);
 chatline("adds a new command: /$keyword ($help) (<a onclick=\"asgConfig.simcom('/go $doc')\">code</a>)");
    }else{
         print "<p>Error!</p>";
    }
}
