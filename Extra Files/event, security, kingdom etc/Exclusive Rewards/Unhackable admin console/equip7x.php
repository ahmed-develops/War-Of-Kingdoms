<?php 
error_reporting(0);
session_start();
require_once("./include/membersite_config.php");

if(!$fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("index.php");
    exit;
}
?>

<html>
	<body>
<?php
			require_once('./config.php');
			mysql_connect($config['host'],$config['dbuser'],$config['dbpswd']) or die("sql error");
			
			mysql_select_db($config['db']);
			mysql_query("set names utf8");
			$one=array();

			$count=0;
				$sql="select name,alliancename,abbr from userprofile inner join alliance on alliance.uid = userprofile.allianceId
 where userprofile.uid in (select uid from user_equip where itemid in ('1055035','1055115','1055215','1055335','1055425')) order by alliancename asc";
				$res2=mysql_query($sql);
				echo "<table border=1 width=100% heght=100%>";
				echo "<tr><td>#</td><td>Username</td><td>Abbr</td><td>Alliance Name</td></tr>";
				while($row2=mysql_fetch_assoc($res2)){
					$count++;
					$one.=$row2;
					echo "<tr><td>$count</td><td>{$row2['name']}</td><td>{$row2['abbr']}</td><td>{$row2['alliancename']}</td></tr>";
					
					
					
				}
				
				
			?>
			
</html>