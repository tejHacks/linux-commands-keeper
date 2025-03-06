<?php

$host = 'localhost'; // Change if using a different host
$dbname = 'linux_commands';
$username = 'root'; // Change this to your DB username
$password = ''; // Change this to your DB password

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected Successfully";
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

?>
