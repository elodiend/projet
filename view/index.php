<?php   
require_once("../controlleur/initsession.php");
// error_reporting(0); Pour que les erreurs ne s'affichent pas, voir ça à la fin

?>


<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Gameplay</title>
  <link rel="stylesheet" href="../assets/css/style.css" />
  <link rel="stylesheet" href="../assets/css/accueil.css">
  <link href="https://fonts.cdnfonts.com/css/roboto-3" rel="stylesheet" />
</head>

<body>
  <header>
  <?php require_once('../template/navbar.php'); ?>
  </header>

  <br>
  <main>
    <div class="bodyintro">
      <p>Bienvenue sur GamePlay, le site répertoire de jeux vidéo. Toute sorte de jeux y sont
        regroupés, peu importe la plateforme ! Découvrez les fiches de chacun d’eux, indiquant toutes les informations
        les concernant. Vous recherchez un jeu PS5 de type RPG, rien de plus facile ! GamePlay met à votre disposition
        un listing de jeux conséquent tout en permettant à chacun d’exprimer son avis. Profitez de ce partage entre
        joueurs et soyez curieux !</p>
    </div>
    <br>
    <br>
    <div class="title">
      <h1>A la une !</h1>
    </div>
    <br>
    <div class="bodycontain">
      <div class="imgmonthgame"><img src="../assets/Images/ezgif-5-bc359b14ad.jpg" alt="" width="100%"></div>
      <div class="bodydescr">
        <div class="resume">
          <h2>Ace Attorney Investigations Collection</h2>
          <p>Profitez des deux jeux Ace Attorney Investigations et incarnez Benjamin Hunter, le jeune et brillant
            procureur de la saga Ace Attorney originale ! Quittez la salle d'audience pour examiner les scènes de crime
            avec Hunter à la recherche de preuves et d'indices, et interrogez les témoins et les suspects. Fiez-vous à
            votre sens de la déduction et aux éléments réunis pour résoudre avec logique des affaires aussi complexes
            qu'intrigantes. Ace Attorney Investigations Collection est une compilation qui regroupe les deux jeux
            d'aventure Ace Attorney Investigations sortis au départ sur DS. Ces spin-off profitent de graphismes
            entièrement refaits en HD.
          </p>
        </div>
        <div class="info">
          <ul>
            <li><b>Classification</b> : Tout public </li>
            <li><b>Développeurs</b> : Capcom, Arc System Works </li>
            <li><b>Editeur</b> : Capcom </li>
            <li><b>Date de sortie</b> : 23 aout 2024 </li>
            <li><b>Genres</b> : Aventure, réflexion </li>
            <li><b>Mode de jeu</b> : Solo </li>
            <li><b>Plateforme</b> : Nintendo Switch, Xbox One, PS4, PC (Windows)</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="title2">
      <h2><a href="./jeuaceattorney.php">Fiche</a></h2>
    </div>
    <br>
    <br>
    <div class="title">
      <h2>Jeux du moment</h2>
    </div>
    <br>
    <div class="containgame">
      <div class="gamebloc"><img src="../assets/Images/ezgif-4-b3df919013.jpg" width="100%" alt="">
        <h3><a href="./jeumetaphor.php">Metaphor : ReFantazio</a></h3>
      </div>
      <div class="gamebloc"><img src="../assets/Images/ezgif-1-00fd30be8e.jpg" width="100%" alt="">
        <h3><a href="./jeu.php">Ghost of Tsushima</a></h3>
      </div>
      <div class="gamebloc"><img src="../assets/Images/ezgif-4-20d8140857.jpg" width="100%" alt="">
        <h3><a href="./jeusilenthill.php">Silent Hill 2 </a></h3>
      </div>
      <div class="gamebloc"><img src="../assets/Images/lis1.jpg" width="100%" alt="">
        <h3><a href="./lis.php">Life is Strange Double Exposure</a></h3>
      </div>
    </div>
    <br>
    <div class="title">
      <h2>Sorties attendues</h2>
    </div>
    <br>
    <div class="bodycontain">
      <div class="gamerelease">
        <h3>Assassin's Creed Shadow</h3>
        <p>(février 2025)</p>
      </div>
      <div class="imgrelease1">
        <img src="../assets/Images/AS Shadow 1.jpg" width="100%" alt="">
      </div>
      <div class="gamerelease">
        <h3>Ghost of Yotei</h3>
        <p>(2025)</p>
      </div>
      <div class="imgrelease">
        <img src="../assets/Images/goy.jpg" width="100%" alt="">
      </div>
      <div class="gamerelease">
        <h3>Grand Theft Auto VI</h3>
        <p>(2025)</p>
      </div>
      <div class="imgrelease">
        <img src="../assets/Images/gta.jpg" width="100%" alt="">
      </div>
      <div class="gamerelease">
        <h3>Death Stranding 2</h3>
        <p>(2025)</p>
      </div>
      <div class="imgrelease4">
        <img src="../assets/Images/ds2.jpg" width="100%" alt="">
      </div>
    </div>
  </main>
  <br>
  <br>
  <?php require_once("../template/footer.php"); ?>

<script src="../assets/js/menuderoulant.js"></script>
</body>

</html>