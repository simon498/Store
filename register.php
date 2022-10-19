<?php
    $host = "localhost";
    $dbuser = "root";
    $dbpassword = "";
    $dbname = "store";

    
    $username=$_POST['username'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    
    // database connetion

    $conn = new mysqli($host,$dbuser,$dbpassword,$dbname,);
    $link = mysqli_connect("localhost", "root", "", "store");

    // Check connection
    if($conn->connect_error){
        die('connection failed :'.$conn->connect_error);
    }


    
    // Escape user inputs for security
      $username = mysqli_real_escape_string($link, $_REQUEST['username']);
      $email = mysqli_real_escape_string($link, $_REQUEST['email']);
      $password = mysqli_real_escape_string($link, $_REQUEST['password']);

    $sql = "INSERT INTO admin (username, email, password) 
    VALUES ('$username','$email','$password')";

    $results = $conn-> query($sql);

    if ($conn->query($sql) === TRUE) {
        echo "New user added successfully";
        $Id = mysqli_insert_id($con);
        $_SESSION['email'] = $Email;
        $_SESSION['id'] = $Id;
        header('location: home.php');
      } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
      }
      
      

      




      // Close connection
      mysqli_close($link);
    
?>