<?php 
error_reporting(0);
session_start();
if($_REQUEST['code']!=$_SESSION['code']){
		header("location: index.php?error=1");
		die;
	}

	
require_once 'config.php';
header("content-type:text/html;charset=utf8");
$conn=mysql_connect($config['host'],$config['dbuser'],$config['dbpswd']);
if(!$conn){
	
	die(mysql_error());
}
mysql_select_db($config['db']);
mysql_query("set names utf8");
$sql="select userprofile.uid,name,gmail,abbr,gold,level from userprofile left join alliance on alliance.uid = userprofile.allianceId order by gold desc";
$res=mysql_query($sql);
$count=0;
echo "<center>";
echo"<table border='1' cellspaceing='0' cellpadding='0' height='100%' width='100%'>";
echo "<tr><td>#</td><td>Uid</td><td><font color='blue'>Name</font><td>Gmail</td><td>Alliance</td><td><font color='gold'>Gold</font></td><td><font color='gold'>Level</font></td></tr>";
while($row=mysql_fetch_assoc($res)){
	$count++;
echo "<tr><td>$count</td><td>{$row['uid']}</td><td>{$row['name']}</td><td>{$row['gmail']}</td><td>{$row['abbr']}</td><td>{$row['gold']}</td><td>{$row['level']}</td></tr>";
	
}
echo "</table>";
echo "</center>";


?>