<?php

session_start();
require('includes/users.class.php');
require('includes/functions.php');


if(checkLogin())
    exit('you are already logged in');

if (isset($_POST['submit'])) {
    $usersObject = new users();
    
    $email = $_POST['email'];
    $password = $_POST['password'];

    if($usersObject->login($email,$password)){

        //Get Data
        $user = $usersObject->getUserData();

        //session
        $_SESSION['user'] = $user;

        //Go to home
        header("Location: index.php");

        exit;
    }
    else{
        echo 'please wrire valid data';
    }
}
?>

<form action="login.php" method="post">
    email :    <input type="text" name="email"> <br>
    password : <input type="password" name="password"> <br>
    <input type="submit" name="submit" value="Login"> <br>
    <p>To Register <a href="register.php">Click here</a></p>
    <p>To go home <a href="index.php">Click here</a></p>
    
</form>