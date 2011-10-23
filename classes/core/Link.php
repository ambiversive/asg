<?php

class Link extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->$_table = $config['tables']['links_table'];
    }

    function upvote($user_id){
        $dbh = $this->_dbh;
        $id = $this->_id;
        global $config;
        $link_votes_table = $config['tables']['link_votes_table'];

        $q = "SELECT id FROM link_votes WHERE user_id = ? AND link_id = ?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($uid, $id));

        if($sth->rowCount() == 1){
            $q = "UPDATE link_votes SET up_or_down = '1'";
            $sth = $dbh->exec($q);
        }else{
            $q = "INSERT INTO link_votes VALUES ('',?,?,'1',NOW())";
            $sth = $dbh->prepare($q);
            $sth->execute(array($id,$uid));
        }
        
    }

    function downvote($user_id){
        $dbh = $this->_dbh;
        $id = $this->_id;
        global $config;
        $link_votes_table = $config['tables']['link_votes_table'];

        $q = "SELECT id FROM link_votes WHERE user_id = ? AND link_id = ?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($uid, $id));

        if($sth->rowCount() == 1){
            $q = "UPDATE link_votes SET up_or_down = '0'";
            $sth = $dbh->exec($q);
        }else{
            $q = "INSERT INTO link_votes VALUES ('',?,?,'0',NOW())";
            $sth = $dbh->prepare($q);
            $sth->execute(array($id,$uid));
        }
        
    }

    static function newLink($url, $title, $user_id){
        global $config;
        $dbh = db_connect();
        $table = $config['tables']['links_table'];

        $handle = fopen($url, "r");
         if($handle){
          $full_text = stream_get_contents($handle);
         }else{
          $full_text = '';
        }
        $query = "INSERT INTO $table VALUES ('',?,?,?,?,NOW(),'1','0')";
        $sth = $dbh->prepare($query); 
        $sth->execute(array($url, $title, $full_text, $user_id));
    }
}