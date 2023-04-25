<?php

require_once "../config/connection.php";

session_start();

$emailOrUsername = $_POST['email'];
$psw = password_hash($_POST['password'], PASSWORD_DEFAULT); //bcrypt

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
  echo json_encode(array('is_success' => 1, 'message' => 'success', 'pass' => $psw));
} else {
  http_response_code(404);
  echo json_encode(array('is_success' => 0, 'message' => 'email or password not correct', 'pass' => $psw));
}
