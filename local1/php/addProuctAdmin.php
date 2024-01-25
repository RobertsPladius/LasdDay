<?php

    require("connect.php");
    
    $name = $_POST['name'];
    $price = $_POST['price'];
    $image_path = $_POST['image_path'];
    $seans = $_POST['seans'];
    $sql = "INSERT INTO Product (name, price, image_path, Seans) Values ('$name', $price, '$image_path','$seans');";

    if($result = $conn->query($sql))
    {
        header("Location: ../pages/admin.php");
    }
?>