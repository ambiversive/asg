<?php
include('../top.php');

    foreach($_GET['oid'] as $oid){
        if($myModel->documentExists($oid)){
            
            $q = "SELECT * FROM aspects WHERE function = ?";
            $sth = $dbh->prepare($q);
            $sth->execute(array($oid));
            if($sth->rowCount() == 1){
                $row = $sth->fetch();
                $div = $row['div'];
            }else{
                $div = $oid;
            }
            $doc = new Document($oid);
            print "<div id=\"$div\">";
            print "<div id=\"min_$div\" class=\"rollbar\"><div class=\"x\">X</div></div>";
            $doc->outputAndEval();
            print "</div>";
            print "</div>";
        }
    }

/*
    $zoid = (int)$_GET['oid'];
    $alwaysEval = $_GET['always'];

    if($myModel->documentExists($zoid)){
        $doc = new Document($zoid);
        $doc_access = $doc->get('access');
        $zeval = $doc->get('eval');
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
*/
