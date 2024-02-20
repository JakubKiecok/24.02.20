<?php include_once("connect.php")?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header><h1>Wszystkie czujniki</h1></header>
    <div class="head">
    <?php
        $counter = $conn->query(" SELECT COUNT(ID) as 'ile' FROM arkusz ");
        list($ile) = mysqli_fetch_row( $counter );

        echo("<h2>Ile czujników w tej kategori: $ile</h2>")
    ?>
    <ul class="menu">
        <li><a href="index.php">Wszystkie czujniki</a></li>
        <li><a href="kat1.php">Czujniki Kategori 1</a></li>
        <li><a href="kat4.php">Czujniki Kategori 4</a></li>
        <li><a href="max.php">Najdroższe czujniki</a></li>
    </ul>
    </div>
    <main>
        <ul>
        <?php
            $records = $conn->query(" SELECT arkusz.ID, arkusz.Nazwa, arkusz.CenaCzujnika FROM arkusz");
            while(list($ID, $Nazwa, $CenaCzujnika,) = mysqli_fetch_row($records)){
                echo("<li>$ID, $Nazwa, $CenaCzujnika</li>");
            }
        ?>
        </ul>

        <?php
            $sum = $conn->query("SELECT Sum(CenaCzujnika) as 'suma' from arkusz");
            list($suma) = mysqli_fetch_row($sum);
            echo("<h3>Cena czujników razem: $suma</h3>");
        ?>
    </main>
</body>
</html>