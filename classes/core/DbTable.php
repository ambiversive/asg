<?php

abstract class DbTable {
    static protected $_cols;
    static protected $_fields;
    static protected $_dbh;
    static protected $_id;

    public function __construct($id, $dbhx = null) {
        global $config;
        $dbname = $config['db']['dbname'];
        global $dbh;
        $this->_id = $id;
        $_table = $this->_table;
        //print "<p>Constructing DbTable (id: $id table: $_table db: $dbname)..</p>";
        $this->_dbh = $dbh;
        //First let's ensure there is a record for this id 

        $q = "SELECT Count(id) FROM $_table WHERE id=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id)); 
        $row = $sth->fetch();
        if($row['Count(id)']!=1){ die("Error, no record found ($id / $_table / $dbname)!"); }

        if (!isset(self::$_cols)) {
              $colsql = "select column_name from information_schema.columns where table_name='$_table' AND table_schema='$dbname'"; 
               $colres = $dbh->query($colsql);

               while($colrow = $colres->fetch()){
                   $colname = $colrow['column_name'];
                   $this->_cols[] = $colname;
               }
        }
        $_cols = $this->_cols;
        if(!isset(self::$_fields)){

          $q = "SELECT * FROM $_table WHERE id=?";
          $sth = $dbh->prepare($q);
          $sth->execute(array($id));
          $row = $sth->fetch();
          foreach($_cols as $col){
           $this->_fields[$col] = $row[$col];
          }
      
        }
    }

   function getCols(){
     return $this->_cols;
   }

   function getFields(){
     return $this->_fields;
   }

   function get($colname){
     return $this->_fields[$colname];
   }

   function set($colname,$value){
     $table = $this->_table;
     $dbh = $this->_dbh;
     $id = $this->_id;
     $q = "UPDATE $table SET $colname = ? WHERE id = ?";
     $sth = $dbh->prepare($q);
     $sth->execute(array($value,$id));
     $this->_fields[$colname] = $value;
   }

   function delete(){
     $table = $this->_table;
     $dbh = $this->_dbh;
     $id = $this->_id;
     $q = "DELETE FROM $table WHERE id = ?";
     $sth = $dbh->prepare($q);
     $sth->execute(array($id));
   }

   function toForm($actionURL){
        $table = $this->_table;
        $dbh = $this->_dbh;
        $id = $this->_id;
        $cols = $this->_cols;
        ?>
            <form method="POST" action="<?=$actionURL?>">
        <?php
            foreach($cols as $col){
            $val = $this->get($col);
        ?>
            <label for="<?=$col?>"><?=$col?></label><input type="text" value="<?=$val?>" name="<?=$col?>">
        <?php
            }
        ?>
        <input type="submit">
        </form>
        <?php
   }
}
