<?php

class ItemRelationType extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['item_relation_types_table'];
        parent::__construct($id);
    }        

}
