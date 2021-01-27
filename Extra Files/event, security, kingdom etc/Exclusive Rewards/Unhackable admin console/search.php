<?php 
error_reporting(0);
session_start();
require_once("./include/membersite_config.php");

if(!$fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("login.php");
    exit;
}
?>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

		  
		  <div id='fg_membersite_content'>
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