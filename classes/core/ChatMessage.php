<?php

class ChatMessage extends DbTable {

    protected $_table;

    function __construct($id,$table){
        global $config;
        $this->_table = $table;
        parent::__construct($id);
    }

    function getId(){
        return $this->get('id');
    }

    function getMsg(){
        return $this->get('msg');
    }

    function getUserId(){
        return $this->get('user_id');
    }

    function getTimestamp(){
        return $this->get('timestamp');
    }

    function getUnixTimeStamp(){
        $table = $this->_table;
        $dbh = $this->_dbh;
        $id = $this->_id;
 
        $q = "SELECT UNIX_TIMESTAMP(timestamp) FROM $table WHERE id='$id'";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        $row = $sth->fetch();
        return $row['UNIX_TIMESTAMP(timestamp)'];
    }
 
    function getTimestampString(){
        $timestamp = $this->get('timestamp');
        return date("D M j G:i:s",$timestamp);
    }

    function isEmote(){
        $is_emote = $this->get('is_emote');

        if($is_emote == 1){
            return true;
        }else{
           return false;
        }
    }
}
