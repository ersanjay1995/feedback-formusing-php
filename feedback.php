<html>
<head>
<title>
feedback form 
</title>
</head>
<body>
<div align="center"  >
<h1>feedback form</h1>
<form method="post">
student name: <input type="text" id="sname" name="sname"/>
<br><br>
student email:<input type="email" id="email" name="email"/>
<br><br>
student enroll:<input type="text" id="enrol" name="enrol"/>
<br><br>
course name:<input type="text" id="course" name="course"/>
<br><br>
feculty name:<input type="text" id="fecname" name="fecname"/>
<br><br>
<?php
error_reporting(0);

$sname=$_POST['sname'];
$email=$_POST['email'];
$enrol=$_POST['enrol'];
$course=$_POST['course'];
$fecname=$_POST['fecname'];

$conn=mysqli_connect('localhost','root','san');
$db=mysqli_select_db($conn,'feedback');

if(isset($_POST['sub']))
{
	$q="INSERT INTO student( `name`, `email`, `eno`, `course`, `fecname`) VALUES ('$sname','$email', '$enrol', '$course', '$fecname')";
	if($r=mysqli_query($conn,$q))
	{
		//echo 'successfully add';
	}else
	{
		
		//echo 'failed';
	}
	
	
}



$query="select * from questionmaster";
$result=mysqli_query($conn,$query);
while($row=mysqli_fetch_array($result))
{
	print_r($row);
?>
<div>


<h4><?php  $qids =$row['qid']; echo $row['question'];?></h4>
<br>

<?php if($row['type']=='radio')
{
	echo 'Answer:<input type="radio" name="radio" value=" Excellent" />Excellent 
 <input type="radio" name="radio" value="good"/ >good
  <input type="radio" name="radio" value="bad" />bad
 <input type="radio" name="radio" value="poor" >poor';
 
 if(isset($_POST['sub']))
{
			$ans=$_POST['radio'];
	$q="INSERT INTO `feedback_result`(`q_id`,  `stud_id`,`ans`) VALUES ('$qids','$enrol','$ans')";
	if($r=mysqli_query($conn,$q))
	{
		echo 'successfully add';
	}else
	{
		
		echo 'failed';
	}
	
	
}
 
}	

if($row['type']=='text')
{
	
	echo'Answer: <input type="text" name="tans" id="tans" placeholder="write your suggation answer here"/>';
	
	 if(isset($_POST['sub']))
	 {
		 $tans=$_POST['tans'];
	$q="INSERT INTO `feedback_result`(`q_id`,`stud_id`, `ans`) VALUES ('$qids','$enrol','$tans')";
	if($r=mysqli_query($conn,$q))
	{
		echo 'successfully add';
	}else
	{
		
		echo 'failed';
	}
	 }
}
if($row['type']=='both')
{
	echo 'Answer:<input type="radio" name="radio" value=" Excellent" />Excellent 
 <input type="radio" name="radio" value="good"/ >good
  <input type="radio" name="radio" value="bad" />bad
 <input type="radio" name="radio" value="poor" >poor';
	echo'Answer: <input type="text" placeholder="write your suggation answer here"/>';
	
	 if(isset($_POST['sub']))
	 {
		 $tbans=$_POST['tbans'];
		$ans=$_POST['radio'];
	$q="INSERT INTO `feedback_result`(`q_id`,`stud_id`, `anst`,`ans`) VALUES ('$qids','$enrol','$ans','$tbans')";
	if($r=mysqli_query($conn,$q))
	{
		echo 'successfully add';
	}else
	{
		
		echo 'failed';
	}
	
	
}
}
?>
<br>

 <br>

 </div>
 <?php 
 }
 ?>
 <input type="submit" id="sub" name="sub"/>
</form>
</div>
</body>
</html>
