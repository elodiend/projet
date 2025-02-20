<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GamePlay</title>
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/rechercheavancee.css">
    <link href="https://fonts.cdnfonts.com/css/roboto-3" rel="stylesheet" />
</head>

<body>
    <header>
    <?php require_once("../template/navbar.php"); ?>
    </header>
    <main>
        <br>
        <div class="containresearch">
            <div class="advsearch">
                <div class="titleadv">
                    <h2>Recherche avancée</h2>
                </div>

                <div class="selectcontain">
                    <form class="platformsearch" name="gameplatform">
                        <select name="platformlist">
                            <option value="" disabled selected>Plateforme</option>
                            <option value="pc">PC</option>
                            <option value="ps">PS5/PS4</option>
                            <option value="xbox">XBOX</option>
                            <option value="switch">SWITCH</option>
                        </select>
                    </form>

                    <form class="gendersearch" name="gamegender">
                        <select name="genderlist">
                            <option value="" disabled selected>Genre</option>
                            <option value="FPS">FPS</option>
                            <option value="RPG">RPG</option>
                            <option value="MMORPG">MMORPG</option>
                            <option value="horreur">Horreur</option>
                        </select>
                    </form>

                    <form class="price" name="price">
                        <select name="pricelist">
                            <option value="" disabled selected>Prix</option>
                            <option value="moinsdix">Moins de 10 euros</option>
                            <option value="dixtrente">Entre 10 et 30 euros</option>
                            <option value="trentecinquante">Entre 30 et 50 euros</option>
                            <option value="cinquanteplus">Plus de 50 euros</option>
                        </select>
                    </form>

                </div>
                <div class="searchsubmit">
                    <input type="submit" value="Rechercher">
                </div>
            </div>
        </div>

        <div class="result">
            <h3>Résultats :</h3>

        </div>
    </main>

    <?php require_once("../template/footer.php"); ?>

    <script src="../assets/js/menuderoulant.js"></script>
</body>

</html>