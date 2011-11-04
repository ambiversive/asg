<?php
/*
    File: chat_poll.php
    Author: ambiversive

    Related files:
        ../database/config.php
        ../database/db_connect.php
        ../classes/core/DbTable.php
        ../classes/core/User.php
        ../classes/core/Bot.php
        ../classes/core/Chat.php
        ../classes/core/ChatMessage.php
        ../js/js_polling.php

    Description:
        This is the server side of the long-polling script, which
        is requested by the client side javascript, and returns a JSON
        object which contains information about the new message. 

        This file checks for new messages in multiple tables based on
        which chats the usr has access to. 
*/ 

    include_once("../database/config.php");
    include_once("../database/db_connect.php");
    $dbh = db_connect();
    include_once("../classes/core/DbTable.php");
    include_once("../classes/core/User.php");
    include_once("../classes/core/Bot.php");
    include_once("../classes/core/Chat.php");
    $chats_table = $config['tables']['chats_table'];
    $uid = $_POST['uid'];
    $user = new User($uid);
    $access = $user->get('access_level');

    $q = "SELECT id FROM $chats_table WHERE access >= '$access'";
    $sth = $dbh->prepare($q);
    $sth->execute(array());

    // set up our chat objects
    while($row = $sth->fetch()){
        $chats[] = new Chat($row['id']);
    }

    // get our client's last messages
    foreach($_POST as $key => $val){
        $x = strpos($key,'last_msg');
	if($x===0){
                $last_msgs[] = $val;
        }
    }

    // if any of the last messages are 1, assume client is up to date and last msg is from db
    foreach($last_msgs as $chat_id => $last_msg){
        if($last_msg == 1){ 
            $chat = $chats[$chat_id];
            $last_msgs[$chat_id] = $chat->getIdOfLastMsg();
        }
    }

    $time = time();
    while((time()-$time) < 30){
        //foreach chat that I have access to, check for new msgs
        foreach($chats as $key => $chat){
            $new = $chat->hasMsgAfter($last_msgs[$key]);
            $table = $chat->get('table');
            $chat_id = $chat->get('id');
            $output_element = $chat->get('output_element');
            if($new){ 
                $q = "SELECT * FROM $table WHERE id = '$new'";
                $sth = $dbh->prepare($q);
                $sth->execute(array());
                $row = $sth->fetch();
                $id = $row['id'];
                $user_id = $row['user_id'];
                $is_emote = $row['is_emote'];
                $user = new User($user_id);
                $name = $user->get('full_name');

                $arr['id'] = $id;
                $arr['user'] = $name;
                $arr['msg'] = $row['msg'];
                $arr['stamp']= $row['timestamp'];
                $arr['is_emote'] = $is_emote;
                $arr['output_element'] = $output_element;
                $arr['chat_id'] = $chat_id;
                echo json_encode($arr);
                break 2;
            }
        }
        usleep(200000); 
    }

