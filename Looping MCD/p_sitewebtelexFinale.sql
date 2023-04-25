-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 25 Avril 2023 à 15:08
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `p_sitewebtelex`
--
CREATE DATABASE IF NOT EXISTS `p_sitewebtelex` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `p_sitewebtelex`;

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
(1, 1);

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
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `peut_effectuer`
--

DROP TABLE IF EXISTS `peut_effectuer`;
CREATE TABLE `peut_effectuer` (
  `idClient` int(11) NOT NULL,
  `idCommande` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `peut_effectuer`
--

INSERT INTO `peut_effectuer` (`idClient`, `idCommande`) VALUES
(1, 1);

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
(1, '1510 ', 'Moudon', 'Avenue de Lucens 29');

-- --------------------------------------------------------

--
-- Structure de la table `t_article`
--

DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `idArticle` int(11) NOT NULL,
  `Numero_de_serie` bigint(20) DEFAULT NULL,
  `Prix` smallint(6) DEFAULT NULL,
  `Description` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `Syteme_exploitation` varchar(35) COLLATE utf8_bin DEFAULT NULL,
  `Taille_ecran` tinyint(4) DEFAULT NULL,
  `Memoire_RAM` smallint(6) DEFAULT NULL,
  `Autonomie` smallint(6) DEFAULT NULL,
  `idMarque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `t_article`
--

INSERT INTO `t_article` (`idArticle`, `Numero_de_serie`, `Prix`, `Description`, `Syteme_exploitation`, `Taille_ecran`, `Memoire_RAM`, `Autonomie`, `idMarque`) VALUES
(1, 234, 790, 'dtfidstfdstfidszft37843847hfoipsbf', 'IOS ', 15, 128, 24, 1);

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
(1, 'Biniam', 'Siem', '2006-07-25', 'siembiniam@gmail.com', 'jhgfisfuz5r178tgsc87qèéè', '0784536677');

-- --------------------------------------------------------

--
-- Structure de la table `t_commande`
--

DROP TABLE IF EXISTS `t_commande`;
CREATE TABLE `t_commande` (
  `idCommande` int(11) NOT NULL,
  `Prix` smallint(6) DEFAULT NULL,
  `Num_facture` bigint(20) DEFAULT NULL,
  `Date_vente` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `t_commande`
--

INSERT INTO `t_commande` (`idCommande`, `Prix`, `Num_facture`, `Date_vente`) VALUES
(1, 800, 12, '2023-04-12');

-- --------------------------------------------------------

--
-- Structure de la table `t_marque`
--

DROP TABLE IF EXISTS `t_marque`;
CREATE TABLE `t_marque` (
  `idMarque` int(11) NOT NULL,
  `Marque` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `Modele` varchar(30) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `t_marque`
--

INSERT INTO `t_marque` (`idMarque`, `Marque`, `Modele`) VALUES
(1, 'Apple', 'Iphone 14 pro');

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
-- Index pour la table `peut_effectuer`
--
ALTER TABLE `peut_effectuer`
  ADD PRIMARY KEY (`idClient`,`idCommande`),
  ADD KEY `idCommande` (`idCommande`);

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
  ADD UNIQUE KEY `Numero_de_serie` (`Numero_de_serie`),
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
  ADD UNIQUE KEY `Nb_facture` (`Num_facture`);

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
  MODIFY `idAdresse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_article`
--
ALTER TABLE `t_article`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_client`
--
ALTER TABLE `t_client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_commande`
--
ALTER TABLE `t_commande`
  MODIFY `idCommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_marque`
--
ALTER TABLE `t_marque`
  MODIFY `idMarque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- Contraintes pour la table `peut_effectuer`
--
ALTER TABLE `peut_effectuer`
  ADD CONSTRAINT `peut_effectuer_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `t_client` (`idClient`),
  ADD CONSTRAINT `peut_effectuer_ibfk_2` FOREIGN KEY (`idCommande`) REFERENCES `t_commande` (`idCommande`);

--
-- Contraintes pour la table `t_article`
--
ALTER TABLE `t_article`
  ADD CONSTRAINT `t_article_ibfk_1` FOREIGN KEY (`idMarque`) REFERENCES `t_marque` (`idMarque`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
