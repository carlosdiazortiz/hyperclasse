<?php
if (is_null($product)) {
    $contents = 'Cet article n\'existe pas ';
} else {
    ob_start();
?>
<div class="article">
    <div>
        <img src="photos/<?php echo $product->photo ?>" width="350">
        <h3><?php echo $product->item ?></h3>
        <h3>Prix: <?php echo $product->price ?> Euros</h3>
    </div>
    <div>
        <?php echo 'Description : <br><br>'. $product->description ?><br><br>
        <form action="cart.php" method="post">
            <label for="quantity">Quantité</label>
            <input type="number" max="99" min="1" name="quantity" value="1"><br><br>
            <input type="submit" name="add" value="Ajouter au panier">
            <input type="hidden" name="product_id" value="<?php echo $product->id; ?>">
        </form>
    </div>
</div>
<?php
    $contents = ob_get_clean();
}
require_once 'layout.php';