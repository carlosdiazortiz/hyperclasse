<?php
require_once 'Model.php';
class Cart
{
    use Model;

    public function getCart()
    {
        if (isset($_POST['product_id'])) {
            if (empty($_SESSION['cart'])) {
                $_SESSION['cart'] = array();
            }
        }
    }

}


