<?php

   include_once("../top.php");

   $delete_id = $_POST['delete_id'];
   $asp = new Aspect($delete_id);
   $asp->get('title');
   $asp->delete();
   chatline("deletes aspect $title.");
