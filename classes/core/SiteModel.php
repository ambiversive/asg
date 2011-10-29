<?php

class SiteModel {
    private $dbh;
    private $aspects;
    private $commands;
    private $users;
    private $chats;

    function __construct($dbh){
        $this->initialize($dbh);
    }

    function initialize($dbh){
        $this->dbh = $dbh;
        $this->initChats();
        $this->initAspects();
        $this->initUsers();
    }

    // if a user has the aspect on, set it to refresh
    function refreshAspectIfNeccessary($aspect_preference){
        global $config;
        $aprefs = $config['tables']['aspect_preferences_table'];
        $q = "UPDATE $aprefs SET $aspect_preference = '2' WHERE $aspect_preference = '1'";
        $dbh = $this->dbh;
        $sth = $dbh->prepare($q);
        $sth->execute(array());        
    } 
   
    function documentExists($id){
        global $config;
        $dbh = $this->dbh;
        $documents_table = $config['tables']['documents_table'];
        $q = "SELECT id FROM $documents_table WHERE id=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id));
        if($sth->rowCount() == 1){ return true; }else{ return false; }
    }

    function updateArbitrary($table, $column, $id, $value){
        $dbh = $this->dbh;
        $q = "UPDATE $table SET $column = '$value' WHERE id='$id'";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
    }

    function getFeeds(){
        global $config;
        $table = $config['tables']['rss_feeds_table'];
        $dbh = $this->dbh;
        $q = "SELECT id FROM $table";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        while($row = $sth->fetch()){
            $returnMe[] = new Feed($row['id']);
        }
      
        return $returnMe;

    }

    function getItemTypes(){

        $dbh = $this->dbh;
        global $config;
        $table = $config['tables']['item_types_table'];
        $q = "SELECT id FROM $table ORDER BY id";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        while($row = $sth->fetch()){
            $returnMe[] = new ItemType($row['id']);
        }

        return $returnMe;
    }


    function getSiteOptions(){
        $dbh = $this->dbh;
        global $config;
        $dbname = $config["db"]["dbname"];
        $table = $config["tables"]["options_table"];

        $colsql = "select column_name from information_schema.columns where table_name='$table' AND table_schema='$dbname'";
 
        $colres = $dbh->query($colsql);
   
        $rowsql = "SELECT * FROM $table WHERE id='1'";
        $rowres = $dbh->query($rowsql);
        $rowrow = $rowres->fetch();

        while($colrow = $colres->fetch()){
            $colname = $colrow['column_name'];
            if($colname != 'id'){
                $optval = $rowrow[$colname];
                $options[$colname] = $optval;
             }
        }

        return $options;
    }

    function getAspectSets($access){
        global $config;
        $table = $config['tables']['aspect_sets_table'];
        $dbh = $this->dbh;

        $q = "SELECT id FROM $table WHERE access >= $access ORDER BY id";
        $sth = $dbh->prepare($q);
        $sth->execute();
        while($row = $sth->fetch()){
            $id = $row['id'];
            $returnMe[] = new AspectSet($id);
        }

        return $returnMe;
    }

    function addCommand($keyword, $help, $doc, $access){
        global $config;
        $table = $config['tables']['commands_table'];

        $dbh = $this->dbh;
        $q = "INSERT INTO $table VALUES ('',?,?,?,?);";
        $sth = $dbh->prepare($q);
        $sth->execute(array($keyword,$doc,$help,$access));
    }

    function getCommands($access){
        global $config;
        $table = $config['tables']['commands_table'];

        $dbh = $this->dbh;
        $q = "SELECT * FROM $table WHERE access>=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($access));
        while($row = $sth->fetch()){
            $id = $row['id'];
            $com = new Command($id);
            $returnMe[] = $com;
        }

        return $returnMe;
    }

    function getAccessName($lvl){
        global $config;
        $table = $config['tables']['access_levels_table'];

        $dbh = $this->dbh;
        $q = "SELECT name FROM $table WHERE access=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($lvl));
        $row = $sth->fetch();
        return $row['name'];
    }

    function getUserArray(){
        global $config;
        $table = $config['tables']['users_table'];

        $dbh = $this->dbh;
        $sql = "SELECT full_name,id FROM $table ORDER by id";
        $sth = $dbh->prepare($sql);
        $sth->execute(array());
        while($row = $sth->fetch()){
             $id = $row['id'];
             $name = $row['full_name'];
             $returnMe[$id] = $name;
        }

        return $returnMe;
     }
    
    function getActiveUsers(){
        global $config;
        $table = $config['tables']['users_table'];

        $dbh = $this->dbh;
        $q = "SELECT id FROM $table WHERE last_active > DATE_SUB(NOW(), INTERVAL 5 MINUTE)";
        $sth = $dbh->prepare($q);
        $sth->execute(array());

        while($row = $sth->fetch()){
            $returnMe[] = new User($row['id']);
        }

        return $returnMe;

    }

    function countActiveBots(){
        global $config;
        $table = $config['tables']['bots_table'];

        $dbh = $this->dbh;
        $q = "SELECT Count(id) FROM $table WHERE active='1'";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        $row = $sth->fetch();
        return $row['Count(id)'];
    }

    function countInactiveBots(){
        global $config;
        $table = $config['tables']['bots_table'];

        $dbh = $this->dbh;
        $q = "SELECT Count(id) FROM $table WHERE active='0'";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        $row = $sth->fetch();
        return $row['Count(id)'];
    }

    function getInactiveBots(){
        global $config;
        $table = $config['tables']['bots_table'];

        $dbh = $this->dbh;
        $num_inactive = $this->countInactiveBots();
        if($num_inactive > 0){
            $q = "SELECT id FROM $table WHERE active='0'";
            $sth = $dbh->prepare($q);
            $sth->execute(array());
            while($row = $sth->fetch()){
                $returnMe[] = new Bot($row['id']);
            }
            return $returnMe;
       }else{
           return 0;
       }
    }

    function getActiveBots(){
        global $config;
        $table = $config['tables']['bots_table'];

        $dbh = $this->dbh;
        $num_active = $this->countActiveBots();
        if($num_active > 0){
            $q = "SELECT id FROM $table WHERE active='1'";
            $sth = $dbh->prepare($q);
            $sth->execute(array());
            while($row = $sth->fetch()){
                $returnMe[] = new Bot($row['id']);
            }
            return $returnMe;
       }else{
           return 0;
       }
    }

    function getStylesDocId(){
        global $config;
        $table = $config['tables']['options_table'];

        $dbh = $this->dbh;
        $sql = "SELECT styles_doc_id FROM $table WHERE id='1'";//that one should be a variable
        $sth = $dbh->prepare($sql);
        $sth->execute(array());
        $row = $sth->fetch();
        return $row['styles_doc_id'];
    }

    function getAccessLevels(){
        global $config;
        $table = $config['tables']['access_levels_table'];

        $dbh = $this->dbh;
        $sql = "SELECT * FROM $table ORDER BY access";
        $result = $dbh->query($sql);
        foreach($result as $row){
            $access_level_id = $row['id'];
            $access_level = $row['access'];
            $access_level_name = $row['name'];

            $returnMe[$access_level] = $access_level_name;
        }

        return $returnMe;
    }

    function initAspects(){
        global $config;
        $table = $config['tables']['aspects_table'];

        $this->aspects = null;
        $dbh = $this->dbh;
        $sql = "SELECT * FROM $table ORDER BY id";
        $result = $dbh->query($sql);
        foreach($result as $row){
            $current_asp = new Aspect($row['id']);
            $this->aspects[] = $current_asp;
        }
    }

    function initUsers(){
        global $config;
        $table = $config['tables']['users_table'];

        $this->users = null;
        $dbh = $this->dbh;
        $sql = "SELECT * FROM $table ORDER BY id";
        $result = $dbh->query($sql);
        foreach($result as $row){
            $current_user = new User($row['id']);
            $this->users[] = $current_user;
        }
    }

    function initChats(){
        global $config;
        $table = $config['tables']['chats_table'];

        $this->chats = null;
        $dbh = $this->dbh;
        $sql = "SELECT * FROM $table ORDER BY id";
        $result = $dbh->query($sql);
        foreach($result as $row){
            $current_chat = new Chat($row['id']);
            $this->chats[] = $current_chat;
        }
    }

    function getMainChat(){
        if(is_array($this->chats)){
            return $this->chats[0];
        }else{
            return $this->chats;
        }
    }

    function getAspects($userAccess){
        global $config;
        $table = $config['tables']['aspects_table'];

        $q = "SELECT id FROM $table WHERE access >= ?";
        $dbh = $this->dbh;
        $sth = $dbh->prepare($q);
        $sth->execute(array($userAccess));
        while($row = $sth->fetch()){
            $asp_id = $row['id'];
            $aspects[] = new Aspect($asp_id);
        }
        return $aspects;
    }

    function getUsers(){
        return $this->users;
    }

    function getDocuments($access = 0){
        global $config;
        $dbh = $this->dbh;
        $documents_table = $config['tables']['documents_table'];
        $q = "SELECT id FROM $documents_table WHERE access = '$access' ORDER BY id";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        while($row = $sth->fetch()){
            $returnMe[] = new Document($row['id']);
        }
       
        return $returnMe;
    }

    function getRevisions(){
        global $config;
        $dbh = $this->dbh;
        $revisions_table = $config['tables']['document_revisions_table'];
        $q = "SELECT id FROM $revisions_table ORDER BY id";
        $sth = $dbh->prepare($q);
        $sth->execute(array());
        while($row = $sth->fetch()){
            $returnMe[] = new DocumentRevision($row['id']);
        }
        
        return $returnMe;
    }
 

    function getChats(){
        return $this->chats;
    }

    function getBots(){
        global $config;
        $table = $config['tables']['bots_table'];

        $dbh = $this->dbh;
        $q = "SELECT id FROM $table";
        $sth = $dbh->query($q);
        while($row = $sth->fetch()){
            $bots[] = new Bot($row['id']);
        }
        return $bots;
    }

    function userExists($username){
        global $config;
        $table = $config['tables']['users_table'];

        $dbh = $this->dbh;
        $users_table = $this->users_table;
        $sql = "SELECT Count(id) FROM $table WHERE username = ?";
        $sth = $dbh->prepare($sql);
        $sth->execute(array($username));
        $row = $sth->fetch();

        if($row['Count(id)'] > 0){
            return true;
        }else{
            return false;
        }
    }

    function fetchUser($username){
        global $config;
        $table = $config['tables']['users_table'];

        $dbh = $this->dbh;
        $sql = "SELECT id FROM $table WHERE username = ?";
        $sth = $dbh->prepare($sql);
        $sth->execute(array($username));
        $row = $sth->fetch();
        $user_id = $row['id'];
        return new User($user_id);
    }
 
    function fetchAspects($access){
        global $config;
        $table = $config['tables']['aspects_table'];

        $dbh = $this->dbh;
        if($dbh!=null){
            $sql = "SELECT * FROM $table WHERE access >= '$access'";
            $res = $dbh->query($sql);
            while($row = $res->fetch()){
                $asp_id = $row['id'];
                $returnMe[] = new Aspect($asp_id);
            }
           return $returnMe;
        }
    }

    function fetchRootDocuments($access){
        global $config;
        $table = $config['tables']['documents_table'];
        $dbh = $this->dbh;
        if($dbh!=null){
            $sql = "SELECT id FROM $table WHERE access >= '$access' AND parent_id='0' AND hidden<>'1'";
            $res = $dbh->query($sql);
            while($row = $res->fetch()){
                $doc_id = $row['id'];
                $returnMe[] = new Document($doc_id);
            }

            return $returnMe;
        }
    }

    function getLinks(){
        global $config;
        $dbh = $this->dbh;
        $links_table = $config['tables']['links_table'];
        $q = "SELECT id FROM $links_table ORDER BY id";
        $sth = $dbh->query($q);
        while($row = $sth->fetch()){
            $lid = $row['id'];
            $returnMe[] = new Link($lid);
        }
        return $returnMe;
    }

}


