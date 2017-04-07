<?php
	
	extract($_GET);
	$conn = mysqli_connect('localhost', 'root', 'yourpassword');
  	$db   = mysqli_select_db($conn,'patient');
      if(! $conn){
          die('Connection Failed'. mysql_error());
      }
      
	
	if($name=="all")
	{
		$query1 = "select * from patient;";
	}
	else
	{
		if(($fname != "") and ($lname != ""))
			$query1 = "select * from patient where firstName='$fname' and lastName='$lname';";
		else
		{
			if($fname == "" and $lname!="")
				$query1 = "select * from patient where lastName='$lname';";
			else if($fname != "" and $lname=="")
				$query1 = "select * from patient where firstName='$fname';";
			else
				exit("please provide a valid input");
		}
	
	}
	//echo $query1;
	
	$result = mysqli_query($conn, $query1);
	if (mysqli_num_rows($result) > 0) 
	{
		echo"<table class='table table-bordered table-hover'style='position:relative;top:150px;'><tr><th><h1>First Name</h1></th><th><h1>Last Name</h1></th><th><h1>Phone</h1></th><th><h1>Age</h1></th><th><h1>DOB</h1></th><th><h1>Gender</h1></th><th><h1>Free Text</h1></th></tr><tr>";
		while($row = mysqli_fetch_assoc($result))
		{
			//print_r($row);
			echo "<td>".$row['firstName']."</td><td>".$row['lastName']."</td><td>".$row['phone']."</td><td>".$row['age']."</td><td>".$row['dob']."</td><td>".$row['gender']."</td><td>".$row['freeText']."</td></tr>";
		}
		echo "</table>";
	} 
	else 
	{
	    echo "0 results";
	}
	

mysqli_close($conn);

?>
