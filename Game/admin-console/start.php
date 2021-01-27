<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
   		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport">
		<title>COKgold</title>

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
    
    font-size: 12px;
}
</style>

	
	</head>
	<body><?php
	error_reporting(~E_NOTICE);
	require_once("config.php");
	if(!isset($_REQUEST['user']) || !isset($_REQUEST['pswd'])){
		
		header("location: index.php?error=1");
		die;
	}
	$user=$_POST['user'];
	$pswd=$_POST['pswd'];
	$key1=$_POST['key1'];
	if($key1!=md5("1234567890")){
		header("location: index.php");
	}
	if($user!=$config['user'] || $pswd!=$config['pswd']){
		
		header("location: index.php?error=1");
	}
	
$code=md5($pswd);
session_start();
$_SESSION['code']=$code;

	

?>
<div class="div1"><h1>COK Console</h1></div><br/>
<form method="post" action="" name="form2">
<fieldset><legend>Recharge</legend>
Nick:<input type="text" value="" id="username" name="username">

			<select name="check" id="check">
				<option value="gold">gold</option>
				<option value="crystal">crystal</option>
				<option value="wood">wood</option>
				<option value="food">food</option>
				<option value="iron">iron</option>

			</select>
			number:<input type="text" name="gold" id="gold">
			<input type="button" onClick="addgold();"id="chongzhi" value="recharge">
			<a href="golds.php?code=<?php echo $code;?>" target="_blank">look gold number</a><button onClick="alert('except ban and unban other must offline');">Be careful:tips</button>
			

</fieldset>

<fieldset><legend>Ban Users</legend>
Ban User<input type="text" id="user_fh" name="user_fh">
						<input type="button" id="button_fh" onClick="user_ban();" value="ban">
						<input type="button" id="button_jf" onClick="user_jf();" value="unban">
</fieldset>

<fieldset><legend>Update Users</legend>
Update 30:<input type="text" id="user_lv" name="user_lv" >
						<input type="button" id="button_lv" onClick="user_lv_up();" value="lv30">
				
</fieldset>

<fieldset><legend>Downgrade Users</legend>
Downgrade to 30:<input type="button" id="button_down_lv" onClick="user_down_lv();" value="lv30">
				
</fieldset>

<fieldset><legend>Fix Over powered Users</legend>
Downgrade power:<input type="button" id="button_pow_lv" onClick="user_pow_lv();" value="decrease">
				
</fieldset>

<fieldset><legend>Lord Level</legend>
	Lord name<input type="text" id="user_role_name" name="user_role_name">
				Lord Level<input type="text" id="role_level" name="role_level" maxlength="2" style="width:30px;">
						<input type="button" id="button_ro" onClick="user_ro();" value="level">
			
</fieldset>


<fieldset><legend>Others</legend>
<p><a href="cokadmin.php?code=<?php echo $code;?>" target="_blank">Email and send prop please click here</a></p>
<p> <a href="search.php?code=<?php echo $code;?>" target="_blank">Search coordinates</a></p>				
</fieldset>



		<script>
			function addgold(){
				var username=document.getElementById("username").value;
				var chongzhi=document.getElementById("chongzhi").value;
				var gold=document.getElementById("gold").value;
				var check=document.getElementById("check").value;
				
				var xmlhttp=null;
				if(window.XMLHttpRequest){
					
					xmlhttp=new XMLHttpRequest();
				}else if(window.ActiveXObject){
					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					
				}
				if(xmlhttp!=null){
					var url="res.php?username="+username+"&gold="+gold+"&check="+check+"&chongzhi="+chongzhi;
					xmlhttp.onreadystatechange=setgold;
					xmlhttp.open("GET",url,true);
					xmlhttp.send(null);
					
					
				}
				
				function setgold(){
					if(xmlhttp.readyState==4){
						if(xmlhttp.status==200){
							alert(xmlhttp.response);
						}
					}
					
					
				}				
				
				
				
				
				
			}
		
		function user_ban(){
			var xmlhttp=null;
				if(window.XMLHttpRequest){
					
					xmlhttp=new XMLHttpRequest();
				}else if(window.ActiveXObject){
					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					
				}
				var user_fh=document.getElementById("user_fh").value;
				var button_fh=document.getElementById("button_fh").value;
				var url="res.php?fh="+user_fh+"&button_fh="+button_fh;
				
				xmlhttp.open("GET",url,true);
				xmlhttp.onreadystatechange=chulifh;
				xmlhttp.send(null);
				
				
				function chulifh(){
					if(xmlhttp.readyState==4){
						if(xmlhttp.status==200){
							alert(xmlhttp.response);
							
						}
						
					}
					
					
				}
		}
		
		function user_jf(){
			var xmlhttp=null;
				if(window.XMLHttpRequest){
					
					xmlhttp=new XMLHttpRequest();
				}else if(window.ActiveXObject){
					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					
				}
				var user_fh=document.getElementById("user_fh").value;
				var button_jf=document.getElementById("button_jf").value;
				var url="res.php?fh="+user_fh+"&button_jf="+button_jf;

				xmlhttp.open("GET",url,true);
				xmlhttp.onreadystatechange=chulifh;
				xmlhttp.send(null);
				
				
				function chulifh(){
					if(xmlhttp.readyState==4){
						if(xmlhttp.status==200){
							alert(xmlhttp.response);
							
						}
						
					}
					
					
				}
		}
		
		function user_lv_up(){
        
			var xmlhttp=null;
				if(window.XMLHttpRequest){
					
					xmlhttp=new XMLHttpRequest();
				}else if(window.ActiveXObject){
					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					
				}
				var user_lv=document.getElementById("user_lv").value;
				var url="res.php?lv="+user_lv+"&button_lv="+button_lv.value;

				xmlhttp.open("GET",url,true);
				xmlhttp.onreadystatechange=chulilv;
				xmlhttp.send(null);
				
				
				function chulilv(){

					if(xmlhttp.readyState==4){
                                   
                     
						if(xmlhttp.status==200){
                        
							alert(xmlhttp.response);
							
						}
						
					}
					
					
				}
		}
		function user_down_lv(){
		
			var xmlhttp=null;
				if(window.XMLHttpRequest){
					
					xmlhttp=new XMLHttpRequest();
				}else if(window.ActiveXObject){
					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					
				}
				
				var url="res.php?button_down_lv="+button_down_lv.value;

				xmlhttp.open("GET",url,true);
				xmlhttp.onreadystatechange=chulilv;
				xmlhttp.send(null);
				
				
				function chulilv(){
					if(xmlhttp.readyState==4){
						if(xmlhttp.status==200){
							alert(xmlhttp.response);
							
						}
						
					}
					
					
				}
		}
		
		function user_pow_lv(){
		
			var xmlhttp=null;
				if(window.XMLHttpRequest){
					
					xmlhttp=new XMLHttpRequest();
				}else if(window.ActiveXObject){
					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					
				}
				
				var url="res.php?button_pow_lv="+button_pow_lv.value;

				xmlhttp.open("GET",url,true);
				xmlhttp.onreadystatechange=chulilv;
				xmlhttp.send(null);
				
				
				function chulilv(){
					if(xmlhttp.readyState==4){
						if(xmlhttp.status==200){
							alert(xmlhttp.response);
							
						}
						
					}
					
					
				}
		}
		
		 function user_ro(){
			 
			 var xmlhttp=null;
				if(window.XMLHttpRequest){
					
					xmlhttp=new XMLHttpRequest();
				}else if(window.ActiveXObject){
					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					
				}
			 var user_role_name=document.getElementById('user_role_name').value;
			 var role_level=document.getElementById('role_level').value;
			 var url="res.php?role="+user_role_name+"&level="+role_level;
			 xmlhttp.open("GET",url,true);
			 xmlhttp.onreadystatechange=chulirol;
			 xmlhttp.send(null);
			 function chulirol(){
				 
				 if(xmlhttp.readyState==4){
					  
					 if(xmlhttp.status==200){
						alert(xmlhttp.response);
					 }
				 }
			 }
		 }
		
		</script>
		
	
	</body>



</html>
