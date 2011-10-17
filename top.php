<?php

    session_start();
    include_once("database/db_connect.php");
    include_once("database/config.php");
    include_once("captcha/Captcha.php");

    function __autoload($classname){ 
        $drop = false;

        if(strpos($classname,'Item') === FALSE){ 
            $drop = true;
        }else{
            include_once("classes/items/$classname.php"); 
            $drop = false;
        }


        if(strpos($classname,'Link') === FALSE){ 
            $drop = true;
        }else{
            include_once("classes/links/$classname.php"); 
            $drop = false;
        }

        if($drop){
            include_once("classes/core/$classname.php"); 
        }
     }

    $dbh = db_connect();
    $uid = $_SESSION['session_userid'];
    $myModel = new SiteModel($dbh);

    if(isset($uid)){
        $user = new User($uid);
    }else{
        $user = null;
    }

    $id = $_GET['id'];
    $link_id = $_GET['link_id'];
    $cdoc = $_SESSION['current_document'];

    if(isset($id) && $id!=0){
        if($id != $cdoc){//currently have no idea why setAspectPreference isn't setting the sesh var
            $_SESSION['current_document'] = $id;
            $user->setAspectPreference('show_ls',1);
            $user->setAspectPreference('show_content',1);
            $user->setUserPreference('current_document',$id);
            $user->setAspectPreference('show_nav',1);

        }
        
    }else if(isset($cdoc)){
        $id = $cdoc;
    }else{
        $id = null;
    }
 
    if($id){
        $current_doc = new Document($id);
        $num_children = $current_doc->numChildren();
        $is_null = $current_doc->isNullContent();
    }

    $options = $myModel->getSiteOptions();
    $title = $options['title'];
    $js = $options['javascript_doc_id'];
    $dstyle = $options['default_style'];
    $front = $options['front_page_id'];
    $bots_doc_id = $options['bots_doc_id'];
    $aspsets = $options['aspect_sets_id'];
    $access = $_SESSION['session_accessLevel'];
    $aspects = $myModel->getAspects($access);
