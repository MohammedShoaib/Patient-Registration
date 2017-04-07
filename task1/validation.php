<?php
	//print_r($_GET);
	$conn = mysqli_connect('localhost', 'root', 'yourpassword');
  	$db   = mysqli_select_db($conn,'patient');
      if(! $conn){
          die('Connection Failed'. mysql_error());
      }
      extract($_GET);
     // echo $fname."\t".$lname."\t".$ph."\n";
      $fname = (string)$fname;
      $lname = (string)$lname;
      $ph = (string)$ph;
      //echo "\n\n\n";
      $query1 = "Select * from patient where firstName='$fname' and lastName='$lname' and phone='$ph'";
      $result1 = mysqli_query($conn, $query1);
	if(mysqli_num_rows($result1)>0)
	{
    		echo "0";
        }
	else
	{
		echo "1";
	}
	
?>
