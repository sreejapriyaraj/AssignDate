<?php
include('db-config.php');
$query = "SELECT * FROM tdata ORDER BY date1";//To Sort the data by date column
$result = mysqli_query($con,$query);
echo "<style>table,th,td,tr{border:1px solid black;}</style><center><table >
		<tr>
			<th>TOPIC</th>
			<th>NUMBER OF WORDS</th>
			<th>INSTRUCTIONS</th>
			<th>SCHEDULED DATE</th>
		</tr>"; //table creation
while($row = mysqli_fetch_array($result)){   
echo "<tr>
	<td>" . $row['name'] . "</td>
	<td>" . $row['words'] . "</td>
	<td>" . $row['extra'] . "</td>
	<td>" . $row['date1'] . "</td>
</tr>";  //table rows
}

echo "</table></center>"; //end of table
echo"<center>Return to <a href='index.php'>HOME Page</a></center>";//to redirect the home page

?>