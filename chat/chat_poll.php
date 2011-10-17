<?php
    include_once("../database/config.php");
    include_once("../database/db_connect.php");
    $dbh = db_connect();
    include_once("../classes/core/DbTable.php");
    include_once("../classes/core/User.php");
    include_once("../classes/core/Bot.php");
 
    $chat_messages_table = $config['tables']['chat_messages_table'];
    $aspects_table = $config['tables']['aspects_table'];

    $last_msg = $_POST['last_msg'];

    if(!isset($last_msg)){ $last_msg = 1; }

    if($last_msg == 1){ 
        $q = "SELECT id FROM $chat_messages_table ORDER BY id DESC LIMIT 1";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        $row = $sth->fetch();
        $last_msg = $row['id'];
    }

    $time = time();
    while((time()-$time) < 30){

        $q = "SELECT * FROM $chat_messages_table WHERE id > '$last_msg' ORDER BY id ASC LIMIT 1";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        if($sth->rowCount() > 0){
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

            echo json_encode($arr);
            break;
        }
        usleep(200000); 
    }

/*
        $q = "SELECT unix_timestamp(last_update) FROM $aspects_table WHERE id='1'";
        $sth = $site_dbh->prepare($q);
        $sth->execute(array());
        $row = $sth->fetch();
        $last_up = $row['unix_timestamp(last_update)'];
        //echo "<p>comparing $last_up to $last_msg .. </p>";
        if($last_up > $last_msg){
            $q = "SELECT * FROM $chat_messages_table ORDER BY id DESC LIMIT 1";
            $sth = $site_dbh->prepare($q);
            $sth->execute();
            $row = $sth->fetch();
            $id = $row['id'];
            $user_id = $row['user_id'];
            $is_emote = $row['is_emote'];
            $user = new User($user_id);
            $name = $user->get('full_name');

            $arr['id'] = $id;
            $arr['user'] = $name;
            $arr['msg'] = $row['msg'];
            $arr['stamp']=$last_up; 
            $arr['is_emote'] = $is_emote;

            echo json_encode($arr);
            break;
        }
        usleep(200000); 

    }
*/ 