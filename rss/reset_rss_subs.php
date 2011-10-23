<?
include_once("./database/db_connect.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
       $dbh = db_connect();
       $userid = $_SESSION['session_userid'];
       $name = $_SESSION['session_fullName'];

	$query = "DELETE FROM rss_subscriptions WHERE user_id='$userid'";
	$result = $dbh->exec($query);
     
       chatline("unsubscribes from all feeds.");

       print "<script>window.location=\"index.php\"</script>";
}