<?php
?>
<?php
require_once "pdo.php";
session_start();
if ( !isset($_POST['date']) )
 return;
echo('present'.$_POST['date']);
$selected_date=$_POST['date'];
$selected_from=$_POST['from'];
if($selected_from==="RGIA" || strtolower($selected_from)=="RGIA")
{
$sql="SELECT DISTINCT stop_name FROM `schedule` INNER JOIN trip_details ON schedule.route_id=trip_details.route_id where trip_details.Date=:selected_date and trip_details.From=:selected_from";
$stmt = $pdo->prepare($sql);
$stmt->execute(array(':selected_date' => $selected_date, ':selected_from'=>$selected_from));
$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
if($row==false)
{echo('<script>alert("Sorry!! NO trips found for selection made.");</script>');
 echo('<script>location.reload();</script>');}

else{
echo('<option disabled selected value> -- select an option -- </option>');
foreach ($row as $r) {

	echo("<option value=\"".$r['stop_name']."\">".$r['stop_name'].'</option>');
}
}
}
else
{   $RGIA="RGIA";
echo('<option disabled selected value> -- select an option -- </option>');
	echo('<option value='.$RGIA.'>'.$RGIA.'</option>');
}
