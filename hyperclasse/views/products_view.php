<?php
ob_start();
?>
    <div class="container">
        <?php foreach ($products as $product): ?>
            <a href="?product&id=<?= $product->id ?>">
                <img src="photos/<?= $product->photo ?>" width="250"/>
                <h2><?= $product->item ?></h2>
                <h2><?= $product->price ?></h2>
            </a>
        <?php endforeach; ?>
    </div>
<?php
$contents = ob_get_clean();
require_once 'layout.php';


