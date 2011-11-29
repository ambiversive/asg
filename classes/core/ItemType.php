<?php

class ItemType extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['item_types_table'];
        parent::__construct($id);
    }        

    function delete(){
        $id = $this->_id;
        $dbh = $this->_dbh;
        $q = "DELETE FROM item_relations WHERE item_type_a_id = '$id' OR item_type_b_id = '$id'";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        parent::delete();

    }

    static function newItemType($name, $description){
        global $config;
        $dbh = db_connect();
        $table = $config['tables']['item_types_table'];
        $q = "INSERT INTO $table VALUES ('',?,?)";
        $sth = $dbh->prepare($q);
        $sth->execute(array($name,$description));
    }
}
