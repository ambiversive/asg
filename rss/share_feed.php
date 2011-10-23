<?

include_once("./database/db_connect.php");
include_once("./classes/site_model.php");
include_once("./classes/chat.php");
include_once("./classes/user.php");
session_start();

if($_SESSION['session_loggedIn']==$uniqueID){

 $dbh = db_connect();
 if($_POST["rss_title"] && $_POST["rss_url"])
 {
	$rss_title = $_POST["rss_title"];
	$rss_url = $_POST["rss_url"];

	$userid = $_SESSION['session_userid'];
        $name = $_SESSION['session_fullName'];
 
        $q = "INSERT INTO rss_feeds VALUES ('',?,'0',?,?)";
        $sth = $dbh->prepare($q);
        $r = $sth->execute(array($rss_url, $userid, $rss_title));
        chatline("submits a rss feed: $rss_title.");
        //print "<script>window.location=\"index.php\"</script>";
       //$myModel = new SiteModel($dbh);
       //$chat = $myModel->getMainChat();
       //$mote = "submits&nbsp;a&nbsp;rss feed:&nbsp;$rss_title.";
       //$user = new User($userid,$dbh);
       //$chat->submit_emote($user, $mote);
       //off_pref('show_share', $userid);

 }else{

	print "Error, no title or url specified.";
	
 }

}

?>