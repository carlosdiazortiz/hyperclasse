<?php
ob_start();
?>

<?php
$contents = ob_get_clean();
require_once 'layout.php';