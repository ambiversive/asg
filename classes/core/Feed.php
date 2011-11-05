<?php
include_once("lastRSS.php");

class Feed extends DbTable {
    protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['rss_feeds_table'];
        parent::__construct($id);
    }

    function getRss(){
        $rss = new lastRSS;
        $rss->cache_dir = '../cache/';
        $rss->cache_time = 3600;
        $rss->CDATA = 'strip';
        $rss->stripHTML = TRUE;
        $rs = $rss->get($this->get('url'));
        return $rs;
    }

    function delete(){
        $dbh = $this->_dbh;
        $id = $this->_id;
        global $config;
        $table = $config['tables']['rss_feeds_table'];
        
        $q = "DELETE FROM $table WHERE id=?";
        $sth = $dbh->prepare($q);
        $sth->execute(array($id)); 
    }


    static function newFeed($feed_url, $feed_title, $feed_category, $user_id){

        $dbh = db_connect();
        
        global $config;
        $feeds_table = $config['tables']['rss_feeds_table'];
        $q = "INSERT INTO $feeds_table VALUES ('',?,?,?,?)";
        $sth = $dbh->prepare($q);
        $sth->execute(array($feed_url, $feed_category, $user_id, $feed_title));
    }

    
/*
 function printLinks(){
  $rss = new lastRSS;

  // setup transparent cache
  $rss->cache_dir = './cache';
  $rss->cache_time = 3600; // one hour

  $rs = $rss->get($this->url);
  print "<ul>";
  foreach($rs['items'] as $item){ 
       $tit = $item['title'];
       $url = $item['link'];
       $date = $item['pubDate'];
       //cdata title whyy?? <![CDATA[ ]]
       if(strpos($tit, "CDATA")!=false){
        $tit = substr($tit,9,-3);
       }
       if(strpos($url, "CDATA")!=false){
        $url = substr($url,9,-3);
       }
       if(strpos($date, "CDATA")!=false){
        $date = substr($date,9,-3);
       }
       $tit = str_replace("'", "&#39;", $tit);
       print "<li><a href=\"$url\" title=\"$date\">$tit</a></li>";
  }
  print "</ul>";
 }

 function getLinks(){
  $ftitle = $this->title;
  $rss = new lastRSS;

  // setup transparent cache
  $rss->cache_dir = './cache';
  $rss->cache_time = 3600; // one hour

  $rs = $rss->get($this->url);

  foreach($rs['items'] as $item){ 
       $tit = $item['title'];
       $url = $item['link'];
       $date = $item['pubDate'];
       //cdata title whyy?? <![CDATA[ ]]
       if(strpos($tit, "CDATA")!=false){
        $tit = substr($tit,9,-3);
       }
       if(strpos($url, "CDATA")!=false){
        $url = substr($url,9,-3);
       }
       if(strpos($date, "CDATA")!=false){
        $date = substr($date,9,-3);
       }
       $tit = str_replace("'", "&#39;", $tit);
       $returnMe[] = "<li><a onclick=\"bload('$url')\">[<-]</a><a href=\"$url\" title=\"$ftitle:$date\" target=\"_blank\">$tit</a></li>";
  }
  return returnMe;
 } 

 function getTodaysLinks(){

  $month = substr(date("F"),0,3);
  $day = date("d");
  $dateString = $day." ".$month;

  $ftitle = $this->title;
  $rss = new lastRSS;

  // setup transparent cache
  $rss->cache_dir = './cache';
  $rss->cache_time = 3600; // one hour

  $rs = $rss->get($this->url);
  if($rs){
   foreach($rs['items'] as $item){ 
       $tit = $item['title'];
       $url = $item['link'];
       $tit_en = urlencode($tit);
       $date = $item['pubDate'];
       //cdata title whyy?? <![CDATA[ ]]
       if(strpos($tit, "CDATA")!=false){
        $tit = substr($tit,9,-3);
       }
       if(strpos($url, "CDATA")!=false){
        $url = substr($url,9,-3);
       }
       if(strpos($date, "CDATA")!=false){
        $date = substr($date,9,-3);
       }
       $tit = str_replace("'", "&#39;", $tit);
       if( (strpos($date,$dateString)===false) ){
       
       }else{
        $returnMe[] = "<li><div class=\"link_title\"><a href=\"$url\" title=\"$ftitle:$date\" target=\"_blank\">$tit</a></div></li><li class=\"rss_do\"><a href=\"http://reddit.com/submit?url=$url&title=$tit_en\">[reddit]</a><a onclick=\"bload('$url')\">[metabrowser]</a><a onclick=\"submit_link('$url','$tit')\">[save locally]</a></li>";
       }
    }
  }
  return $returnMe;
 } 
*/
}
