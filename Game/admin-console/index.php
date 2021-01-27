<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
		<title>COKgold</title>
		
	
	</head>
	<body>
		<center>
		<form action="start.php" method="post" >
			<input type="text" value="admin" name="user">
			<input type="hidden" name="key1" value="<?php echo md5("1234567890");?>">
			<input type="password" name="pswd" value="">
			<input type="submit" value="Submit">
		</center>
		
	</body>



</html>
<?php
	require_once("config.php");
	
	if(!empty($_GET['error'])){
		
		echo "<script>alert('Invalid username or password');window.location='index.php'</script>";
		
	}


?>
