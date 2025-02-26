-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2025 at 03:08 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorite_game`
--

CREATE TABLE `favorite_game` (
  `id_users` int NOT NULL,
  `id_games` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filter_plateform`
--

CREATE TABLE `filter_plateform` (
  `id_games` int NOT NULL,
  `id_plateform` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filter_type`
--

CREATE TABLE `filter_type` (
  `id_games` int NOT NULL,
  `id_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kftu_avis`
--

CREATE TABLE `kftu_avis` (
  `id_message` int NOT NULL,
  `message` varchar(50) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `_date` varchar(50) DEFAULT NULL,
  `id_games` int DEFAULT NULL,
  `id_users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kftu_plateform`
--

CREATE TABLE `kftu_plateform` (
  `id_plateform` int NOT NULL,
  `plateform_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kftu_plateform`
--

INSERT INTO `kftu_plateform` (`id_plateform`, `plateform_name`) VALUES
(1, 'XBox'),
(2, 'Switch'),
(3, 'PC'),
(4, 'PS5');

-- --------------------------------------------------------

--
-- Table structure for table `kftu_price`
--

CREATE TABLE `kftu_price` (
  `id_price` int NOT NULL,
  `price` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kftu_price`
--

INSERT INTO `kftu_price` (`id_price`, `price`) VALUES
(1, 'Moins de 10 euros'),
(2, 'Entre 10 et 30 euros'),
(3, 'Entre 30 et 50 euros'),
(4, 'Plus de 50 euros');

-- --------------------------------------------------------

--
-- Table structure for table `kftu_role`
--

CREATE TABLE `kftu_role` (
  `id_role` int NOT NULL,
  `admin` varchar(50) DEFAULT NULL,
  `_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kftu_role`
--

INSERT INTO `kftu_role` (`id_role`, `admin`, `_user`) VALUES
(1, 'admin', NULL),
(2, NULL, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `kftu_types`
--

CREATE TABLE `kftu_types` (
  `id_type` int NOT NULL,
  `name_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kftu_types`
--

INSERT INTO `kftu_types` (`id_type`, `name_type`) VALUES
(1, 'FPS'),
(2, 'RPG'),
(3, 'Aventure'),
(4, 'Horreur');

-- --------------------------------------------------------

--
-- Table structure for table `ktfu_games`
--

CREATE TABLE `ktfu_games` (
  `id_games` int NOT NULL,
  `game_name` varchar(50) DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `classification` varchar(50) DEFAULT NULL,
  `developpeur` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `editeur` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sortie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `genre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `plateforme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `langue` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `prix` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tw` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_carousel` varchar(255) DEFAULT NULL,
  `img_carousel2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_carousel3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ktfu_games`
--

INSERT INTO `ktfu_games` (`id_games`, `game_name`, `description`, `classification`, `developpeur`, `editeur`, `sortie`, `genre`, `mode`, `plateforme`, `langue`, `prix`, `tw`, `img_carousel`, `img_carousel2`, `img_carousel3`, `id_price`) VALUES
(1, 'Ace Attorney Investigation Collection', 'Les deux jeux compris dans Ace Attorney Investigations Collection mettent en vedette le personnage de Benjamin Hunter. Le célèbre procureur est, donc, le protagoniste de ces nouvelles aventures qui amènent les joueurs à l’extérieur du tribunal. En effet, là où se démarque cette série est que le joueur doit désormais enquêter sur les scènes de crime afin de découvrir la vérité et pouvoir par la suite amener le coupable devant le juge. L’occasion est, de ce fait, idéale pour en apprendre plus sur l’histoire de Benjamin qui est souvent considéré comme l’un des meilleurs personnages de la franchise. On a aussi l’occasion de rencontrer plusieurs personnages que l’on a déjà côtoyés dans les autres jeux de la licence. Même s’il n’est pas nécessaire d’avoir terminé l’ensemble des opus, ceux l’ayant fait profiteront au maximum des nombreux petits clins d’oeil.', 'PEGI 12', 'Capcom, Arc System Works', 'Capcom', '23 aout 2024', 'Aventure, Réflexion', 'Solo', 'Nintendo Switch, Xbox One, PS4, PC (Windows)', 'Multilingue', '29.99 euros', '', NULL, NULL, NULL, 2),
(2, 'Metaphor : ReFantazio', 'Metaphor : ReFantazio prend place dans le monde d’Euchronia, un royaume où plusieurs espèces se rencontrent, coexistent et, le plus souvent, s’affrontent. Les discriminations sont légion et l’anxiété palpable à chaque coin de rue. L’aventure débute par un régicide commis par l’antagoniste du jeu, l’ignoble Comte Louis. Le roi parvient cependant à ressusciter sous la forme d’une gigantesque lune rocheuse flottant sur la capitale afin de devenir l’arbitre céleste de sa succession. Une seule règle prévaut : pour monter sur le trône, il faudra rassembler le plus grand nombre de partisans. Nous incarnons un Edda, membre d’une race honnie de toutes les autres, qui rejoint cette compétition pour le pouvoir dans le but d’éliminer Louis et d’investir l’héritier légitime.', 'PEGI 16', 'Atlus, Studio Zero', 'Sega, Atlus', '11 octobre 2024', 'Aventure, Action, JRPG', 'Solo', 'Xbox, PS4, PS5, PC (Windows)', 'Multilingue (voix anglaises, japonaises), vostfr', '69.99 euros', 'violence', NULL, NULL, NULL, 4),
(3, 'Ghost of Tsushima', 'Empruntez une nouvelle voie et entrez en guerre pour libérer Tsushima. Défiez vos adversaires au katana, maîtrisez l\'arc pour éliminer les menaces à distance, développez des stratégies pour surprendre vos ennemis et explorez un nouveau récit sur l\'île d\'Iki. Ghost of Tsushima est un jeu d\'action présentant un monde ouvert constitué de plaines, forêts et villes. Le gameplay consiste à se battre face à des personnages contrôlés par l\'I.A, au moyen d\'un katana, lors de combats réalistes et techniques se basant sur des mécaniques d\'esquives, de parades et de coups faibles ou puissants. Les combats sont évitables par le biais de phases d\'infiltration où il sera possible d\'utiliser un tantō pour assassiner discrètement les ennemis. Par ailleurs, le joueur possède un grappin afin de rentrer discrètement à l\'intérieur de bâtiments.', 'PEGI 18', 'Sucker Punch Productions, Nixxes Software', 'Sony Interactive Entertainment', '17 juillet 2020', 'Infiltration, RPG, Action-Aventure', 'Solo, multijoueur en ligne', 'PC (Windows), PS4, PS5', 'Multilingue', '39.99 euros', 'violence', NULL, NULL, NULL, 3),
(4, 'Silent Hill 2', 'L\'histoire de Silent Hill 2 n\'a pas de lien direct avec le premier épisode : seul le cadre, la ville de Silent Hill dans le Maine, demeure le même, bien qu\'il se déroule dans un autre quartier. Sur une aire de repos, aux portes de Silent Hill, James Sunderland s\'interroge. Comment sa défunte femme, Mary, a-t-elle bien pu lui faire parvenir une lettre lui disant : « Rejoins-moi dans notre lieu à nous. Je t\'y attends. » La confusion et le malaise règnent dans son esprit. Pour découvrir la vérité, James devra s\'enfoncer dans l\'épais brouillard de la ville et surmonter les cauchemars innommables qui l\'habitent.', 'PEGI 18', 'Bloober Team', 'Konami', '8 octobre 2024', 'Horreur', 'Solo', 'PS5, PC (Windows)', 'Multilingue (voix anglaises, japonaises) vostfr', '69.99 euros', 'violence', NULL, NULL, NULL, 4),
(5, 'Life is Strange : Double Exposure', 'Max Caulfield, photographe résidente à la prestigieuse université Caledon, découvre le corps sans vie de sa nouvelle meilleure amie, Safi. Elle a été assassinée. Max tente de la sauver en rembobinant le temps, utilisant ainsi un pouvoir auquel elle n\'avait plus fait appel depuis longtemps. C\'est alors qu\'elle ouvre un portail vers un monde parallèle dans lequel Safi est en vie... et toujours en danger ! Max comprend que le tueur va frapper à nouveau... dans les deux réalités. Elle seule peut se déplacer dans les deux réalités pour résoudre et empêcher ce meurtre !', 'PEGI 16', 'Deck Nine Games, Engine Software', 'Square Enix', '29 octobre 2024', 'Aventure, Action', 'Solo', 'PS5, Switch, Xbox, PC (Windows)', 'Multilingue', '59.99 euros', 'violence, langage grossier, drogue', NULL, NULL, NULL, 4),
(6, 'S.T.A.L.K.E.R. 2', 'Le cœur de TChornobyl n\'a jamais battu aussi fort qu\'aujourd\'hui. La Zone lance un appel aux stalkers qui veulent se lancer dans un voyage non linéaire à travers un monde ouvert lugubre et violent, dans une Europe de l\'Est post-apocalyptique. Les mutants dangereux et les anomalies mortelles ne seront pas les seuls obstacles qui vont se dresser sur votre route. Vous ressentirez la pression au quotidien dans votre nouvelle vie de stalker, en cherchant et en consommant des fournitures rares et précieuses - nourriture, boissons, médicaments, alcool, etc. Des mécanismes de survie immersifs viendront enrichir le gameplay tout au long de l\'histoire.', 'PEGI 18', 'GSC Game World', 'GSC Game World', '20 novembre 2024', 'FPS, Horreur, Action', 'Solo', 'XBox, PC (Windows)', 'Multilingue (voix anglaises, ukrainiennes), vostfr', '59.99 euros', 'violence, langage grossier', NULL, NULL, NULL, 4),
(7, 'Starfield', 'En 2330, l\'humanité s\'est aventurée au-delà de notre système solaire pour s\'établir sur de nouvelles planètes et partir à la découverte de l\'espace. Vous rejoindrez Constellation, le dernier groupe d\'explorateurs de l\'espace à la recherche d\'artéfacts rares à travers la galaxie, et partirez explorer l\'immensité de l\'espace dans le jeu le plus vaste et le plus ambitieux de Bethesda Game Studios à ce jour. Dans Starfield, l\'histoire la plus importante est celle que vous racontez à travers votre personnage. Commencez votre aventure en personnalisant votre apparence et en choisissant vos antécédents et vos traits. Serez-vous un explorateur expérimenté, une charmante diplomate, un hacker invisible ou rien de tout cela ? Le choix vous appartient. Décidez de qui vous serez et qui vous deviendrez.', 'PEGI 18', 'Bethesda Game Studios', 'Bethesda Softworks', ' 6 septembre 2023 ', 'RPG, Action', 'Solo', 'XBox, PC (Windows)', 'Multilingue', '69.99 euros', 'violence, langage grossier', NULL, NULL, NULL, 4),
(8, 'Assassin\'s Creed Mirage', 'L\'histoire se déroule au Moyen-Orient, à Bagdad et raconte les aventures du jeune Basim Ibn Ishaq jusqu\'à plus tard dans sa vie, 20 ans avant sa rencontre avec Eivor dans Assassin\'s Creed: Valhalla. Mirage est de moindre envergure que les trois précédents opus mais retourne aux racines des premiers jeux de la franchise avec ses trois piliers : le parkour, l\'infiltration et les assassinats. Le jeu permet ainsi aux joueurs d\'incarner à nouveau un membre de Ceux qu\'on ne voit pas, une faction qui deviendra la Confrérie des Assassins. Contrairement aux autres jeux principaux, Mirage ne permet pas aux joueurs d\'incarner un personnage dans le présent, bien que l\'Animus fasse quand même partie de l\'histoire du jeu, au début et à la fin.', 'PEGI 18', 'Ubisoft Bordeaux', ' Ubisoft', '5 octobre 2023', 'Aventure, Action', 'Solo', 'Xbox, PS4, PS5, PC (Windows)', 'Multilingue', '49.99 euros', 'violence, langage grossier', NULL, NULL, NULL, 3),
(9, 'Baldur\'s Gate 3', 'Dans ce jeu se déroulant un siècle après les événements précédents, le joueur incarne un personnage capturé par des Illithids et infecté par un parasite mental. Accompagné de compagnons rencontrés en chemin, le groupe cherche à se libérer de cette emprise pour éviter de devenir des Illithids. Leur quête les entraîne dans une lutte contre le Culte de l\'Absolue et une conspiration ourdie par les élus des Trois Dieux Morts pour dominer Faerûn. Baldur\'s Gate III est un jeu de rôle, il intègre donc une dimension de création et de personnalisation de son personnage. Les joueurs peuvent donc choisir entre plusieurs apparences physiques, races (humains, elfes, nains, githyanki, tieffelins), d\'une classe et même d\'un passé.  Bien sûr, pour les moins inspirés, des personnages prédéfinis sont également mis à disposition des joueurs par les développeurs. ', 'PEGI 18', ' Larian Studios', ' Larian Studios', '3 aout 2023', 'RPG, Aventure', 'Solo, multijoueur en ligne', 'XBox, PS5, PC (Windows)', 'Voix anglaises, vostfr', '59.99 euros', 'violence, langage grossier, sexe', NULL, NULL, NULL, 4),
(10, 'Cyberpunk2077', 'Cyberpunk 2077 est un RPG d\'action-aventure en monde ouvert qui se déroule dans la mégalopole de Night City, où vous incarnez un cyber-mercenaire qui livre un combat sans merci pour sa survie. Avec des améliorations et du contenu additionnel gratuit, personnalisez entièrement votre personnage et votre style de jeu en accomplissant des boulots, améliorez votre réputation et déverrouillez des améliorations. Les relations que vous nouerez et les choix que vous ferez auront un impact sur l\'histoire et le monde qui vous entoure. C\'est ici que se forgent les légendes. Quelle sera la vôtre ?', 'PEGI 18', 'CD Projekt RED', 'CD Projekt RED', '10 décembre 2020', 'RPG, FPS', 'Solo', 'XBox, PS5, PC (Windows)', 'Multilingue', '59.99 euros', 'violence, langage grossier, sexe', NULL, NULL, NULL, 4),
(11, 'Elden Ring', 'L\'Entre-terre s\'intègre à un vaste continent parcouru de sublimes champs à perte de vue et d\'immenses donjons à l\'architecture complexe et interconnectée. Au cours de votre périple, vous partirez à la découverte de l\'inconnu et affronterez d\'importantes menaces. Une bonne connaissance du terrain et de ses secrets vous permettra de vaincre vos ennemis, de terrasser des boss extraordinaires ou de tendre un piège aux envahisseurs. Combattre dans ELDEN RING est à la portée de tous, mais maîtriser toutes les subtilités de cet art demande du temps. Dans votre quête pour devenir Seigneur d\'Elden, il vous faudra apprendre à alterner entre l\'attaque et l\'esquive, à utiliser toute variété d\'armes, de sorts et d\'invocations, et à synchroniser parfaitement vos assauts pour profiter des faiblesses de vos adversaires.', 'PEGI 16', 'FromSoftware', 'FromSoftware, Bandai Namco Entertainment', '25 février 2022', 'RPG, Aventure', 'Solo, coopération en ligne', 'XBox, PS4, PS5, PC (Windows)', 'Voix anglaises, vostfr', '59.99 euros', 'violence', NULL, NULL, NULL, 4),
(12, 'Final Fantasy VII Rebirth', 'Le cycle de l’existence trouve son origine dans la rivière de la vie. Toute vie naît de la planète et y retourne une fois son heure arrivée. Mais la sinistre compagnie Shinra extrait cette énergie vitale et la transforme sans vergogne en une source de carburant nommée « mako ». À l’issue d’un combat sans merci, l’ancien SOLDAT Cloud Strife et ses compagnons, Tifa, Aerith, Barret et Red XIII, s’enfuient de Midgar et s’aventurent au-delà de ses portes. C’est le commencement d’un périple qui les verra explorer la planète, traverser de vastes plaines à dos de chocobo et visiter de nombreux endroits familiers sur les traces de Séphiroth, le héros déchu. Leur poursuite les mènera finalement sur la route de la cité des Cétras, du jeu FINAL FANTASY VII d\'origine.', 'PEGI 16', 'Square Enix', 'Square Enix', '29 février 2024', 'RPG, Aventure', 'Solo', 'PS5, PC (Windows)', 'Multilingue', '69.99 euros', 'violence', NULL, NULL, NULL, 4),
(13, 'Halo Infinite', 'Lorsque tout espoir est perdu et que le sort de l\'humanité est en jeu, le Major est prêt à combattre l\'ennemi le plus impitoyable qu\'il ait jamais affronté. Entrez dans l\'armure du plus grand héros de l\'humanité pour vivre une aventure en monde ouvert épique et explorer l\'immensité de Halo. Avec la campagne en coop et la possibilité de refaire des missions, vous pouvez revivre vos moments préférés, redécouvrir les objets de collection et explorer les merveilles du Halo Zêta seul ou avec jusqu\'à trois autres membres de l\'équipe.', 'PEGI 16', '343 Industries', 'Xbox Game Studios', '8 décembre 2021', 'FPS', 'Solo, multijoueur en ligne', 'XBox, PC (Windows)', 'Multilingue', '59.99 euros', 'violence', NULL, NULL, NULL, 4),
(14, 'Alan Wake 2', 'Alan Wake, écrivain de polars à succès vivant à New York, a disparu en 2010. Lors de vacances sur la côte nord-ouest du Pacifique en compagnie de sa femme Alice, Alan a été confronté à une ténébreuse force surnaturelle. Celle-ci a transformé le récit horrifique de l’écrivain en réalité. Alan a affronté l’Ombre Noire et réussi à la renvoyer d’où elle venait, un antre noir cauchemardesque caché sous un lac de cratère bordant la petite ville de Bright Falls. Wake a écrit une fin à son récit d’horreur, ce qui lui a permis de libérer sa femme des ténèbres sous le lac avant de devenir lui-même prisonnier de ce lieu. Depuis treize ans, il est prisonnier de l’antre noir, où ses cauchemars, ses peurs et ses histoires se matérialisent autour de lui. Il tente de ne pas sombrer dans la folie et d’écrire une histoire capable de modifier la réalité qui l’entoure dans le but de s’échapper. En vain, jusqu’à présent.', 'PEGI 18', 'Remedy Entertainment', 'Epic Games', '27 octobre 2023', 'Horreur', 'Solo', 'XBox, PS5, PC (Windows)', 'Multilingue', '59.99 euros', 'violence, langage grossier', NULL, NULL, NULL, 4),
(15, 'Shadow of the Tomb Raider', 'Survivez et évoluez dans l\'endroit le plus dangereux de la planète : pour rester en vie, devenez experte d\'une jungle sans merci. Partez à la découverte de milieux sous-marins regorgeant de crevasses et de tunnels. Ne faites qu\'un avec la jungle : désarmée et seule contre tous, Lara va devoir utiliser la jungle à son avantage. Comme le jaguar, frappez sans prévenir et disparaissez, utilisez la boue comme camouflage et insufflez la peur à vos ennemis pour semer le chao. Explorez de mystérieux tombeaux : s\'étendant aussi bien en hauteur qu\'en largeur, les tombeaux sont désormais plus terrifiants que jamais, et une fois à l\'intérieur, vous découvrirez qu\'ils regorgent de casse-têtes mortels. Plongez au cœur de l\'Histoire : découvrez une cité perdue et parcourez le plus grand espace jamais conçu pour un jeu de la série.', 'PEGI 18', 'Eidos Montréal, Nixxes Software', 'Crystal Dynamics, Square Enix, Feral Interactive', '12 septembre 2018', 'Aventure', 'Solo', 'PS4, PS5, XBox, PC (Windows)', 'Multilingue', '39.99 euros', 'violence', NULL, NULL, NULL, 3),
(16, 'The witcher 3', 'Vous incarnez Geralt de Riv, un sorceleur tueur de monstres. Devant vous s\'étend un continent infesté de créatures diverses et variées, toutes plus féroces les unes que les autre. Le pays, également déchiré par la guerre, est un monde ouvert que vous pouvez explorer à votre guise. Votre contrat actuel ? Retrouver Ciri, l\'enfant de la prophétie, une arme vivante capable de changer le monde. Mis à jour vers la version la plus récente du jeu, The Witcher 3: Wild Hunt contient de nouveaux ajouts, dont un mode photo intégré, des objets inspirés par la série The Witcher sur Netflix (épées, armure, tenues alternatives) et bien plus encore !', 'PEGI 18', 'CD Projekt RED', 'CD Projekt RED', '18 mai 2015', 'RPG, Aventure', 'Solo', 'Xbox, PS4, PS5, PC (Windows), Switch', 'Multilingue', '29.99 euros', 'violence, langage grossier', NULL, NULL, NULL, 2),
(17, 'Resident Evil 7', 'Juillet 2017, (approximativement 4 ans après les événements de Resident Evil 6) dans la ville fictive de Dulvey en Louisiane au sud des Etats-Unis, un homme nommé Ethan Winters est à la recherche de sa femme, Mia, disparue maintenant depuis plus de 3 ans. Ses recherches le conduisent vers une plantation abandonnée, où il finit par retrouver sa femme retenue prisonnière dans une maison apparemment abandonnée elle aussi. Cependant, Ethan va très vite être attaqué, et il fera la rencontre de la famille Baker, une famille étrange et dangereuse, pratiquant le cannibalisme.', 'PEGI 18', 'Capcom', 'Capcom', '24 janvier 2017', 'Horreur', 'Solo', 'XBox, PS4, PS5, PC (Windows), Switch', 'Multilingue', '19.99 euros', 'violence, sang', NULL, NULL, NULL, 2),
(18, 'Final Fantasy XV', 'Le Royaume de Lucis renferme le dernier cristal et vient de mettre un terme à la guerre froide en concluant un accord de paix avec l\'état militaire de Niflheim. Malheureusement ce dernier décide rapidement de briser le traité anti-armement afin d\'envahir le Royaume de Lucis. Le prince héritier Noctis et ses camarades se voient forcés de fuir leur demeure et se retrouvent au cœur du conflit. Parcourez les routes d\'un monde ouvert à couper le souffle avec vos meilleurs amis, découvrez des paysages magnifiques et rencontrez des monstres plus vrais que nature tout au long de cette aventure pour reprendre votre patrie des mains d\'un adversaire qui défie l\'imagination. Faites appel au pouvoir de vos ancêtres pour vous téléporter dans les airs lors de combats palpitants remplis d\'action, et passez maître dans l\'art du maniement des armes, de la magie, et des attaques en équipe.', 'PEGI 16', 'Square Enix', 'Square Enix', '29 novembre 2016', 'RPG, Aventure', 'Solo, multijoueur en ligne', 'PS4, PS5, XBox, PC (Windows)', 'Multilingue', '35.99 euros', 'violence', NULL, NULL, NULL, 3),
(19, 'Horizon : Forbidden West', 'Explorez des terres lointaines, affrontez des machines toujours plus imposantes et dévastatrices, et rencontrez de nouvelles tribus fascinantes lors de votre retour dans le monde d\'Horizon dépeignant un futur lointain post-apocalyptique. Le monde se meurt. De terribles tempêtes et un déclin inéluctable s\'abattent sur les vestiges épars de l\'humanité, tandis que de nouvelles machines effrayantes rôdent aux frontières et que la vie sur Terre se précipite vers une nouvelle extinction. C\'est à Aloy que revient la mission de découvrir les secrets de ces menaces et de restaurer l\'ordre et l\'équilibre du monde. Dans sa quête, elle devra retrouver d\'anciens amis, forger des alliances avec de nouvelles factions guerrières et exhumer les secrets des temps anciens.', 'PEGI 16', 'Guerrilla Games, Nixxes Software', 'Sony Interactive Entertainment', '18 février 2022', 'RPG, Aventure', 'Solo', 'PS4, PS5, PC (Windows)', 'Multilingue', '49.99 euros', 'violence', NULL, NULL, NULL, 3),
(20, 'Tekken 8', 'Jin Kazama et son père, Kazuya Mishima, sont sur le point de commencer leur bataille finale, qui se prépare depuis plusieurs années. Alors que Jin a déjà affronté ses proches dans les jeux précédents de la franchise, dans le prochain, il est montré dans un conflit majeur avec son anomalie Devil Jin car il continue d\'absorber son humanité au point qu\'il devient l\'alter-ego de celui-ci au milieu du combat. Cependant, Harada a fait remarquer que la scène finale de la bande-annonce impliquant des chaînes brisées agit comme un symbole pour Jin se libérant des conflits auxquels il est lié depuis plusieurs jeux. Se déroulant six mois après les événements de Tekken 7, le combat rappelle la bataille finale entre Kazuya et son père Heihachi, mais Harada vise à surprendre le public. Jin veut tuer Kazuya pour mettre fin au chaos de leur lignée alors que son père continue de semer le chaos dans le monde.', 'PEGI 16', 'Bandai Namco Entertainment', 'Bandai Namco Entertainment', '26 janvier 2024', 'Combat', 'Solo, multijoueur', 'PS5, XBox, PC (Windows)', 'Voix anglaises, vostfr', '59.99 euros', 'violence', NULL, NULL, NULL, 4),
(21, 'Redfall', 'La ville insulaire de Redfall, dans le Massachusetts, est assiégée par une armée de vampires qui ont occulté le soleil et coupé les habitants du monde extérieur. Explorez ce monde ouvert et plongez-vous dans une campagne à l\'histoire profonde tandis que vous lèverez le voile sur la mystérieuse apparition des vampires. Alliez-vous à une poignée de survivants contre les créatures qui menacent de vider tous les habitants de leur sang.', 'PEGI 18', 'Arkane Austin', 'Bethesda Softworks', '2 mai 2023', 'FPS', 'Solo, multijoueur', 'XBox, PC (Windows)', 'Multilingue', '39.99 euros', 'violence', NULL, NULL, NULL, 3),
(22, 'Zelda : Tears of the Kingdom', 'L’histoire de Tears of the Kingdom commence quelques années après la fin de Breath of the Wild. Le Fléau Ganon a été vaincu et Hyrule se dirige vers une nouvelle période de prospérité : de nouveaux villages sont construits et les habitants vivent dans la paix et l’harmonie. Cette situation idyllique ne dure pas : d’étranges miasmes s’échappent du château royal, laissé à l’abandon. Link et Zelda décident alors d’explorer les ruines du château d’Hyrule, et découvrent au passage un immense souterrain plongeant dans les entrailles de la terre. Ils finissent rapidement par trouver l’origine des miasmes : le corps momifié de Ganondorf, l’incarnation humaine du démon Ganon défait dans Breath of the Wild, repose dans les tréfonds du souterrain. Au grand étonnement du héros et de la princesse, Ganondorf se réveille et semble les reconnaître, alors qu’il s’agit pour Link et Zelda de leur première rencontre avec celui que l’on surnomme le roi démon.', 'PEGI 12', 'Nintendo Entertainment Planning & Development', 'Nintendo', '12 mai 2023', 'Aventure', 'Solo', 'Switch', 'Multilingue', '69.99 euros', NULL, NULL, NULL, NULL, 4),
(23, 'Animal Crossing New Horizon', 'Animal Crossing est un jeu dans lequel on incarne un petit personnage à personnaliser en début de partie, et qui va devoir s\'installer dans un tout nouvel environnement, en prenant le soin d\'optimiser sa propre qualité de vie, mais aussi celle des autres personnages. Attraper des papillons, pêcher dans les rivières du coin, meubler sa demeure, fabriquer des objets, arroser les fleurs du jardin, collectionner des Clochettes (la monnaie du jeu), faire ami-ami avec le voisinage... Pour cet épisode New Horizons, Nintendo invite les joueurs à partir sur une île (presque) déserte, avec la responsabilité, en tant que Délégué Insulaire, d\'insuffler de la vie dans ce petit coin de nature. Le tout est évidemment guidé par l\'indémodable Tom Nook, lequel donnera de précieux conseils, et permettra également de façonner de nouveaux outils, d\'acheter des objets...', 'Tout public', 'Nintendo Entertainment Planning & Development', 'Nintendo', '20 mars 2020', 'Simulation', 'Solo, multijoueur', 'Switch', 'Multilingue', '44.99 euros', NULL, NULL, NULL, NULL, 3),
(24, 'Mario Odyssey', 'Bowser enlève Peach pour se marier avec elle. Mario rencontre une créature ressemblant à un chapeau, un Chapiforme, portant le nom de Cappy. Bowser a aussi enlevé sa sœur, Tiara. Mario et Cappy récupèrent un vaisseau abandonné, l\'Odyssée, et voyagent de pays en pays à la poursuite de Bowser. Dans la majorité des mondes, ils doivent combattre les Broodals, une bande de lapins anthropomorphiques organisateurs de mariage qui essaie de les empêcher de rattraper Bowser et d\'arrêter le mariage.', 'Tout public', 'Nintendo Entertainment Planning & Development', 'Nintendo', '27 octobre 2017', 'Aventure', 'Solo, deux joueurs', 'Switch', 'Multilingue', '44.99 euros', NULL, NULL, NULL, NULL, 3),
(25, 'Disney Dreamlight Valley', 'Disney Dreamlight Valley est un hybride entre un simulateur de vie et un jeu d\'aventure riche en quêtes, en exploration et en activités captivantes aux côtés d\'amis de Disney et Pixar, anciens et nouveaux. Dreamlight Valley était jadis un endroit idyllique où les personnages Disney et Pixar vivaient en harmonie... jusqu\'à ce que survienne l\'Oubli. Des Épines nocturnes ont poussé dans toute la contrée et privé cet endroit magique de tous les merveilleux souvenirs qui y étaient rattachés. N\'ayant nulle part où aller, les habitants désespérés de Dreamlight Valley se sont enfermés à double tour dans le Château des rêves. À présent, c\'est à vous de découvrir les histoires de ce monde et de ramener la magie à Dreamlight Valley !', 'Tout public', 'Gameloft, Gameloft S.E.', 'Disney Interactive', '6 septembre 2022 (accès anticipé)', 'Simulation', 'Solo', 'Switch, PS5, XBox, PC (Windows)', 'Multilingue', '29.99 euros', NULL, NULL, NULL, NULL, 2),
(26, 'Ace Attorney Trilogy', 'Incarnez Phoenix Wright, un jeune avocat de la défense, venant tout juste d\'arriver, et succombez au frisson du combat judiciaire alors que vous luttez pour prouver l\'innocence de vos clients au tribunal. Cette collection somptueuse rassemble les 14 épisodes des trois premiers jeux. Plongez au cœur de ces affaires et élucidez chacun de ces intrigants mystères !', '13+', 'Capcom', 'Capcom', '9 avril 2019', 'Aventure, Simulation', 'Solo', 'Switch, XBox, PS4, PC (Windows)', 'Multilingue', '29.99 euros', NULL, NULL, NULL, NULL, 2),
(27, 'Fire Emblem Engage', 'Tous les 1 000 ans, des héros légendaires, les Emblèmes, octroient un pouvoir incroyable à celui ou celle qui aura réuni les 12 anneaux d\'Emblèmes. L\'heure de ce rituel approche, et Alear, le Dragon divin de la prophétie, s\'éveille pour rassembler les anneaux et ramener la paix sur le continent. Cependant, le Dragon déchu Sombron, éternelle némésis du Dragon Divin, est aussi revenu à la vie et cherche à s\'approprier la puissance des anneaux. Alear et celles et ceux restés fidèles au Dragon divin sont l\'unique rempart contre les ambitions de Sombron. Commandez les troupes du Dragon divin lors des combats tactiques au tour par tour que vous mènerez à travers tout Elyos. Faites preuve de stratégie lors de vos manœuvres et tirez parti des talents propres à chacune de vos unités pour décrocher la victoire.', 'PEGI 12', 'Intelligent Systems', 'Nintendo', '20 janvier 2023', 'RPG', 'Solo', 'Switch', 'Multilingue', '69.99 euros', NULL, NULL, NULL, NULL, 4),
(28, 'Mario Kart 8', 'Cet épisode met toujours en scène les principaux personnages de l\'univers de Super Mario et les oppose dans des courses de kart disputées à douze joueurs sur des circuits situés pour la plupart dans les différents lieux du monde de Mario. Il introduit une nouvelle mécanique de jeu, l\'antigravité, qui permet de rouler sur les murs et au plafond dans certaines portions des circuits tout en conservant les mécaniques traditionnelles de la série. Le jeu bénéficie de graphismes en haute définition et propose également des fonctionnalités en ligne via le Nintendo Network.', 'Tout public', 'Nintendo Entertainment Analysis & Development', 'Nintendo', '30 mai 2014', 'Course', 'Solo, multijoueur', 'Switch', 'Multilingue', '44.99 euros', NULL, NULL, NULL, NULL, 3),
(29, 'Pokemon Ecarlate Violet', 'Entremêlez trois trames narratives à votre aventure tout en faisant la connaissance de personnages uniques. Cet opus comporte bien la quête classique des arènes à conquérir dans le but de devenir Maître ou Maîtresse de la Ligue, mais ils ne proposent pas de trajectoire unique. Vous pouvez donc défier les Arènes dans l’ordre que vous souhaitez. Ce n’est pas tout, car deux autres trames narratives vous réservent leur lot d’épreuves et de tribulations. Vous pourrez d’ailleurs passer d’une trame à une autre librement, et ainsi développer votre aventure comme bon vous semble. Défier toutes les Arènes et atteindre le rang Maître sera sans doute une priorité pour certaines personnes, alors que d’autres souhaiteront vivre l’aventure à leur rythme et rencontrer les Pokémon et les habitants de la région. Ainsi, chacun et chacune d’entre vous pourra jouer à sa façon !', 'Tout public', 'Game Freak', 'Nintendo, The Pokémon Company', '18 novembre 2022', 'Aventure', 'Solo, multijoueur en ligne', 'Switch', 'Multilingue', '44.49 euros', NULL, NULL, NULL, NULL, 3),
(30, 'Luigi\'s Mansion 3', 'Luigi, son Ectochien, Mario, la Princesse Peach, et les Toads ont été « invités » à prendre des vacances à l\'Hôtel du Repos Éternel. À leur arrivée, ils sont accueillis avec beaucoup d\'amabilité par la maîtresse du lieu, l\'ectoplasmique Ambre Brusquade. Cette dernière les amène à leurs chambres respectives. Mais dans la nuit, Luigi entend Peach crier et découvre avec stupeur qu\'Ambre Brusquade était en fait de mèche avec le Roi Boo. Désireux de se venger de Luigi, il a enfermé Mario, Peach et les Toads dans des cadres. Luigi parvient à s\'enfuir par le vide-ordures alors qu\'il allait subir le même sort. Arrivé au sous-sol, il trouve dans le garage l\'EctoblastGLU (un aspirateur à fantôme) dans le coffre de la voiture du Professeur K. Tastroff, également prisonnier dans un cadre. Après l\'avoir libéré et armé de son appareil, Luigi repart chasser les fantômes et délivrer ses amis.', 'Tout public', 'Next Level Games', 'Nintendo', '31 octobre 2019', 'Aventure', 'Solo', 'Switch', 'Multilingue', '44.49 euros', NULL, NULL, NULL, NULL, 3),
(31, 'Super Mario Party Jamboree', 'À l\'instar des épisodes de la série Mario Party, le principe du jeu est de remporter la victoire en possédant le plus d\'Étoiles possible à la fin de la partie. Le jeu se déroule à tour de rôle, chaque joueur lançant le dé et se déplaçant du nombre de cases correspondant au chiffre obtenu. Les plateaux recèlent de cases aux effets différents sanctionnant les joueurs de manière bénéfique ou maléfique. Une fois que chaque joueur a terminé de jouer, le tour se conclut par un mini-jeu permettant aux joueurs de récupérer des pièces en fonction de leur place dans le classement.', 'Tout public', 'Nintendo Cube', 'Nintendo', '17 octobre 2024', 'Mini-jeux', 'Solo, multijoueur', 'Switch', 'Multilingue', '44.49 euros', NULL, NULL, NULL, NULL, 3),
(32, 'Zelda : Breath of the Wild', 'Link se réveille d\'un sommeil de 100 ans dans un royaume d\'Hyrule dévasté. Il lui faudra percer les mystères du passé et vaincre Ganon, le fléau. L\'aventure prend place dans un gigantesque monde ouvert et accorde ainsi une part importante à l\'exploration. Le titre a été pensé pour que le joueur puisse aller où il veut dès le début, s\'éloignant de la linéarité habituelle de la série.', 'PEGI 12', 'Nintendo Entertainment Planning & Development', 'Nintendo', '3 mars 2017', 'RPG, Aventure', 'Solo', 'Switch', 'Multilingue', '59.99 euros', NULL, NULL, NULL, NULL, 4),
(33, 'Stray', 'Perdu, seul et séparé de sa famille, un chat errant doit résoudre un ancien mystère pour fuir une ville tombée dans l’oubli. Stray est un jeu d’aventure où l’on incarne un chat en vue à la troisième personne. L’action se déroule sous les néons des ruelles d’une cyber-cité en déclin et dans les décors glauques de ses recoins les plus miteux. Explorez les environs, défendez-vous contre des menaces inattendues et résolvez les énigmes de ce lieu inhospitalier qui n’héberge que de modestes droïdes et des créatures dangereuses. Soyez furtif, agile, farfelu et parfois aussi pénible que possible avec les curieux habitants de ce monde étrange. En chemin, le chat se liera d’amitié avec un drone volant se présentant sous le nom de B-12. Avec l’aide de son nouveau compagnon, il essaiera de trouver un moyen de s’enfuir.', 'PEGI 12', 'BlueTwelve Studio', 'Annapurna Interactive', '19 juillet 2022', 'Aventure', 'Solo', 'XBox, PS4, PS5, PC', 'Multilingue', '29.99 euros', NULL, NULL, NULL, NULL, 2),
(34, 'Princess Peach Showtime', 'Un jour, dans le Royaume Champignon, un Toad reçoit un prospectus annonçant un spectacle au Théâtre de l\'étincelle. La Princesse Peach et quelques Toad décident d\'aller le voir. Soudain, l\'infâme Syrah et sa grappe maléfique envahissent le théâtre et s\'en emparent. Peach fait équipe avec Stella, la gardienne du théâtre, pour les arrêter.', 'Tout public', 'Good-Feel', 'Nintendo', '22 mars 2024', 'Aventure', 'Solo', 'Switch', 'Multilingue', '59.99 euros', NULL, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ktfu_users`
--

CREATE TABLE `ktfu_users` (
  `id_users` int NOT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gamelevel` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `plateform_used` varchar(50) DEFAULT NULL,
  `fav_game_type` varchar(50) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `id_role` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ktfu_users`
--

INSERT INTO `ktfu_users` (`id_users`, `pseudo`, `password`, `email`, `gamelevel`, `gender`, `plateform_used`, `fav_game_type`, `picture`, `age`, `id_role`) VALUES
(1, 'elodie', 'Sally2509', 'elokyo@hotmail.fr', 'intermédiaire', 'femme', 'PS5', 'RPG', NULL, 35, 1),
(2, 'test', 'Bonjour', 'test@test.fr', 'intermédiaire', 'femme', 'PS5', 'RPG', NULL, 35, 2),
(5, 'Elina', 'e10adc3949ba59abbe56e057f20f883e', 'elokyo-deux@yahoo.fr', 'expert', 'Femme', '0', '0', '0', 24, 2),
(9, 'Sookina', 'b51e8dbebd4ba8a8f342190a4b9f08d7', 'tester1@gmail.fr', 'intermediaire', 'Femme', '0', '0', '0', 45, 2),
(11, 'test2', 'dbe2b97562beeae526a3fc529c3b2d25', 'test2@yahoo.fr', 'occasionnel', 'Homme', '0', '0', '0', 45, 2),
(13, 'test3', '123456', 'test3@yahoo.fr', 'expert', 'NB', '0', '0', '0', 35, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorite_game`
--
ALTER TABLE `favorite_game`
  ADD PRIMARY KEY (`id_users`,`id_games`),
  ADD KEY `id_games` (`id_games`);

--
-- Indexes for table `filter_plateform`
--
ALTER TABLE `filter_plateform`
  ADD PRIMARY KEY (`id_games`,`id_plateform`),
  ADD KEY `id_plateform` (`id_plateform`);

--
-- Indexes for table `filter_type`
--
ALTER TABLE `filter_type`
  ADD PRIMARY KEY (`id_games`,`id_type`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `kftu_avis`
--
ALTER TABLE `kftu_avis`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `id_games` (`id_games`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `kftu_plateform`
--
ALTER TABLE `kftu_plateform`
  ADD PRIMARY KEY (`id_plateform`);

--
-- Indexes for table `kftu_price`
--
ALTER TABLE `kftu_price`
  ADD PRIMARY KEY (`id_price`);

--
-- Indexes for table `kftu_role`
--
ALTER TABLE `kftu_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `kftu_types`
--
ALTER TABLE `kftu_types`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `ktfu_games`
--
ALTER TABLE `ktfu_games`
  ADD PRIMARY KEY (`id_games`),
  ADD KEY `id_price` (`id_price`);

--
-- Indexes for table `ktfu_users`
--
ALTER TABLE `ktfu_users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `pseudo` (`pseudo`),
  ADD UNIQUE KEY `mail` (`email`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kftu_avis`
--
ALTER TABLE `kftu_avis`
  MODIFY `id_message` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kftu_price`
--
ALTER TABLE `kftu_price`
  MODIFY `id_price` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kftu_role`
--
ALTER TABLE `kftu_role`
  MODIFY `id_role` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ktfu_games`
--
ALTER TABLE `ktfu_games`
  MODIFY `id_games` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ktfu_users`
--
ALTER TABLE `ktfu_users`
  MODIFY `id_users` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite_game`
--
ALTER TABLE `favorite_game`
  ADD CONSTRAINT `favorite_game_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `ktfu_users` (`id_users`),
  ADD CONSTRAINT `favorite_game_ibfk_2` FOREIGN KEY (`id_games`) REFERENCES `ktfu_games` (`id_games`);

--
-- Constraints for table `filter_plateform`
--
ALTER TABLE `filter_plateform`
  ADD CONSTRAINT `filter_plateform_ibfk_1` FOREIGN KEY (`id_games`) REFERENCES `ktfu_games` (`id_games`),
  ADD CONSTRAINT `filter_plateform_ibfk_2` FOREIGN KEY (`id_plateform`) REFERENCES `kftu_plateform` (`id_plateform`);

--
-- Constraints for table `filter_type`
--
ALTER TABLE `filter_type`
  ADD CONSTRAINT `filter_type_ibfk_1` FOREIGN KEY (`id_games`) REFERENCES `ktfu_games` (`id_games`),
  ADD CONSTRAINT `filter_type_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `kftu_types` (`id_type`);

--
-- Constraints for table `kftu_avis`
--
ALTER TABLE `kftu_avis`
  ADD CONSTRAINT `kftu_avis_ibfk_1` FOREIGN KEY (`id_games`) REFERENCES `ktfu_games` (`id_games`),
  ADD CONSTRAINT `kftu_avis_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `ktfu_users` (`id_users`);

--
-- Constraints for table `ktfu_games`
--
ALTER TABLE `ktfu_games`
  ADD CONSTRAINT `ktfu_games_ibfk_1` FOREIGN KEY (`id_price`) REFERENCES `kftu_price` (`id_price`);

--
-- Constraints for table `ktfu_users`
--
ALTER TABLE `ktfu_users`
  ADD CONSTRAINT `ktfu_users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `kftu_role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
