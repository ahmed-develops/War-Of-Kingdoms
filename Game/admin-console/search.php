<?php 
error_reporting(0);
session_start();
if($_REQUEST['code']!=$_SESSION['code']){
		header("location: index.php?error=1");
		die;
	}
?>


<html>
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<head>
		<title>Search</title>
		
	</head>
	<body>
		<form action="find.php" method="post">
		Name<input type="text" value="" name="username" id="username">
		<input type="submit" name="select" value="Search"> 
		</form>

		
		</div>
	</body>


</html>