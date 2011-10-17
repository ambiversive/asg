<?

include_once("./database/db_connect.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
 if(isset($_POST["item_id"]))
 {
  $dbh = db_connect();
  $item_id=$_POST["item_id"];
  //$typeName = TypeNameFromItemId($item_id);

  $userid = $_SESSION['session_userid'];
  $name = $_SESSION['session_fullName'];

  $query = "DELETE FROM item_instances WHERE id=?";
  $sth = $dbh->prepare($query);
  $sth->execute(array($item_id));
     
  chatline("eats a $typeName.");
  //restoreHealth($userid);
  print "<script>window.location=\"index.php\"</script>";

 }else{

	print "Error, no data specified.";
	
 }
}

?>