<?php


include_once("./database/db_connect.php");
include_once("./classes/feedset.php");
include_once("./classes/feed.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
$dbh = db_connect();
$uid = $_SESSION['session_userid'];
$name = $_SESSION['session_fullName'];

 if($_POST['feed_id']){
  $feed_id = $_POST['feed_id'];
  $userid = $_SESSION["session_userid"];
  $current_feed_set = $_SESSION['current_feed_set'];
  $qX = "DELETE FROM rss_subscriptions WHERE rss_feed=? AND feed_set=?";
  $sth = $dbh->prepare($qX);
  $sth->execute(array($feed_id,$current_feed_set));
  $fset = new Feedset($current_feed_set,$dbh);
  $fname = $fset->getName();
  $feed = new Feed($feed_id,$dbh);
  $title = $feed->getTitle();
  
  chatline("removes $title from feedset $fname.");
 }

       print "<script>window.location=\"index.php\"</script>";

}