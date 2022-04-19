<?php 
	$conn = mysqli_connect("localhost","root","") or die ("MySQL Not Connect");
	mysqli_select_db($conn,"codderfactorydb") or die ("Datebase Not Found");
?>