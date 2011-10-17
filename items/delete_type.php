<?php
include_once("./database/db_connect.php");
include_once("./classes/item_type.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
$dbh = db_connect();
$uid = $_SESSION['session_userid'];
$name = $_SESSION['session_fullName'];

 if($_POST['type_id']){
  $type_id = $_POST['type_id'];
  $type = new ItemType($type_id,$dbh);
  $tname = $type->getName();
  
  $qX = "DELETE FROM item_types WHERE id=?";
  $sth = $dbh->prepare($qX);
  $sth->execute(array($type_id));

  $q = "DELETE FROM item_instances WHERE what_am_i=?";
  $sth = $dbh->prepare($q);
  $sth->execute(array($type_id));

  chatline("deletes item type: $tname.");
 }

       print "<script>window.location=\"index.php\"</script>";

}