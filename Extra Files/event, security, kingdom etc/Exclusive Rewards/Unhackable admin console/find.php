<html>
	<body>
	
	
<?php
error_reporting(0);
ini_set('max_execution_time', 300); //300 seconds = 5 minutes
			require_once('./config.php');
			mysql_connect($config['host'],$config['dbuser'],$config['dbpswd']) or die("sql error");
			$username=$_POST['username'];
			mysql_select_db($config['db']);
			mysql_query("set names utf8");
			$one=array();
			
				$sql="select * from worldpoint where ownername='$username'";
				$res2=mysql_query($sql);
				echo "<table border=1 width=100% heght=100%>";
				echo "<tr><td>Username</td><td>coordinates</td></tr>";
				while($row2=mysql_fetch_assoc($res2)){
					$one.=$row2;
					echo "<tr><td>$username</td><td>{$row2['x']}:{$row2['y']}</td></tr>";
					
					
					
				}
				
				
			?>
			
</html>