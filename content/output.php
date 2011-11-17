<?php
include('../top.php');

    $zoid = (int)$_GET['oid'];
    $alwaysEval = $_GET['always'];

    if($myModel->documentExists($zoid)){
        $doc = new Document($zoid);
        $doc_access = $doc->get('access');
        $zeval = $doc->get('evaluate');
    }


//    if($access <= $doc_access){

        if($alwaysEval!="true"){

            if($zeval==1){
                $doc->outputAndEval();
            }else{ 
                print $doc->getContent();
            }

        }else{
            $doc->outputAndEval();
        }
//    }
