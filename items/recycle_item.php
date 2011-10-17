<?php

include_once("./database/db_connect.php");
include_once("./classes/user.php");
include_once("./classes/item_type.php");
include_once("./classes/item.php");
session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
       $dbh = db_connect();
       $userid = $_SESSION['session_userid'];
       $name = $_SESSION['session_fullName'];
       $ux = $_SESSION['x_position'];
       $uy = $_SESSION['y_position'];
       $uz = $_SESSION['z_position'];
       $ud = $_SESSION['domain'];

       $item_type = $_POST['item_type'];
       $item_id = $_POST['item_id'];

       $wQ = "SELECT * FROM component_relation WHERE isComponentOf=?";
       $sth = $dbh->prepare($wQ);
       $sth->execute(array($item_type));


        while($wRow = $sth->fetch()){
         
         $recyclable = $wRow['recyclable'];
         $essential = $wRow['essential'];
         $item = $wRow['item'];

         if($recyclable){
           $sql = "INSERT INTO item_instances VALUES ('',?,?,?,?,?,?)";
           $sth2 = $dbh->prepare($sql);
           $sth2->execute(array($userid,$item,$ux,$uy,$uz,$ud));
           
         }
         
        }

        $type = new ItemType($item_type,$dbh);
        $type_name = $type->getName();

        chatline("recycles a $type_name.");
        
        $q = "DELETE FROM item_instances WHERE id=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($item_id));
   

       print "<script>window.location=\"index.php\"</script>";
}