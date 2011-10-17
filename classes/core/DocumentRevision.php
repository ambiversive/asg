<?php

class DocumentRevision extends DbTable {

    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['document_revisions_table'];
        parent::__construct($id);
    }

    function getId(){
        return $this->get('id');
    }
 
    function getPageId(){
        return $this->get('page_id');
    }
 
    function getUserId(){
        return $this->get('user_id');
    } 

    function getWhen(){
        return $this->get('when');
    }
 
    function getContent(){
        return $this->get('content');
    }

    static function newDocumentRevision($page_id, $user_id, $content){
        global $config;
        $document_revisions_table = $config['tables']['document_revisions_table'];
        $dbh = db_connect();
        $q = "INSERT INTO $document_revisions_table VALUES ('',?,?,?,NOW())";
        $sth = $dbh->prepare($q);
        $sth->execute(array($page_id,$user_id,$content));
    }
}
