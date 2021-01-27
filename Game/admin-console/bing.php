<html>
	<body>
<?php
			require_once('./config.php');
			mysql_connect($config['host'],$config['dbuser'],$config['dbpswd']) or die("sql error");
			$username=$_POST['username'];
			mysql_select_db($config['db']);
			mysql_query("set names utf8");
			$one=array();
			$sql="select uid from userprofile where name='$username'";
			$res=mysql_query($sql) or die("error1");
			if($row=mysql_fetch_assoc($res)){
				$uid=$row['uid'];
				$sql="select * from user_army where uid=$uid";
				$res2=mysql_query($sql);
				echo "<table border=1 width=100% heght=100%>";
				echo "<tr><td>兵</td><td>数量</td><td>等级</td></tr>";
				while($row2=mysql_fetch_assoc($res2)){
					$one[]=$row2;

					echo "<tr><td>{$row2['armyId']}</td><td><input type='text' readonly id='number' name='number' value='{$row2['free']}'></td><td><input type='text' readonly name='level' value='{$row2['level']}'></td></tr>";
					
					
				}
				
				
				
				
				
				
				
				
				
			}else{
				
				die("error2");
			}
			
			
				
			?>
			
</html>