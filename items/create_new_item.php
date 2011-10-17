<?php

include_once("./database/db_connect.php");
include_once("./classes/item_type.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
 if($_POST["item_type"])
 {
       $item_type = $_POST["item_type"];
       $dbh = db_connect();
       $userid = $_SESSION['session_userid'];
       $name = $_SESSION['session_fullName'];
       $ux = $_SESSION['x_position'];
       $uy = $_SESSION['y_position'];
       $uz = $_SESSION['z_position'];
       $domain = $_SESSION['domain'];


       $type = new ItemType($item_type,$dbh);
       $type_name = $type->getName();
       $constructor_id = $type->getConstructorId();
       
       $Q3 = "INSERT INTO item_instances VALUES ('',?,?,?,?,?,?)";
       $sth = $dbh->prepare($Q3);
       $sth->execute(array($userid,$item_type,$ux,$uy,$uz,$domain));

              chatline("creates a $type_name.");
              $x = returnOutputAndEval($constructor_id);
              off_pref('show_create', $userid, $dbh);


        print "<script>window.location=\"index.php\"</script>";

 }else{

	print "Error, no data specified.";
	
 }
}

?>