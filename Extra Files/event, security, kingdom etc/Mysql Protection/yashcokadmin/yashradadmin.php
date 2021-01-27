<?php
error_reporting(0);
ini_set('max_execution_time', 3000); //300 seconds = 50 minutes
session_start();
if($_REQUEST['code']!=$_SESSION['code']){
		header("location: index.php?error=1");
	}
header("content-type:text/html; charset=utf-8");
function so8($a,$b,$c,$d){
    $so8 = @mysql_pconnect($a,$b,$c);
    mysql_query("set names utf8"); 
    mysql_select_db($d, $so8) ;
    return $so8;
}
$db=array('127.0.0.1','Advancedclashgamer.441','@Radcokgamerwa.51.com','','cokdb_global');

if($_POST[name]!=''){
$so8=so8($db[0],$db[1],$db[2],$_POST[qu]) or die(mysql_error());
$sql="SELECT uid FROM userprofile WHERE `name` = '$_POST[name]'";
$result=mysql_query($sql,$so8);
if($result&&mysql_num_rows($result)>0){

if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
    $ip = $_SERVER['HTTP_CLIENT_IP'];
} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
    $ip = $_SERVER['REMOTE_ADDR'];
}


$dwID = mysql_fetch_array($result);
$time=time().'000';
switch($_POST[t3]){
case 'increase':{
$b=split('-',$_POST[type]);
 mysql_query("UPDATE $b[0] SET $b[1]=$b[1]+'$_POST[num]' WHERE (`uid`='$dwID[0]')");
 
$handle=fopen("2.txt","a+");
fwrite($handle,"nick: ".$_POST[name]." from ".$ip." increase $b[0] SET $b[1]=$b[1]+'$_POST[num]' ".date("Y-m-d H:i:s",time())."<br>\r\n");

	
echo '<script>alert("Increase success");</script>';
break;
}
case 'mail':{
$b=bin2hex($_POST[type1].','.$_POST[ts1].','.$_POST[ts2]);
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time), '$dwID[0]', 'VIP', 0x$b, '13', '$time', '1')")or die('1');
$handle=fopen("2.txt","a+");
fwrite($handle,"nick: ".$_POST[name]." from ".$ip." $_POST[t3] $_POST[type1] $_POST[ts1] $_POST[ts2] ".date("Y-m-d H:i:s",time())."<br>\r\n");
echo '<script>alert("Successful mail");</script>';
break;
}
case 'Full service mail':{
$dwId='';
$i=0;
$sql="SELECT uid FROM userprofile";


$handle=fopen("2.txt","a+");
fwrite($handle,"nick: ".$_POST[name]." from ".$ip." Full service mail $_POST[type1] $_POST[ts1] $_POST[ts2]  ".date("Y-m-d H:i:s",time())."<br>\r\n");

$b=bin2hex($_POST[type1].','.$_POST[ts1].','.$_POST[ts2]);
$result=mysql_query($sql,$so8);
if($result&&mysql_num_rows($result)>0){
while($dwID[] = mysql_fetch_array($result)){}
            mysql_free_result($result);
            array_pop($dwID);
foreach($dwID as $value){
$b1=md5($time+$i);
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$b1', '$value[0]', 'VIP', 0x$b, '13', '$time', '1')")or die('1');
$i++;
}
echo '<script>alert("Successful full-service mail");</script>';

}
break;
}

case 'Mail Equip':{
$handle=fopen("2.txt","a+");
fwrite($handle,"nick: ".$_POST[name]." from ".$ip." $_POST[t3] $_POST[typeEquip]  ".date("Y-m-d H:i:s",time())."<br>\r\n");

if($_POST[typeEquip]=="30"){
$b1=bin2hex('equip,1030035,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time), '$dwID[0]', 'VIP', 0x$b1, '13', '$time', '1')")or die('1');
$b2=bin2hex('equip,1030135,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+100), '$dwID[0]', 'VIP', 0x$b2, '13', '$time', '1')")or die('1');
$b3=bin2hex('equip,1030235,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+200), '$dwID[0]', 'VIP', 0x$b3, '13', '$time', '1')")or die('1');
$b4=bin2hex('equip,1030525,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+300), '$dwID[0]', 'VIP', 0x$b4, '13', '$time', '1')")or die('1');
$b5=bin2hex('equip,1030325,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+400), '$dwID[0]', 'VIP', 0x$b5, '13', '$time', '1')")or die('1');
$b6=bin2hex('equip,1030415,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+500), '$dwID[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die('1');
$b7=bin2hex('equip,1125605,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+600), '$dwID[0]', 'VIP', 0x$b7, '13', '$time', '1')")or die('1');		
		
	}
else
if($_POST[typeEquip]=="35"){
$b1=bin2hex('equip,1035035,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time), '$dwID[0]', 'VIP', 0x$b1, '13', '$time', '1')")or die('1');
$b2=bin2hex('equip,1035335,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+100), '$dwID[0]', 'VIP', 0x$b2, '13', '$time', '1')")or die('1');
$b3=bin2hex('equip,1035525,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+200), '$dwID[0]', 'VIP', 0x$b3, '13', '$time', '1')")or die('1');
$b4=bin2hex('equip,1035115,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+300), '$dwID[0]', 'VIP', 0x$b4, '13', '$time', '1')")or die('1');
$b5=bin2hex('equip,1035215,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+400), '$dwID[0]', 'VIP', 0x$b5, '13', '$time', '1')")or die('1');
$b6=bin2hex('equip,1035425,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+500), '$dwID[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die('1');
$b7=bin2hex('equip,1125605,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+600), '$dwID[0]', 'VIP', 0x$b7, '13', '$time', '1')")or die('1');		
		
	}
else
if($_POST[typeEquip]=="43"){
	
$b1=bin2hex('equip,1043025,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time), '$dwID[0]', 'VIP', 0x$b1, '13', '$time', '1')")or die('1');
$b2=bin2hex('equip,1043215,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+100), '$dwID[0]', 'VIP', 0x$b2, '13', '$time', '1')")or die('1');
$b3=bin2hex('equip,1043515,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+200), '$dwID[0]', 'VIP', 0x$b3, '13', '$time', '1')")or die('1');
$b4=bin2hex('equip,1043115,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+300), '$dwID[0]', 'VIP', 0x$b4, '13', '$time', '1')")or die('1');
$b5=bin2hex('equip,1043315,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+400), '$dwID[0]', 'VIP', 0x$b5, '13', '$time', '1')")or die('1');
$b6=bin2hex('equip,1043415,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+500), '$dwID[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die('1');
$b7=bin2hex('equip,111111,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+600), '$dwID[0]', 'VIP', 0x$b7, '13', '$time', '1')")or die('1');		
		
	}
	
else
if($_POST[typeEquip]=="45"){
$enc1=md5($time+1000);
$enc2=md5($time+5000);
$enc3=md5($time+15000);
$enc4=md5($time+25000);
$enc5=md5($time+35000);
$enc6=md5($time+45000);
$enc7=md5($time+55000);	
$b1=bin2hex('equip,6000000,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc1', '$dwID[0]', 'VIP', 0x$b1, '13', '$time', '1')")or die('1');
$b2=bin2hex('equip,555555,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc2', '$dwID[0]', 'VIP', 0x$b2, '13', '$time', '1')")or die('1');
$b3=bin2hex('equip,333333,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc3', '$dwID[0]', 'VIP', 0x$b3, '13', '$time', '1')")or die('1');
$b4=bin2hex('equip,222222,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc4', '$dwID[0]', 'VIP', 0x$b4, '13', '$time', '1')")or die('1');
$b5=bin2hex('equip,111110,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc5', '$dwID[0]', 'VIP', 0x$b5, '13', '$time', '1')")or die('1');
$b6=bin2hex('equip,7777777,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc6', '$dwID[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die('1');
$b7=bin2hex('equip,111111,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc7', '$dwID[0]', 'VIP', 0x$b7, '13', '$time', '1')")or die('1');
	}

echo '<script>alert("Successful mail");</script>';
break;
}

case 'Full Equip':{

$handle=fopen("2.txt","a+");
fwrite($handle,"nick: ".$_POST[name]." from ".$ip." $_POST[t3] $_POST[typeEquip]  ".date("Y-m-d H:i:s",time())."<br>\r\n");

$dwId='';
$i=0;
$sql="SELECT uid FROM userprofile";
$result=mysql_query($sql,$so8);
if($result&&mysql_num_rows($result)>0){
while($dwID[] = mysql_fetch_array($result)){}
            mysql_free_result($result);
            array_pop($dwID);
foreach($dwID as $value){
	if($value[0]=='1')
		continue;
$enc1=md5($time+$value[0]);
$enc2=md5($enc1);
$enc3=md5($enc2);
$enc4=md5($enc3);
$enc5=md5($enc4);
$enc6=md5($enc5);
$enc7=md5($enc6);
if($_POST[typeEquip]=="30"){

$b1=bin2hex('equip,1030035,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc1', '$value[0]', 'VIP', 0x$b1, '13', '$time', '1')")or die(mysql_error($so8));
$b2=bin2hex('equip,1030135,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc2', '$value[0]', 'VIP', 0x$b2, '13', '$time', '1')")or die(mysql_error($so8));
$b3=bin2hex('equip,1030235,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc3', '$value[0]', 'VIP', 0x$b3, '13', '$time', '1')")or die(mysql_error($so8));
$b4=bin2hex('equip,1030525,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc4', '$value[0]', 'VIP', 0x$b4, '13', '$time', '1')")or die(mysql_error($so8));
$b5=bin2hex('equip,1030325,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc5', '$value[0]', 'VIP', 0x$b5, '13', '$time', '1')")or die(mysql_error($so8));
$b6=bin2hex('equip,1030415,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc6', '$value[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die(mysql_error($so8));
$b7=bin2hex('equip,1125605,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc7', '$value[0]', 'VIP', 0x$b7, '13', '$time', '1')")or die(mysql_error($so8));

	}
else
if($_POST[typeEquip]=="35"){

$b1=bin2hex('equip,1035035,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc1', '$value[0]', 'VIP', 0x$b1, '13', '$time', '1')")or die(mysql_error($so8));
$b2=bin2hex('equip,1035135,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc2', '$value[0]', 'VIP', 0x$b2, '13', '$time', '1')")or die(mysql_error($so8));
$b3=bin2hex('equip,1035235,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc3', '$value[0]', 'VIP', 0x$b3, '13', '$time', '1')")or die(mysql_error($so8));
$b4=bin2hex('equip,1035525,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc4', '$value[0]', 'VIP', 0x$b4, '13', '$time', '1')")or die(mysql_error($so8));
$b5=bin2hex('equip,1035325,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc5', '$value[0]', 'VIP', 0x$b5, '13', '$time', '1')")or die(mysql_error($so8));
$b6=bin2hex('equip,1035415,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc6', '$value[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die(mysql_error($so8));
$b7=bin2hex('equip,1125605,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc7', '$value[0]', 'VIP', 0x$b7, '13', '$time', '1')")or die(mysql_error($so8));	
	
	}
else
if($_POST[typeEquip]=="43"){
	
$b1=bin2hex('equip,1043035,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc1', '$value[0]', 'VIP', 0x$b1, '13', '$time', '1')")or die(mysql_error($so8));
$b2=bin2hex('equip,1043135,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc2', '$value[0]', 'VIP', 0x$b2, '13', '$time', '1')")or die(mysql_error($so8));
$b3=bin2hex('equip,1043235,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc3', '$value[0]', 'VIP', 0x$b3, '13', '$time', '1')")or die(mysql_error($so8));
$b4=bin2hex('equip,1043525,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc4', '$value[0]', 'VIP', 0x$b4, '13', '$time', '1')")or die(mysql_error($so8));
$b5=bin2hex('equip,1043325,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc5', '$value[0]', 'VIP', 0x$b5, '13', '$time', '1')")or die(mysql_error($so8));
$b6=bin2hex('equip,1043415,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc6', '$value[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die(mysql_error($so8));
$b7=bin2hex('equip,111111,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc7', '$value[0]', 'VIP', 0x$b7, '13', '$time', '1')")or die(mysql_error($so8));		
	}
else
if($_POST[typeEquip]=="45"){
$b1=bin2hex('equip,6000000,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc1', '$value[0]', 'VIP', 0x$b1, '13', '$time', '1')")or die(mysql_error($so8));
$b2=bin2hex('equip,555555,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc2', '$value[0]', 'VIP', 0x$b2, '13', '$time', '1')")or die(mysql_error($so8));
$b3=bin2hex('equip,333333,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc3', '$value[0]', 'VIP', 0x$b3, '13', '$time', '1')")or die(mysql_error($so8));
$b4=bin2hex('equip,222222,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc4', '$value[0]', 'VIP', 0x$b4, '13', '$time', '1')")or die(mysql_error($so8));
$b5=bin2hex('equip,111110,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc5', '$value[0]', 'VIP', 0x$b5, '13', '$time', '1')")or die(mysql_error($so8));
$b6=bin2hex('equip,7777777,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc6', '$value[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die(mysql_error($so8));
$b7=bin2hex('equip,111111,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES ('$enc7', '$value[0]', 'VIP', 0x$b7, '13', '$time', '1')")or die(mysql_error($so8));	
		
	}		
	
$i++;
}

echo '<script>alert("Successful full-service mail");</script>';

}
break;
}



case 'Open activity':{


$b=strtotime("+$_POST[ts4] hours").'000';

$handle=fopen("2.txt","a+");
fwrite($handle,"nick: ".$_POST[name]." from ".$ip." $_POST[t3] $b  ".date("Y-m-d H:i:s",time())."<br>\r\n");

 mysql_query("UPDATE activity SET openTime='$time',startTime='$time',endTime='$b' WHERE (`type`='$_POST[type2]')");
echo '<script>alert("Successful opening");</script>';
break;
}

case 'Open later':{
$b=strtotime("+$_POST[ts4] hours").'000';
$c=strtotime("+$_POST[ts4]+4 hours").'000';
$handle=fopen("2.txt","a+");
fwrite($handle,"nick: ".$_POST[name]." from ".$ip." $_POST[t3] $b $c ".date("Y-m-d H:i:s",time())."<br>\r\n");

 mysql_query("UPDATE activity SET openTime='$time',startTime='$b',endTime='$c' WHERE (`type`='$_POST[type2]')");
echo '<script>alert("Successful opening");</script>';
break;
}

case 'operation':{

$handle=fopen("2.txt","a+");
fwrite($handle,"nick: ".$_POST[name]." from ".$ip." $_POST[t3] $_POST[type3] value $_POST[ts3]".date("Y-m-d H:i:s",time())."<br>\r\n");

if($_POST[type3]==1){
 mysql_query("UPDATE user_building SET level='$_POST[ts3]' WHERE (`uid`='$dwID[0]')");
 echo '<script>alert("Successful operation");</script>';
}
if($_POST[type3]==2){
 mysql_query("DELETE FROM `user_item` WHERE (`ownerId`='$dwID[0]')");
 echo '<script>alert("Successful operation");</script>';
}
if($_POST[type3]==3){
$sql="SELECT uid FROM userprofile WHERE `name` = '$_POST[ts3]'";
$result=mysql_query($sql,$so8);
if($result&&mysql_num_rows($result)>0){
$dwID1 = mysql_fetch_array($result);
mysql_query("DELETE FROM `gold_cost_record` WHERE (`userId`='$dwID[0]')");
mysql_query("UPDATE `gold_cost_record` SET userId='$dwID[0]' WHERE (`userId`='$dwID1[0]')");
mysql_query("DELETE FROM `goods_cost_record` WHERE (`userId`='$dwID[0]')");
mysql_query("UPDATE `goods_cost_record` SET userId='$dwID[0]' WHERE (`userId`='$dwID1[0]')");
mysql_query("DELETE FROM `user_task` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_task` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `stat_sutorial_v2` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `stat_sutorial_v2` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `pray_record` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `pray_record` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_army` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_army` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_building` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_building` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_science` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_science` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_daily_task` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_daily_task` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `hot_goods_cost_record` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `hot_goods_cost_record` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_achievement` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_achievement` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_wall` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_wall` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_equip` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_equip` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_login_ip` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_login_ip` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `exchange_time` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `exchange_time` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_hospital` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_hospital` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `hot_buy_record` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `hot_buy_record` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_hot_item_v2` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_hot_item_v2` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_assets` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_assets` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `stat_phone` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `stat_phone` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_resource` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_resource` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `userprofile` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `userprofile` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_world` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_world` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_timereward` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_timereward` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_reg` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_reg` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_reg` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_reg` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_onlinereward` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_onlinereward` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_vip` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_vip` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `lottery_record` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `lottery_record` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_general` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_general` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_honor` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_honor` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_lord` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_lord` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_mixed_info` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_mixed_info` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_monster_siege` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_monster_siege` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `stat_reg` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `stat_reg` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `alliance_donate` WHERE (`uerid`='$dwID[0]')");
mysql_query("UPDATE `alliance_donate` SET uerid='$dwID[0]' WHERE (`uerid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_building_exp` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_building_exp` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `world_favorite` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `world_favorite` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_hot_item_best` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_hot_item_best` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `alliance_member` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `alliance_member` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `pay_action` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `pay_action` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_state` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_state` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `playerinfo` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `playerinfo` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `pay_request` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `pay_request` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_pray` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_pray` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `compensation_record` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `compensation_record` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `hot_refresh_record` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `hot_refresh_record` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `world_march` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `world_march` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `material_control` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `material_control` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `donate_history_record` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `donate_history_record` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `donate_history` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `donate_history` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `exchange_visible` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `exchange_visible` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `territory_user_effect` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `territory_user_effect` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `parse_info` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `parse_info` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_territory_resource` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `user_territory_resource` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `kingdom_position` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `kingdom_position` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `pic_upload_record` WHERE (`uid`='$dwID[0]')");
mysql_query("UPDATE `pic_upload_record` SET uid='$dwID[0]' WHERE (`uid`='$dwID1[0]')");
mysql_query("DELETE FROM `user_item` WHERE (`ownerId`='$dwID[0]')");
mysql_query("UPDATE `user_item` SET ownerId='$dwID[0]' WHERE (`ownerId`='$dwID1[0]')");
mysql_query("DELETE FROM `user_skill` WHERE (`ownerId`='$dwID[0]')");
mysql_query("UPDATE `user_skill` SET ownerId='$dwID[0]' WHERE (`ownerId`='$dwID1[0]')");
mysql_query("DELETE FROM `queue` WHERE (`ownerId`='$dwID[0]')");
mysql_query("UPDATE `queue` SET ownerId='$dwID[0]' WHERE (`ownerId`='$dwID1[0]')");
mysql_query("DELETE FROM `worlddpoint` WHERE (`ownerId`='$dwID[0]')");
mysql_query("UPDATE `worlddpoint` SET ownerId='$dwID[0]' WHERE (`ownerId`='$dwID1[0]')");
mysql_query("DELETE FROM `alliance_territory` WHERE (`createId`='$dwID[0]')");
mysql_query("UPDATE `alliance_territory` SET createId='$dwID[0]' WHERE (`createId`='$dwID1[0]')");
mysql_query("DELETE FROM `alliance_apply` WHERE (`userId`='$dwID[0]')");
mysql_query("UPDATE `alliance_apply` SET userId='$dwID[0]' WHERE (`userId`='$dwID1[0]')");
mysql_query("DELETE FROM `alliance_comment` WHERE (`senderUid`='$dwID[0]')");
mysql_query("UPDATE `alliance_comment` SET senderUid='$dwID[0]' WHERE (`senderUid`='$dwID1[0]')");
mysql_query("DELETE FROM `logrecord` WHERE (`data1`='$dwID[0]')");
mysql_query("UPDATE `logrecord` SET data1='$dwID[0]' WHERE (`data1`='$dwID1[0]')");
echo '<script>alert("Successful operation");</script>';

}
}

break;
}

}
}else{echo '<script>alert("No role");</script>';}
}
?><head>
<title>
COK Admin
</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport">
    
<style type="text/css">
body{
    font-size: 12px;
    text-align: center;
    line-height: 2.5;
    margin: 0px;
}
.div1{
    height: 50px;
    background-color: #00b0ff;
     line-height: 50px;
     color: white;
}
a {
    text-decoration: none;
    color: white;
    font-size: 12px;
}
</style>
 <div class="div1"><h1>COK ADMIN PANEL</h1></div><br/>
<form method="post" action="" name="form2">
<input type="text" name="name" value="" placeholder="Name" size="10">
<select name="qu">
<option value="cokdb1">Server 1</option>
<option value="cokdb2">Server 2</option>
</select><br/>
<fieldset><legend>Role Modify</legend>
<select name="type">
<option value="userprofile-gold">Gold</option>
<option value="userprofile-exp">Experience</option>
<option value="userprofile-crystal">Crystal</option>
</select>
<input type="text" name="num" size="18" placeholder="Number">
<input type="submit" name="t3" value="increase"/>
</fieldset>
<fieldset><legend>Mail function(Re landing)</legend>
<select name="type1">
<option value="gold">Gold</option>
<option value="goods">Goods</option>
<option value="equip">Equipment</option>
</select>
<input type="text" name="ts1" size="16" placeholder="Goods ID">
<input type="text" name="ts2" size="5" placeholder="Number"><br/>
<input type="submit" name="t3" value="mail"/>
<input type="submit" name="t3" value="Full service mail"/>
</fieldset>
<fieldset><legend>Equipments</legend>
<select name="typeEquip">
<option value="30">Level 30</option>
<option value="35">Level 35</option>
</select>
<input type="submit" name="t3" value="Mail Equip"/>
<input type="submit" name="t3" value="Full Equip"/>
</fieldset>
<fieldset><legend>Open activity Now (Need to restart the server)</legend>
<select name="type2">
<option value="0">Throne</option>
<option value="4">Black Knight</option>
</select>
<input type="text" name="ts4" size="6" placeholder="hour">
<input type="submit" name="t3" value="Open activity"/>
</fieldset>
<fieldset><legend>Open after few hours (Need to restart the server)</legend>
<select name="type2">
<option value="0">Throne</option>
<option value="4">Black Knight</option>
</select>
<input type="text" name="ts4" size="6" placeholder="hour">
<input type="submit" name="t3" value="Open later"/>
</fieldset>
<fieldset><legend>System function(Offline first)</legend>
<select name="type3">
<option value="1">Building Level Changer</option>
<option value="2">Empty backpack</option>
</select>
<input type="text" name="ts3" size="12" placeholder="Level or role name">
<input type="submit" name="t3" value="operation"/>
</fieldset>

</form>