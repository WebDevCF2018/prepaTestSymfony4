-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- H�te : 127.0.0.1:3306
-- G�n�r� le :  Dim 21 oct. 2018 � 17:29
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de donn�es :  `sym4_nicolas`
--

CREATE DATABASE IF NOT EXISTS `sym4_nicolas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sym4_nicolas`;

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `idauteur` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lelogin` varchar(100) NOT NULL,
  `lemdp` varchar(100) NOT NULL,
  `lenom` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idauteur`),
  UNIQUE KEY `lenom_UNIQUE` (`lelogin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `auteur`
--

INSERT INTO `auteur` (`idauteur`, `lelogin`, `lemdp`, `lenom`) VALUES
(1, 'Kuentz', 'Kuentz', 'Kuentz Marc'),
(2, 'Delpierre', 'Delpierre', 'Delpardieu Pierre');

-- --------------------------------------------------------

--
-- Structure de la table `lespages`
--

DROP TABLE IF EXISTS `lespages`;
CREATE TABLE IF NOT EXISTS `lespages` (
  `idlespages` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `letitre` varchar(250) NOT NULL,
  `letexte` text NOT NULL,
  `ladate` datetime DEFAULT CURRENT_TIMESTAMP,
  `auteur_idauteur` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idlespages`),
  KEY `fk_lespages_auteur1_idx` (`auteur_idauteur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `lespages`
--

INSERT INTO `lespages` (`idlespages`, `letitre`, `letexte`, `ladate`, `auteur_idauteur`) VALUES
(1, 'Pterocactus', 'Pterocactus (du grec ancien � aile � en r�f�rence � la forme des p�tales en soucoupe et aux graines qui se trouvent � l\'int�rieur) est un genre de la famille des cactus comprenant neuf esp�ces.\r\n\r\nToutes les Pterocactus ont des racines tub�reuses et sont end�miques du sud et de l\'ouest de l\'Argentine.\r\n\r\nLe mot cactus vient du grec ancien ???t?? / k�ktos, d�signant le chardon. Il a �t� utilis� comme le nom du premier genre de ces plantes par Carl von Linn�, avant que de nombreux autres noms de genres en soient s�par�s. Il y a d�saccord sur la forme du pluriel. Le pluriel grec est ???t?? / k�ktoi. Quand le nom est latinis�, le pluriel est cacti. Cette forme est adopt�e notamment en anglais. Le fran�ais, qui pr�f�re ne pas utiliser les pluriels latins, dit � cactus � au pluriel comme au singulier.', '2018-10-21 19:19:52', 2),
(2, 'Quiabentia verticillata', 'Description\r\n\r\nArbre ou arbuste de 2 � 15m de haut � tiges et feuilles succulentes. Feuilles ovales ou lanc�ol�es de 4 � 5cm de long sur 2 cm de large. Ar�oles blanches, portant des glochides et plusieurs aiguillons longs, jusqu\'� 7cm.\r\nFloraison diurne en �t�. Petites fleurs rouge p�le.\r\nFruits oblongs, grandes graines rondes et plates � arille blanche et lisse.\r\n\r\nCulture\r\n\r\nPeu cultiv� du fait de ses glochides et de ses aiguillons cassants.\r\nCulture d�licate. Tr�s sensible � l\'humidit� hivernale : hiverner au chaud (min 15�C) et au sec. Du fait de cette sensibilit�, tr�s mauvais porte greffe.\r\n\r\nReproduction principalement par bouturage de tiges.\r\n\r\n�tymologie\r\n\r\nQuiabentia : du nom vernaculaire de l\'esp�ce br�silienne, quiabento.\r\nverticillata : de la disposition des rameaux en verticilles.\r\n\r\nHabitat\r\n\r\nArgentine (Nord-Est), Bolivie (notamment Santa Cruz) et Paraguay (notamment Boqueron, Chaco, Nueva Asunci�n).\r\n\r\nAnecdotes\r\n\r\nPubli� en 1923 par Vaupel sous le nom Pereskia verticillata, l\'ann�e o� Britton & Rose d�cident de cr�er le genre Quiabentia pour leur Pereskia zehntneri, reclassement suivi par Vaupel en 1925.\r\n\r\nFruit comestible, nom vernaculaire : \r\n\r\npax�k (pluriel : pax�ki).\r\n\r\nExposition\r\n\r\nVive (luminosit� maxi, plein soleil accept�)\r\n\r\nTemp�rature mini\r\n\r\n15�C\r\n\r\nArrosages\r\n\r\nHiver : faible. �t� : moyen.', '2018-10-21 19:23:36', 1),
(3, 'Pereskia', 'Ce genre est compos� d\'une dizaine d\'esp�ces arbustives ou buissonnantes, croissant dans les zones tropicales d\'Am�rique. La floraison se produit durant la saison humide. Ce genre a la particularit� rare chez les cactac�es de porter des feuilles apparentes.\r\n\r\nCe genre a �t� nomm� par le P�re Charles Plumier, religieux de l\'ordre des Minimes, en hommage � l�astronome fran�ais Nicolas-Claude Fabri de Peiresc, lors de la premi�re description de Pereskia aculeata en 1703 dans son ouvrage \"Nova Plantarum Americanarum Genera\", page 35.\r\n\r\nLes r�gles internationales de la taxonomie fixant comme point de d�part de la reconnaissance des descriptions botaniques l�invention de la taxonomie binomiale par Linn� le nom de Plumier ne figure pas comme auteur initial.\r\n\r\nDe ce fait, l\'auteur officiel du genre en est Philip Miller qui en fera une description de reprise dans la 4e �dition de \"The Gardeners Dictionary\" en 1754.', '2018-10-21 19:28:15', 1);

-- --------------------------------------------------------

--
-- Structure de la table `lespages_has_rubriques`
--

DROP TABLE IF EXISTS `lespages_has_rubriques`;
CREATE TABLE IF NOT EXISTS `lespages_has_rubriques` (
  `lespages_idlespages` int(10) UNSIGNED NOT NULL,
  `rubriques_idrubriques` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`lespages_idlespages`,`rubriques_idrubriques`),
  KEY `fk_lespages_has_rubriques_rubriques1_idx` (`rubriques_idrubriques`),
  KEY `fk_lespages_has_rubriques_lespages_idx` (`lespages_idlespages`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `lespages_has_rubriques`
--

INSERT INTO `lespages_has_rubriques` (`lespages_idlespages`, `rubriques_idrubriques`) VALUES
(1, 1),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `rubriques`
--

DROP TABLE IF EXISTS `rubriques`;
CREATE TABLE IF NOT EXISTS `rubriques` (
  `idrubriques` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(120) NOT NULL,
  `ladesc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idrubriques`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `rubriques`
--

INSERT INTO `rubriques` (`idrubriques`, `titre`, `ladesc`) VALUES
(1, 'Les Opuntio�d�es', 'Cette famille comprend les vari�t�s Opuntia, Pterocactus, Pereskiopsis, Quiabentia et Tacinga.'),
(2, 'Les P�reskio�d�es', 'Une famille qui compte notamment les cactus Pereskia, qui eux-m�mes regroupent pr�s de 20 sous-esp�ces !'),
(3, 'Les Cacto�d�es', 'C\'est de loin la famille qui comprend le plus de sous-esp�ces. De quoi ravir les latinistes !');

--
-- Contraintes pour les tables d�charg�es
--

--
-- Contraintes pour la table `lespages`
--
ALTER TABLE `lespages`
  ADD CONSTRAINT `fk_lespages_auteur1` FOREIGN KEY (`auteur_idauteur`) REFERENCES `auteur` (`idauteur`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `lespages_has_rubriques`
--
ALTER TABLE `lespages_has_rubriques`
  ADD CONSTRAINT `fk_lespages_has_rubriques_lespages` FOREIGN KEY (`lespages_idlespages`) REFERENCES `lespages` (`idlespages`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lespages_has_rubriques_rubriques1` FOREIGN KEY (`rubriques_idrubriques`) REFERENCES `rubriques` (`idrubriques`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
