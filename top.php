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
    if(isset($_SESSION['session_userid'])){
        $uid = $_SESSION['session_userid'];
    }

    $myModel = new SiteModel($dbh);

    if(isset($uid)){
        $user = new User($uid);
    }else{
        $user = null;
    }

    if(isset($_SESSION['current_document'])){
        $cdoc = $_SESSION['current_document'];
    }

    if(isset($_GET['id']) && $_GET['id']!=0){
        $id = $_GET['id'];
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

    if(isset($_GET['query'])){
        $query = $_GET['query'];
        $_SESSION['query']=$query;
        $user->zeroAspectPreferences();
        $user->setAspectPreference('show_search',1);
    }

    $options = $myModel->getSiteOptions();
    $title = $options['title'];
    $dstyle = $options['default_style'];
    $front = $options['front_page_id'];
    $bots_doc_id = $options['bots_doc_id'];
    $aspsets = $options['aspect_sets_id'];
    if(isset($_SESSION['session_accessLevel'])){
        $access = $_SESSION['session_accessLevel'];
        $aspects = $myModel->getAspects($access);
    }
    if(isset($_SESSION['session_loggedIn'])){
        $loggedIn = $_SESSION['session_loggedIn']==$uniqueID;
    }else{
        $loggedIn = false;
    }
