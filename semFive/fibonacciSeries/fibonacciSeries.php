<!DOCTYPE html>
<html lang="en">
<head>
	<title>Fibonacci</title>
</head>
<body>
	<h2>Fibonacci Series</h2>
	<form action="" method="POST" name="input_form">
		<input type="number" name="num">
		<input type="submit" value="Submit" name="submit_btn">
	</form>
</body>
</html>

<?php
	if (isset($_POST['submit_btn'])) {
		$n = $_POST['num'];
		echo "Fibonacci numbers ";

		$f = 0; $s = 1;
		echo $f. " ". $s;
		for ($i = 2; $i < $n; $i++) {
			$t = $f + $s;
			echo " ". $t;

			$f = $s; $s = $t;
		}
	}
?>
