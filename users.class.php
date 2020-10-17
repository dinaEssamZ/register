<?php

class users {
    
    private $connection;
    private $userData; //row of user

    // DB connection

    public function __construct() {
        $this->connection = new mysqli('localhost','root','','task') ;
    }


    public function login($email,$password)
    {
        $result = $this->connection->query("SELECT * FROM `users`
                                                WHERE `email`='$email'
                                                AND `password`='$password' ");
        if($result->num_rows >0 ){
            $this->userData = $result->fetch_assoc();
             //session
            $_SESSION['user'] = $this->getUserData();
            return true;
        }
        return false;

    }

    public function register($name,$email,$password,$phonenum,$address)
    {
        $this->connection->query("INSERT INTO `users`(`name`, `email`, `password`, `phonenum`, `address`)
                                     VALUES ('$name','$email','$password','$phonenum','$address')");
        if($this->connection->affected_rows>0)
            $this->login($email, $password);
            return true;

        return false;
    }

    public function logout ()
    {
        
    }

    public function getUser($id)
    {
        $id = (int) $id;
        $result = $this->connection->query("SELECT * FROM `users`
                                                WHERE `id`='$id'");
        if($result->num_rows >0 ){
            $this->userData = $result->fetch_assoc();
            return $this->userData;
        }
        return null;
    }

    public function getUserData()
    {
        return $this->userData;
    }

}