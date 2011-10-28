<?php

class AspectSet extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['aspect_sets_table'];
        parent::__construct($id);
    }

    function getName(){
        return $this->get('name');
    }
 
    function getAccess(){
        return $this->get('access');
    }

    function getPreferences(){
        $dbh = $this->_dbh;
        $table = $this->_table;
        $id = $this->get('id');

        $q = "SELECT * FROM $table WHERE id=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id));
        $row = $sth->fetch();

        foreach($row as $key => $val){
            if(!is_int($key)){
                if($key != 'id' && $key != 'access' && $key != 'name'){
                   $preferences[$key] = $val;
                }
            }
        }
        
        return $preferences;
    }

    function getCmds(){
        $dbh = $this->_dbh;
        $table = $this->_table;
        $id = $this->_id;

        $q = "SELECT * FROM $table WHERE id = ?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id));
        $row = $sth->fetch();
 
        foreach($row as $key => $val){
            if(!is_int($key)){
                if($key != 'id' && $key != 'access' && $key != 'name'){
                    if($val == 1){
                        $q = "SELECT command FROM aspects WHERE pref_column = '$key'";
                        $sth = $dbh->prepare($q);
                        $sth->execute(array());
                        $zrow = $sth->fetch();
                        $cmds[] = $zrow['command'];
                    }
                }
            }
        }
        return $cmds;
    }

    static function newAspectSet($name, $access){
        $dbh = db_connect();
        global $config;
        $dbname = $config['db']['dbname'];
        $asets = $config['tables']['aspect_sets_table'];
        $aprefs = $config['tables']['aspect_preferences_table'];
        $uid = $_SESSION['session_userid'];

        $sql = "INSERT INTO $asets VALUES ('','$name','$access',";

        $rowsql = "SELECT * FROM $aprefs WHERE user_id='$uid'";
        $rowres = $dbh->query($rowsql);
        $row = $rowres->fetch();

        $colsql = "select column_name from information_schema.columns where table_name='$asets' AND table_schema='$dbname'";
        $colres = $dbh->query($colsql);

        while($colrow = $colres->fetch()){
            $colname = $colrow['column_name'];
            if($colname != 'id' && $colname != 'name' && $colname != 'access'){
                $v = $row[$colname];       
                 $sql .= "'$v',";
               }
               
        }

        $sql = substr($sql,0,-1);
        $sql .= ");";
        $res = $dbh->exec($sql);

    }

}
