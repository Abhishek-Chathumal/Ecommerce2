<?php

$db_name = 'localhost';
$user_name = 'root';
$user_password = '';
$database = 'prj1';

try{

    $conn = new \PDO("mysql:host=$db_name;dbname=$database;charset=utf8mb4", "$user_name", "$user_password", [
        \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,  // make sure the error reporting is enabled!
        \PDO::ATTR_EMULATE_PREPARES => false
    ]);

   // $con1 = new PDO("mysql:hosts=$server; dbname=$database; charset=UTF8","$dbuser","$password");
    //$con1 -> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e){
    die("Error in connection");
}

?>