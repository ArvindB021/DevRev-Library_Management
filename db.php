<?php
$host = "localhost";
$username = "db_user";
$db_password = "abc123";
$dbname = "library";
$con = mysqli_connect($host, $username, $db_password, $dbname);
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM library_manager";
$result = mysqli_query($con, $sql);

$data = mysqli_fetch_all($result, MYSQLI_ASSOC); 
$json = json_encode($data);
echo $json;

mysqli_close($con);
?>
