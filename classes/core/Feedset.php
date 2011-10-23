<?php

class Feedset {
 private $feeds;
 private $id;
 private $dbh;
 private $name;
 private $owner_id;

 function __construct($id = null, $dbh = null, $feeds = null, $name = null,$owner_id = null){
  $this->initialize($id, $dbh, $feeds, $name,$owner_id);
 }

 function initialize($id = null, $dbh = null, $feeds = null, $name = null, $owner_id = null){
  $this->id = $id;
  $this->dbh = $dbh;

  if($id!=null&&$dbh!=null){

   $q = "SELECT * FROM feed_sets WHERE id=?";
   $sth = $dbh->prepare($q);
   $sth->execute(array($id));
   $row = $sth->fetch();

   if($feeds!=null){
    $this->feeds = $feeds;
   }else{
    $this->initFeeds();
   }

   if($name!=null){
    $this->name = $name;
   }else{
    $this->name = $row['name'];
   }
   
   if($owner_id!=null){
    $this->owner_id = $owner_id;
   }else{
    $this->owner_id = $row['owner_id'];
   }
  }
 }

 function describe(){
  print "<h2>Feedset</h2>";
  print "<ul>";
  print "<li>ID: $this->id</li>";
  print "<li>Name: $this->name</li>";
  print "<li>Number of feeds: ".$this->numFeeds()."</li>";
  print "<li>OwnerId: $this->owner_id</li>";
 }

 function numFeeds(){
  $id = $this->id;
  $dbh = $this->dbh;
  $q = "SELECT Count(*) FROM rss_subscriptions WHERE feed_set=?";
  $sth = $dbh->prepare($q);
  $sth->execute(array($id));
  $row = $sth->fetch();
  return $row['Count(*)'];
 }

 function setId($new_id){
  $this->id = $new_id;
 }
 
 function setDbh($new_dbh){
  $this->dbh = $new_dbh;
 }

 function setFeeds($new_feeds){
  $this->feeds = $new_feeds;
 }

 function save(){
  $id = $this->id;
  $dbh = $this->dbh;
  $name = $this->name;
  //$feeds = $this->feeds;
  
  if($id!=null&&$dbh!=null){
   if($name!=null){
    $q = "UPDATE feed_sets SET name=? WHERE id=?";
    $r = $dbh->execute(array($name,$id));
   }
  }
 }

 function getId(){
  return $this->id;
 }
 
 function getDbh(){
  return $this->dbh;
 }

 function getFeeds(){
  return $this->feeds;
 }

 function getName(){
  return $this->name;
 }
 
 function getOwnerId(){
  return $this->owner_id;
 }
 
 function isMember($feed_id){
  $id = $this->id;
  $dbh = $this->dbh;
  
  $q = "SELECT Count(id) FROM rss_subscriptions WHERE feed_set=? AND rss_feed=?";
  $sth = $dbh->prepare($q);
  $sth->execute(array($id,$feed_id));
  $row = $sth->fetch();
  $num = $row['Count(id)'];
  if($num > 0){ return true; }else{ return false; }
 }

 function initFeeds(){
  $id = $this->id;
  $dbh = $this->dbh;
 
  if($id!=null&&$dbh!=null){
   $q = "SELECT * FROM rss_subscriptions WHERE feed_set=?";
   $sth = $dbh->prepare($q);
   $sth->execute(array($id));
   while($row = $sth->fetch()){
    $fid = $row['rss_feed'];
    $this->feeds[] = $fid;
    //print "<p>feed #$fid in feedset $id</p>";
   }
 
  }
 }

 function addFeed($nfid){
  $id = $this->id;
  $dbh = $this->dbh;
  $user_id = $_SESSION['session_userid'];

  if($dbh!=null&&$id!=null){
   $sql = "INSERT INTO rss_subscriptions VALUES ('',?,?,?)";
   $sth = $dbh->prepare($sql);
   $sth->execute(array($nfid,$user_id,$id));  
  }
  $this->initFeeds();
 }

 function delFeed($nfid){
  $id = $this->id;
  $dbh = $this->dbh;
  $user_id = $_SESSION['session_userid'];

  if($dbh!=null&&$id!=null){
   $sql = "DELETE FROM rss_subscriptions WHERE feed_set=? AND rss_feed=?";
   $sth = $dbh->prepare($sql);
   $sth->execute(array($id,$nfid));
  }
  $this->initFeeds();
 }
}