<?php
    include("../top.php");
    if(!$loggedIn && $access <= 1){ die(); }

    $name = $_POST['name'];
    $desc = $_POST['desc'];

    ItemType::newItemType($name,$desc);
    chatline("creates new item type: $name");
