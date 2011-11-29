<?php

class ItemRelation extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['item_relations_table'];
        parent::__construct($id);
    }        


    static function newItemRelation($item_a_id, $item_b_id, $relation_type){
        $dbh = db_connect();
        global $config;
        $table = $config['tables']['item_relations_table'];
        $q = "INSERT INTO $table VALUES ('',?,?,?)";
        $sth = $dbh->prepare($q);
        $sth->execute(array($item_a_id, $item_b_id, $relation_type));
    }
}
