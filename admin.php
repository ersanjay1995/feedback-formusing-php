<?php
error_reporting(0);

$conn=mysqli_connect('localhost','root','san');
$db=mysqli_select_db($conn,'feedback');

$que=$_POST['question'];
$types=$_POST['ty'];

if(isset($_POST['sub']))
{
	$q="INSERT INTO `questionmaster`( `question`, `type`) VALUES ('".$que."','".$types."')";
	if($r=mysqli_query($conn,$q))
	{
		echo 'successfully add';
	}else
	{
		
		echo 'failed';
	}
	
	
}

?>
<html>
<head>
<title>
feedback form 
</title>
</head>
<body>
<div align="center">
<h1> form Genrate</h1>
<form  method="post">
question :<input type="text" id="question" name="question"/>
<br><br>
answer type  :<input type="radio" name="ty" id="ty"  value="text"/>text
 <input type="radio" name="ty" id="ty1" value="radio">radio
  <input type="radio" name="ty" id="ty2" value="both"/>both
 
<br><br>

 <input type="submit" id="sub" name="sub"/>
</form>
</div>
</body>
</html>

