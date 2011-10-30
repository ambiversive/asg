<?php

include_once("../top.php");


if($access==0){
    $table = $_POST['table'];
    $column = $_POST['column'];
    $row_id = $_POST['row_id'];
    $value = $_POST['value'];

    $myModel->updateArbitrary($table, $column, $row_id, $value);
    chatline("sets [table: $table |row: $row_id | column: $column | value: $value]");
}
