<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hyper Classe</title>
    <link href="views/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<header>
    <nav>
        <div class="brand"><a href="index.php">HYPER CLASSE<br><span class="type">Vêtements Sport</span></a></div>
        <div class="search">
            <form action="search.php" method="post">
                <label for="search"></label>
                <input type="text" id="search" name="search" placeholder="Rechercher un article" required>
                <button type="submit">Chercher</button>
            </form>
        </div>
        <div class="sportwearlist"><a href="index.php?products">Articles</a></div>
        <div class="identification"><a href="identification_form.php">Identifiez-vous</a></div>
        <div class="panier"><a href="cart.php">Panier</a>
        </div>
    </nav>
</header>
<section>
<div>
    <?php

    echo $contents;
    ?>


</div>

</section>
<footer>
</footer>
</body>
</html>