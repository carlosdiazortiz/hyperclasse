<?php
session_start();
require_once 'controllers/Products_controller.php';
$controller = new Products_controller();
if (isset($_GET['products'])) {
    $controller->products();
    $controller->pagination();
} elseif (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $controller->product();
} else {
    $controller->index();
}


