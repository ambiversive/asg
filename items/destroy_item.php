<?php

include_once("./database/db_connect.php");
include_once("./classes/item_type.php");
include_once("./classes/item.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
 if(isset($_POST["item_id"]))
 {
       $dbh = db_connect();
       $item_id=$_POST["item_id"];
       $item = new Item($item_id,$dbh);
       $type = new ItemType($item->getTypeId(),$dbh);
       $type_name = $type->getName();
       $destructor_id = $type->getDestructorId();

	$userid = $_SESSION['session_userid'];

	$query = "DELETE FROM item_instances WHERE id=?";
	$sth = $dbh->prepare($query);
	$sth->execute(array($item_id));
        	   

        chatline("destroys $type_name.");
        $x = returnOutputAndEval($destructor_id);

       print "<script>window.location=\"index.php\"</script>";
	

 }else{

	print "Error, no data specified.";
	
 }
}

?>