<?php 
    include_once("../top.php"); 
    $baseUrl = $config['urls']['baseUrl'];
    $rss_desc = $options['rss_description'];
?>

<?xml version="1.0" encoding="ISO-8859-1" ?>
<rss version="2.0">

<channel>
  <title><?=$title?></title>
  <link><?=$baseUrl?></link>
  <description><?=$rss_desc?></description>
<?php



    $links = $myModel->getLinks();
    foreach($links as $link){
        print "<item>";
        print "<title>";
        print $link->get('title');
        print "</title>";
        print "<link>";
        print $link->get('url');
        print "</link>";
        print "</item>";
    }

?>
</channel>
</rss>
