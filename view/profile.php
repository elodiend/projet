<?php
// require_once("../controlleur/initsession.php");


?>


<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GamePlay</title>
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/profil.css">
    <link href="https://fonts.cdnfonts.com/css/roboto-3" rel="stylesheet" />
</head>

<body>
    <header>
    <?php require_once("../template/navbar.php"); ?>
    </header>
    <main>
    <div class="categorycontain">
            <div class="title1">
                <h3>Mon profil</h3>
            </div>
                <div class="deconnexion">
                    <a href="../controlleur/logout.php">
                        <input type="submit" value="Déconnexion">
                    </a>
                </div>
            
        </div>
        <!-- <div class="profilecontain"> -->
            <div class="profile">
                <div class="leftpart">
                    <div class="pseudo">
                        <img src="../assets/Images/ac.jpg" alt="" width="100%">
                        <h2><?php echo "$pseudo" ?></h2>
                    </div>

                    <div class="infoprofile">
                    <h2>Mes infos</h2>
                    <hr>
                    <ul>
                        <li><b>Age :</b> php</li>
                        <li><b>Genre :</b> php</li>
                        <li><b>Mail :</b> php</li>
                        <li><b>Niveau de jeu :</b> php</li>
                        <li><b>Fréquence de jeu :</b> php</li>
                        <li><b>Membre depuis le :</b> php </li>
                        <li><b>Genres préférés :</b> php</li>
                        <li><b>Plateforme(s) :</b> php </li>
                    </ul>
                    </div>
                </div>
                                
                
                <div class="rightpart">
                <h2>Jeux favoris</h2>
                <hr>
                    <ul>
                        <li>lien</li>
                        <li>lien</li>
                        <li>lien</li>
                        <li>lien</li>
                        <li>lien</li>
                        <li>lien</li>
                    </ul>
                </div>
            </div>
       
        <div class="modifybtn">
            <a href="#"><h2>Modifier mon profil</h2></a>
        </div>
        <br>
    </main>

    <?php require_once("../template/footer.php"); ?>

    <script src="../assets/js/menuderoulant.js"></script>
    <script src="../assets/js/regexinscription.js"></script>
</body>

</html>