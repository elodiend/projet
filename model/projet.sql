-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2025 at 12:50 PM
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
  `description` varchar(50) DEFAULT NULL,
  `classification` varchar(50) DEFAULT NULL,
  `img_carousel` varchar(255) DEFAULT NULL,
  `img_carousel2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_carousel3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(10, 'tommy', '4a7d1ed414474e4033ac29ccb8653d9b', 'tester2@yaho.fr', 'expert', 'Homme', '0', '0', '0', 15, 2);

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
  MODIFY `id_games` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktfu_users`
--
ALTER TABLE `ktfu_users`
  MODIFY `id_users` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
