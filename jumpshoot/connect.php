<?php

$dbhost = "localhost";
$dbuser = "asher";
$dbpass = "asher";
$dbname = "jumpshoot";
$tablename = "registration";

$con = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

$sql = mysqli_query($con, "SET time_zone='+8:00'");

?>