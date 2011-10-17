<?php
    include_once("../top.php");

    $newAccess = $_POST['newAccess'];
    $newLocked = $_POST['newLocked'];
    $newAuthor = $_POST['newAuthor'];
    $newHidden = $_POST['newHidden'];
    $pageID = $_POST['pageID'];
    $newEval = $_POST['newEval'];
    $newParent = $_POST['newParent'];
    $uid = $_SESSION['session_userid'];
    $user = new User($uid);

    if(isset($newAccess) && 
        isset($newLocked) && 
        isset($newHidden) && 
        isset($pageID) && 
        isset($newEval) && 
        isset($newParent)){

            $doc = new Document($pageID);
            $doc->setAccess($newAccess);
            $doc->setHidden($newHidden);
            $doc->setEvaluate($newEval);
            $doc->setLocked($newLocked);
            $doc->setAuthorId($newAuthor);
            $doc->setParentId($newParent);
            $tit = $doc->getTitle();

            chatline("modifies options for <a onclick=\"asgConfig.simcom('/go $pageID')\">$tit</a>.");
            $user->offPreference('show_options');

            print "<script type=\"text/javascript\">window.location='../index.php?id=$pageID'</script>";	

 }else{
   print "<p>Error!</p>";
 }           
?>
