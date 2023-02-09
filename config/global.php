<?php

define('DB_NAME', 'php-blog');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_HOST', 'localhost');


define('LOGO_URL', '/../assets/images/logo-hot-coffee.png');


// Function to display message
function display_message($msg, $type_msg = 'info')
{
    $style_color = "";

    if ($type_msg == 'info') {
        $style_color = 'info-toast';
    } else if ($type_msg == 'error') {
        $style_color = 'error-toast';
    } else if ($type_msg == 'warning') {
        $style_color = 'warning-toast';
    } else if ($type_msg == 'success') {
        $style_color = 'success-toast';
    }

    echo "<div id='message-container' class='$style_color'>$msg</div>";
    return;
}