<?php

    include("../top.php");
    $instance_id = $_POST['instance_id'];
    $instance = new ItemInstance($instance_id);
    $instance_type_name = $instance->getTypeName();
    $instance->delete();
    chatline("deletes item instance $instance_id of type $instance_type_name.");
