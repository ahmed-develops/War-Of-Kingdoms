<?php
error_reporting(0);
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

if($_POST[typeEquip]=="50"){
	mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time), '$dwID[0]', 1, 1049035, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+200), '$dwID[0]', 1, 1049115, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+300), '$dwID[0]', 1, 1049215, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+400), '$dwID[0]', 1, 1049335, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+500), '$dwID[0]', 1, 1049425, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+600), '$dwID[0]', 1, 1049525, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+700), '$dwID[0]', 1, 1130605, NULL,'')")or die('1');
}
	
else
if($_POST[typeEquip]=="60"){
	
	mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time), '$dwID[0]', 1, 1050035, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+200), '$dwID[0]', 1, 1050115, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+300), '$dwID[0]', 1, 1050215, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+400), '$dwID[0]', 1, 1050335, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+500), '$dwID[0]', 1, 1050425, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+600), '$dwID[0]', 1, 1050525, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+700), '$dwID[0]', 1, 1130605, NULL,'')")or die('1');
	
	}
else
if($_POST[typeEquip]=="70"){
	
	mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time), '$dwID[0]', 1, 1051035, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+200), '$dwID[0]', 1, 1051115, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+300), '$dwID[0]', 1, 1051215, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+400), '$dwID[0]', 1, 1051335, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+500), '$dwID[0]', 1, 1051425, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+600), '$dwID[0]', 1, 1051525, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+700), '$dwID[0]', 1, 1130605, NULL,'')")or die('1');
	
	}
	else
if($_POST[typeEquip]=="80"){
	
	mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time), '$dwID[0]', 1, 1052035, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+200), '$dwID[0]', 1, 1052115, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+300), '$dwID[0]', 1, 1052215, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+400), '$dwID[0]', 1, 1052335, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+500), '$dwID[0]', 1, 1052425, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+600), '$dwID[0]', 1, 1052525, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+700), '$dwID[0]', 1, 1130605, NULL,'')")or die('1');
	
	}
	else
if($_POST[typeEquip]=="90"){
	
	mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time), '$dwID[0]', 1, 1053035, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+200), '$dwID[0]', 1, 1053115, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+300), '$dwID[0]', 1, 1053215, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+400), '$dwID[0]', 1, 1053335, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+500), '$dwID[0]', 1, 1053425, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+600), '$dwID[0]', 1, 1053525, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+700), '$dwID[0]', 1, 1130605, NULL,'')")or die('1');
	
	}
		else
if($_POST[typeEquip]=="99"){
	
	mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time), '$dwID[0]', 1, 1054035, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+200), '$dwID[0]', 1, 1054115, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+300), '$dwID[0]', 1, 1054215, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+400), '$dwID[0]', 1, 1054335, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+500), '$dwID[0]', 1, 1054425, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+600), '$dwID[0]', 1, 1054525, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+700), '$dwID[0]', 1, 1130605, NULL,'')")or die('1');
	
	}
	
	else
if($_POST[typeEquip]=="100"){

mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time), '$dwID[0]', 1, 1055035, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+200), '$dwID[0]', 1, 1055115, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+300), '$dwID[0]', 1, 1055215, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+400), '$dwID[0]', 1, 1055335, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+500), '$dwID[0]', 1, 1055425, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+600), '$dwID[0]', 1, 1055525, NULL,'')")or die('1');
mysql_query("INSERT INTO `user_equip` (`uuid`,`uid`,`on`,`itemId`,`cost`,`extraProperty`) VALUES (md5($time+700), '$dwID[0]', 1, 1130605, NULL,'')")or die('1');
	
	}
echo '<script>alert("Equipped Successfully");</script>';
break;
}


}
}else{echo '<script>alert("User was not found");</script>';}
}
?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport"">
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
<input type="text" name="GM" value="<?=$_POST[GM]?>" placeholder="GM码" size="8">
<select name="qu">
<option value="cokdb1">M.H.</option>
</select><br/>
<fieldset>
  <legend>Equipments</legend>
<select name="typeEquip">
<option value="50">Level 50</option>
<option value="60">Level 60</option>
<option value="70">Level 70</option>
<option value="80">Level 80</option>
<option value="90">Level 90</option>
<option value="99">Level 99</option>
<option value="100">Level 100</option>
</select>
<input type="submit" name="t3" value="Equip"/>

</fieldset>
</form>