<?


include_once("./database/db_connect.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
    $dbh = db_connect();
    $userid = $_SESSION['session_userid'];
    $name = $_SESSION['session_fullName'];

	$query = "DELETE FROM item_instances";
	$result = $dbh->exec($query);

    chatline("deletes all item instances.");

       print "<script>window.location=\"index.php\"</script>";
}