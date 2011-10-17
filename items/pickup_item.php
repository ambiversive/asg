<?


include_once("./database/db_connect.php");
include_once("./classes/item_type.php");
include_once("./classes/item.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
 if(isset($_GET["item_id"]))
 {
        $dbh = db_connect();
        $item_id=$_GET["item_id"];

        $xp = $_SESSION['x_position'];
        $yp = $_SESSION['y_position'];
        $zp = $_SESSION['z_position'];
        $dom = $_SESSION['domain'];

	$userid = $_SESSION['session_userid'];
        $name = $_SESSION['session_fullName'];
 
	$query = "UPDATE item_instances SET who_owns_me='$userid' WHERE id='$item_id'";
	$sth=  $dbh->prepare($query);
	$result = $sth->execute(array($userid,$item_id));
            
       $item = new Item($item_id,$dbh);
       $it_tid = $item->getTypeId();
       $item_type = new ItemType($it_tid,$dbh);
       $typeName = $item_type->getName();
       chatline("picks up $typeName from ($xp,$yp,$zp,$dom).");

       print "<script>window.location=\"index.php\"</script>";

 }else{

	print "Error, no data specified.";
	
 }
}