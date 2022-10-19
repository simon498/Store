<?php

require("config.php");

$email = $_POST['email'];
$password = $_POST['password'];


$email = stripcslashes($email);
$password = stripcslashes($password);
$email = mysqli_real_escape_string($conn, $email);
$password = mysqli_real_escape_string($conn, $password);


$query = "SELECT id, email FROM admin WHERE email='" . $email . "' AND password='" . $password . "'";
$result = mysqli_query($conn, $query)or die($mysqli_error($conn));
$num = mysqli_num_rows($result);

if ($num == 0) {
  $error = $$_GET['error'];
  $error = " InCorrect E-mail and Password Combination";
  header('location: index.php?error=' . $error);
} else {
  $row = mysqli_fetch_array($result);
  
  session_start();
  $_SESSION['email'] = $row['email'];
  $_SESSION['id'] = $row['id'];
  header('location: home.php');
}
?>
