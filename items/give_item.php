<?

include_once("./database/db_connect.php");
include_once("./classes/item.php");
include_once("./classes/item_type.php");
include_once("./classes/user.php");
session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
 if(isset($_POST["user_id"]) && isset($_POST["item_id"]))
 {
        $dbh = db_connect();
        $user_id=$_POST["user_id"];
        $item_id=$_POST["item_id"];

	$userid = $_SESSION['session_userid'];
        $name = $_SESSION['session_fullName'];

	$query = "UPDATE item_instances SET who_owns_me=? WHERE id=?";
	$sth = $dbh->prepare($query);
        $sth->execute(array($user_id,$item_id));

        $item = new Item($item_id,$dbh);
        $typeID = $item->getTypeId();
        
        $type = new ItemType($typeID,$dbh);
        $typeName = $type->getName();
        $transfer_id = $type->getTransferId();

        $give_user = new User($user_id,$dbh);
        $userName = $give_user->getFullname();

       $x = returnOutputAndEval($transfer_id);
       chatline("gives $typeName to $userName.");
       off_pref('show_give', $userid,$dbh);
       print "<script>window.location=\"index.php\"</script>";

 }else{
	print "Error, no data specified.";
 }
}
?>