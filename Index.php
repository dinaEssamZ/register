<?php
session_start();
require_once 'includes/functions.php';

if(checkLogin())
{
    echo 'Welcome '.$_SESSION['user']['name'];

}

?>

<h3>WebGen Studio</h3>
<p>To Login <a href="login.php">Click here</a></p>
<p>To Register <a href="register.php">Click here</a></p>
<p>To Logout <a href="logout.php">Click here</a></p>
