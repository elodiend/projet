<?php
// require_once("../controlleur/initsession.php");
require_once("../controlleur/profileControlleur.php");
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

                        <?php echo '<img src="../assets/Images/uploadprofil'.$user["picture"].'">'; ?>
                        <h2><?php echo htmlspecialchars($user['pseudo']) ?></h2>
                    </div>

                    <div class="infoprofile">
                    <h2>Mes infos</h2>
                    <hr>
                    <ul>
                        <li><b>Age :</b> <?php echo htmlspecialchars($user['age']) ?></li>
                        <li><b>Genre :</b> <?php echo htmlspecialchars($user['gender']) ?></li>
                        <li><b>Mail :</b> <?php echo htmlspecialchars($user['email']) ?></li>
                        <li><b>Niveau de jeu :</b> <?php echo htmlspecialchars($user['gamelevel']) ?></li>
                        <li><b>Genres préférés :</b> <?php echo htmlspecialchars($user['fav_game_type']) ?></li>
                        <li><b>Plateforme(s) :</b> <?php echo htmlspecialchars($user['plateform_used']) ?></li>
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
            <a href="./profileEdit.php"><h2>Modifier mon profil</h2></a>
        </div>
        <br>
    </main>

    <?php require_once("../template/footer.php"); ?>

    <script src="../assets/js/menuderoulant.js"></script>
    </body>

</html>