<?php
include 'connected.php';
// $host="192.168.109.134";
// $username="sysop";
// $pass_word="sysop";
// $db="seiscomp";


//$conn = mysqli_connect( $host,$username,$pass_word,$db) or die ("Fail");

//$sql = "SELECT * FROM Amplitude";
//$result = mysqli_query($conn,$sql);
// if($result){
//   while($row = mysqli_fetch_assoc($result)){
//         echo "Station = ".$row["waveformID_stationCode"]."<br>";
//         echo "Amplitude = ".$row["amplitude_value"]."<br>";
//         echo "Time = ".$row["_last_modified"]."<br>";
//         echo "<br>";
//        // $result = $row;
//     }

//     //echo json_encode($result);
// }

$result = mysqli_query($link, "SELECT * FROM amplitude");
while($row=mysqli_fetch_assoc($result)){
	$output[]=$row;
	}

	echo json_encode($output);


?>
