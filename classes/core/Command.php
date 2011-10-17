<?php

class Command extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['commands_table'];
        parent::__construct($id);
    }

    function getKeyword(){
        return $this->get('keyword');
    }
  
    function getHelpDesc(){
        return $this->get('help_desc');
    }
  
    function getDocumentId(){
        return $this->get('document_id');
    }
 
    function getAccess(){
        return $this->get('access');
    }

    function getId(){
        return $this->get('id');
    }

}
