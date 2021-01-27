<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
   		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport">
		    <style type="text/css">
body{
    font-size: 12px;
    text-align: center;
    line-height: 2.5;
    margin: 0px;
	margin:0px;
    padding:0px;
	font-family: 'Arial', cursive;
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
</head>
<body>
<div class="div1"><h1>Fix overpowered lords</h1></div><br/>
<fieldset><legend>Fix Over powered Users</legend>
Downgrade power:<input type="button" id="button_pow_lv" onClick="user_pow_lv();" value="decrease">
</fieldset>
<script>
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
		</script>