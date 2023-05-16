<?php
$link=new mysqli("43.138.129.250","root","123456",'hospital', 3306);
if($link->connect_error) {
    die("Connection failed: ". $link->connect_error);
}
echo '<script>';
echo 'console.log("数据库连接成功!");';
echo '</script>';