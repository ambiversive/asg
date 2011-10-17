<?php

class ChatMessage extends DbTable {

    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['chat_messages_table'];
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