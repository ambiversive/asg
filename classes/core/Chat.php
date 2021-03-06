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

    function getTable(){
        return $this->get('table');
    }

    function hasMsgAfter($id){
        $dbh = $this->_dbh;
        $table = $this->get('table');
        $q = "SELECT id FROM $table WHERE id > '$id' ORDER BY id ASC LIMIT 1";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        if($sth->rowCount() > 0){
            $row = $sth->fetch();
            return $row['id'];
        }else{
            return false;
        }        
    }


    function getMessageCount(){
        $dbh = $this->_dbh;
        $table = $this->get('table');
      
        $q = "SELECT id FROM $table";
        $sth = $dbh->query($q);
        return $sth->rowCount();
    }

    function getLastX($x){
        $dbh = $this->_dbh;
        $table = $this->get('table');
        $last_x = null;

        $sql = "SELECT * FROM $table ORDER BY id DESC LIMIT $x";
        $sth = $dbh->prepare($sql);
        $sth->execute(array());

        while($row = $sth->fetch()){
            $msg = new ChatMessage($row['id'],$table);
            $last_x[$msg->getUnixTimestamp()] = $msg;
        }

        return $last_x;
    }

    function submit($user, $chat_message, $is_emote){
        global $config;
        global $options;
        $chat_message = str_replace('?','&#63;',$chat_message);
        $chat_message = str_replace('@','&#64;',$chat_message);
        $chat_message = str_replace('$','&#36;',$chat_message);

        $min = $options['minimum_chat_interval'];
        $max = $options['maximum_message_size'];
        if($max != 0){
            $chat_message = substr($chat_message,0,$max);
        }
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

        if(!$spammer || $access < 4){

            if($access == 4 ){ $chat_message = strip_tags($chat_message); }
 
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

    function getIdOfLastMsg(){
        $dbh = $this->_dbh;
        $table = $this->get('table');
        $q = "SELECT id FROM $table ORDER BY id DESC";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        $row = $sth->fetch();
        return $row['id'];
    }

    function getAllMessages(){
        $dbh = $this->_dbh;
        $table = $this->get('table');
        $q = "SELECT id FROM $table ORDER BY id ASC";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        while($row = $sth->fetch()){
            $returnMe[] = new ChatMessage($row['id'],$table);
        }
        return $returnMe;
    }
}

