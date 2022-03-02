<?php
require_once 'Model.php';
class Product
{
    use Model;

    public function getProduct()
    {
        $stmt = $this->pdo->prepare('SELECT * FROM products WHERE id = ?');
        $product = null;
        if ($stmt->execute([$_GET['id']])) {
            $product = $stmt->fetchObject();
            if (!is_object($product)){
                $product = null;
            }
        }
        return $product;
    }
}