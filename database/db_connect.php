<?php   

    function db_connect(){
        global $config;
        $dbname = $config['db']['dbname'];
        $username = $config['db']['username'];
        $password = $config['db']['password'];
        $hostname = $config['db']['host'];

        try {
            $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
            return $dbh;
        }catch(PDOException $e){
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }

    function chatline($msg){
        global $myModel;
        $myChat = $myModel->getMainChat();
        $uid = $_SESSION['session_userid'];
        $user = new User($uid);
        $myChat->submit_emote($user, $msg);
    }
