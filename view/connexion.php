<?php
//  require("../controlleur/connexionController.php");

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GamePlay</title>
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/connexion.css">
    <link href="https://fonts.cdnfonts.com/css/roboto-3" rel="stylesheet" />
</head>

<body>
    <header>
    <?php require_once("../template/navbar.php"); ?> 
    </header>

    <main>
        <br>
        <div class="formcontain">
            <form class="formconnexion" method="post" id="formconnexion" action="../controlleur/connexionController.php">
                <h2>Connexion</h2>
                <hr>
                <div class="forminput">
                    <label for="pseudo">Se connecter avec le pseudo :</label>
                    <input type="text" id="pseudo" name="pseudo" placeholder="pseudo">
                </div>
                <div class="forminput">
                    <label for="password">Entrez le mot de passe :</label>
                    <input type="password" id="password" name="password" placeholder="*************">
                    <a href="#">Mot de passe oublié ?</a>
                </div>
                <div class="formvalide">
                    <input type="submit" value="Connexion">
                
                </div>
            </form>
            <div class="formregistration" >
                <h2>Pas encore membre ?</h2>
                <hr>
                <div class="create">
                    <p>Rejoignez-nous et inscrivez-vous !</p>
                    <div class="createbtn">
                        <a href="./inscription.php">
                            <h2>Créer un compte</h2>
                        </a>
                    </div>
                    <!-- <a href="./inscription.html"><input type="submit" value="Créer un compte"></a> -->
                </div>
</div>
        </div>
    </main>

    <?php require_once("../template/footer.php"); ?>

    <script src="../assets/js/menuderoulant.js"></script>
    <script src="../assets/js/regexconnexion.js"></script> 
</body>

</html>