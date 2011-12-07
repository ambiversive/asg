<?php

    include("../top.php");
    $relation_id = $_POST['relation_id'];
    $relation = new ItemRelation($relation_id);
   
    $item_type_a_id = $relation->get('item_type_a_id');
    $item_type_b_id = $relation->get('item_type_b_id');
    $item_relation_type_id = $relation->get('relation_id');
    
   
    $relation->delete();
    chatline("deletes relation $relation_id ($item_type_a_id $item_relation_type_id $item_type_b_id)");
