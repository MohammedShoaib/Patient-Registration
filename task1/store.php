<?php
	
	extract($_POST);
	$conn = mysqli_connect('localhost', 'root', 'yourpassword');
  	$db   = mysqli_select_db($conn,'patient');
      if(! $conn){
          die('Connection Failed'. mysql_error());
      }
      $query1 = "insert into patient values('$firstName','$lastName','$phoneNo','$age','$dob','$gender','$freeText')";
      $result1 = mysqli_query($conn, $query1);
?>

<html> <head> <title>Search patient </title> 
<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.min.js"> </script>
<script type="text/javascript">
	function findPatient()
	{
		var fname = $("#fname").val();
		var lname =  $("#lname").val();
		$.ajax({url:"http://localhost/ass/getPatient.php?name=&fname="+fname+"&lname="+lname,type:"GET",data:{},success:validate});
	}
	
	function validate(data)
	{
		$("div#display").html(data);
	}
	function getPatients()
	{
		$.ajax({url:"http://localhost/ass/getPatient.php?name=all",type:"GET",data:{},success:validate});
	}
</script>

</head>

<body onload="getPatients()" bgcolor="red" style="font-size:20px;font-weight:bold;" >
<p align="center"style="position:relative;top:50px;"><label for="fname">Enter First Name&nbsp&nbsp&nbsp</label><input type="text" id="fname" ></p>
<p align="center"style="position:relative;top:70px;"><label for="lname">Enter Last Name&nbsp&nbsp&nbsp</label><input type="text" id="lname" ></p>
<button  id="find" onclick="findPatient()" style="position:relative;top:100px;left:910px;">Search patient </button>
<div id="display"> </div>

<script src='js/one.js'></script>

    <script src="js/index.js"></script>
</body>
</html>
