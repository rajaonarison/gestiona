-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 18 fév. 2020 à 13:27
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `php_project`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` int(4) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`adminId`, `nom`, `mail`, `pseudo`, `mdp`) VALUES
(19, 'RAJAONARISON Clairmont', 'clairmont.rajaonarison@gmail.com', 'clairmont', 'ab4f63f9ac65152575886860dde480a1');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `codeCli` int(11) NOT NULL AUTO_INCREMENT,
  `nomCli` varchar(120) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  PRIMARY KEY (`codeCli`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`codeCli`, `nomCli`, `adresse`) VALUES
(80, 'clairmonté', 'frgtr'),
(72, 'Volatiana', 'Fianarantsoa'),
(73, 'Tina', 'Tana'),
(75, 'Francis', 'Paris'),
(76, 'Paul', 'Diego-Suarez');

-- --------------------------------------------------------

--
-- Structure de la table `commandefrs`
--

DROP TABLE IF EXISTS `commandefrs`;
CREATE TABLE IF NOT EXISTS `commandefrs` (
  `numcomfrs` int(11) NOT NULL AUTO_INCREMENT,
  `date_Com` datetime NOT NULL,
  `codeFrs` int(11) NOT NULL,
  PRIMARY KEY (`numcomfrs`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commandefrs`
--

INSERT INTO `commandefrs` (`numcomfrs`, `date_Com`, `codeFrs`) VALUES
(42, '2019-10-28 06:55:42', 50),
(41, '2019-10-28 06:45:57', 50),
(40, '2019-10-28 06:40:07', 39),
(39, '2019-10-28 06:38:46', 39),
(38, '2019-10-28 01:47:53', 50),
(37, '2019-10-28 01:46:54', 38),
(36, '2019-10-28 01:41:10', 39),
(35, '2019-10-28 01:37:14', 38),
(34, '2019-10-28 01:36:49', 38),
(33, '2019-08-31 09:36:23', 36),
(32, '2019-08-31 09:36:23', 36),
(31, '2019-08-31 09:35:45', 36),
(43, '2019-10-28 06:56:59', 39),
(44, '2019-10-28 07:00:25', 38),
(45, '2019-10-28 07:00:45', 50),
(46, '2019-10-28 07:01:09', 39),
(47, '2019-10-28 07:01:31', 50),
(48, '2019-10-28 07:03:40', 39),
(49, '2019-10-28 07:05:24', 39),
(50, '2019-10-28 07:05:38', 38),
(51, '2019-10-28 07:05:59', 50),
(52, '2019-10-28 07:14:37', 39),
(53, '2019-10-28 07:15:34', 38),
(54, '2019-10-28 07:15:51', 39),
(55, '2019-10-28 07:17:20', 50),
(56, '2019-10-28 07:18:20', 39),
(57, '2019-10-28 07:18:33', 38),
(58, '2019-10-28 07:18:51', 50),
(59, '2019-10-28 07:22:06', 39),
(60, '2019-10-28 17:01:14', 39);

-- --------------------------------------------------------

--
-- Structure de la table `commande_cli`
--

DROP TABLE IF EXISTS `commande_cli`;
CREATE TABLE IF NOT EXISTS `commande_cli` (
  `numcomcli` int(11) NOT NULL AUTO_INCREMENT,
  `date_Com` datetime NOT NULL,
  `codeCli` int(11) NOT NULL,
  PRIMARY KEY (`numcomcli`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande_cli`
--

INSERT INTO `commande_cli` (`numcomcli`, `date_Com`, `codeCli`) VALUES
(216, '2019-10-27 17:48:59', 72),
(215, '2019-08-31 09:40:58', 51),
(214, '2019-08-31 09:37:14', 52),
(219, '2019-10-27 22:41:03', 72),
(218, '2019-10-27 18:22:34', 72),
(217, '2019-10-27 17:57:34', 73),
(213, '2019-08-31 09:37:14', 52),
(212, '2019-08-31 09:37:14', 52),
(220, '2019-10-27 22:48:35', 72),
(221, '2019-10-27 22:50:21', 72),
(222, '2019-10-28 00:08:15', 72),
(223, '2019-10-28 00:10:36', 73),
(225, '2019-10-28 06:48:07', 72),
(229, '2019-10-28 08:00:56', 72),
(231, '2019-10-28 08:02:41', 75),
(241, '2019-11-11 09:57:24', 76),
(236, '2019-10-28 17:02:04', 72),
(237, '2019-10-28 17:25:00', 72),
(238, '2019-11-08 10:50:56', 76),
(239, '2019-11-08 10:50:56', 76),
(240, '2019-11-08 10:50:56', 76);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `codeFrs` int(11) NOT NULL AUTO_INCREMENT,
  `nomFrs` varchar(120) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  PRIMARY KEY (`codeFrs`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`codeFrs`, `nomFrs`, `adresse`) VALUES
(38, 'Volatiana', 'Ambalavao'),
(39, 'Axel', 'Tana'),
(50, 'Tina', 'Fianarantsoa'),
(52, 'Christopher', 'Diego'),
(53, 'Didier', 'Tuléar'),
(54, 'Andry', 'Antalaha');

-- --------------------------------------------------------

--
-- Structure de la table `lignecomcli`
--

DROP TABLE IF EXISTS `lignecomcli`;
CREATE TABLE IF NOT EXISTS `lignecomcli` (
  `numcomcli` int(11) NOT NULL AUTO_INCREMENT,
  `codepro` int(11) NOT NULL,
  `qteCom` int(6) NOT NULL,
  PRIMARY KEY (`numcomcli`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lignecomcli`
--

INSERT INTO `lignecomcli` (`numcomcli`, `codepro`, `qteCom`) VALUES
(216, 107, 150),
(215, 102, 5),
(214, 102, 5),
(219, 104, 12),
(218, 109, 157),
(217, 106, 215),
(213, 105, 10),
(212, 105, 10),
(220, 106, 12),
(221, 106, 12),
(222, 105, 35),
(223, 105, 40),
(225, 107, 100),
(229, 106, 20),
(231, 109, 10),
(241, 124, 120),
(236, 109, 100),
(237, 109, 100),
(238, 107, 100),
(239, 107, 100),
(240, 124, 100);

-- --------------------------------------------------------

--
-- Structure de la table `lignecomfrs`
--

DROP TABLE IF EXISTS `lignecomfrs`;
CREATE TABLE IF NOT EXISTS `lignecomfrs` (
  `numcomfrs` int(11) NOT NULL AUTO_INCREMENT,
  `codepro` int(11) NOT NULL,
  `qteAppro` int(11) NOT NULL,
  PRIMARY KEY (`numcomfrs`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lignecomfrs`
--

INSERT INTO `lignecomfrs` (`numcomfrs`, `codepro`, `qteAppro`) VALUES
(44, 107, 150),
(43, 107, 100),
(42, 107, 150),
(41, 106, 100),
(40, 105, 100),
(39, 105, 150),
(31, 98, 2000),
(38, 107, 150),
(37, 107, 450),
(36, 107, 150),
(35, 107, 150),
(33, 105, 10),
(32, 105, 50),
(45, 105, 150),
(46, 108, 150),
(47, 106, 120),
(48, 108, 110),
(49, 106, 100),
(50, 106, 100),
(51, 108, 120),
(52, 106, 120),
(53, 108, 100),
(54, 106, 70),
(55, 105, 10),
(56, 105, 100),
(57, 107, 100),
(58, 109, 120),
(59, 106, 120),
(60, 106, 40);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `codePro` int(11) NOT NULL AUTO_INCREMENT,
  `Design` varchar(25) NOT NULL,
  `PU` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`codePro`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`codePro`, `Design`, `PU`, `stock`) VALUES
(128, 'Gasoil', 1450, 0),
(106, 'Oignon', 780, 500),
(107, 'Huille de coco', 790, 230),
(108, 'Papaye', 1600, 296),
(109, 'Vanille', 7900, 160),
(110, 'Sel', 500, 250),
(124, 'Vin', 1700, 20);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
