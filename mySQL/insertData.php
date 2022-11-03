<?php
	include 'connected.php';
	header("Access-Control-Allow-Origin: *");

if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    
    exit;
}

if (!$link->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $link->error);
    exit();
	}

if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {
		
		$_last_modified = $_GET['_last_modified'];
		$amplitude_value = $_GET['amplitude_value'];		
		$waveformID_stationCode = $_GET['waveformID_stationCode'];
		
		
							
		$sql = "INSERT INTO `amplitude`(`_last_modified`, `amplitude_value`, `waveformID_stationCode`) VALUES ('$_last_modified','$amplitude_value','$waveformID_stationCode')";

		$result = mysqli_query($link, $sql);

		if ($result) {
			echo "true";
		} else {
			echo "false";
		}

	} else echo "Welcome";
   
}
	mysqli_close($link);
?>