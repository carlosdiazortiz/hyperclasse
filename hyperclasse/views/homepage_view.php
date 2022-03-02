<?php
ob_start();
?>
<article>
    <?php echo '<h1>Bienvenue</h1>' ?>
</article>
<?php
$contents = ob_get_clean();
require_once 'layout.php';