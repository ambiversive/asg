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
        $this->renderMenu();
        foreach($this->public_docs as $doc){
            $doc_title = $doc->get('title');
            $doc_id = $doc->get('id');
            $doc_content = $doc->returnOutputAndEval();
            print "<h2 id=\"p$doc_id\">$doc_title</h2>";
            print "<div id=\"pubdoc_content_$doc_id\">$doc_content</div>";
        }
    }

    function renderMenu(){
        print "<div id=\"pubmenu\">";
        print "<ul>";
        foreach($this->public_docs as $doc){
            $doc_title = $doc->get('title');
            $doc_id = $doc->get('id');
            print "<li><a href=\"#p$doc_id\">$doc_title</a></li>";
        }
        print "</ul>";
        print "</div>";

    }

} 
