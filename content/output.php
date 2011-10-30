<?php
include('../top.php');

    $zoid = (int)$_GET['oid'];
    $alwaysEval = $_GET['always'];


    if($access <= $doc_access){

        $doc = new Document($zoid);
        $doc_access = $doc->getAccess();
        $zeval = $doc->getEvaluate();

        if($alwaysEval!="true"){

            if($zeval==1){
                $doc->outputAndEval();
            }else{ 
                print $doc->getContent();
            }

        }else{
            $doc->outputAndEval();
        }
    }
