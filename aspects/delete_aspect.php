<?php

   include_once("../top.php");

   if($access == 0){
       $delete_id = $_POST['delete_id'];
       $asp = new Aspect($delete_id);
       $asp->get('title');
       $asp->delete();
       chatline("deletes aspect $title.");
   }
