<?php
	error_reporting(~E_NOTICE);
	require_once("config.php");
	$username=$_GET['username'];
		$button_pow_lv=$_REQUEST['button_pow_lv'];
			$button_down_lv=$_GET['button_down_lv'];
				$user_fh=$_GET['fh'];
	$user_jf=$_GET['jf'];
	$button_fh=$_GET['button_fh'];
	$button_jf=$_GET['button_jf'];
	if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
    $ip = $_SERVER['HTTP_CLIENT_IP'];
} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
    $ip = $_SERVER['REMOTE_ADDR'];
}
	$conn=mysql_connect($config['host'],$config['dbuser'],$config['dbpswd']);
	mysql_select_db($config['db']);
	mysql_query("set names utf8");
	$uiddb="select uid from userprofile where name='$username'";
if($button_pow_lv=="decrease"){
					$sql="select uid from playerinfo where power>2147000000";
					
		$result=mysql_query($sql);
		
if(mysql_num_rows($result)>0){
	mysql_query("update playerinfo set power= 2000000000 where power>2147000000")or die('1');
while($dwID[] = mysql_fetch_array($result)){}
            mysql_free_result($result);
            array_pop($dwID);
foreach($dwID as $value){

mysql_query("update user_army set free=free-1000000 where uid='$value[0]' and armyid=107309")or die('1');

$i++;
}
echo 'Done successfully';

		}else
			echo 'No users';
		}