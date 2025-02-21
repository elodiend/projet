<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GamePlay</title>
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/inscription.css">
    <link href="https://fonts.cdnfonts.com/css/roboto-3" rel="stylesheet" />
</head>

<body>
    <header>
    <?php require_once("../template/navbar.php"); ?>
    </header>
    <main>
        <div class="containinscr">
            <form class="inscription" method="post" id="forminscription" action="../controlleur/inscriptionController.php">
                <div class="titleinscription">
                    <h2>Inscription</h2>
                    <hr>
                </div>

                <div class="champ">
                    <label for="pseudo">Pseudo</label>
                    <input type="text" id="pseudo" name="pseudo" required>
                    <label for="password">Mot de passe</label>
                    <input type="password" id="password" name="password" placeholder="*************" required>
                    <!-- <label for="passwordconfirm">Confirmer le mot de passe</label>
                    <input type="password" id="passwordconfirm" name="passwordconfirm" placeholder="*************"
                        required> -->
                    <label for="email">Adresse mail</label>
                    <input type="email" id="email" name="email" placeholder="exemple@gmail.fr" required>
                    <label for="age">Age</label>
                    <input type="number" id="age" name="age" required>
                </div>
                <div class="radio">
                    <label for="man">
                        <input type="radio" id="man" name="gender" value="Homme" required>
                        Homme</label>

                    <label for="woman">
                        <input type="radio" id="woman" name="gender" value="Femme">
                        Femme</label>

                    <label for="nb">
                        <input type="radio" id="nb" name="gender" value="NB">
                        Non binaire</label>
                </div>
                <p>Niveau de jeu</p>
                <div class="radio">
                    <label for="occasionnel"><input type="radio" id="occasionnel" name="level" value="occasionnel"
                            required>
                        Occasionnel</label>
                    <label for="intermediaire"><input type="radio" id="intermediaire" name="level"
                            value="intermediaire">
                        Intermédiaire</label>
                    <label for="expert"><input type="radio" id="expert" name="level" value="expert">
                        Expérimenté</label>
                </div>
                <div class="formvalide">
                    <input type="submit" value="Valider" name="ok" id="ok">
                </div>
            </form>
        </div>
    </main>

    <?php require_once("../template/footer.php"); ?>

    <script src="../assets/js/menuderoulant.js"></script>
    <!-- <script src="../assets/js/regexinscription.js"></script>  Le script bloque l'input submit je ne sais pas pourquoi -->
</body>

</html>