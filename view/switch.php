<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gameplay</title>
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/ps5.css">
    <link href="https://fonts.cdnfonts.com/css/roboto-3" rel="stylesheet" />
</head>

<body>
    <header>
    <?php include("../template/navbar.php"); ?>
    </header>
    <br>
    <main>
        <div class="categorycontain">
            <div class="title1">
                <h3>Nintendo Switch</h3>
            </div>
            <div class="title2">
                <select name="order" id="order">
                    <option value="" disabled selected>Trier</option>
                    <option value="asc">de A à Z</option>
                    <option value="desc">de Z à A</option>
                </select>
            </div>
        </div>

        <div class="containcatgame" id="containcatgame">
            <div class="gamebloc"><img src="../assets/Images/zelda tok.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Zelda : Tears of the Kingdom</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/ac.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Animal Crossing New Horizon</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/mo.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Mario Odyssey</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/disney.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Disney Dreamlight Valley</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/ace attorney trilogy.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Ace Attorney Trilogy</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/fe.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Fire Emblem Engage</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/mk.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Mario Kart 8</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/Ecarlate-Violet-576x356.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Pokemon Ecarlate Violet</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/lm3.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Luigi's Mansion 3</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/ezgif-5-bc359b14ad.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Ace Attorney Investigations</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/mario party.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Super Mario Party Jamboree</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/zelda bow.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Zelda : Breath of the Wild</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/thewitcher3-1.jpg" width="100%" alt="">
                <a href="#">
                    <h4>The Witcher 3</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/stray.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Stray</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/peach.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Princess Peach Showtime</h4>
                </a>
            </div>
        </div>
    </main>
    <?php include("../template/footer.php"); ?>

    <script src="../assets/js/menuderoulant.js"></script>
    <script src="../assets/js/tricat.js"></script>
</body>

</html>