<!DOCTYPE html>
<html lang="en">
<head>
	<title>Armstrong</title>
</head>
<body>
	<h2>Armstrong Number</h2>
	<form name="armstrong" method="POST" action=" ">
		<input type="number" name="num">
		<input type="submit" name="submit">
	</form>
</body>
</html>

<?php

if (isset($_POST['submit'])){
	$num = $_POST['num'];
	$digits = strlen( (string)$num );
	
	for ($n = $num, $sum = 0; $n > 0; $n /= 10){
		$rem = $n % 10;
		$sum += pow($rem, $digits);
	}

	if ($num == $sum)
		echo $num ." is an Armstrong number";
	else
		echo $num ." is not an Armstrong number";
}

?>
