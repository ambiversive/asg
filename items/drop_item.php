<?php

include_once("./database/db_connect.php");
include_once("./classes/item.php");
include_once("./classes/item_type.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
 if(isset($_POST["item_id"]))
 {
        $dbh = db_connect();
        $item_id=$_POST["item_id"];

        $xp = $_SESSION['x_position'];
        $yp = $_SESSION['y_position'];
        $zp = $_SESSION['z_position'];
        $dom = $_SESSION['domain'];
	$userid = $_SESSION['session_userid'];
        $name = $_SESSION['session_fullName'];
 
	$query = "UPDATE item_instances SET who_owns_me='0', x_position=?, y_position=?, z_position=?, domain=? WHERE id=?";
        $sth = $dbh->prepare($query);
        $sth->execute(array($xp,$yp,$zp,$dom,$item_id));
        
        $item = new Item($item_id,$dbh);
        $item_type_id = $item->getTypeId();
        $item_type = new ItemType($item_type_id,$dbh);
        $typeName = $item_type->getName(); 
        $drop_id = $item_type->getDropId();

       chatline("drops $typeName at ($xp,$yp,$zp,$dom).");
       $x = returnOutputAndEval($drop_id);
       print "<script>window.location=\"index.php\"</script>";

 }else{

	print "Error, no data specified.";
	
 }
}

?>