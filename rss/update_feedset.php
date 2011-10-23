<?php
/* This ugly ass file takes in a feedset id and then fetches all rss links for that feedset, then writes it to a static html file */

include_once("./database/db_connect.php");
include_once("./classes/feedset.php");
include_once("./classes/feed.php");

$feedset_id = $_GET['feedset_id'];
$dbh = db_connect();
$uid = $_SESSION['session_userid'];

if(isset($feedset_id)){
 print "Feedset id: $feedset_id";
 $feedset = new Feedset($feedset_id, $dbh);
 $feedset->describe();
 $feedset_name = $feedset->getName();
 $feeds = $feedset->getFeeds();

 if(is_array($feeds)){
  foreach($feeds as $fid){
   $feed = new Feed($fid, $dbh);
   $feed->describe();
   $todays_links = $feed->getTodaysLinks();
   if(is_array($todays_links)){
    foreach($todays_links as $link){
     $all_links[] = $link;
    }
   }else{
    $all_links[] = $todays_links;
   }
  }
 }

  ob_start();
  print "<div id=\"today\">";
  if(is_array($all_links)){
   shuffle($all_links);
   echo "<ul>";
   foreach($all_links as $link){
    echo $link;
   }
   echo "</ul>";
  }
  print "</div>";
  $data = ob_get_contents(); 

  $fp = fopen ($feedset_name.".html", "w"); 
  fwrite($fp, $data); 
  fclose($fp);
 
  ob_end_clean();

}else{
 print "No feedset specified.";
}
