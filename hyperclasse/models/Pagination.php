<?php
require_once 'Model.php';


class Pagination
{
    use Model;

    public function getPagination()
    {
        $countStatement = $this->pdo->prepare('SELECT COUNT(*) AS totalArticles FROM products');
        if ($countStatement->execute()) {
            $totalArticles = $countStatement->fetch(PDO::FETCH_ASSOC);
            $numberOfPages = ceil($totalArticles['totalArticles'] / 16);
        }
        return $numberOfPages;
    }
}
