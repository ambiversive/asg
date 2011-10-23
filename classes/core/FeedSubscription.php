<?php

class FeedSubscription {
 private $id;
 private $feed_id;
 private $user_id;


 function __construct($id = null, $dbh = null, $feed_id = null, $user_id = null){
  $this->initialize($id, $dbh, $feed_id, $user_id);
 
 }

 function initialize($id = null, $dbh = null, $feed_id = null, $user_id = null){
   $this->id = $id;
   $this->dbh = $dbh;

  if($dbh!=null&&$id!=null){
   $sql = "SELECT * FROM rss_subscriptions WHERE id=?";
   $sth = $dbh->prepare($sql);
   $result = $sth->execute(array($id));
   $row = $result->fetch();
   if($feed_id!=null){
    $this->feed_id = $feed_id;
   }else{
    $this->feed_id = $row['rss_feed'];
   }
 
   if($user_id!=null){
    $this->user_id = $user_id;
   }else{
    $this->user_id = $row['user_id'];
   }
  }

 }

 function describe(){
  print "<h2>FeedSubscription:</h2>";
  print "<ul>";
  print "<li>Id: $this->id</li>";
  print "<li>FeedId: $this->feed_id</li>";
  print "<li>UserId: $this->user_id</li>";
  print "</ul>";
 }

 function getId(){
  return $this->id;
 }

 function setId($new_id){
  $this->id = $new_id;
 }
 
 function getUserId(){
  return $this->user_id;
 }

 function setUserId($new_uid){
  $this->user_id = $new_uid;
 }

 function getFeedId(){
  return $this->feed_id;
 }

 function setFeedId($new_id){
  $this->feed_id = $new_id;
 }
}
