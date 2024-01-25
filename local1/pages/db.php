<?php
    $host = 'localhost';
    $dbname = 'FurStyle';
    $username = 'root';
    $password = '';

    try {
        $db = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
        echo "Ошибка подключения к базе данных: " . $e->getMessage();
        exit;
    }
?>
