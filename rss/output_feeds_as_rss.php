<?php 
    include_once("../top.php"); 
    $baseUrl = $config['urls']['baseUrl'];
    $rss_desc = $options['rss_description'];
    header("Content-type: text/xml"); 
    $out = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>";
    print $out;
?>

<rss version="2.0">

<channel>
  <title><?=$title?></title>
  <link><?=$baseUrl?></link>
  <description><?=$rss_desc?></description>
<?php



    $feeds = $myModel->getFeeds();
    $n = 0;
    $feeds = array_reverse($feeds);
    foreach($feeds as $feed){
        print "<item>";
        print "<title>";
        print $feed->get('title');
        print "</title>";
        print "<link>";
        print $feed->get('url');
        print "</link>";
        print "<description></description>";
        print "<pubDate></pubDate>";
        print "</item>";
        $n++;
        if($n > 40){ break; }
    }

?>
</channel>
</rss>
