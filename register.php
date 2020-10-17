<?php

session_start();
require('includes/users.class.php');
require('includes/functions.php');

if(checkLogin())
    exit('you are already logged in');


if (isset($_POST['submit'])) {
    $usersObject = new users();
    
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $phonenum = $_POST['phonenum'];
    $address = $_POST['address'];

    if($usersObject->register($name,$email,$password,$phonenum,$address)){

        $_SESSION["message"]="MESSAGE OF SUCCESS";
        
        //Go to home
        header('Refresh:3; url=index.php');
        echo 'thank you information for successful registration';
        
        
    }
    else{
        echo 'please wrire valid data';
    }
}
?>

<form action="register.php" method="post" enctype="multipart/form-data">
    name :    <input type="text" name="name"> <br>
    email :    <input type="text" name="email"> <br>
    password : <input type="password" name="password"> <br>
    phone number :    <input type="text" name="phonenum"> <br>
    address :    <input type="text" name="address"> <br>
    <input type="submit" name="submit" value="Register"> <br>
    <p>To go home <a href="index.php">Click here</a></p>

</form>