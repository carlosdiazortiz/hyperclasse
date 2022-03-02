<?php
ob_start();
for ($i = 1; $i <= $numberOfPages; $i++) {
echo '<a href="?products&page=' . $i . '">Page ' . $i . '&nbsp&nbsp&nbsp&nbsp</a>';
}
$contents = ob_get_clean();
require_once 'layout.php';
