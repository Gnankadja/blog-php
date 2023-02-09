<?php
// Get global variable
require_once(__DIR__ . "./global.php");

// Config and connect database
$db_name = DB_NAME;
$db_host = DB_HOST;
$db_port = 3306;

$dsn = "mysql:host=$db_host;port=$db_port;dbname=$db_name";
$pdo = new PDO($dsn, DB_USER, DB_PASSWORD);
?>