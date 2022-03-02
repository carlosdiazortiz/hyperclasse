<?php
trait Model
{
    private $pdo;

    public function __construct()
    {
        try {
            $this->pdo = new PDO('mysql:host=localhost;dbname=hyperclasse;charset=utf8mb4;port=3306', 'root', '');
        } catch (PDOException $e) {
            echo 'La connexion à la base de données a échoué';
            $e->getMessage();
        }
    }
}