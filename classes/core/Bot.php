<?php

class Bot extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['bots_table'];
        parent::__construct($id);
    }

    function setId($new_id){
        $this->set('id', $new_id);
    }

    function getId(){
        return $this->get('id');
    }

    function getContentId(){
        return $this->get('content_id');
    }

    function setContentId($new_id){
        $this->content_id = $new_id;
    }

    function setActive($new_active){
        $this->set('active', $new_active);
    }

    function getActive(){
        return $this->get('active');
    }

    function setFocusUserId($new_focus){
        $this->set('focus_user', $new_focus);
    }

    function getFocusUserId(){
        return $this->get('focus_user');
    }

    function getFocusUser(){
        return new User($this->get('focus_user'));
    }

    function setState($new_state){
        $this->set('state', $new_state);
    }

    function setUserId($new_bid){
        $this->set('bot_userid', $new_bid);
    }

    function getUserId(){
        return $this->get('bot_userid');
    }

    function getUser(){
        return new User($this->get('bot_userid'));
    }

    function getState(){
        return $this->get('state');
    }

    function getStateDoc(){
        return new Document($this->get('state'));
    }

    //this returns an array of command/response pairs
    function getCommands(){
        $state_doc = $this->getStateDoc();
        $state_children = $state_doc->getChildren(0);//not sure what access level to use here
        return $state_children;
    }

    function respondTo($keyword){
        $dbh = $this->_dbh;
        global $config;
        $doc_table = $config['tables']['documents_table'];
        $state = $this->get('state');
        $q = "SELECT id FROM $doc_table WHERE title=? AND parent_id=? LIMIT 1";
        $sth = $dbh->prepare($q);
        $sth->execute(array($keyword,$state));
        if($sth->rowCount() > 0){
            $row = $sth->fetch();
            return new Document($row['id']);
        }else{
            return false;
        }
    }
 
    function activate(){
        $id = $this->_id;
        $dbh = $this->_dbh;
        $table = $this->_table;

        $q = "UPDATE $table SET active='1' WHERE id=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id));
    }

    function deactivate(){
        $id = $this->_id;
        $dbh = $this->_dbh;
        $table = $this->_table;

        $q = "UPDATE $table SET active='0' WHERE id=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id));
    }

    static function newBot($bot_content,$focus_user,$bot_state,$bot_user){
        global $config;
        $bots_table = $config['tables']['bots_table'];
        $dbh = db_connect();
        $q = "INSERT INTO $bots_table VALUES ('',?,'1',?,?,?)";
        $sth = $dbh->prepare($q);
        $sth->execute(array($bot_content,$focus_user,$bot_state,$bot_user));
    }

    static function getBots($active,$focus){
        global $config;
        $bots_table = $config['tables']['bots_table'];
        $dbh = db_connect();
        $q = "SELECT id FROM $bots_table WHERE active=? AND focus_user=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($active,$focus));

        while($row = $sth->fetch()){
            $returnMe[] = new Bot($row['id']);
        }

        return $returnMe;
    }
}
