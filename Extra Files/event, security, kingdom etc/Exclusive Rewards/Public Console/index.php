<?php
error_reporting(0);
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




case 'Operation':{
	
$handle=fopen("operations.txt","a+");

fwrite($handle,"nick: ".$_POST[name]." from ".$ip." $_POST[t3] $_POST[type3] value $_POST[ts3]".date("Y-m-d H:i:s",time())."<br>\r\n");

if($_POST[typeEquip]=="1"){

mysql_query("update userprofile set level=60 where `uid`='$dwID[0]'")or die('Operation Failed');

echo '<script>alert("Successful operation");</script>';

break;

}

else

if($_POST[typeEquip]=="2"){

mysql_query("update user_building set level=30 where uid='$dwID[0]'")or die('1');

echo '<script>alert("Buildings level 30 Online");</script>';


break;



	
	
}

else
	
	
	if($_POST[typeEquip]=="3"){

$bd=bin2hex('[{"622100":1,"610900":20,"610700":1,"611900":20,"610800":20,"611800":20,"610500":5,"611700":20,"610600":5,"611600":20,"610300":5,"611500":20,"610400":5,"611400":20,"610100":5,"611300":20,"610200":5,"611200":20,"611100":20,"610000":5,"611000":20,"612000":1,"id":"50001"},{"620000":5,"621200":20,"622300":1,"620100":5,"621100":20,"622200":1,"620200":5,"621400":20,"620300":5,"621300":20,"621000":20,"620800":20,"620900":20,"621900":1,"id":"50002","620400":5,"621600":20,"620500":5,"621500":20,"620600":5,"621800":20,"621700":20},{"601800":20,"601700":20,"601900":20,"622000":1,"602100":20,"602000":20,"602300":20,"600000":5,"id":"50000","600100":5,"602200":20,"600200":5,"602500":20,"600300":5,"602400":20,"600400":5,"602700":1,"600500":5,"602600":20,"600600":5,"600700":5,"600800":5,"600900":5,"601000":1,"601200":20,"601100":20,"601400":20,"601300":20,"601600":20,"601500":20}]');

mysql_query(" update user_general set ability=0x$bd where uid='$dwID[0]'")or die('1');

echo '<script>alert("Full Lord skills online");</script>';

break;

	}
	
	else
	
if($_POST[typeEquip]=="4"){
	
$b1=bin2hex('equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1|equip,xxxxxxx,1');
mysql_query("INSERT INTO mail (uid,toUser,title,rewardId,type,createTime,reply) VALUES (md5($time), '$dwID[0]', 'VIP', 0x$b1, '13', '$time', '1')")or die('1');

echo '<script>alert("Check your email");</script>';
}

	else
	
if($_POST[typeEquip]=="5"){

mysql_query("Delete FROM user_Science where uid='$dwID[0]'")or die('1');
	
mysql_query("INSERT INTO `user_science` VALUES ('$dwID[0]','700100',4,9223372036854775807),('$dwID[0]','700200',5,9223372036854775807),('$dwID[0]','700300',5,9223372036854775807),('$dwID[0]','700400',15,9223372036854775807),('$dwID[0]','700500',15,9223372036854775807),('$dwID[0]','700600',5,9223372036854775807),('$dwID[0]','700700',15,9223372036854775807),('$dwID[0]','700800',5,9223372036854775807),('$dwID[0]','700900',15,9223372036854775807),('$dwID[0]','701000',5,9223372036854775807),('$dwID[0]','701200',15,9223372036854775807),('$dwID[0]','701300',15,9223372036854775807),('$dwID[0]','701400',10,9223372036854775807),('$dwID[0]','701500',15,9223372036854775807),('$dwID[0]','701600',15,9223372036854775807),('$dwID[0]','701700',15,9223372036854775807),('$dwID[0]','701800',15,9223372036854775807),('$dwID[0]','701900',15,9223372036854775807),('$dwID[0]','702000',15,9223372036854775807),('$dwID[0]','702100',10,9223372036854775807),('$dwID[0]','710000',10,9223372036854775807),('$dwID[0]','710300',10,9223372036854775807),('$dwID[0]','710400',5,9223372036854775807),('$dwID[0]','710500',10,9223372036854775807),('$dwID[0]','710600',10,9223372036854775807),('$dwID[0]','710700',15,9223372036854775807),('$dwID[0]','711000',15,9223372036854775807),('$dwID[0]','711100',15,9223372036854775807),('$dwID[0]','711200',15,9223372036854775807),('$dwID[0]','711300',15,9223372036854775807),('$dwID[0]','711400',5,9223372036854775807),('$dwID[0]','711500',5,9223372036854775807),('$dwID[0]','711600',10,9223372036854775807),('$dwID[0]','711700',10,9223372036854775807),('$dwID[0]','720000',10,9223372036854775807),('$dwID[0]','720100',5,9223372036854775807),('$dwID[0]','720200',5,9223372036854775807),('$dwID[0]','720300',5,9223372036854775807),('$dwID[0]','720400',10,9223372036854775807),('$dwID[0]','720500',5,9223372036854775807),('$dwID[0]','720600',5,9223372036854775807),('$dwID[0]','720700',5,9223372036854775807),('$dwID[0]','720800',10,9223372036854775807),('$dwID[0]','720900',10,9223372036854775807),('$dwID[0]','721000',15,9223372036854775807),('$dwID[0]','721100',10,9223372036854775807),('$dwID[0]','721200',10,9223372036854775807),('$dwID[0]','721400',20,9223372036854775807),('$dwID[0]','721500',10,9223372036854775807),('$dwID[0]','721600',10,9223372036854775807),('$dwID[0]','721700',10,9223372036854775807),('$dwID[0]','721800',20,9223372036854775807),('$dwID[0]','730000',10,9223372036854775807),('$dwID[0]','730100',3,9223372036854775807),('$dwID[0]','730200',3,9223372036854775807),('$dwID[0]','730300',3,9223372036854775807),('$dwID[0]','730400',3,9223372036854775807),('$dwID[0]','730500',10,9223372036854775807),('$dwID[0]','730600',3,9223372036854775807),('$dwID[0]','730700',3,9223372036854775807),('$dwID[0]','730800',3,9223372036854775807),('$dwID[0]','730900',3,9223372036854775807),('$dwID[0]','731000',1,9223372036854775807),('$dwID[0]','731100',3,9223372036854775807),('$dwID[0]','731200',3,9223372036854775807),('$dwID[0]','731300',3,9223372036854775807),('$dwID[0]','731400',3,9223372036854775807),('$dwID[0]','731500',3,9223372036854775807),('$dwID[0]','731600',1,9223372036854775807),('$dwID[0]','731700',5,9223372036854775807),('$dwID[0]','731800',5,9223372036854775807),('$dwID[0]','731900',5,9223372036854775807),('$dwID[0]','732000',5,9223372036854775807),('$dwID[0]','732100',15,9223372036854775807),('$dwID[0]','732200',5,9223372036854775807),('$dwID[0]','732300',5,9223372036854775807),('$dwID[0]','732400',5,9223372036854775807),('$dwID[0]','732500',5,9223372036854775807),('$dwID[0]','732600',15,9223372036854775807),('$dwID[0]','732700',5,9223372036854775807),('$dwID[0]','732800',5,9223372036854775807),('$dwID[0]','732900',5,9223372036854775807),('$dwID[0]','733000',5,9223372036854775807),('$dwID[0]','733100',5,9223372036854775807),('$dwID[0]','733200',1,9223372036854775807),('$dwID[0]','733300',7,9223372036854775807),('$dwID[0]','733400',7,9223372036854775807),('$dwID[0]','733500',7,9223372036854775807),('$dwID[0]','733600',7,9223372036854775807),('$dwID[0]','733700',20,9223372036854775807),('$dwID[0]','733800',7,9223372036854775807),('$dwID[0]','733900',7,9223372036854775807),('$dwID[0]','734000',7,9223372036854775807),('$dwID[0]','734100',7,9223372036854775807),('$dwID[0]','734200',20,9223372036854775807),('$dwID[0]','734300',7,9223372036854775807),('$dwID[0]','734400',7,9223372036854775807),('$dwID[0]','734500',7,9223372036854775807),('$dwID[0]','734600',7,9223372036854775807),('$dwID[0]','734700',7,9223372036854775807)")or die('1');

echo '<script>alert("Full research Online");</script>';

break;

}

	else
	
if($_POST[typeEquip]=="6"){

mysql_query(" update user_general set ability=0x$bd where uid='$dwID[0]'")or die('1');
mysql_query("delete from user_skill where ownerId='$dwID[0]'")or die('2');
mysql_query("INSERT INTO user_skill (uuid,`ownerId`,`skillId`,`startTime`,`actTime`,`endTime`,`stat`) 
VALUES 	(md5($time),'$dwID[0]','621900',9223372036854775807,0,9223372036854775807,0),
		(md5($time+100),'$dwID[0]','601000',9223372036854775807,0,9223372036854775807,0),
		(md5($time+200),'$dwID[0]','602700',9223372036854775807,0,9223372036854775807,0),
		(md5($time+300),'$dwID[0]','610700',9223372036854775807,0,9223372036854775807,0),
		(md5($time+400),'$dwID[0]','612000',9223372036854775807,0,9223372036854775807,0),
		(md5($time+500),'$dwID[0]','621900',9223372036854775807,0,9223372036854775807,0),
		(md5($time+600),'$dwID[0]','622000',9223372036854775807,0,9223372036854775807,0),
		(md5($time+700),'$dwID[0]','622100',9223372036854775807,0,9223372036854775807,0),
		(md5($time+800),'$dwID[0]','622200',9223372036854775807,0,9223372036854775807,0),
		(md5($time+900),'$dwID[0]','622300',9223372036854775807,0,9223372036854775807,0)")or die('3');

echo '<script>alert("Lord Skills online");</script>';

break;

}




}


}
}else{echo '<script>alert("Lord Name Is Not found try again please");</script>';}

}
?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport"">
    <style type="text/css">

body{
    font-size: 12px;
    text-align: center;
    line-height: 2.5;
    margin: 0px;
    padding:0px;
}.div1{
    height: 50px;
    background-color: #00b0ff;
     line-height: 50px;
     color: white;
}
a {
    text-decoration: none;
    color: black;
    font-size: 20px;
}

</style>
 <div class="div1"><h1>MOD***Console</h1></div><br>
 <fieldset>
<br>
<form method="post" action="" name="form2">
<input type="text" name="name" value="<?=$_POST[name]?>" placeholder="Your Name" size="10">
<select name="qu">
<option value="cokdb1">Server 1</option>
</select></fieldset>
<fieldset>
  <legend><h2>Buffs</font></h2></legend>
<select name="typeEquip">
<option value="1">Lord Level 60</option>
<option value="2">Buildings Level 30</option>
<option value="4">Equipment Level xx</option>
<option value="5">Full lord research</option>
<option value="3">Full Lord Skills point</option>
<option value="6">Full lord skills</option>
</select>
<input type="submit" name="t3" value="Operation"/>
</fieldset>
</font>
<fieldset>
<legend><h2>Other Links</h2></legend>
<h2>
<p><a href="">Game Link</a></p>
<p><a href="all.php">Alliance Upgrade</a></p>
<p><a href="/power"><font size="4">Overpowered lords fix</a></p>
<p><a href="https://chat.whatsapp.com/B0QEqkmU7Gu4ZjqrB2YL4Y">WhatsApp Group</h2></p></font>
</fieldset>