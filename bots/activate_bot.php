<?php
    include_once("../top.php");
    $current_user = new User($_SESSION['session_userid']);
    $bot_id = $_POST['bot_id'];
    $bot = new Bot($bot_id);
    $bot->activate();
    $bot_user = $bot->getUser();
    $botname = $bot_user->get('full_name');
    chatline("activates $botname.");
    $current_user->offPreference('show_activate');

    print "<script>window.location=\"../index.php\"</script>";
