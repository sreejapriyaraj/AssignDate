<?php
include('db-config.php');// including the db-config.php to make a connection
$name=$_POST["name"];//user details from the add-project.php
$words=$_POST["words"];
$extra_information=$_POST["extra"];
if ($words>1000)//for alert 
{
	echo '<script>alert("Maximum allowed words are 1000 only");
		window.location.href="add-project.php";
	</script>';//alert message
}
else
{

	$query="SELECT date1 from tdata";//selct the data from tdata table
	$connection=mysqli_query($con,$query);//to execute a query
	$row=mysqli_fetch_array($connection);//to fetch the values
	$num_of_rows=mysqli_num_rows($connection);//num of rows
	$i=0;
	$date=date("Y-m-d");//today's date
    do{
		//echo $date;
			$select_query="SELECT sum(words) from tdata where date1='$date'";//to select the sum of rows where date=$date
			$fetch=mysqli_query($con,$select_query);
			$row=mysqli_fetch_array($fetch);
			$data=$row[0];//to store the sum
			if($data+$words<=1000 )//if A+B<=100
			{
				$query="INSERT into tdata (name,words,extra,date1) values ('$name','$words','$extra_information','$date');";//insert the values to tdata table
				$db_insert=mysqli_query($con,$query);
				break;
			}
			$date = date('Y-m-d', strtotime($date. ' + 1 days'));//to increment the date by 1
			//echo $date;
	}while($i<$num_of_rows);
	echo '<script>alert("Submitted Successfully");
	window.location.href="index.php";</script>';//to alert submitted successfully
}
?>
