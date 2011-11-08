<?php
    include("../top.php");

    $subs = $_SESSION['subs'];
    $toggle = $_POST['toggle'];
    
    if(isset($toggle)){
        if(!in_array($toggle,$subs)){
            $subs[] = $toggle;   
            $_SESSION['subs'] = $subs;
        }else{
            $subs = array_diff($subs, array("$toggle"));
            $_SESSION['subs'] = $subs;
            
        }
        
    }
