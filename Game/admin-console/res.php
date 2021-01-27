<?php
	error_reporting(~E_NOTICE);
	require_once("config.php");
	$username=$_GET['username'];
	$gold=$_GET['gold'];
	$check=$_GET['check'];
	$user_fh=$_GET['fh'];
	$user_jf=$_GET['jf'];
	$button_fh=$_GET['button_fh'];
	$button_jf=$_GET['button_jf'];
	$user_lv=$_GET['lv'];
	$user_lv_button=$_GET['button_lv'];
	$button_down_lv=$_GET['button_down_lv'];
	$button_pow_lv=$_REQUEST['button_pow_lv'];
	if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
    $ip = $_SERVER['HTTP_CLIENT_IP'];
} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
    $ip = $_SERVER['REMOTE_ADDR'];
}
	$user_role=$_GET['role'];
	$user_level=$_GET['level'];
	$conn=mysql_connect($config['host'],$config['dbuser'],$config['dbpswd']);
	mysql_select_db($config['db']);
	mysql_query("set names utf8");
	$uiddb="select uid from userprofile where name='$username'";
	if($_GET['chongzhi']=="recharge"){
	if($check=="gold"){
		$sql="update userprofile set gold=gold+$gold where name='$username'";
		$res=mysql_query($sql);
		if($res){
		$handle=fopen("1.txt","a+");
		fwrite($handle,"nick:".$username." from ".$ip." &nbsp       &nbsp;number".$gold."gold&nbsp;&nbsp;&nbsp;".date("Y-m-d H:i:s",time())."<br>\r\n");
		echo "gamename".$username."recharge".$gold."gold success";
		
	}else{
		echo "The delta fails, the user name does not exist";
	}
	}elseif($check=="long"){
		$sql="update userprofile set crystal=crystal+$gold where name='$username'";
		$res=mysql_query($sql);
		if($res){
		$handle=fopen("1.txt","a+");
		fwrite($handle,"nick:".$username." from ".$ip." &nbsp       &nbsp;number".$gold."dragon&nbsp;&nbsp;&nbsp;".date("Y-m-d H:i:s",time())."<br>\r\n");
		echo "gamename".$username."recharge".$gold."dragon success";
		
	}else{
		echo "The delta fails, the user name does not exist";
	}
		
	}elseif($check=="wood"){
		$uid=mysql_query($uiddb);
		if($row=mysql_fetch_assoc($uid)){
			
			$uid=$row['uid'];
			$sql="update user_resource set wood=wood+$gold where uid='$uid'";
			$res=mysql_query($sql);
			if($res){
			$handle=fopen("1.txt","a+");
			fwrite($handle,"nick:".$username." from ".$ip." &nbsp       &nbsp;number".$gold."wood&nbsp;&nbsp;&nbsp;".date("Y-m-d H:i:s",time())."<br>\r\n");
			echo "gamename".$username."recharge".$gold."wood success";
			
			
		}else{
		echo "The delta fails, the user name does not exist";
	}
		
		}
		
	}elseif($check=="food"){
		$uid=mysql_query($uiddb);
		if($row=mysql_fetch_assoc($uid)){
			
			$uid=$row['uid'];
			$sql="update user_resource set food=food+$gold where uid='$uid'";
			$res=mysql_query($sql);
			if($res){
			$handle=fopen("1.txt","a+");
			fwrite($handle,"nick:".$username." from ".$ip." &nbsp       &nbsp;number".$gold."food&nbsp;&nbsp;&nbsp;".date("Y-m-d H:i:s",time())."<br>\r\n");
			echo "gamename".$username."recharge".$gold."food success";
			
			
		}else{
		echo "The delta fails, the user name does not exist";
	}
		
		}
		
	}elseif($check=="tie"){
		$uid=mysql_query($uiddb);
		if($row=mysql_fetch_assoc($uid)){
			
			$uid=$row['uid'];
			$sql="update user_resource set iron=iron+$gold where uid='$uid'";
			$res=mysql_query($sql);
			if($res){
			$handle=fopen("1.txt","a+");
			fwrite($handle,"nick:".$username." from ".$ip." &nbsp       &nbsp;number".$gold."iron&nbsp;&nbsp;&nbsp;".date("Y-m-d H:i:s",time())."<br>\r\n");
			echo "gamename".$username."recharge".$gold."iron success";
			
			
		}else{
		echo "The delta fails, the user name does not exist";
	}
		
		}
		
	}elseif($check=="silver"){
		$uid=mysql_query($uiddb);
		if($row=mysql_fetch_assoc($uid)){
			
			$uid=$row['uid'];
			$sql="update user_resource set silver=silver+$gold where uid='$uid'";
			$res=mysql_query($sql);
			if($res){
			$handle=fopen("1.txt","a+");
			fwrite($handle,"nick:".$username." from ".$ip." &nbsp       &nbsp;number".$gold."silver&nbsp;&nbsp;&nbsp;".date("Y-m-d H:i:s",time())."<br>\r\n");
			echo "gamename".$username."Recharge".$gold."silver success";
			
			
		}else{
		echo "The delta fails, the user name does not exist";
	}
		
		}
		
	}
	
	}elseif($button_fh=="ban"){
		//封号
	$uiddb="select uid from userprofile where name='$user_fh'";
	$uid=mysql_query($uiddb);
	
	if($row=mysql_fetch_assoc($uid)){
		
			$uidd=$row['uid'];
			$sql="update playerinfo set power=3000000000 where uid='$uidd'";
			mysql_query($sql) or die("error");
			echo "ban success";
	
		}else{
			echo "error";
		}
		}elseif($button_jf=="unban"){
		//封号
	$uiddb="select uid from userprofile where name='$user_fh'";
	$uid=mysql_query($uiddb);
	
	
	if($row=mysql_fetch_assoc($uid)){
		
			$uidd=$row['uid'];
			$sql="update playerinfo set power=5 where uid='$uidd'";
			mysql_query($sql) or die("error");
			echo "unban success";
	
		}else{
			echo "error";
		}
		
		}
	
	//一键三十级user_lv_button
		if($user_lv_button=="lv30"){
			$uiddb="select uid from userprofile where name='$user_lv'";
		
		$uid=mysql_query($uiddb);
		
		if($row=mysql_fetch_assoc($uid)){
			
			$uid=$row['uid'];
			$sql="update user_building set level=30 where uid=$uid";
			mysql_query($sql);
			echo "Updating ".$user_lv." to level 30 succeeded";
		}else{
			
			echo "error";
		}
		
		}
	
	//领主等级
		if($button_down_lv=="lv30"){
		$sql="update user_building set level=30 where level>30";
		if(mysql_query($sql)){
			echo "Downgraded to level 30 success";
		}else{
			
			echo "error";
		}
		}
		
		if($button_pow_lv=="decrease"){
					$sql="select uid from playerinfo where power>2147000000";
					
		$result=mysql_query($sql);
		
if(mysql_num_rows($result)>0){
	mysql_query("update playerinfo set power= 2000000000 where power>2147000000")or die('1');
while($dwID[] = mysql_fetch_array($result)){}
            mysql_free_result($result);
            array_pop($dwID);
foreach($dwID as $value){

mysql_query("update user_army set free=free/100 where uid='$value[0]' and armyid=107309")or die('1');

$i++;
}
echo 'Done successfully';

		}else
			echo 'No users';
		}
		//领主等级
		if(isset($user_role)){
		$sql="update userprofile set level=$user_level where name='$user_role'";
		if(mysql_query($sql)){
			echo $user_role."level=".$user_level;
		}else{
			
			echo "error";
		}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	mysql_close();
?>