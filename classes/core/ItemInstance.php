<?php

class ItemInstance extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['item_instances_table'];
        parent::__construct($id);
    }        

    function getTypeName(){
        $id = $this->_id;
        $type_id = $this->get('type_id');
        $type = new ItemType($type_id);
        $type_name = $type->get('name');
        return $type_name;
    }

    static function newItemInstance($owner_id, $type_id){
        global $config;
        $dbh = db_connect();
        $table = $config['tables']['item_instances_table'];
        $q = "INSERT INTO $table VALUES ('',?,?)";
        $sth = $dbh->prepare($q);
        $sth->execute(array($owner_id,$type_id));
    }

}
