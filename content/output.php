<?php
include('../top.php');

    $zoid = $_GET['oid'];
    $alwaysEval = $_GET['always'];

    $doc = new Document($zoid);
    $doc_access = $doc->getAccess();
    $eval = $doc->getEvaluate();
    $user_access = $_SESSION['session_accessLevel'];

     if($alwaysEval!="true"){

        if($eval==1){
            $doc->outputAndEval();
        }else{ 
            print $doc->getContent();
        }

    }else{
       $doc->outputAndEval();
    }