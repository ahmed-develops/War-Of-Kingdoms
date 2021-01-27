<?php
require_once 'config.php';
header("content-type:text/html;charset=utf8");
$conn=mysql_connect($config['host'],$config['dbuser'],$config['dbpswd']);
if(!$conn){
	
	die(mysql_error());
}
mysql_select_db($config['db']);
mysql_query("set names utf8");
$sql="select uid,name,gold from userprofile order by gold desc";
$res=mysql_query($sql);
echo "<center>";
echo"<table border='1' cellspaceing='0' cellpadding='0' height='100%' width='100%'>";
echo "<tr><td><font color='blue'>昵称</font></td><td><font color='gold'>金币</font></td></tr>";
while($row=mysql_fetch_assoc($res)){
echo "<tr><td>{$row['name']}</td><td>{$row['gold']}金币</td></tr>";
	
}
echo "</table>";
echo "</center>";


?>