<?php

class Chat extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['chats_table'];
        parent::__construct($id);
    }

    function getName(){
        return $this->get('name');
    }

    function getId(){
        return $this->get('id');
    }

    function getAspect(){
        return $this->get('aspect');
    }

    function getTable(){
        return $this->get('table');
    }

    function getHistoryDocId(){
        return $this->get('history_doc_id');
    }

    function getMessageCount(){
        $dbh = $this->_dbh;
        $table = $this->_table;
      
        $q = "SELECT Count(*) FROM $table";
        $sth = $dbh->query($q);
        $row = $sth->fetch();
        return $row['Count(*)'];
    }


    function getLastTen(){
        $dbh = $this->_dbh;
        $table = $this->get('table');
        $last_ten = null;

        $sql = "SELECT * FROM $table ORDER BY id DESC LIMIT 10";
        $result = $dbh->query($sql);
        foreach($result as $row){
            $msg = new ChatMessage($row['id']);
            $last_ten[] = $msg;
        }
        return $last_ten;
    }

    function getLastX($x){
        $dbh = $this->_dbh;
        $table = $this->get('table');
        $last_ten = null;

        $sql = "SELECT * FROM $table ORDER BY id DESC LIMIT $x";
        $sth = $dbh->prepare($sql);
        $sth->execute(array());

        while($row = $sth->fetch()){
            $msg = new ChatMessage($row['id']);
            $last_ten[] = $msg;
        }

        return $last_ten;
    }

    function submit($user, $chat_message, $is_emote){
        global $config;
        global $options;
        $min = $options['minimum_chat_interval'];
        $bots_table = $config['tables']['bots_table'];
        $doc_table = $config['tables']['documents_table'];
        $msgs_table = $this->get('table');
        $dbh = $this->_dbh;
        $table = $this->_table;       
        $user_id = $user->getId();
        $access = $user->getAccess();
        $last_msg = $user->getTimeOfLastMessage();
        $interval = time() - $last_msg;
        $spammer = $interval < $min;

        if(!$spammer){

            if($access == 4 ){ $chat_message = htmlentities($chat_message); }
 
            $sql = "INSERT INTO $msgs_table VALUES ('',?,?, NOW(), ?);";
            $sth = $dbh->prepare($sql);
            $result = $sth->execute(array($user_id, $chat_message, $is_emote));
            $bots = Bot::getBots(1,$user_id);//first argument is for active bots, second is for focus user
            if(is_array($bots)){
             foreach($bots as $bot){
                $botuser = $bot->getUser();
                $override = $bot->get('override');

                if($override > 0){ 

                    $od = new Document($override);
                    $response = $od->returnOutputAndEval();
                    sleep(2);
                    $this->submit($botuser,$response, 0);

                }else{
         
                    $response_doc = $bot->respondTo($chat_message);
                    if($response_doc){
                       $response = $response_doc->returnOutputAndEval();
                       sleep(2);
                       $this->submit($botuser,$response, 0);

                    }
                }

            }
       }
     }
    }

    function submit_emote($user,$chat_message){
        $this->submit($user,$chat_message,1);
    }

    function submit_msg($user,$chat_message){
        $this->submit($user,$chat_message,0);
    }

    function clear(){


        $table = $this->get('table');
        $dbh = $this->_dbh;
        $q = "TRUNCATE $table";
        $dbh->exec($q);
    }
}

