<?php

class Aspect extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['aspects_table'];
        parent::__construct($id);
    }

    function setCssClass($new_css){
        $this->set('css_class', $new_css);
    }

    function getCssClass(){
        return $this->get('css_class');
    }

    function getDiv(){
        return $this->get('div');
    }

    function setDiv($new_div){
        $this->set('div', $new_div);
    }

    function getId(){
        return $this->get('id');
    }
 
    function setId($new_id){
        $this->set('id', $new_id);
    }

    function getTitle(){
        return $this->get('title');;
    }
 
    function setTitle($new_title){
        $this->set('title', $new_title);
    }

    function getCommand(){
        return $this->get('command');
    }

    function setCommand($new_command){
        $this->set('command', $new_command);
    }
 
    function getFunctionId(){
        return $this->get('function');
    }
 
    function setFunctionId($new_fid){
        $this->set('function', $new_fid);
    }
 
    function getAccess(){
        return $this->get('access');
    }

    function setAccess($new_access){
        $this->set('access', $new_access);
    }
 
    function getPrefColumn(){
        return $this->get('pref_column');
    }

    function setPrefColumn($new_pcol){
        $this->pref_column = $new_pcol;
    }

    function getSessionVar(){
        return $this->get('session_var');
    }

    function setSessionVar($new_svar){
        $this->set('pref_column', $new_svar);
    }

    function getAjaxify(){
        return $this->get('ajaxify');
    }
  
    function setAjaxify($new_ajaxify){
        $this->set('ajaxify', $new_ajaxify);
    }

    function getDescription(){
        return $this->get('description');
    }

    function setDescription($new_desc){
        $this->set('description', $new_desc);
    }

    function delete(){
        $dbh = $this->_dbh;
        $id = $this->_id;
        $pref_column = $this->get('pref_column');
        global $config;
        $atab = $config['tables']['aspects_table'];
        $aprefs = $config['tables']['aspect_preferences_table'];
        $asets = $config['tables']['aspect_sets_table'];

        $q = "DELETE FROM $atab WHERE id = ?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id));

        $q = "ALTER $aprefs DROP $pref_column";
        $sth = $dbh->prepare($q);
        $sth->execute(array());

        $q = "ALTER $asets DROP $pref_column";
        $sth = $dbh->prepare($q);
        $sth->execute(array());


    }

    static function newAspect($div,$title,$command,$func,$pref_column,$session_var,$access,$ajaxify,$desc){

        global $config;
        $atab = $config['tables']['aspects_table'];
        $aprefs = $config['tables']['aspect_preferences_table'];
        $asets = $config['tables']['aspect_sets_table'];

        $dbh = db_connect();
	$q = "INSERT INTO $atab VALUES ('',?,?,?,?,?,?,?,?,?,'aspect_default','')";
        $sth = $dbh->prepare($q);
        $sth->execute(array($div,$title,$command,$func,$pref_column,$session_var,$access,$ajaxify,$desc));
	
        $q = "ALTER TABLE $aprefs ADD $pref_column TINYINT NOT NULL";
        $sth = $dbh->exec($q);      
        
        $q = "ALTER TABLE $asets ADD $pref_column TINYINT NOT NULL";
        $sth = $dbh->exec($q);
    }
  
}
