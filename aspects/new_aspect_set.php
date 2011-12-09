<?php
    include("../top.php");
    if($access == 0){
        $uid = $_SESSION['session_userid'];
        $set_name = $_POST['set_name'];
        $set_access = $_POST['set_access'];

        AspectSet::newAspectSet($set_name, $set_access);
    }
