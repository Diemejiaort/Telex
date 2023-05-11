-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 11 Mai 2023 à 09:15
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `p_sitewebtelexoff`
--
CREATE DATABASE IF NOT EXISTS `p_sitewebtelexoff` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `p_sitewebtelexoff`;

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

DROP TABLE IF EXISTS `contenir`;
CREATE TABLE `contenir` (
  `idCommande` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `contenir`
--

INSERT INTO `contenir` (`idCommande`, `idArticle`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `doit_avoir`
--

DROP TABLE IF EXISTS `doit_avoir`;
CREATE TABLE `doit_avoir` (
  `idClient` int(11) NOT NULL,
  `idAdresse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `doit_avoir`
--

INSERT INTO `doit_avoir` (`idClient`, `idAdresse`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `t_adresse`
--

DROP TABLE IF EXISTS `t_adresse`;
CREATE TABLE `t_adresse` (
  `idAdresse` int(11) NOT NULL,
  `NPA` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Localite` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `Rue` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `t_adresse`
--

INSERT INTO `t_adresse` (`idAdresse`, `NPA`, `Localite`, `Rue`) VALUES
(1, '1033', 'Cheseaux', 'Route de Morrens'),
(2, '1004', 'Montétan', 'Avenue Saint-Paul'),
(3, '1007', 'Lausanne', 'Place de la Riponne'),
(4, '1201', 'Les Cropettes', 'Rue des Gares'),
(5, '1003', 'Chauderon', 'Rue de l\'Ale'),
(6, '1030', 'Bussigny', 'Rue du Jura'),
(7, '1510', 'Moudon', 'Rue du Temple'),
(8, '1023', 'Crissier', 'Chemin du Casard'),
(9, '1018', 'Blécherette', 'Chemin du Marronnier'),
(10, '1007', 'Bourdonnette', 'Route de Chavannes');

-- --------------------------------------------------------

--
-- Structure de la table `t_article`
--

DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `idArticle` int(11) NOT NULL,
  `Prix` smallint(6) DEFAULT NULL,
  `Modele` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Syteme_exploitation` varchar(35) COLLATE utf8_bin DEFAULT NULL,
  `Taille_ecran` smallint(6) DEFAULT NULL,
  `Memoire_ROM` smallint(6) DEFAULT NULL,
  `Autonomie` smallint(6) DEFAULT NULL,
  `idMarque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `t_article`
--

INSERT INTO `t_article` (`idArticle`, `Prix`, `Modele`, `Syteme_exploitation`, `Taille_ecran`, `Memoire_ROM`, `Autonomie`, `idMarque`) VALUES
(1, 1299, 'Iphone 14 pro max', 'IOS', 6, 128, 29, 1),
(2, 1419, 'Iphone 14 pro max', 'IOS', 6, 256, 29, 1),
(3, 1659, 'Iphone 14 pro max', 'IOS', 6, 512, 29, 1),
(4, 1899, 'Iphone 14 pro max', 'IOS', 6, 1000, 29, 1),
(5, 1179, 'Iphone 14 pro', 'IOS', 6, 128, 29, 1),
(6, 1299, 'Iphone 14 pro', 'IOS', 6, 256, 29, 1),
(7, 1539, 'Iphone 14 pro', 'IOS', 6, 512, 29, 1),
(8, 1779, 'Iphone 14 pro', 'IOS', 6, 1000, 29, 1),
(9, 1049, 'Iphone 14 plus', 'IOS', 6, 128, 26, 1),
(10, 1169, 'Iphone 14 plus', 'IOS', 6, 256, 26, 1),
(11, 1409, 'Iphone 14 plus', 'IOS', 6, 512, 26, 1),
(12, 929, 'Iphone 14', 'IOS', 6, 128, 26, 1),
(13, 1049, 'Iphone 14', 'IOS', 6, 256, 26, 1),
(14, 1289, 'Iphone 14', 'IOS', 6, 512, 26, 1),
(15, 760, 'Iphone 13 pro max', 'IOS', 6, 128, 26, 1),
(16, 840, 'Iphone 13 pro max', 'IOS', 6, 256, 26, 1),
(17, 940, 'Iphone 13 pro max', 'IOS', 6, 512, 26, 1),
(18, 1070, 'Iphone 13 pro max', 'IOS', 6, 1000, 26, 1),
(19, 1030, 'Iphone 13 pro', 'IOS', 6, 128, 24, 1),
(20, 1348, 'Iphone 13 pro', 'IOS', 6, 256, 24, 1),
(21, 1288, 'Iphone 13 pro', 'IOS', 6, 512, 24, 1),
(22, 1381, 'Iphone 13 pro', 'IOS', 6, 1000, 24, 1),
(23, 829, 'Iphone 13', 'IOS', 6, 128, 19, 1),
(24, 949, 'Iphone 13', 'IOS', 6, 256, 19, 1),
(25, 1189, 'Iphone 13', 'IOS', 6, 512, 19, 1),
(26, 699, 'Iphone 13 mini', 'IOS', 5, 128, 19, 1),
(27, 819, 'Iphone 13 mini', 'IOS', 5, 256, 19, 1),
(28, 1059, 'Iphone 13 mini', 'IOS', 5, 512, 19, 1),
(29, 1349, 'Samsung S23 ultra', 'Android', 6, 256, 48, 2),
(30, 1499, 'Samsung S23 ultra', 'Android', 6, 512, 48, 2),
(31, 1699, 'Samsung S23 ultra', 'Android', 6, 1000, 48, 2),
(32, 1149, 'Samsung S23+', 'Android', 6, 256, 48, 2),
(33, 1249, 'Samsung S23+', 'Android', 6, 512, 48, 2),
(34, 899, 'Samsung S23', 'Android', 6, 128, 48, 2),
(35, 949, 'Samsung S23', 'Android', 6, 256, 48, 2),
(36, 1349, 'Samsung S22 ultra', 'Android', 6, 256, 24, 2),
(37, 1499, 'Samsung S22 ultra', 'Android', 6, 512, 24, 2),
(38, 899, 'Samsung S22+', 'Android', 6, 256, 24, 2),
(39, 829, 'Samsung S22', 'Android', 6, 128, 24, 2),
(40, 879, 'Samsung S22', 'Android', 6, 256, 24, 2),
(41, 579, 'Samsung S21 ultra', 'Android', 6, 128, 13, 2),
(42, 619, 'Samsung S21 ultra', 'Android', 6, 256, 13, 2),
(43, 839, 'Samsung S21+', 'Android', 6, 128, 13, 2),
(44, 879, 'Samsung S21+', 'Android', 6, 256, 13, 2),
(45, 599, 'Samsung S21', 'Android', 6, 128, 13, 2),
(46, 899, 'Samsung S21', 'Android', 6, 256, 13, 2),
(47, 649, 'Samsung S21 FE', 'Android', 6, 128, 12, 2),
(48, 719, 'Samsung S21 FE', 'Android', 6, 256, 12, 2),
(49, 1079, 'Samsung Z Flip4', 'Android', 6, 128, 24, 2),
(50, 1139, 'Samsung Z Flip4', 'Android', 6, 256, 24, 2),
(51, 1179, 'Samsung Z Flip4', 'Android', 6, 512, 24, 2),
(52, 500, 'Samsung A54', 'Android', 6, 128, 24, 2),
(53, 1579, 'Samsung Z Fold4', 'Android', 7, 256, 13, 2),
(54, 1899, 'Samsung Z Fold4', 'Android', 7, 512, 13, 2),
(55, 2150, 'Samsung Z Fold4', 'Android', 7, 1000, 13, 2),
(56, 1299, 'Xiaomi 13 pro', 'Android', 6, 256, 48, 3),
(57, 999, 'Xiaomi 13', 'Android', 6, 256, 48, 3),
(58, 499, 'Xiaomi 13 lite', 'Android', 6, 128, 24, 3),
(59, 799, 'Xiaomi 12T pro', 'Android', 7, 256, 24, 3),
(60, 699, 'Xiaomi 12T', 'Android', 6, 256, 24, 3),
(61, 449, 'Xiaomi 12 lite', 'Android', 6, 128, 10, 3),
(62, 899, 'Xiaomi 12', 'Android', 6, 256, 12, 3),
(63, 1199, 'Xiaomi 12 pro', 'Android', 6, 256, 12, 3),
(64, 549, 'Xiaomi 11T', 'Android', 6, 128, 18, 3),
(65, 550, 'Samsung A54', 'Android', 6, 256, 24, 3);

-- --------------------------------------------------------

--
-- Structure de la table `t_client`
--

DROP TABLE IF EXISTS `t_client`;
CREATE TABLE `t_client` (
  `idClient` int(11) NOT NULL,
  `Nom` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `Prenom` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Age` date DEFAULT NULL,
  `Adresse_mail` varchar(320) COLLATE utf8_bin DEFAULT NULL,
  `Mot_de_passe` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Telephone` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `t_client`
--

INSERT INTO `t_client` (`idClient`, `Nom`, `Prenom`, `Age`, `Adresse_mail`, `Mot_de_passe`, `Telephone`) VALUES
(1, 'Biniam', 'Siem', '2006-07-25', 'siembiniam@gmail.com', 'O12345678GG9', '0782272535'),
(2, 'Mejia', 'Diego', '2006-03-10', 'diegomejia@gmail.com', 'W9876543HH21', '0767459604'),
(3, 'Zarook', 'Zaahid', '2005-04-25', 'zaahidzarook@gmail.com', 'W98761234HH5', '0779179503'),
(4, 'Moser', 'Even', '2006-10-17', 'evenmoser@gmail.com', '54321678SS9', '0788232829'),
(5, 'Gligorijevic', 'Nikola', '2006-06-25', 'nikolagligorijevic@gmail.com', 'Z92S8S37465', '0794801060'),
(6, 'Moia', 'Luke', '2005-02-18', 'lukemoia@gmail.com', 'R1239874S67', '0796383470'),
(7, 'Barone', 'Giovanni', '2006-12-04', 'giovannibarone@gmail.com', '12457G8359', '0795513717'),
(8, 'Nangawi', 'Pierre', '2006-12-22', 'pierrenangawi@gmail.com', 'R987GG12345', '0788061912'),
(9, 'Bitter', 'Alan', '2006-01-04', 'alanbitter@gmail.com', 'TT273645', '0796466073'),
(10, 'Zarrabi', 'Nima', '2005-08-22', 'nimazarrabi@gmail.com', 'T27886345', '0792867495');

-- --------------------------------------------------------

--
-- Structure de la table `t_commande`
--

DROP TABLE IF EXISTS `t_commande`;
CREATE TABLE `t_commande` (
  `idCommande` int(11) NOT NULL,
  `Prix` smallint(6) DEFAULT NULL,
  `Nb_facture` bigint(20) DEFAULT NULL,
  `Date_vente` date DEFAULT NULL,
  `idClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `t_commande`
--

INSERT INTO `t_commande` (`idCommande`, `Prix`, `Nb_facture`, `Date_vente`, `idClient`) VALUES
(1, 840, 2, '2023-03-09', 1),
(2, 1899, 4, '2023-03-15', 5),
(3, 1059, 5, '2023-03-19', 7),
(4, 1189, 7, '2023-03-24', 10),
(5, 579, 8, '2023-03-29', 2),
(6, 940, 9, '2023-03-31', 4),
(7, 839, 11, '2023-04-02', 6),
(8, 699, 13, '2023-04-09', 9),
(9, 1299, 18, '2023-04-08', 3),
(10, 1059, 24, '2023-04-11', 8);

-- --------------------------------------------------------

--
-- Structure de la table `t_marque`
--

DROP TABLE IF EXISTS `t_marque`;
CREATE TABLE `t_marque` (
  `idMarque` int(11) NOT NULL,
  `Marque` varchar(15) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `t_marque`
--

INSERT INTO `t_marque` (`idMarque`, `Marque`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Xiaomi');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`idCommande`,`idArticle`),
  ADD KEY `idArticle` (`idArticle`);

--
-- Index pour la table `doit_avoir`
--
ALTER TABLE `doit_avoir`
  ADD PRIMARY KEY (`idClient`,`idAdresse`),
  ADD KEY `idAdresse` (`idAdresse`);

--
-- Index pour la table `t_adresse`
--
ALTER TABLE `t_adresse`
  ADD PRIMARY KEY (`idAdresse`);

--
-- Index pour la table `t_article`
--
ALTER TABLE `t_article`
  ADD PRIMARY KEY (`idArticle`),
  ADD KEY `idMarque` (`idMarque`);

--
-- Index pour la table `t_client`
--
ALTER TABLE `t_client`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `t_commande`
--
ALTER TABLE `t_commande`
  ADD PRIMARY KEY (`idCommande`),
  ADD UNIQUE KEY `Nb_facture` (`Nb_facture`),
  ADD KEY `idClient` (`idClient`);

--
-- Index pour la table `t_marque`
--
ALTER TABLE `t_marque`
  ADD PRIMARY KEY (`idMarque`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_adresse`
--
ALTER TABLE `t_adresse`
  MODIFY `idAdresse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `t_article`
--
ALTER TABLE `t_article`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT pour la table `t_client`
--
ALTER TABLE `t_client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `t_commande`
--
ALTER TABLE `t_commande`
  MODIFY `idCommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `t_marque`
--
ALTER TABLE `t_marque`
  MODIFY `idMarque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `contenir_ibfk_1` FOREIGN KEY (`idCommande`) REFERENCES `t_commande` (`idCommande`),
  ADD CONSTRAINT `contenir_ibfk_2` FOREIGN KEY (`idArticle`) REFERENCES `t_article` (`idArticle`);

--
-- Contraintes pour la table `doit_avoir`
--
ALTER TABLE `doit_avoir`
  ADD CONSTRAINT `doit_avoir_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `t_client` (`idClient`),
  ADD CONSTRAINT `doit_avoir_ibfk_2` FOREIGN KEY (`idAdresse`) REFERENCES `t_adresse` (`idAdresse`);

--
-- Contraintes pour la table `t_article`
--
ALTER TABLE `t_article`
  ADD CONSTRAINT `t_article_ibfk_1` FOREIGN KEY (`idMarque`) REFERENCES `t_marque` (`idMarque`);

--
-- Contraintes pour la table `t_commande`
--
ALTER TABLE `t_commande`
  ADD CONSTRAINT `t_commande_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `t_client` (`idClient`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
