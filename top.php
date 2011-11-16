<?php
/*
    File: top.php
    Author: ambiversive

    Related files:
        ./database/db_connect.php
        ./database/config.php
        ./captcha/Captcha.php
        ./clases/core
   
    Description:
        This file is included by pretty much all the others,
        it initiates the session, creates the database handler,
        and various global objects like $user and $myModel, which 
        are then used by the aspect code to render the site.
        
*/
    session_start();
    include_once("database/db_connect.php");
    include_once("database/config.php");
    include_once("captcha/Captcha.php");

    function __autoload($classname){ 
      include_once("classes/core/$classname.php"); 
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
    $cdoc = $_SESSION['current_document'];

    if(isset($id) && $id!=0){
        if($id != $cdoc){
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
 
    if($id && $myModel->documentExists($id)){
        $current_doc = new Document($id);
        $num_children = $current_doc->numChildren();
        $is_null = $current_doc->isNullContent();
    }

    $query = $_GET['query'];
    if(isset($query)){
        $_SESSION['query']=$query;
        $user->setAspectPreference('show_search',1);
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
    $loggedIn = $_SESSION['session_loggedIn']==$uniqueID;
