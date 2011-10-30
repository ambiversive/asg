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

ini_set(’session.gc_maxlifetime’, 30*60);

//yes this should be in that array I guess?
$uniqueID = "fosefg0ghwegh02ty0923t023t3gh24h2h";

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
        "rss_feeds_table" => "rss_feeds"
   )
);
