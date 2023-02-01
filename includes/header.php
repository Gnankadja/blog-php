<?php
require_once(__DIR__ . '/../config/global.php');
?>
<!DOCTYPE html>
<html lang="fr" translate="no">

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Hot Coffee</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="/../assets/css/style.css">

</head>

<body>

    <header>
        <!-- Logo -->
        <div> <img src=<?= LOGO_URL ?> alt=""></div>

        <!-- Search bar -->
        <div class="search-bar-bloc">
            <input type="search" name="" placeholder="Search..." id="">
        </div>

        <!-- Navbar -->
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Articles</a></li>
        </ul>


        <!-- Social Network icons -->
        <ul>
            <li class="social-icon"><a href="#"><img src="../assets/images/instagram-icon.svg" alt=""></a></li>
            <li class="social-icon"><a href="#"><img src="../assets/images/twitter-icon.svg" alt=""></a></li>
            <li class="social-icon"><a href="#"><img src="../assets/images/linkedin-icon.svg" alt=""></a></li>
        </ul>
    </header>