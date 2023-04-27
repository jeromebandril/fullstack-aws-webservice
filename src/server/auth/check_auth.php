<?php

session_start();

if (isset($_SESSION['id_user'])) {
  header('location: ../../index.html');
} else {
  header('location: ../../login.html');
}
