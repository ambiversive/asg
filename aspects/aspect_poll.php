<?php
    include_once("../database/config.php");
    include_once("../classes/core/DbTable.php");
    include_once("../database/db_connect.php");
    include_once("../classes/core/User.php");
    $aspects_table = $config['tables']['aspects_table'];
    $aspect_preferences_table = $config['tables']['aspect_preferences_table'];

    $dbh = db_connect();
    $uid = $_POST['uid'];
    $user = new User($uid);
    $time = time();
    while((time()-$time) < 30){

        $q = "SELECT * FROM $aspect_preferences_table WHERE user_id = ?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($uid));
        $row = $sth->fetch();
        $updateMe = null;

        foreach($row as $key => $value){
            if(!is_int($key)){
               if($value == 2){
                  $updateMe = $key;
                  break;
               }
            }
        }  

        if(!is_null($updateMe)){
            $q = "SELECT * FROM $aspects_table WHERE pref_column = ?";
            $sth = $dbh->prepare($q);
            $sth->execute(array($updateMe));
            $row = $sth->fetch();
            $cmd = $row['command'];
            $fun = $row['function'];            
            $div = $row['div'];
            $pc = $row['pref_column'];
            $tit = $row['title'];
            $desc = $row['desc'];
            $css = $row['css_class'];
            $on = '1';
            echo "{ \"$cmd\": { \"fun\": \"$fun\", \"div\": \"$div\", \"pref\": \"$pc\", \"title\": \"$tit\", \"desc\": \"$desc\", \"css\": \"$css\", \"on\": \"$on\" } }";
            break;
        }

        usleep(200000); 

    }
