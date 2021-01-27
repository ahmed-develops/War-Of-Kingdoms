<?php
$mysqli = new mysqli('127.0.0.1','root','123456'); 
$link = mysql_connect('127.0.0.1','root','123456'); 
if (!$link) { 
	die('Could not connect to MySQL: ' . mysql_error()); 
} 
echo 'Connection OK'; mysql_close($link); 
?> 
