<?php
 include_once("top.php");
 $modulator = $_SESSION['modulator'];
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
<?php
    if($loggedIn){
        foreach($config['private_javascript'] as $js_file){
?>
            <script type="text/javascript" src="<?=$js_file?>" charset="utf-8"></script>

<?php
        }
    }else{
        foreach($config['public_javascript'] as $js_file){
?>
            <script type="text/javascript" src="<?=$js_file?>" charset="utf-8"></script>

<?php
        }
    } 

?>
</head>

<body>

<?php 
    if(!$loggedIn){
        $myPublisher = new Publisher($myModel);
        $myPublisher->render();
    }else{ 
?>

    <div id="command_line">
    <input id="modulator" title="modulator alters where chat messages go" value="<?=$modulator?>"><input id="chatmsg"> 
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
