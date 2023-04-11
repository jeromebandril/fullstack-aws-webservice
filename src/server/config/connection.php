<?php
set_exception_handler(function (Throwable $e) {
  http_response_code(500);
  error_log("DATABASE CONNECTION ERROR: $e");
});

// credentials on remote server
// $hostname = "db";
// $username = "admin";
// $password = "admin";
// $database = "jerome_aws_database";
// $port = "3306";

//credential on my local machine
$hostname = "localhost";
$username = "root";
$password = "";
$database = "jerome_aws_database";
$port = "3306";
$conn = new mysqli($hostname, $username, $password, $database, $port);

if ($conn->connect_error)
  die($conn->connect_error);
