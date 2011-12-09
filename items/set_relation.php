<?php
    include("../top.php");
    if(!($loggedIn && $access <= 1)){ die(); }

    $item_type_a_id = $_POST['item_a'];
    $item_type_b_id = $_POST['item_b'];
    $relation_type_id = $_POST['relation_type'];

    $item_type_a = new ItemType($item_type_a_id);
    $item_type_a_name = $item_type_a->get('name');

    $item_type_b = new ItemType($item_type_b_id);
    $item_type_b_name = $item_type_b->get('name');

    $relation_type = new ItemRelationType($relation_type_id);
    $relation_type_name = $relation_type->get('name');

    ItemRelation::newItemRelation($item_type_a_id, $item_type_b_id, $relation_type_id);
    chatline("specifies that: $item_type_a_name $relation_type_name $item_type_b_name.");


