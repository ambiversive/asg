<?php

class Publisher {

    private $myModel;
    private $public_docs;
    
    function __construct($myModel, $public_docs = null){
        //print "<p>Constructing Publisher...</p>";
        if(!isset($public_docs)){
            $this->public_docs = $myModel->getDocuments(5);//public is 'visitor' = access 5 
        }else{
            $this->public_docs = $public_docs;
        }
        //$n = count($this->public_docs);
        //print "<p>Found $n public documents..</p>";
    }

    function render(){
        foreach($this->public_docs as $doc){
            $doc_title = $doc->get('title');
            $doc_id = $doc->get('id');
            print "<div id=\"$doc_id\"></div>";
            $doc->outputAndEval();
        }
    }

} 
