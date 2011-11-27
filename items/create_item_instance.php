<?php

    include("../top.php");

    $type_id = $_POST['type_id'];
    $owner_id = $_SESSION['session_userid'];
    $type = new ItemType($type_id);
    $type_name = $type->get('name');

    ItemInstance::newItemInstance($owner_id, $type_id);
    chatline("creates an instance of $type_name.");
