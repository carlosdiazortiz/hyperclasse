<?php
require_once './models/Catalog.php';
require_once './models/Product.php';
require_once './models/Pagination.php';
require_once './models/Cart.php';
class Products_controller
{
    public function index()
    {
        $index = new Catalog();
        $index->getIndex();
        require_once 'views/homepage_view.php';
    }

    public function products()
    {
        $products = new Catalog;
        $products = $products->getProductsList();
        require_once 'views/products_view.php';
    }

    public function pagination()
    {
        $pagination = new Pagination();
        $numberOfPages = $pagination->getPagination();
        require_once 'views/pagination_view.php';
    }

    public function product()
    {
        $product = new Product();
        $product = $product->getProduct();
        require_once 'views/product_view.php';
    }

    public function cart()
    {
        $product = new Cart();
        $product = $product->getCart();
        require_once 'views/cart_view2.php';
    }
}