<?php
require_once("../controlleur/initsession.php");
require("../controlleur/profileControlleur.php");
// $pseudo = htmlspecialchars($_SESSION['pseudo']);
?>

<nav>
      <label class="toggle" for="toggle">☰</label>
      <input type="checkbox" id="toggle">
      <div class="navcontain">
        <div class="home">
          <a href="../view/index.php"><img src="../assets/Images/Sans titre 2.png" width="90%" alt="accueil" />
            <span>Accueil</span> </a>
        </div>

        <form class="plateforme" name="plateforme">
          <select name="plateformelist" onChange="change()" size="1">
            <option value="" disabled selected>Plateforme</option>
            <option value="./pc.php">PC</option>
            <option value="./ps5.php">PS5/PS4</option>
            <option value="./xbox.php">XBOX</option>
            <option value="./switch.php">SWITCH</option>
          </select>
        </form>

        <form class="genre" name="genre">
          <select name="genrelist" onChange="change1()" size="1">
            <option value="" disabled selected>Genre</option>
            <option value="./fps.php">FPS</option>
            <option value="./rpg.php">RPG</option>
            <option value="./aventure.php">Aventure</option>
            <option value="./horreur.php">Horreur</option>
          </select>
        </form>

        <div class="search">
          <form class="research" action="">
            <input class="search-input" type="search" id="recherche" name="q" placeholder="Nom du jeu..." />
            <button class="researchbtn"><img src="../assets/Images/icons8-loupe-32.png" alt="" width="25px"></button>
          </form>
        </div>

        <div class="filter">
          <a href="./Rechercheavancée.php"><span>Recherche avancée</span></a>
        </div>

        <div class="login">
          <?php if ((session_status() === PHP_SESSION_ACTIVE) && isset($user['picture'])){
            echo '<img src="../assets/Images/uploadprofil'.$user["picture"].'" width="35px" style=border-radius:50%>'; 
            } else {
          echo '<img src="../assets/Images/icons8-male-user-32.png" alt="" width="25px" />';
             }?>
          <?php if ((session_status() === PHP_SESSION_ACTIVE) && isset($_SESSION['pseudo'])) {
            echo "<a href='../view/profile.php'>"."$pseudo". '</a>';
          } else {
            echo '<a href="./connexion.php">Inscription/Connexion</a>';
          }  ?>
          
        </div>
      </div>
    </nav>