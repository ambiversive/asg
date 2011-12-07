<?php

    include("../top.php");
    $relation_type_id = $_POST['relation_type_id'];
    $relation_type = new ItemRelationType($relation_type_id);
    $relation_type_name = $relation_type->get('name');
 
    $relation_type->delete();
    chatline("deletes relation type: $relation_type_name");
