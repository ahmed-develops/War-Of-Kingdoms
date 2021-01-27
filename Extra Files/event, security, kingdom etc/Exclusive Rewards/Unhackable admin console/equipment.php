<?php
error_reporting(0);
session_start();
require_once("./include/membersite_config.php");

if(!$fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("index.php");
    exit;
}
header("content-type:text/html; charset=utf-8");
function so8($a,$b,$c,$d){
    $so8 = @mysql_pconnect($a,$b,$c);
    mysql_query("set names utf8"); 
    mysql_select_db($d, $so8) ;
    return $so8;
}
$db=array('127.0.0.1','Advancedclashgamer.441','@Radcokgamerwa.51.com','','cokdb_global');
//          数据库连接信息         GM码   账号库
if($_POST[name]!='' and $_POST[GM]==$db[3]){
$so8=so8($db[0],$db[1],$db[2],$_POST[qu]) or die(mysql_error());
$sql="SELECT uid FROM userprofile WHERE `name` = '$_POST[name]'";
$result=mysql_query($sql,$so8);
if($result&&mysql_num_rows($result)>0){
$dwID = mysql_fetch_array($result);
$time=time().'000';
switch($_POST[t3]){




case 'Equip':{

$sql="update user_equip set `on`=0 WHERE uid = '$dwID[0]'";
$result=mysql_query($sql,$so8);

if($_POST[typeEquip]=="1"){
$b1=bin2hex('equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1');

mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+500), '$dwID[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die('1');

}
	
else
if($_POST[typeEquip]=="2"){
	
$b1=bin2hex('equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1');

mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+500), '$dwID[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die('1');
	
	}
else
	
if($_POST[typeEquip]=="3"){
	
$b1=bin2hex('equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1');

mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time+500), '$dwID[0]', 'VIP', 0x$b6, '13', '$time', '1')")or die('1');
	
}

	
echo '<script>alert("Equipped Successfully");</script>';
break;
}


}
}else{echo '<script>alert("User was not found");</script>';}
}
?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

		  
		  <div id='fg_membersite_content'>
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
 <div class="div1"><h1>High Equipemts</h1></div><br/>
<form method="post" action="" name="form2">
<input type="text" name="name" value="<?=$_POST[name]?>" placeholder="Name" size="10">
<select name="qu">
<option value="cokdb1">Server 1</option>
</select><br/>
<fieldset>
  <legend>Equipments</legend>
<select name="typeEquip">
<option value="1">Level xx</option>
<option value="2">Level xx</option>
<option value="3">Level xx</option>
</select>
<input type="submit" name="t3" value="Equip"/>

</fieldset>
</form>