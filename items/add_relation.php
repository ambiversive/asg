<?
include_once('./database/db_connect.php');
include_once("./classes/site_model.php");
include_once("./classes/chat.php");
include_once("./classes/user.php");
include_once('./classes/bot.php');
session_start();

if($_SESSION['session_loggedIn']==$uniqueID){
        $dbh = db_connect(); 
        $item = $_POST["item"];
        $isComponentOf = $_POST["isComponentOf"];
        $recyclable = $_POST["recyclable"];
        if(!$recyclable){ $recyclable = 0; }
        $essential=$_POST["essential"];
        if(!$essential){ $essential = 0; }

       //print "item: $item iscomponentof: $isComponentOf recyclable: $recyclable essential: $essential";
       $userid = $_SESSION['session_userid'];
       $name = $_SESSION['session_fullName'];


        //okay so before I insert the relation I should check to see if it already exists, delete it
        $qx = "SELECT * FROM component_relation WHERE item = ? and isComponentOf = ?";
        $sth = $dbh->prepare($qx);
        $rx = $sth->execute(array($item,$isComponentOf));
        
        if($rx){
           $rxRow = $sth->fetch();
           $del_id = $rxRow['id'];
           $qy = "DELETE FROM component_relation WHERE id='$del_id'";
           $ry = $dbh->exec($qy); 
        }
	$query = "INSERT INTO component_relation VALUES ('',?,?,?,?)";
        $sth = $dbh->prepare($query);
	$result = $sth->execute(array($item,$isComponentOf,$recyclable,$essential));

        $itemQuery = "SELECT * FROM item_types WHERE id=?";
        $sth = $dbh->prepare($itemQuery);
        $itemResult = $sth->execute(array($isComponentOf));
        $itemRow = $sth->fetch();
        $item_type = $itemRow['name'];
        

        $compQuery = "SELECT * FROM item_types WHERE id=?";
        $sth = $dbh->prepare($compQuery);
        $compResult = $sth->execute(array($item));
        $compRow = $sth->fetch();
        $comp_type = $compRow['name'];
        
       $myModel = new SiteModel($dbh);
       $myChat = $myModel->getMainChat();
       $current_user = new User($_SESSION['session_userid'],$dbh);
       $myChat->submit_emote($current_user,"specifies that $comp_type is a component of $item_type.");


       off_pref('show_addrelation', $userid,$dbh);
       print "<script>window.location=\"index.php\"</script>";

       
	

 }else{

	print "Error, no data specified.";
	
 }

?>