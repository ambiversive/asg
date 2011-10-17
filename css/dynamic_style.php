<?php
    if($_SESSION['session_loggedIn']==$uniqueID){
        $css = $_SESSION['css_id'];
        $css_doc = new Document($css);
        $css_doc->outputAndEval();
    }else{
        $dstyle_doc = new Document($dstyle);
        $dstyle_doc->outputAndEval();
    }
?>
