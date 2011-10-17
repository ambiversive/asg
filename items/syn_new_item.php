<?

include_once("./database/db_connect.php");
include_once("./classes/user.php");
include_once("./classes/item_type.php");
include_once("./classes/item.php");
session_start();

$items = $_POST['source_items'];
$item_type = $_POST['item_type'];
$dbh = db_connect(); 


function syn($items, $item_type, $userid, $dbh){

  if(is_array($items)){
   foreach($items as $instance){
    $item = new Item($instance,$dbh); 
    $type = $item->getTypeId();
    $source_types[] = $type;
   }
  }else{
    print "error.. or feature?";
  }
  
  $final_type = new ItemType($item_type,$dbh);
  $finalTypeName = $final_type->getName();
  $user = new User($userid,$dbh);
  $name = $user->getFullname(); 
  $q = "SELECT Count(id) FROM component_relation WHERE isComponentOf=?";
  $sth = $dbh->prepare($q);
  $sth->execute(array($item_type));
  $numrow = $sth->fetch();
  
  $numberOfComponents = $numrow['Count(id)'];
  //print "<p>Item type $finalTypeName has $numberOfComponents components.</p>";
  if($numberOfComponents>1){
   $q = "SELECT item FROM component_relation WHERE isComponentOf=? ORDER BY id DESC";
   $sth = $dbh->prepare($q);
   $sth->execute(array($item_type));
  
   while($row = $sth->fetch()){

    $component = $row['item'];
    $checklist[] = $component;
    //print "<p>Adding $component to checklist.</p>";
   }

   rsort($source_types);

   $ok = false;
   foreach($checklist as $key => $check){
    
    $thischeck = $source_types[$key];
    if($check == $thischeck){ $ok = true; }else{ $ok = false; }
    //print "<p>Checking checklist against source types..($thischeck vs $check)</p>";
   }
   
   if($ok){
    foreach($items as $instance_id){
     $q = "DELETE FROM item_instances WHERE id=?";
     $sth = $dbh->prepare($q);
     $sth->execute(array($instance_id));
    }
    
    $ux = $_SESSION['x_position'];
    $uy = $_SESSION['y_position'];
    $uz = $_SESSION['z_position'];
    $ud = $_SESSION['domain'];
    
    $sql = "INSERT INTO item_instances VALUES ('',?,?,?,?,?,?)";
    $sth = $dbh->prepare($sql);
    $sth->execute(array($userid,$item_type,$ux,$uy,$uz,$ud));
    
    chatline("synthesizes a $finalTypeName from its components.");
   }else{
    chatline("tries to make a $finalTypeName but does not know how.");
   }
   return 1;
  }else if($numberOfComponents==1){
    //what the fuck is a one component item
    //a transformer??
    chatline("attempts to transform but that hasn't been coded yet.");
    return 0;
  }else if($numberOfComponents==0){
    //gtfo
    chatline("fails at synthesis.");
    return 0;
  }
}

if($_SESSION['session_loggedIn']==$uniqueID){
 if(isset($items)&&isset($item_type)){
  $userid = $_SESSION['session_userid'];
  $name = $_SESSION['session_fullName'];
  if(is_array($items)){
   syn($items,$item_type,$userid,$dbh);
  }else{
   chatline("tries to transform something.");
  }
  print "<script>window.location=\"index.php\"</script>";
 }
}