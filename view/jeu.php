<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gameplay</title>
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/jeu.css">
    <link href="https://fonts.cdnfonts.com/css/roboto-3" rel="stylesheet" />
</head>

<body>
    <header>
    <?php require_once("../template/navbar.php"); ?>
    </header>
    <br>
    <main>
        <div class="bodycontain">
            <div class="title">
                <h2>Ghost of Tsushima</h2> <img class="favno" src="../assets/Images/coeur vide.png" id="heart"
                    alt="fav">
            </div>
            <div class="gameimg"><img src="../assets/Images/ezgif-1-00fd30be8e.jpg" alt="" width="100%"></div>
            <div class="bodydescr">
                <div class="resume">
                    <p>Empruntez une nouvelle voie et entrez en guerre pour libérer Tsushima. Défiez vos adversaires au
                        katana, maîtrisez l'arc pour éliminer les menaces à distance, développez des stratégies pour
                        surprendre vos ennemis et explorez un nouveau récit sur l'île d'Iki. Ghost of Tsushima est un
                        jeu d'action présentant un monde ouvert constitué de plaines, forêts et villes. Le gameplay
                        consiste à se battre face à des personnages contrôlés par l'I.A, au moyen d'un katana, lors de
                        combats réalistes et techniques se basant sur des mécaniques d'esquives, de parades et de coups
                        faibles ou puissants. Les combats sont évitables par le biais de phases d'infiltration où il
                        sera possible d'utiliser un tantō pour assassiner discrètement les ennemis. Par ailleurs, le
                        joueur possède un grappin afin de rentrer discrètement à l'intérieur de bâtiments.
                    </p>
                </div>
            </div>
            <!-- <div class="star"></div> -->
            <div class="info">
                <ul>
                    <li><b>Classification</b> : PEGI 18 </li>
                    <li><b>Développeurs</b> : Sucker Punch Productions, Nixxes Software </li>
                    <li><b>Date de sortie</b> : 17 juillet 2020 </li>
                    <li><b>Genres</b> : Infiltration, RPG, Action-Aventure </li>
                    <li><b>Mode de jeu</b> : Solo, multijoueur en ligne </li>
                    <li><b>Plateformes</b> : PC (Windows), PS4, PS5</li>
                    <li><b>Langues</b> : Multilingue</li>
                    <li><b>Prix</b> : 40 euros</li>
                    <li><b>TW</b> : Violence</li>
                </ul>
            </div>
            <div class="diapo">
                <button class="btn" id="prev">&#10096;</button>
                <button class="btn" id="next">&#10097;</button>
                <ul>
                    <li class="slide"><img src="../assets/Images/got1.jpg" width="100%" alt="">
                    </li>
                    <li class="slide active"><img src="../assets/Images/got2.jpg" width="100%" alt="">
                    </li>
                    <li class="slide"><img src="../assets/Images/got3.jpg" width="100%" alt="">
                    </li>
                </ul>

            </div>
        </div>

        <h3>Avis :</h3>
        <hr align="left" width="10%">

        <div class="comcontain">
            <div class="comboxpost">
                <img src="../assets/Images/account_circle_50dp_E5E5E5_FILL0_wght400_GRAD0_opsz48.png" alt="image profil"
                    class="imgprofile1"><span class="pseudo1">Pseudo</span>

                <div class="ratingresult">
                    <span id="star5" name="star" value="5">★</span>
                    <span id="star4" name="star" value="4">★</span>
                    <span id="star3" name="star" value="3">★</span>
                    <span id="star2" name="star" value="2">★</span>
                    <span id="star1" name="star" value="1">★</span>
                </div>

                <div class="com">
                    <p>ceci est un test</p>
                </div>
            </div>

            <div class="comboxpost">
                <img src="../assets/Images/account_circle_50dp_E5E5E5_FILL0_wght400_GRAD0_opsz48.png" alt="image profil"
                    class="imgprofile1"><span class="pseudo1">Pseudo</span>

                <div class="ratingresult">
                    <span id="star5" name="star" value="5">★</span>
                    <span id="star4" name="star" value="4">★</span>
                    <span id="star3" name="star" value="3">★</span>
                    <span id="star2" name="star" value="2">★</span>
                    <span id="star1" name="star" value="1">★</span>
                </div>

                <div class="com">
                    <p>ceci est un test</p>
                </div>
            </div>
        </div>

        <h3>Publier un commentaire</h3>
        <hr align="left" width="35%">
        <div class="containformcom">
            <div class="commentbox">
                <img src="../assets/Images/account_circle_50dp_E5E5E5_FILL0_wght400_GRAD0_opsz48.png" alt="image profil"
                    class="imgprofile"><span class="pseudo">Pseudo</span>

                <div class="rating">
                    <input type="radio" id="star5" name="star" value="5">
                    <label for="star5">★</label>
                    <input type="radio" id="star4" name="star" value="4">
                    <label for="star4">★</label>
                    <input type="radio" id="star3" name="star" value="3">
                    <label for="star3">★</label>
                    <input type="radio" id="star2" name="star" value="2">
                    <label for="star2">★</label>
                    <input type="radio" id="star1" name="star" value="1">
                    <label for="star1">★</label>
                </div>

                <h3>Evaluez !</h3>

                <form action="" id="commentform" class="commentform">
                    <textarea name="comment" id="comment" placeholder="Ecrire votre commentaire..." required></textarea>
                </form>
                <button type="submit">Publier</button>
            </div>

        </div>
    </main>
    <?php require_once("../template/footer.php"); ?>

    <script src="../assets/js/menuderoulant.js"></script>
    <script src="../assets/js/favori.js"></script>
    <script src="../assets/js/diapo.js"></script>

</body>

</html>