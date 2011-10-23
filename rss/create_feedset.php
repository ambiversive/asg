<?

include_once("./database/db_connect.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
$dbh = db_connect();

       $userid = $_SESSION['session_userid'];
       $name = $_SESSION['session_fullName'];
       $feedset = $_POST['new_feedset'];
       
       $fq = "INSERT INTO feed_sets VALUES ('',?,?,'1')";
       $sth = $dbh->prepare($fq);
       $sth->execute(array($feedset,$userid));

       $new_fid = $dbh->lastInsertId();

	$query = "UPDATE preferences SET current_feed_set=? WHERE user_id=?";
	$sth = $dbh->prepare($query);
	$sth->execute(array($new_fid,$userid));

       $_SESSION['current_feed_set']=$new_fid;
       chatline("creates feedset $feedset.");

       print "<script>window.location=\"index.php\"</script>";
}
       

?>