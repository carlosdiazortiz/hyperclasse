<?php
require_once 'Model.php';
class Catalog
{
    use Model;

    public function getIndex()
    {

    }

    public function getProductsList()
    {
        //$page = 1;
        $page = $_GET['page'] ?? 1;
        $itemsPerPage = 16;
        $stmt = $this->pdo->prepare('SELECT * FROM products LIMIT :start, :itemsPerPage');
        $stmt->bindValue(':start', $itemsPerPage * ($page - 1), PDO::PARAM_INT);
        $stmt->bindValue(':itemsPerPage', $itemsPerPage, PDO::PARAM_INT);
        //$products = [];
        $stmt->execute();
        while ($product = $stmt->fetchObject()) {
            $products[] = $product;
        }
        return $products;
    }
}