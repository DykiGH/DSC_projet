-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 08 mai 2023 à 19:26
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dsc_projet`
--
CREATE DATABASE IF NOT EXISTS `dsc_projet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dsc_projet`;

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `Matricule` int(11) NOT NULL,
  `IdCaserne` int(11) NOT NULL,
  `DateAff` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `affectation`
--

INSERT INTO `affectation` (`Matricule`, `IdCaserne`, `DateAff`) VALUES
(111111, 2, '2023-04-28'),
(212545, 11, '2020-08-08'),
(222222, 5, '2023-04-28'),
(476574, 12, '2018-04-29'),
(555555, 1, '2010-05-25'),
(557412, 2, '2020-02-15'),
(654352, 1, '2022-07-13'),
(665412, 1, '2018-12-17'),
(665545, 2, '2019-12-02'),
(666666, 3, '2018-09-09'),
(666667, 4, '2020-01-05'),
(668795, 5, '2021-08-15'),
(696969, 6, '2020-09-30'),
(782312, 2, '2015-05-10'),
(786572, 4, '1987-10-12'),
(887456, 7, '2018-12-05'),
(949955, 8, '2021-07-07'),
(982726, 9, '2000-05-09'),
(986995, 10, '2001-07-12'),
(992312, 11, '2020-11-11'),
(997958, 12, '2008-11-28');

-- --------------------------------------------------------

--
-- Structure de la table `caserne`
--

CREATE TABLE `caserne` (
  `IdCaserne` int(11) NOT NULL,
  `NomCaserne` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `caserne`
--

INSERT INTO `caserne` (`IdCaserne`, `NomCaserne`) VALUES
(1, 'Ouessant'),
(2, 'Carcassonne'),
(3, 'Lille'),
(4, 'Narbonne'),
(5, 'Paris'),
(6, 'Toulouse'),
(7, 'Bordeaux'),
(8, 'Lyon'),
(9, 'Marseille'),
(10, 'Strasbourg'),
(11, 'Montpellier'),
(12, 'Nantes');

-- --------------------------------------------------------

--
-- Structure de la table `employeur`
--

CREATE TABLE `employeur` (
  `IdEmployeur` int(11) NOT NULL,
  `NomEmployeur` varchar(50) DEFAULT NULL,
  `PrenomEmployeur` varchar(50) DEFAULT NULL,
  `TelEmployeur` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employeur`
--

INSERT INTO `employeur` (`IdEmployeur`, `NomEmployeur`, `PrenomEmployeur`, `TelEmployeur`) VALUES
(3, 'VERSE', 'Alain', '0676542431'),
(4, 'NALINE', 'André', '0454245142'),
(5, 'ZOLE', 'Camille', '0676524156'),
(6, 'PINOT', 'Charles', '0660911835'),
(7, 'BRANGER', 'Claudes', '0685111514'),
(8, 'ARTIS', 'Bernard', '0662589658'),
(9, 'CHANSARD', 'Philippe', '0652874684'),
(10, 'MARTIN', 'René', '0785126748'),
(11, 'DOUBERT', 'Eric', '0416576564'),
(12, 'FRANCAS', 'Xavier', '0649784655'),
(13, 'LAFLECHE', 'Jeremy', '0684549785'),
(14, 'GRANGEANT', 'Gerard', '0687423684'),
(15, 'JUPINE', 'Alain', '0487854645'),
(16, 'BASTORI', 'Albert', '0864713278'),
(17, 'MACARONI', 'Emmanuel', '0675896412'),
(18, 'BOUNZA', 'Rachid', '0698749963'),
(19, 'LAMPAN', 'Quentin', '0411556743'),
(20, 'TIAOME', 'Stephane', '0756384129'),
(21, 'BRIDOU', 'Justine', '0794367205'),
(22, 'RIGAUD', 'Stephanie', '0685203546');

-- --------------------------------------------------------

--
-- Structure de la table `engin`
--

CREATE TABLE `engin` (
  `Numéro` smallint(6) NOT NULL,
  `IdCaserne` int(11) NOT NULL,
  `IdTypeEngin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `engin`
--

INSERT INTO `engin` (`Numéro`, `IdCaserne`, `IdTypeEngin`) VALUES
(1, 1, 'EPA'),
(2, 1, 'FPT'),
(3, 1, 'VSAV'),
(4, 1, 'EPA'),
(5, 1, 'FPT'),
(6, 1, 'VSAV'),
(7, 1, 'VSR'),
(8, 1, 'VSS'),
(9, 1, 'CCF'),
(10, 1, 'FPT'),
(11, 1, 'MPR'),
(12, 2, 'EPA'),
(13, 2, 'EPA'),
(14, 2, 'FPT'),
(15, 2, 'FPT'),
(16, 2, 'FPT'),
(17, 2, 'VSR'),
(18, 2, 'VSS'),
(19, 2, 'CCF'),
(20, 2, 'VSAV'),
(21, 2, 'VSAV'),
(22, 2, 'VSAV'),
(23, 2, 'RMVG'),
(24, 3, 'VSAV'),
(25, 3, 'VSAV'),
(26, 3, 'VSAV'),
(27, 3, 'FPT'),
(28, 3, 'FPT'),
(29, 3, 'FPT'),
(30, 3, 'EPA'),
(31, 3, 'EPA'),
(32, 3, 'EPA'),
(33, 3, 'EPA'),
(34, 3, 'VSR'),
(35, 3, 'VSR'),
(36, 3, 'VPC'),
(37, 3, 'VSS'),
(38, 3, 'RMVG'),
(39, 3, 'MPR'),
(40, 3, 'CCF'),
(41, 3, 'BRS'),
(42, 3, 'BLS'),
(43, 4, 'BLS'),
(44, 4, 'BLS'),
(45, 4, 'BRS'),
(46, 4, 'BRS'),
(47, 4, 'BLS'),
(48, 4, 'CCF'),
(49, 4, 'EPA'),
(50, 4, 'EPA'),
(51, 4, 'FPT'),
(52, 4, 'FPT'),
(53, 4, 'FPT'),
(54, 4, 'MPR'),
(55, 4, 'MPR'),
(56, 4, 'RMVG'),
(57, 4, 'RMVG'),
(58, 4, 'VPC'),
(59, 4, 'VSAV'),
(60, 4, 'VSAV'),
(61, 4, 'VSAV'),
(62, 4, 'VSAV'),
(63, 4, 'VSR'),
(64, 4, 'VSR'),
(65, 4, 'VSS'),
(66, 4, 'VSS'),
(67, 5, 'BLS'),
(68, 5, 'BLS'),
(69, 5, 'BRS'),
(70, 5, 'BRS'),
(71, 5, 'CCF'),
(72, 5, 'CCF'),
(73, 5, 'CCF'),
(74, 5, 'EPA'),
(75, 5, 'EPA'),
(76, 5, 'EPA'),
(77, 5, 'EPA'),
(78, 5, 'EPA'),
(79, 5, 'FPT'),
(80, 5, 'FPT'),
(81, 5, 'FPT'),
(82, 5, 'FPT'),
(83, 5, 'FPT'),
(84, 5, 'MPR'),
(85, 5, 'MPR'),
(86, 5, 'MPR'),
(87, 5, 'MPR'),
(88, 5, 'RMVG'),
(89, 5, 'RMVG'),
(90, 5, 'RMVG'),
(91, 5, 'VPC'),
(92, 5, 'VPC'),
(93, 5, 'VSAV'),
(94, 5, 'VSAV'),
(95, 5, 'VSAV'),
(96, 5, 'VSAV'),
(97, 5, 'VSAV'),
(98, 5, 'VSAV'),
(99, 5, 'VSAV'),
(100, 5, 'VSAV'),
(101, 5, 'VSAV'),
(102, 5, 'VSAV'),
(103, 5, 'VSAV'),
(104, 5, 'VSR'),
(105, 5, 'VSR'),
(106, 5, 'VSR'),
(107, 5, 'VSR'),
(108, 5, 'VSS'),
(109, 5, 'VSS'),
(110, 5, 'VSS'),
(111, 5, 'VSR'),
(112, 6, 'BLS'),
(113, 6, 'BRS'),
(114, 6, 'BLS'),
(115, 6, 'CCF'),
(116, 6, 'EPA'),
(117, 6, 'CCF'),
(118, 6, 'FPT'),
(119, 6, 'FPT'),
(120, 6, 'MPR'),
(121, 6, 'EPA'),
(122, 6, 'MPR'),
(123, 6, 'RMVG'),
(124, 6, 'VPC'),
(125, 6, 'VSAV'),
(126, 6, 'VSAV'),
(127, 6, 'VSAV'),
(128, 6, 'VSAV'),
(129, 6, 'VSAV'),
(130, 6, 'RMVG'),
(131, 6, 'VPC'),
(132, 6, 'MPR'),
(133, 6, 'VSR'),
(134, 6, 'VSR'),
(135, 6, 'VSS'),
(136, 6, 'VSS'),
(137, 7, 'BLS'),
(138, 7, 'BRS'),
(139, 7, 'BLS'),
(140, 7, 'BRS'),
(141, 7, 'CCF'),
(142, 7, 'CCF'),
(143, 7, 'CCF'),
(144, 7, 'EPA'),
(145, 7, 'EPA'),
(146, 7, 'FPT'),
(147, 7, 'FPT'),
(148, 7, 'FPT'),
(149, 7, 'FPT'),
(150, 7, 'MPR'),
(151, 7, 'EPA'),
(152, 7, 'EPA'),
(153, 7, 'FPT'),
(154, 7, 'FPT'),
(155, 7, 'MPR'),
(156, 7, 'MPR'),
(157, 7, 'RMVG'),
(158, 7, 'RMVG'),
(159, 7, 'RMVG'),
(160, 7, 'RMVG'),
(161, 7, 'VPC'),
(162, 7, 'VPC'),
(163, 7, 'VSAV'),
(164, 7, 'VSAV'),
(165, 7, 'VSAV'),
(166, 7, 'VSAV'),
(167, 7, 'VSR'),
(168, 7, 'VSR'),
(169, 7, 'VSR'),
(170, 7, 'VSR'),
(171, 7, 'VSAV'),
(172, 7, 'VSAV'),
(173, 7, 'VSAV'),
(174, 7, 'VSS'),
(175, 7, 'VSS'),
(176, 7, 'VSS'),
(177, 8, 'EPA'),
(178, 8, 'BLS'),
(179, 8, 'BRS'),
(180, 8, 'BLS'),
(181, 8, 'CCF'),
(182, 8, 'EPA'),
(183, 8, 'EPA'),
(184, 8, 'EPA'),
(185, 8, 'FPT'),
(186, 8, 'FPT'),
(187, 8, 'FPT'),
(188, 8, 'FPT'),
(189, 8, 'MPR'),
(190, 8, 'MPR'),
(191, 8, 'RMVG'),
(192, 8, 'RMVG'),
(193, 8, 'VPC'),
(194, 8, 'VPC'),
(195, 8, 'VSAV'),
(196, 8, 'VSAV'),
(197, 8, 'VSAV'),
(198, 8, 'VSAV'),
(199, 8, 'VSR'),
(200, 8, 'VSAV'),
(201, 8, 'VSR'),
(202, 8, 'VSR'),
(203, 8, 'VSS'),
(204, 8, 'VSS'),
(210, 9, 'BLS'),
(211, 9, 'BLS'),
(212, 9, 'BLS'),
(213, 9, 'BLS'),
(214, 9, 'BRS'),
(215, 9, 'BRS'),
(216, 9, 'CCF'),
(217, 9, 'EPA'),
(218, 9, 'EPA'),
(219, 9, 'EPA'),
(220, 9, 'EPA'),
(221, 9, 'EPA'),
(222, 9, 'FPT'),
(223, 9, 'FPT'),
(224, 9, 'FPT'),
(225, 9, 'FPT'),
(226, 9, 'FPT'),
(227, 9, 'MPR'),
(228, 9, 'MPR'),
(229, 9, 'MPR'),
(230, 9, 'RMVG'),
(231, 9, 'RMVG'),
(232, 9, 'VPC'),
(233, 9, 'VPC'),
(234, 9, 'VSAV'),
(235, 9, 'VSAV'),
(236, 9, 'VSAV'),
(237, 9, 'VSAV'),
(238, 9, 'VSAV'),
(239, 9, 'VSAV'),
(240, 9, 'VSAV'),
(241, 9, 'VSR'),
(242, 9, 'VSR'),
(243, 9, 'VSR'),
(244, 9, 'VSR'),
(245, 9, 'VSS'),
(246, 9, 'VSS'),
(247, 10, 'CCF'),
(248, 10, 'CCF'),
(249, 10, 'EPA'),
(250, 10, 'EPA'),
(251, 10, 'EPA'),
(252, 10, 'EPA'),
(253, 10, 'FPT'),
(254, 10, 'FPT'),
(255, 10, 'FPT'),
(256, 10, 'MPR'),
(257, 10, 'VPC'),
(258, 10, 'VSAV'),
(259, 10, 'VSAV'),
(260, 10, 'VSAV'),
(261, 10, 'VSAV'),
(262, 10, 'VSAV'),
(263, 10, 'VSR'),
(264, 10, 'VSR'),
(265, 10, 'VSR'),
(266, 10, 'VSS'),
(267, 11, 'BLS'),
(268, 11, 'BRS'),
(269, 11, 'CCF'),
(270, 11, 'EPA'),
(271, 11, 'EPA'),
(272, 11, 'EPA'),
(273, 11, 'FPT'),
(274, 11, 'FPT'),
(275, 11, 'FPT'),
(276, 11, 'FPT'),
(277, 11, 'RMVG'),
(278, 11, 'VPC'),
(279, 11, 'VSAV'),
(280, 11, 'VSR'),
(281, 11, 'VSS'),
(282, 11, 'VSS'),
(283, 11, 'VSR'),
(284, 11, 'VSR'),
(285, 11, 'VSAV'),
(286, 11, 'VSAV'),
(287, 11, 'VSAV'),
(288, 11, 'VSAV'),
(289, 12, 'BLS'),
(290, 12, 'BRS'),
(291, 12, 'BLS'),
(292, 12, 'BLS'),
(293, 12, 'CCF'),
(294, 12, 'CCF'),
(295, 12, 'EPA'),
(296, 12, 'EPA'),
(297, 12, 'EPA'),
(298, 12, 'FPT'),
(299, 12, 'FPT'),
(300, 12, 'RMVG'),
(301, 12, 'VPC'),
(302, 12, 'VSR'),
(303, 12, 'VSR'),
(304, 12, 'VSR'),
(305, 12, 'VSS'),
(306, 12, 'VSAV'),
(307, 12, 'VSAV'),
(308, 12, 'VSAV'),
(309, 12, 'VSAV');

-- --------------------------------------------------------

--
-- Structure de la table `exercer`
--

CREATE TABLE `exercer` (
  `IdHabilitation` int(11) NOT NULL,
  `Matricule` int(11) NOT NULL,
  `DateEx` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `exercer`
--

INSERT INTO `exercer` (`IdHabilitation`, `Matricule`, `DateEx`) VALUES
(1, 666667, '1995-09-07'),
(1, 668795, '2001-09-11'),
(2, 666666, '1999-09-03'),
(2, 887521, '1993-12-01'),
(3, 142096, '1986-03-30'),
(3, 225113, '1992-09-10'),
(3, 696969, '2002-09-30'),
(3, 786572, '2023-04-28'),
(4, 183387, '1988-05-15'),
(4, 557412, '1992-12-12'),
(4, 887524, '1992-08-17'),
(5, 530084, '1982-06-05'),
(5, 665545, '1994-04-30'),
(6, 603723, '2023-04-26'),
(6, 887456, '1969-11-14'),
(6, 887523, '1991-06-25'),
(6, 887525, '1993-01-19'),
(7, 323274, '1986-11-20'),
(7, 520989, '1990-12-24'),
(7, 602663, '1994-02-18'),
(8, 654352, '2001-08-10'),
(8, 665412, '1975-10-12'),
(9, 212545, '1996-05-11'),
(9, 687496, '1997-01-08'),
(9, 782312, '1982-02-11'),
(10, 514947, '1999-07-12'),
(10, 887522, '1981-02-14'),
(11, 466132, '1979-03-04'),
(11, 649915, '2023-04-28'),
(12, 555555, '1982-09-11'),
(13, 870102, '2023-04-27');

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `IdGrade` int(11) NOT NULL,
  `LblGrade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`IdGrade`, `LblGrade`) VALUES
(1, 'auxiliaire'),
(2, 'sapeur 2ème classe'),
(3, 'sapeur 1ère classe'),
(4, 'caporal'),
(5, 'caporal-chef'),
(6, 'sergent'),
(7, 'sergent-chef'),
(8, 'adjudant'),
(9, 'adjudant-chef'),
(10, 'lieutenant'),
(11, 'capitaine'),
(12, 'commandant'),
(13, 'lieutenant-colonel');

-- --------------------------------------------------------

--
-- Structure de la table `habilitation`
--

CREATE TABLE `habilitation` (
  `IdHabilitation` int(11) NOT NULL,
  `LblHabilitation` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `habilitation`
--

INSERT INTO `habilitation` (`IdHabilitation`, `LblHabilitation`) VALUES
(1, 'conducteur de véhicule de secours routier (VSR)'),
(2, 'chef d\'agrès fourgon pompe-tonne (FPT)'),
(3, 'équipier incendie'),
(4, 'équipier échelle pivotante automatique'),
(5, 'conducteur de véhicule fourgon pompe-tonne (FPT)'),
(6, 'conducteur échelle pivotante automatique (EPA)'),
(7, 'conducteur de motopompe remorquable (MPR)'),
(8, 'conducteur de vehicule de poste de commandement (VPC)'),
(9, 'conducteur de moto ventilateur grand débit (RMVG)'),
(10, 'conducteur de bateau de sauvetage (BLS et BRS)'),
(11, 'conducteur de camion-citerne feux de forêts (CCF)'),
(12, 'conducteur tout vehicule terrestre'),
(13, 'conducteur vehicule flottant'),
(14, 'conducteur vehicule aérien');

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

CREATE TABLE `intervention` (
  `IdNatureSinistre` int(11) NOT NULL,
  `Matricule` int(11) NOT NULL,
  `dateInterv` date DEFAULT NULL,
  `commentairePompier` varchar(255) DEFAULT 'Aucun commentaire'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `intervention`
--

INSERT INTO `intervention` (`IdNatureSinistre`, `Matricule`, `dateInterv`, `commentairePompier`) VALUES
(1, 142096, '2022-03-14', '1 mort, tout est brûlé'),
(1, 183387, '2022-03-14', 'Aucun commentaire'),
(1, 212545, '2022-03-14', 'Aucun commentaire'),
(2, 225113, '2023-01-06', 'Aucun commentaire'),
(2, 323274, '2023-01-06', 'Petits dégâts'),
(2, 466132, '2023-01-06', 'Aucun commentaire'),
(3, 476574, '2021-11-20', 'Aucun commentaire'),
(3, 514947, '2021-11-20', 'Aucun commentaire'),
(3, 520989, '2021-11-20', 'Grand-mère coincée pendant 1 heure dans l\'ascenceur'),
(4, 530084, '2020-07-12', 'Aucun commentaire'),
(4, 555555, '2020-07-12', 'Aucun commentaire'),
(4, 557412, '2020-07-12', 'Chat secouru, trop de pompiers mobilisés'),
(5, 602663, '2022-02-01', 'Destruction du nid avec succès'),
(5, 603723, '2022-02-01', 'Aucun commentaire'),
(5, 649915, '2022-02-01', 'Aucun commentaire'),
(6, 602663, '2023-04-15', 'Aucun commentaire'),
(6, 603723, '2023-04-15', 'Petit feu, éteint avant sa propagation à grande échelle'),
(6, 649915, '2023-04-15', 'Aucun commentaire'),
(7, 654352, '2020-12-28', '1 mort, voiture partiellement détruite'),
(7, 665412, '2020-12-28', 'Aucun commentaire'),
(7, 665545, '2020-12-28', 'Aucun commentaire'),
(8, 666666, '2022-09-02', 'Aucun commentaire'),
(8, 666667, '2022-09-02', 'partie de la maison brûlée'),
(8, 668795, '2022-09-02', 'Aucun commentaire'),
(9, 687496, '2021-06-18', '3 morts, 6 blessés'),
(9, 696969, '2021-06-18', '3 morts, 6 blessés, gros dégats alentours'),
(9, 782312, '2021-06-18', 'Aucun commentaire'),
(10, 786572, '2020-10-07', 'Aucun commentaire'),
(10, 870102, '2020-10-07', 'Pas de gros dégâts'),
(10, 887456, '2020-10-07', 'Aucun commentaire'),
(11, 887521, '2022-08-21', 'Aucun commentaire'),
(11, 887522, '2022-08-21', 'Personne amenée à un hopital en urgence, aucun problème après son arrivée'),
(11, 887523, '2022-08-21', 'Aucun commentaire'),
(12, 887524, '2023-03-05', 'Aucun commentaire'),
(12, 887525, '2023-03-05', 'Aucun commentaire'),
(12, 899789, '2023-03-05', 'personne amenée aux urgences'),
(13, 908465, '2021-07-29', 'Aucun commentaire'),
(13, 935309, '2021-07-29', 'Aucun commentaire'),
(13, 947114, '2021-07-29', 'support utilisé'),
(14, 949955, '2022-05-12', 'Aucun commentaire'),
(14, 975094, '2022-05-12', 'Aucun commentaire'),
(14, 982726, '2022-05-12', 'nid de frelon localisé très haut (30 mètres minimum), nid détruit'),
(15, 986995, '2021-02-28', 'Renforts arrivés tard après ma mobilisation'),
(16, 668795, '2020-09-02', 'Aucun commentaire'),
(16, 687496, '2020-09-02', '2 morts, mère et fils à la plage de Narbonne'),
(16, 696969, '2020-09-02', 'Aucun commentaire'),
(16, 782312, '2020-09-02', 'Aucun commentaire'),
(17, 786572, '2020-11-07', 'RAS'),
(18, 870102, '2020-11-07', 'Aucun commentaire'),
(18, 887456, '2020-11-07', 'Animal mis sous tranquilisants et relâché'),
(19, 887521, '2022-08-21', '3 morts'),
(19, 887522, '2022-08-21', 'Aucun commentaire'),
(20, 887523, '2022-07-21', 'personne sous assistance respiratoire'),
(21, 887524, '2022-07-21', '3 disparus'),
(21, 887525, '2022-07-21', 'Aucun commentaire'),
(22, 899789, '2023-02-05', '2 morts'),
(23, 908465, '2021-02-05', 'Homme de 25 ans amené à l\'hopital'),
(24, 935309, '2023-01-15', 'Peu de dégâts'),
(25, 947114, '2021-04-29', 'Mobilisation inutile'),
(26, 949955, '2022-12-12', 'Aucun commentaire'),
(26, 975094, '2022-12-12', 'Mobilisation inutile'),
(27, 982726, '2022-05-12', 'Personne mise sous assistance respiratoire'),
(28, 986995, '2022-06-12', 'Maisons détruites, aucun morts, 5 blessés'),
(29, 668795, '2020-09-02', 'Mobilisation inutile'),
(30, 687496, '2021-06-18', 'Personne amenée à l\'hopital le plus tôt possible'),
(31, 696969, '2021-08-18', 'Enfant avec une possible fracture amené à l\'hopital'),
(32, 782312, '2021-06-27', 'Jeune homme tombé de 3m de hauteur, coma'),
(33, 786572, '2020-10-27', '1 mort'),
(33, 870102, '2020-10-27', 'Aucun commentaire'),
(34, 887456, '2022-08-11', 'mort animale & dégats environementaux'),
(34, 887521, '2022-08-11', 'Aucun commentaire'),
(35, 887522, '2022-08-21', '2 blessés'),
(35, 887523, '2022-08-21', 'Aucun commentaire'),
(36, 887524, '2023-03-05', '1 blessé, brûlures 3ème degré: huile chaude renversée sur le poignet'),
(37, 887525, '2023-05-05', '3 blessés, véhicule arrêté à temps'),
(38, 899789, '2023-08-05', 'Petite chute, fractures possibles'),
(39, 908465, '2021-12-29', 'RAS'),
(40, 935309, '2021-01-29', 'Vieille personne tombée de son appareil électrique, secours apportés et conduite à l\'hopital le plus proche'),
(41, 947114, '2021-07-14', 'RAS'),
(42, 949955, '2022-06-12', '3 morts'),
(43, 975094, '2022-05-12', '1 blessé'),
(44, 982726, '2022-07-12', 'chat mort'),
(45, 986995, '2021-01-28', '1 blessé'),
(46, 975094, '2022-01-12', 'coma'),
(47, 982726, '2022-08-12', '3 personnes intoxiquées');

-- --------------------------------------------------------

--
-- Structure de la table `naturesinistre`
--

CREATE TABLE `naturesinistre` (
  `IdNatureSinistre` int(11) NOT NULL,
  `LblNatureSinistre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `naturesinistre`
--

INSERT INTO `naturesinistre` (`IdNatureSinistre`, `LblNatureSinistre`) VALUES
(1, 'feu dans un appartement'),
(2, 'feu de brousailles'),
(3, 'ascenseur bloqué'),
(4, 'chat dans un arbre'),
(5, 'nid de frelon'),
(6, 'feu de forêt'),
(7, 'accident autoroute'),
(8, 'feu dans une maison'),
(9, 'explosion'),
(10, 'feu dans un appartement'),
(11, 'accouchement dans une voiture'),
(12, 'malaise sur voie publique'),
(13, 'fracture du tibia'),
(14, 'nid de frelion'),
(15, 'feu de forêt'),
(16, 'noyade'),
(17, 'malaise sur voie publique'),
(18, 'animal sauvage sur voie publique'),
(19, 'incendie en ville'),
(20, 'noyade'),
(21, 'avalanche de neige'),
(22, 'accident autoroute'),
(23, 'overdose de drogue'),
(24, 'feu dans un appartement'),
(25, 'malaise à domicile'),
(26, 'crise d\'epilepsie'),
(27, 'insuffisance respiratoire '),
(28, 'aléa environnemental'),
(29, 'crise d\'asthme'),
(30, 'crise d\'epilepsie'),
(31, 'fracture du tibia'),
(32, 'chute'),
(33, 'coup du lapin'),
(34, 'feu de campagne'),
(35, 'brulures graves'),
(36, 'brulures graves'),
(37, 'véhicule en flammes sur voie publique'),
(38, 'chute'),
(39, 'nid de frelon'),
(40, 'accident velo electrique'),
(41, 'alea environnemental'),
(42, 'crash helicoptere'),
(43, 'personne électrisée grave'),
(44, 'feu dans une maison'),
(45, 'brulures graves'),
(46, 'overdose de drogue'),
(47, 'fumée toxique');

-- --------------------------------------------------------

--
-- Structure de la table `pompier`
--

CREATE TABLE `pompier` (
  `Matricule` int(11) NOT NULL,
  `PrenomPompier` varchar(50) DEFAULT NULL,
  `NomPompier` varchar(50) DEFAULT NULL,
  `DateNaissPompier` date DEFAULT NULL,
  `TelPompier` varchar(50) DEFAULT NULL,
  `IdGrade` int(11) NOT NULL,
  `SexePompier` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pompier`
--

INSERT INTO `pompier` (`Matricule`, `PrenomPompier`, `NomPompier`, `DateNaissPompier`, `TelPompier`, `IdGrade`, `SexePompier`) VALUES
(111111, 'Dylan', 'Arditi', '1999-04-29', '0685107077', 12, 'masculin'),
(142096, 'Hugo', 'Pompy', '1986-03-30', '0755379212', 5, 'masculin'),
(183387, 'Alice', 'Dupont', '1988-05-15', '0656789567', 5, 'féminin'),
(212545, 'Joanne', 'PASTELLE', '1996-05-11', '0304628406', 7, 'féminin'),
(222222, 'Gomme', 'Bonzai', '1999-04-07', '0635456789', 1, 'masculin'),
(225113, 'Lucas', 'Martin', '1992-09-10', '0665432198', 8, 'masculin'),
(323274, 'Laura', 'Lefebvre', '1986-11-20', '0634567890', 3, 'féminin'),
(466132, 'Louis', 'Moreau', '1979-03-04', '0601020304', 4, 'masculin'),
(476574, 'Iseria', 'Damzelle', '1999-04-19', '0745832581', 13, 'féminin'),
(514947, 'Manon', 'Dubois', '1999-07-12', '0643657890', 7, 'féminin'),
(520989, 'Paul', 'Simon', '1990-12-24', '0632145678', 10, 'masculin'),
(530084, 'Marie', 'Bertrand', '1982-06-05', '0656789023', 2, 'féminin'),
(555555, 'Lucien', 'DURAND', '1982-09-11', '9790908808', 4, 'masculin'),
(557412, 'Michael', 'PASTOR', '1992-12-12', '0849487623', 8, 'masculin'),
(602663, 'Nicolas', 'Rousseau', '1994-02-18', '0612345678', 6, 'masculin'),
(603723, 'Céline', 'Girard', '1985-08-30', '0698765432', 3, 'féminin'),
(649915, 'Alexandre', 'Andre', '1977-04-27', '0602030405', 2, 'masculin'),
(654352, 'Lara', 'Clette', '1987-03-11', '0642786352', 3, 'féminin'),
(665412, 'Audrey', 'MINOIS', '1975-10-12', '0564975621', 6, 'féminin'),
(665545, 'Michel', 'CAMPAS', '1994-04-30', '0548196374', 5, 'masculin'),
(666666, 'MUCHE', 'TRYC', '1999-09-03', '0685101893', 1, 'masculin'),
(666667, 'Philippe', 'Rissou', '1995-09-07', '0676547872', 4, 'masculin'),
(668795, 'Francois', 'LABRIQUE', '2001-09-11', '0645796835', 7, 'masculin'),
(687496, 'Caroline', 'Mercier', '1997-01-08', '0678901234', 11, 'féminin'),
(696969, 'Dupont', 'Durand', '2002-09-30', '992923839', 1, 'masculin'),
(782312, 'Janette', 'Esur', '1982-02-11', '0627371273', 3, 'féminin'),
(786572, 'Gauthier', 'Abri', '1972-05-12', '0676542532', 3, 'masculin'),
(870102, 'Antoine', 'Fournier', '1989-10-31', '0623456789', 10, 'masculin'),
(887456, 'Hugues', 'LEMAIRE', '1969-11-14', '0451243798', 9, 'masculin'),
(887521, 'Clara', 'Dupuis', '1993-12-01', '0634567891', 7, 'féminin'),
(887522, 'Hugo', 'Fontaine', '1981-02-14', '0687654321', 3, 'masculin'),
(887523, 'Julie', 'Benoit', '1991-06-25', '0643210987', 5, 'féminin'),
(887524, 'Arthur', 'Gauthier', '1980-09-05', '0612345678', 2, 'masculin'),
(887525, 'Eva', 'Rey', '1995-11-07', '0678901234', 8, 'féminin'),
(899789, 'Thomas', 'Meyer', '1987-03-28', '0698765432', 10, 'masculin'),
(908465, 'Anais', 'Schmidt', '1998-08-23', '0665432198', 1, 'féminin'),
(935309, 'Mathieu', 'Weber', '1983-01-17', '0632145678', 6, 'masculin'),
(947114, 'Lucie', 'Gomez', '1984-07-01', '0612345678', 3, 'féminin'),
(949955, 'Ludovic', 'BRIARD', '1995-02-02', '0653425011', 1, 'masculin'),
(975094, 'Maxime', 'Muller', '1990-05-17', '0654321098', 7, 'masculin'),
(982726, 'Seb', 'Inion', '1970-10-10', '0599878998', 10, 'masculin'),
(986995, 'Robert', 'Dumontel', '1969-10-10', '0298568542', 11, 'masculin'),
(992312, 'Jean', 'Balle', '1982-07-12', '0678652354', 2, 'masculin'),
(997958, 'Jean', 'ALLUMETTE', '1987-03-30', '0758753212', 2, 'masculin');

-- --------------------------------------------------------

--
-- Structure de la table `prevoir`
--

CREATE TABLE `prevoir` (
  `IdNatureSinistre` int(11) NOT NULL,
  `IdTypeEngin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `prevoir`
--

INSERT INTO `prevoir` (`IdNatureSinistre`, `IdTypeEngin`) VALUES
(1, 'EPA'),
(1, 'FPT'),
(1, 'VSAV'),
(2, 'VSAV'),
(3, 'VSAV'),
(4, 'VSAV'),
(5, 'VSAV'),
(6, 'CCF'),
(6, 'FPT'),
(7, 'VSAV'),
(7, 'VSR'),
(8, 'EPA'),
(8, 'FPT'),
(8, 'VSAV'),
(9, 'EPA'),
(9, 'FPT'),
(9, 'VPC'),
(9, 'VSAV'),
(10, 'EPA'),
(10, 'FPT'),
(10, 'MPR'),
(10, 'VSAV'),
(11, 'VSS'),
(12, 'VSAV'),
(13, 'VSAV'),
(14, 'VSAV'),
(15, 'FPT'),
(15, 'RMVG'),
(16, 'BLS'),
(16, 'BRS'),
(17, 'VSAV'),
(18, 'VSR'),
(19, 'EPA'),
(19, 'FPT'),
(19, 'VSAV'),
(20, 'BLS'),
(20, 'BRS'),
(21, 'VSAV'),
(22, 'VSAV'),
(22, 'VSR'),
(23, 'VSAV'),
(24, 'EPA'),
(24, 'FPT'),
(24, 'MPR'),
(24, 'VPC'),
(24, 'VSAV'),
(25, 'VSAV'),
(26, 'VSS'),
(27, 'VSS'),
(28, 'FPT'),
(28, 'MPR'),
(28, 'RMVG'),
(28, 'VPC'),
(29, 'VSAV'),
(30, 'VSS'),
(31, 'VSAV'),
(32, 'VSAV'),
(33, 'VSAV'),
(34, 'MPR'),
(34, 'RMVG'),
(35, 'VSAV'),
(35, 'VSS'),
(36, 'VSAV'),
(36, 'VSS'),
(37, 'FPT'),
(37, 'MPR'),
(37, 'VSAV'),
(37, 'VSR'),
(38, 'VSAV'),
(39, 'EPA'),
(39, 'VSAV'),
(40, 'VSR'),
(41, 'FPT'),
(41, 'RMVG'),
(41, 'VPC'),
(42, 'EPA'),
(42, 'MPR'),
(42, 'VPC'),
(42, 'VSAV'),
(43, 'VSAV'),
(44, 'FPT'),
(44, 'VSAV'),
(45, 'MPR'),
(45, 'VSAV'),
(46, 'VSS'),
(47, 'RMVG'),
(47, 'VSAV');

-- --------------------------------------------------------

--
-- Structure de la table `professionnel`
--

CREATE TABLE `professionnel` (
  `Matricule` int(11) NOT NULL,
  `DateEmbauche` date NOT NULL,
  `Indice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `professionnel`
--

INSERT INTO `professionnel` (`Matricule`, `DateEmbauche`, `Indice`) VALUES
(212545, '2020-08-08', 300),
(476574, '2018-04-29', 200),
(555555, '2000-05-25', 200),
(557412, '2019-02-15', 300),
(654352, '2022-07-13', 300),
(665412, '2015-12-17', 200),
(665545, '2016-12-02', 200),
(666666, '2018-09-09', 200),
(666667, '2019-01-05', 300),
(668795, '2021-08-15', 200),
(696969, '2020-09-30', 300),
(782312, '2002-03-15', 200),
(786572, '1997-06-05', 300),
(887456, '2018-12-05', 200),
(949955, '2015-07-07', 200),
(982726, '2000-05-09', 300),
(986995, '2000-05-04', 200),
(992312, '2000-11-11', 300),
(997958, '1998-11-28', 200);

-- --------------------------------------------------------

--
-- Structure de la table `reclamer`
--

CREATE TABLE `reclamer` (
  `IdHabilitation` int(11) NOT NULL,
  `IdTypeEngin` varchar(50) NOT NULL,
  `Nbr` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reclamer`
--

INSERT INTO `reclamer` (`IdHabilitation`, `IdTypeEngin`, `Nbr`) VALUES
(2, 'FPT', 1),
(3, 'FPT', 2),
(5, 'FPT', 1);

-- --------------------------------------------------------

--
-- Structure de la table `typeengin`
--

CREATE TABLE `typeengin` (
  `IdTypeEngin` varchar(50) NOT NULL,
  `LblEngincol` varchar(50) DEFAULT NULL,
  `images` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `typeengin`
--

INSERT INTO `typeengin` (`IdTypeEngin`, `LblEngincol`, `images`) VALUES
('BLS', 'bateau léger de sauvetage', 'bateau-sauvetage.png'),
('BRS', 'bateau de reconnaissance et de sauvetage', 'bateau-recon-sauvetage.png'),
('CCF', 'camion-citerne feux de forêts', 'camion-citerne.png'),
('EPA', 'échelle pivotante automatique', 'echelle-pivotante-automatique.png'),
('FPT', 'fourgon pompe-tonne', 'fourgon-pompe-tonne.png'),
('MPR', 'motopompe remorquable', 'motopompe-remorquable.png'),
('RMVG', 'remorque moto ventilateur grand débit', 'remorque-moto.png'),
('VPC', 'véhicule poste de commandement', 'vehicule-poste-commandement.png'),
('VSAV', 'véhicule de secours aux victimes', 'vehicule-secours.png'),
('VSR', 'véhicule secours routier', 'vehicule-secours-routier.png'),
('VSS', 'véhicule de soutien sanitaire', 'vehicule-soutien-sanitaire.png');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` longtext NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `email`, `password`, `role`) VALUES
(1, 'test@gmail.com', '$2y$10$5T7ib1y/xB4qZ2Zp5m1sEuO3IVMh.08r23B8Vj7i3ggqIVxqZIsfO', 'admin'),
(2, 'user@gmail.com', '$2y$10$yNlURy7BlvYR8yauuZp1VeWRMHk83o65dz7zcDQ7mHdBbqXOrAyau', 'user'),
(3, 'testinscript@gmail.com', '$2y$10$DlN9otqmKmh3El6bThwgJuxHKWiLpseZgEjz.6wKB/7cSZt5k5cs6', 'user'),
(4, 'moncompte@gmail.com', '$2y$10$JNhyOGsWCZ9fI0w6FMwanetMyGfCBK4XNhb9cZd8AfihKgX0ljUdW', 'visiteur');

-- --------------------------------------------------------

--
-- Structure de la table `volontaire`
--

CREATE TABLE `volontaire` (
  `MatVolontaire` int(11) NOT NULL,
  `BIP` varchar(3) DEFAULT NULL,
  `IdEmployeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `volontaire`
--

INSERT INTO `volontaire` (`MatVolontaire`, `BIP`, `IdEmployeur`) VALUES
(111111, '098', 17),
(142096, '067', 18),
(183387, '069', 13),
(225113, '067', 17),
(323274, '044', 22),
(466132, '033', 12),
(514947, '075', 8),
(520989, '031', 10),
(530084, '034', 19),
(602663, '013', 15),
(603723, '044', 21),
(649915, '033', 11),
(687496, '031', 9),
(870102, '075', 7),
(887521, '011', 15),
(887522, '011', 14),
(887523, '011', 15),
(887524, '011', 16),
(887525, '011', 18),
(899789, '029', 4),
(908465, '013', 16),
(935309, '059', 6),
(947114, '034', 20),
(975094, '069', 14),
(986995, '029', 3),
(992312, '059', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`Matricule`,`IdCaserne`),
  ADD KEY `IdCaserne` (`IdCaserne`);

--
-- Index pour la table `caserne`
--
ALTER TABLE `caserne`
  ADD PRIMARY KEY (`IdCaserne`);

--
-- Index pour la table `employeur`
--
ALTER TABLE `employeur`
  ADD PRIMARY KEY (`IdEmployeur`);

--
-- Index pour la table `engin`
--
ALTER TABLE `engin`
  ADD PRIMARY KEY (`Numéro`),
  ADD KEY `IdCaserne` (`IdCaserne`),
  ADD KEY `IdTypeEngin` (`IdTypeEngin`);

--
-- Index pour la table `exercer`
--
ALTER TABLE `exercer`
  ADD PRIMARY KEY (`IdHabilitation`,`Matricule`),
  ADD KEY `Matricule` (`Matricule`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`IdGrade`);

--
-- Index pour la table `habilitation`
--
ALTER TABLE `habilitation`
  ADD PRIMARY KEY (`IdHabilitation`);

--
-- Index pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD PRIMARY KEY (`IdNatureSinistre`,`Matricule`),
  ADD KEY `Matricule` (`Matricule`);

--
-- Index pour la table `naturesinistre`
--
ALTER TABLE `naturesinistre`
  ADD PRIMARY KEY (`IdNatureSinistre`);

--
-- Index pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD PRIMARY KEY (`Matricule`),
  ADD KEY `IdGrade` (`IdGrade`);

--
-- Index pour la table `prevoir`
--
ALTER TABLE `prevoir`
  ADD PRIMARY KEY (`IdNatureSinistre`,`IdTypeEngin`),
  ADD KEY `IdTypeEngin` (`IdTypeEngin`);

--
-- Index pour la table `professionnel`
--
ALTER TABLE `professionnel`
  ADD PRIMARY KEY (`Matricule`);

--
-- Index pour la table `reclamer`
--
ALTER TABLE `reclamer`
  ADD PRIMARY KEY (`IdHabilitation`,`IdTypeEngin`),
  ADD KEY `IdTypeEngin` (`IdTypeEngin`);

--
-- Index pour la table `typeengin`
--
ALTER TABLE `typeengin`
  ADD PRIMARY KEY (`IdTypeEngin`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `volontaire`
--
ALTER TABLE `volontaire`
  ADD PRIMARY KEY (`MatVolontaire`),
  ADD KEY `IdEmployeur` (`IdEmployeur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `affectation_ibfk_1` FOREIGN KEY (`Matricule`) REFERENCES `pompier` (`Matricule`),
  ADD CONSTRAINT `affectation_ibfk_2` FOREIGN KEY (`IdCaserne`) REFERENCES `caserne` (`IdCaserne`);

--
-- Contraintes pour la table `engin`
--
ALTER TABLE `engin`
  ADD CONSTRAINT `engin_ibfk_1` FOREIGN KEY (`IdCaserne`) REFERENCES `caserne` (`IdCaserne`),
  ADD CONSTRAINT `engin_ibfk_2` FOREIGN KEY (`IdTypeEngin`) REFERENCES `typeengin` (`IdTypeEngin`);

--
-- Contraintes pour la table `exercer`
--
ALTER TABLE `exercer`
  ADD CONSTRAINT `exercer_ibfk_1` FOREIGN KEY (`IdHabilitation`) REFERENCES `habilitation` (`IdHabilitation`),
  ADD CONSTRAINT `exercer_ibfk_2` FOREIGN KEY (`Matricule`) REFERENCES `pompier` (`Matricule`);

--
-- Contraintes pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD CONSTRAINT `intervention_ibfk_1` FOREIGN KEY (`IdNatureSinistre`) REFERENCES `naturesinistre` (`IdNatureSinistre`),
  ADD CONSTRAINT `intervention_ibfk_2` FOREIGN KEY (`Matricule`) REFERENCES `pompier` (`Matricule`);

--
-- Contraintes pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD CONSTRAINT `pompier_ibfk_1` FOREIGN KEY (`IdGrade`) REFERENCES `grade` (`IdGrade`);

--
-- Contraintes pour la table `prevoir`
--
ALTER TABLE `prevoir`
  ADD CONSTRAINT `prevoir_ibfk_1` FOREIGN KEY (`IdNatureSinistre`) REFERENCES `naturesinistre` (`IdNatureSinistre`),
  ADD CONSTRAINT `prevoir_ibfk_2` FOREIGN KEY (`IdTypeEngin`) REFERENCES `typeengin` (`IdTypeEngin`);

--
-- Contraintes pour la table `professionnel`
--
ALTER TABLE `professionnel`
  ADD CONSTRAINT `professionnel_ibfk_1` FOREIGN KEY (`Matricule`) REFERENCES `pompier` (`Matricule`);

--
-- Contraintes pour la table `reclamer`
--
ALTER TABLE `reclamer`
  ADD CONSTRAINT `reclamer_ibfk_1` FOREIGN KEY (`IdHabilitation`) REFERENCES `habilitation` (`IdHabilitation`),
  ADD CONSTRAINT `reclamer_ibfk_2` FOREIGN KEY (`IdTypeEngin`) REFERENCES `typeengin` (`IdTypeEngin`);

--
-- Contraintes pour la table `volontaire`
--
ALTER TABLE `volontaire`
  ADD CONSTRAINT `volontaire_ibfk_1` FOREIGN KEY (`IdEmployeur`) REFERENCES `employeur` (`IdEmployeur`),
  ADD CONSTRAINT `volontaire_ibfk_2` FOREIGN KEY (`MatVolontaire`) REFERENCES `pompier` (`Matricule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
