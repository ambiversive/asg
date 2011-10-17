<?php

include("../top.php");

$keyword = $_POST['keyword'];
$help = $_POST['help_desc'];
$doc = $_POST['document_id'];
$access = $_POST['access_level'];

if(isset($keyword) && isset($help) && isset($doc) && isset($access)){
 $myModel->addCommand($keyword, $help, $doc, $access);
 chatline("adds a new command: /$keyword ($help) (<a onclick=\"asgConfig.simcom('/go $doc')\">code</a>)");
?>
    <script type="text/javascript">window.location='../index.php?id=<?=$doc?>'</script>
<?php
}else{
 print "<p>Error!</p>";
}
