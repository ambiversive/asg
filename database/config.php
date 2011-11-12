<?php

/*
    File: config.php
    Author: ambiversive
    Description: 

    This file stores the config array, which
    is used to configure Antischismogenesis.
    It specifies database variables, a baseUrl,
    and table names.  
*/

ini_set('session.gc_maxlifetime', 30*60);
ini_set('session.cookie_httponly', TRUE);
ini_set('session_cookie_secure', TRUE);

$uniqueID = "wetwefweplweghkwiojhworejhwhweH";

$config = array(
    "db" => array(
            "dbname" => "improvis_simp",  
            "username" => "root",  
            "password" => "sql1682m",  
            "host" => "localhost"  
        ),
    "urls" => array(  
        "baseUrl" => "http://localhost/asg/"  

    ), 
    "tables" => array(
       "documents_table" => "documents",
       "users_table" => "users",
       "bots_table" => "bots",
       "commands_table" => "commands",
       "chats_table" => "chats",
       "chat_messages_table" => "chat_messages",
       "document_revisions_table" => "document_revisions",
       "aspect_sets_table" => "aspect_sets",
       "aspects_table" => "aspects",
       "aspect_preferences_table" => "aspect_preferences",
       "user_preferences_table" => "user_preferences",
       "access_levels_table" => "access_levels",
       "options_table" => "options",
       "css_rules_table" => "css_rules",
       "links_table" => "links",
       "link_votes_table" => "link_votes",
       "rss_feeds_table" => "rss_feeds",
       "admin_messages_table" => "admin_messages"
   ),
   "private_javascript" => array(
       "apps/jquery-1.6.4.min.js",
       "apps/notifier.js",
       "apps/jquery.localscroll-1.2.7-min.js",
       "apps/jquery.scrollTo-min.js",
       "apps/ace/ace.js",
       "apps/ace/theme-twilight.js",
       "apps/ace/mode-php.js",
       "js/js_init.php",
       "js/js_polling.php",
       "js/js_core.php",
       "js/js_rss.js"
   ),
   "public_javascript" => array(
       "apps/jquery-1.6.4.min.s",
       "apps/jquery.localscroll-1.2.7-min.js", 
       "apps/jquery.scrollTo-min.js"
   ),
   "default_subreddit" => "ambiversive"
);
