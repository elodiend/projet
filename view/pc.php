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
    <?php require_once("../template/navbar.php"); ?>
    </header>
    <br>
    <main>
        <div class="categorycontain">
            <div class="title1">
                <h3>PC (Windows)</h3>
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
            <div class="gamebloc"><img src="../assets/Images/ezgif-4-b3df919013.jpg" width="100%" alt="">
                <a href="./jeumetaphor.php">
                    <h4>Metaphor : ReFantazio</h4>
                </a>
            </div>
            <div class="gamebloc"><img
                    src="../assets/Images/stalker-2-un-miracle-dans-un-ecrin-anachronique-d1ff115b__w854.jpg"
                    width="100%" alt="">
                <a href="#">
                    <h4>S.T.A.L.K.E.R. 2</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/starfield.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Starfield</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/lis1.jpg" width="100%" alt="">
                <a href="./lis.php">
                    <h4>Life is Strange Double Exposure</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/asm.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Assassin's Creed Mirage</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/bg3.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Baldur's Gate 3</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/cp2077.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Cyberpunk 2077</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/er.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Elden Ring</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/ff.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Final Fantasy Rebirth</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/halo infinite.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Halo Infinite</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/aw2.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Alan Wake 2</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/tr.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Shadow of the Tomb Raider</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/thewitcher3-1.jpg" width="100%" alt="">
                <a href="#">
                    <h4>The Witcher 3</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/ezgif-4-20d8140857.jpg" width="100%" alt="">
                <a href="./jeusilenthill.php">
                    <h4>Silent Hill 2</h4>
                </a>
            </div>
            <div class="gamebloc"><img src="../assets/Images/re7.jpg" width="100%" alt="">
                <a href="#">
                    <h4>Resident Evil 7</h4>
                </a>
            </div>
        </div>
    </main>
    <?php require_once("../template/footer.php"); ?>

    <script src="../assets/js/menuderoulant.js"></script>
    <script src="../assets/js/tricat.js"></script>
</body>

</html>