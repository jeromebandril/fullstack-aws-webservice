<?php

require_once "../config/connection.php";

session_start();

$emailOrUsername = $_POST['email'];
$psw = $_POST['password'];

//TODO regex for email
$query = 'SELECT id FROM users WHERE (email LIKE ? OR username LIKE ?) AND password_bcrypt LIKE ?';

$stmt = $conn->prepare($query);
$stmt->bind_param('sss', $emailOrUsername, $emailOrUsername, $psw);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
  $stmt->bind_result($userId);
  $stmt->fetch();
  $_SESSION['user_id'] = $userId;

  http_response_code(202);
  echo json_encode(array('is_success' => 1, 'message' => 'success'));
} else {
  http_response_code(404);
  echo json_encode(array('is_success' => 0, 'message' => 'email or password not correct'));
}
