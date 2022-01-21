<?php //SELECT DISTINCT `From`,`To` FROM trip_details WHERE `Date`="2020-05-24"
//INSERT INTO `trip_details`(`From`, `To`, `Availability`, `Date`, `Start_time`, `Cost`, `route_id`) VALUES ("RGIA","Delhi",55,"20200524",153000,799,3)
//?>
<?php
require_once "pdo.php";
session_start();
if ( !isset($_POST['date']) )
 return;

$selected_date=$_POST['date'];
$selected_from=$_POST['from'];
$selected_to=$_POST['to'];
$selected_time=$_POST['time'];
$route_id=0;

if($selected_from=="RGIA" || strtolower($selected_from)=="RGIA")
{

$sql = "SELECT DISTINCT schedule.route_id,trip_details.Unique_tripID FROM `schedule` INNER JOIN trip_details ON schedule.route_id=trip_details.route_id where trip_details.Date=:selected_date and stop_name=:selected_to and `From`=:selected_from";
$stmt = $pdo->prepare($sql);
$stmt->execute(array(':selected_date' => $selected_date,':selected_from'=>$selected_from,							':selected_to'=>$selected_to));
$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
if($row==false)
{
}

else{

foreach ($row as $r) {

	$route_id=$r['route_id'];
	$Unique_tripID=$r['Unique_tripID'];


}
$_SESSION['Unique_tripID']=$Unique_tripID;
$_SESSION['route_id']=$route_id;
}


}
else
{
	 //SELECT DISTINCT `To` FROM `schedule` INNER JOIN trip_details ON schedule.route_id=trip_details.route_id where trip_details.Date=20200430

//$sql = "SELECT DISTINCT `Start_time` FROM trip_details WHERE `Date`=:selected_date and `From`=:selected_from ";
$sql = "SELECT DISTINCT schedule.route_id,trip_details.Unique_tripID FROM `schedule` INNER JOIN trip_details ON schedule.route_id=trip_details.route_id where trip_details.Date=:selected_date and ( stop_name=:selected_from or `From`=:selected_from )and `To`=:RGIA";
$stmt = $pdo->prepare($sql);
$stmt->execute(array(':selected_date' => $selected_date, ':selected_from'=>$selected_from,':RGIA'=>"RGIA"));
$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
if($row==false)
{
}

else{

foreach ($row as $r) {

	$route_id=$r['route_id'];
	$Unique_tripID=$r['Unique_tripID'];



}
$_SESSION['Unique_tripID']=$Unique_tripID;
$_SESSION['route_id']=$route_id;
}

}

$sql = "SELECT DISTINCT `Availability`,`Cost` FROM trip_details WHERE trip_details.route_id=:route_id AND Unique_tripID=:uid ";
$stmt = $pdo->prepare($sql);
$stmt->execute(array(':route_id' => $route_id,':uid'=>$_SESSION['Unique_tripID']));
$row = $stmt->fetchAll(PDO::FETCH_ASSOC);

else{*/

foreach ($row as $r) {

	echo($r['Availability']);
	echo(','.$r['Cost']);
}
}
