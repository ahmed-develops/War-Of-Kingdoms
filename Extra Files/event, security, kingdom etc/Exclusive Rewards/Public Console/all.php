<?php
error_reporting(0);
session_start();
header("content-type:text/html; charset=utf-8");
function so8($a,$b,$c,$d){
    $so8 = @mysql_pconnect($a,$b,$c);
    mysql_query("set names utf8"); 
    mysql_select_db($d, $so8) ;
    return $so8;
}
$db=array('127.0.0.1','Yashthekingdom.4','@Yashthebig.551','','cokdb_global');
//          ???????         GM?   ???
if($_POST[name]!='' and $_POST[GM]==$db[3]){
$so8=so8($db[0],$db[1],$db[2],$_POST[qu]) or die(mysql_error());
$sql="SELECT uid FROM alliance WHERE `abbr` = '$_POST[name]'";
$result=mysql_query($sql,$so8);
if($result&&mysql_num_rows($result)>0){
$dwID = mysql_fetch_array($result);
$time=time().'000';
switch($_POST[t3]){
	
case 'FULL':{

if($_POST[typeEquip]=="1"){

	mysql_query("delete from alliance_science where allianceId= '$dwID[0]'")or die('1');
    mysql_query("INSERT INTO `alliance_science` (`allianceId`,`scienceId`,`level`,`wood`,`stone`,`iron`,`food`,`silver`,`gold`,`donateprogress`,`donatefinish`,`researchstarttime`,`effectflag`,`power`)
 VALUES ('$dwID[0]',250000,4,0,0,0,0,0,0,400000,1,0,0,100),('$dwID[0]',250100,4,0,0,0,0,0,0,3840000,1,0,0,100),('$dwID[0]',250200,3,0,0,0,0,0,0,11200000,1,0,0,50),('$dwID[0]',250300,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',250400,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',250500,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',250600,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',250700,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',250800,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',250900,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',251000,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',251100,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',251200,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',251300,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',251400,20,0,0,0,0,0,0,20160000,1,0,0,2100),('$dwID[0]',251500,10,0,0,0,0,0,0,640640000,1,0,0,550),('$dwID[0]',251600,10,0,0,0,0,0,0,12320000,1,0,0,550),('$dwID[0]',251700,10,0,0,0,0,0,0,20160000,1,0,0,550),('$dwID[0]',251800,10,0,0,0,0,0,0,61600000,1,0,0,550),('$dwID[0]',251900,10,0,0,0,0,0,0,640640000,1,0,0,550),('$dwID[0]',252000,10,0,0,0,0,0,0,14784000,1,0,0,550),('$dwID[0]',252100,10,0,0,0,0,0,0,14400000,1,0,0,550),('$dwID[0]',252200,10,0,0,0,0,0,0,308000000,1,0,0,550),('$dwID[0]',252300,10,0,0,0,0,0,0,308000000,1,0,0,1000),('$dwID[0]',252400,20,0,0,0,0,0,0,145152000,1,0,0,1000),('$dwID[0]',252500,1,0,0,0,0,0,0,180960000,1,0,0,550),('$dwID[0]',252600,10,0,0,0,0,0,0,1889600000,1,0,0,550),('$dwID[0]',252700,1,0,0,0,0,0,0,13400000,1,0,0,550),('$dwID[0]',252800,1,0,0,0,0,0,0,1868800000,1,0,0,550),('$dwID[0]',252900,10,0,0,0,0,0,0,1848000000,1,0,0,1000),('$dwID[0]',253000,5,0,0,0,0,0,0,80000,1,0,0,100),('$dwID[0]',253100,10,0,0,0,0,0,0,347500,1,0,0,100),('$dwID[0]',253200,20,0,0,0,0,0,0,20160000,1,0,0,200),('$dwID[0]',253300,5,0,0,0,0,0,0,40000,1,0,0,100),('$dwID[0]',253400,5,0,0,0,0,0,0,40000,1,0,0,100),('$dwID[0]',253500,1,0,0,0,0,0,0,160000,1,0,0,100),('$dwID[0]',253600,5,0,0,0,0,0,0,20736000,1,0,0,150);")or die('1');

}
echo '<script>alert("Successful updated");</script>';
break;
}
}
}else{echo '<script>alert("Alliance not found");</script>';}
}
?>
<B>
<title>YashCOK</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport"">
    <style type="text/css">
body{
    font-size: 12px;
    text-align: center;
    line-height: 2.5;
    margin: 0px;
	margin:0px;
    padding:0px;
}
.div1{
    height: 50px;
    background-color: #00b0ff;
     line-height: 50px;
     color: white;
}
a {
    text-decoration: none;
    color: black;
    font-size: 16px;
}
</style>
 <div class="div1"><h1>Full Alliance Research</h1></div><br/>
<form method="post" action="" name="form2">
<input type="text" name="name" value="<?=$_POST[name]?>" placeholder="Alliance Nick Name" size="15">
<select name="qu">
<option value="cokdb1">Server 1</option>
<option value="cokdb2">Server 2</option>
</select><br/>
<fieldset>
  <legend>Full Research</legend>
<select name="typeEquip">
<option value="1">FULL SCIENCE</option>
</select>
<input type="submit" name="t3" value="FULL"/>
</fieldset>
<fieldset>
  <legend>Notes</legend>
  <font color="red" size="3">
  Type in the Alliance name your alliance nike name for example<br>
  your alliance name is (Inf)TheDarkKnight<br>
  You type Inf only and nothing else<br>
  </font>
  </fieldset>
</form>
<br>
<a href="http://yash.hopto.org"><font size="4"><font color="red"><u>Return Home</u></a><br>