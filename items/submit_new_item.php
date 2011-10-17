<?

include_once("./database/db_connect.php");

session_start();

if($_SESSION['session_loggedIn']==$uniqueID)
{
        $dbh = db_connect();
        $item_name=$_POST["item_name"];
        $item_desc=$_POST["item_desc"];
        $item_cost=$_POST["item_cost"];
        $item_weight=$_POST["item_weight"];
        $item_imgurl=$_POST["item_imgurl"];
        $item_is_edible=$_POST["item_is_edible"];
        $item_code=$_POST["item_code"];
        if(!$item_is_edible){ $item_is_edible = 0; }

        $userid = $_SESSION['session_userid'];
        $name = $_SESSION['session_fullName'];
 

	$query = "INSERT INTO item_types VALUES ('',?,?,?,?,?,?,?,'0','0','0','0')";
	$sth = $dbh->prepare($query);
        $sth->execute(array($item_name, $item_desc, $item_cost, $item_weight, $item_imgurl, $item_is_edible, $item_code));

/*        
        $q = "INSERT INTO item_types VALUES ('','$item_name','$item_desc','$item_weight','$item_imgurl','$item_is_edible','$item_code')";
        print $q;
        $dbh->exec($q);
*/
        if($item_is_edible == '1'){
          $edibleword = "&nbsp;edible&nbsp;";
        }else{
          $edibleword = "&nbsp;";
        }

       chatline("creates a new kind of item: $item_name.");
	updateView(1,$dbh);
       print "<script>window.location=\"index.php\"</script>";
}else{

	print "Error, no title or url specified.";
	
}

?>