<?php
/*
    File: update.php
    Author: ambiversive
 
    Expecting:
        $_POST['table']
        $_POST['column']
        $_POST['row_id']
        $_POST['value']

    Description:
        This file provides a convenient way to update an arbitrary
        value in an arbitrary table.

*/
include_once("../top.php");


if($access==0){
    $table = $_POST['table'];
    $column = $_POST['column'];
    $row_id = $_POST['row_id'];
    $value = $_POST['value'];

    $myModel->updateArbitrary($table, $column, $row_id, $value);
    chatline("sets [table: $table |row: $row_id | column: $column | value: $value]");
}
