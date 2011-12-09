<?php
    include("../top.php");
    if(!($loggedIn && $access <= 1)){ die(); }
    $type_id = $_POST['type_id'];
    $type = new ItemType($type_id);
    $type_name = $type->get('name');
    $type->delete();
    chatline("deletes Item Type $type_name.");
