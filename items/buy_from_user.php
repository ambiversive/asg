<?php

include('./database/db_connect.php');
include_once('./classes/user.php');
include_once('./classes/item.php');
include_once('./classes/item_type.php');
session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
       $dbh = db_connect();
       $item_id=$_GET["item_id"];
       $list_id=$_GET["list_id"];
       $item_price = $_GET['price_wanted'];

       $userid = $_SESSION['session_userid'];
       $name = $_SESSION['session_fullName'];

       $item = new Item($item_id,$dbh);
       $item_type = $item->getTypeId();
       $item_owner = $item->getOwnerId();
     
       $type = new ItemType($item_type,$dbh);
       $type_name = $type->getName();
       $owner = new User($item_owner,$dbh);
       $owner_name = $owner->getFullName();
       $account_balance = $owner->getBalance();

       if($account_balance - $item_price >= 0){

              $newbalance = $account_balance - $item_price;
              $_SESSION['session_balance'] = $newbalance;

  	      $Q3 = "UPDATE item_instances SET who_owns_me=? WHERE id=?";
  	      $sth = $dbh->prepare($Q3);
  	      $sth->execute(array($userid,$item_id));

              $Q4 = "UPDATE users SET account_balance=? WHERE ID=?";
              $sth = $dbh->prepare($Q4);
              $sth->execute(array($newbalance,$userid));

              $Q5 = "DELETE FROM listings WHERE item_id=?";
              $sth = $dbh->prepare($Q5);
              $sth->execute(array($item_id));
              
              chatline("buys a $type_name from $owner_name.");

       }else{

              chatline("is too poor to afford a ".$item_type.".");

       }

        print "<script>window.location=\"index.php\"</script>";

}
?>
	