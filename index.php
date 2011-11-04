<?php
 include_once("top.php");
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title><?=$title?></title>
    <link href="images/favicon.png" rel="icon" type="image/x-png" />
    <style type="text/css">
        <?php
            include("css/dynamic_style.php");
        ?>
    </style>
    <script type="text/javascript" src="apps/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="apps/jquery.localscroll-1.2.7-min.js"></script>
    <script type="text/javascript" src="apps/jquery.scrollTo-min.js"></script>
    <script type="text/javascript" src="js/js_init.php"></script>
    <script type="text/javascript" src="js/js_polling.php"></script>
    <script type="text/javascript" src="js/js_core.php"></script>
    <script type="text/javascript" src="js/js_rss.js"></script>
    <script type="text/javascript" src="apps/ace/ace.js" charset="utf-8"></script>
    <script type="text/javascript" src="apps/ace/theme-twilight.js" charset="utf-8"></script>
    <script type="text/javascript" src="apps/ace/mode-css.js" charset="utf-8"></script>
    <script type="text/javascript" src="apps/ace/mode-html.js" charset="utf-8"></script>
    <script type="text/javascript" src="apps/ace/mode-javascript.js" charset="utf-8"></script>
    <script type="text/javascript" src="apps/ace/mode-php.js" charset="utf-8"></script>
</head>

<body>

<?php 
    if($_SESSION['session_loggedIn']!=$uniqueID){
        $myPublisher = new Publisher($myModel);
        $myPublisher->render();
    }else{ 
?>

    <div id="command_line">
    <input id="chatmsg"> 
    <div id="aspect_sets">
    <?php
        $aspsets_doc = new Document($aspsets);
        $aspsets_doc->outputAndEval();
    ?>
    </div>
    </div>
    <div id="all_aspects"></div>
    <?php
  
 } 
?>
</body>

</html>
