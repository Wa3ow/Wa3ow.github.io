<?php
$serverName = "MF086PC16\SQLEXPRESS"; //serverName\instanceName

// Since UID and PWD are not specified in the $connectionInfo array,
// The connection will be attempted using Windows Authentication.
$connectionInfo = array( "Database"=>"Internship");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

$ID=$_post['IDNUMBER'];
$CO=$_post('companyName');
$PO=$_post('position');
$NU=$_post('numberOfSeats');
$CHM=$_post('majorDropdown');
$dateS=$_post('startDate');
$dateE=$_post('endDate');

$inserta="INSERT INTO Internship VALUES (Admin_ID, Company_Name, Request_Status, Internship_Position, Major_Request, Internship_Start_Date, Internship_End_Date, Internship_Seat)";

$Sbm=sqlsr_prepare($conn,$inserta);








if( sqlsrv_execute($Sbm) ) {
     echo "Connection established.<br />";
}else{
     echo "Connection could not be established.<br />";
     die( print_r( sqlsrv_errors(), true));
}
?>