<?php
    include_once("../top.php");
    if($access == 0){
        $div = $_POST["div"];
        $title = $_POST["title"];
        $command = $_POST["command"];
        $func = $_POST["func"];
        $pref_column = $_POST["pref_column"];
        $session_var = $_POST["session_var"];
        $access = $_POST["newAccess"];
        $ajaxify = $_POST["ajaxify"];
        $desc = $_POST["desc"];

        Aspect::newAspect($div,$title,$command,$func,$pref_column,$session_var,$access,$ajaxify,$desc);
        chatline("creates site aspect <a onclick=\"asgConfig.simcom('/$command')\">$title</a>.");
    }
