<?php

    include_once("../top.php");

    if(!isset($_POST['ipageID']) || $_SESSION['session_accessLevel'] == 4){
        die('Error!');
    }

    $userid = $_SESSION['session_userid'];
    $ipageID = $_POST['ipageID'];
    $subTitle = $_POST['subTitle'];
    $hiddenOrNot = $_POST['hiddenOrNot'];
    $zeval = $_POST['eval'];
    $template = $_POST['template'];
	
    if($template!=0){
        $template_doc = new Document($template);
	$template_content = $template_doc->getContent();
    }else{
        $template_content = "";
    }
	
    $tit = $subTitle;
    if(($subTitle != "") && isset($ipageID)){	
	$author = $userid;
	
        $newID = Document::newDocument($subTitle, $template_content, $author, $ipageID, $hiddenOrNot, $zeval);
		                
        chatline("creates document <a onclick=\"asgConfig.simcom('/go $newID')\">$subTitle</a>.");
        print $newID;
	
    }else{
	print "Error. You probably didn't specify a title!";
	
    }
