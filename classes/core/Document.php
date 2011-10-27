<?php

class Document extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['documents_table'];
        parent::__construct($id);
    }

    function getId(){
        return $this->get('id');
    }

    function getContent(){
        return $this->get('content');
    }

    function getTitle(){
        return $this->get('title');
    }
 
    function getAccess(){
        return $this->get('access');
    }

    function getAuthorId(){
        return $this->get('author');
    }

    function getAuthor(){
        $author_id = $this->get('author');
        $author = new User($author_id);
        return $author;
    }
 
    function getParent(){
        $parent_id = $this->get('parent_id');
        if($parent_id != 0){
            $parent = new Document($parent_id);
            return $parent;
        }else{
            return 0;
        }

    }

    function getParentId(){
        return $this->get('parent_id');
    }

    function getHidden(){
        return $this->get('hidden');
    }
 
    function getLocked(){
        return $this->get('locked');
    }
 
    function setLocked($new_lock){
        $this->set('locked',$new_lock);
    }
 
    function getEvaluate(){
        return $this->get('evaluate');
    }
 
    function setContent($new_content){
        $this->set('content',$new_content);
    }

    function setAccess($new_access){
        $this->set('access',$new_access);
    }

    function setTitle($new_title){
        $this->set('title', $new_title);
    } 

    function setHidden($new_hidden){
        $this->set('hidden',$new_hidden);
    }

    function setParentId($new_parent_id){
        $this->set('parent_id',$new_parent_id);
    }

    function setAuthorId($new_author_id){
        $this->set('author_id', $new_author_id);
    }

    function setEvaluate($new_evaluate){
        $this->set('evaluate', $new_evaluate);
    }

    function eraseContent(){
        $this->set('content', "");
    }

    function delete(){
        $dbh = $this->_dbh;
        $table = $this->_table;
        $id = $this->_id;

        if($this->numChildren() > 0){
           $children = $this->getChildren(0);
           foreach($children as $child){
               $child->delete();
           }
        }
 
        $q = "DELETE FROM $table WHERE id=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id));
    }

    

    function numChildren(){
        $dbh = $this->_dbh;
        $id = $this->_id;
        $table = $this->_table;

        $q = "SELECT Count(*) FROM $table WHERE parent_id=?";
        $r = $dbh->prepare($q);
        $r->execute(array($id));
        $row = $r->fetch();
        $num_children = $row['Count(*)'];
        return $num_children;
    }

    function isNullContent(){
        if($this->get('content') == ""){
            return true;
        }else{
            return false;
        }
    }
 
    function getChildren($access){
        $dbh = $this->_dbh;
        $id = $this->_id;
        $table = $this->_table;

        $q = "SELECT * FROM $table WHERE parent_id=? AND hidden='0' AND access>=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id,$access));

        while($row = $sth->fetch()){
            $child_id = $row['id'];
            $returnMe[] = new Document($child_id);
        }

        return $returnMe;
    }

    function outputAndEval(){

        $id = $this->_id;
        $dbh = $this->_dbh;
        $thisContent = $this->get('content');
             
        ob_start();
        eval("?>" . $thisContent . "<?php ");
	$output = ob_get_contents();
	ob_end_clean();

	print $output;
    }

    function move($new_parent_id){
        $this->set('parent_id',$new_parent_id);
    }

    public function returnOutputAndEval(){
        $thisContent = $this->get('content');
              
        ob_start();
        eval("?>" . $thisContent . "<?php ");
        $output = ob_get_contents();
        ob_end_clean();

        return $output;

    }

    function outputSelectList($select_name, $access){
        $children = $this->getChildren($access);
        print "<select id=\"$select_name\" name=\"$select_name\">";
        foreach($children as $child_doc){
            $title = $child_doc->getTitle();
            $child_id = $child_doc->getId();
            print "<option value=\"$child_id\">$title</option>";

        }
        print "</select>";
    }

    static function newDocument($title, $content, $author, $parent, $hidden, $evaluate){
        $dbh = db_connect();
        global $config;
        $doc_table = $config['tables']['documents_table'];
        $insertQuery = "INSERT INTO $doc_table VALUES ('',?,?,'0',?,?,'0',?,?)";
        $sth = $dbh->prepare($insertQuery);
        $insertResult = $sth->execute(array($title, $content, $author, $parent, $hidden, $evaluate));
        return $dbh->lastInsertId();
    }


}

