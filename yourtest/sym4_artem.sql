-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- H�te : 127.0.0.1:3306
-- G�n�r� le :  Dim 21 oct. 2018 � 20:12
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de donn�es :  `sym4_artem`
--

CREATE DATABASE IF NOT EXISTS `sym4_artem` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sym4_artem`;

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `idauthor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thenickname` varchar(80) NOT NULL,
  `thepwd` varchar(80) NOT NULL,
  `thecompletename` varchar(120) NOT NULL,
  PRIMARY KEY (`idauthor`),
  UNIQUE KEY `lenom_UNIQUE` (`thenickname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `author`
--

INSERT INTO `author` (`idauthor`, `thenickname`, `thepwd`, `thecompletename`) VALUES
(1, 'Trend', 'Trend', 'Reznor Trend'),
(2, 'Alexy', 'Alexy', 'Paralny Alexy');

-- --------------------------------------------------------

--
-- Structure de la table `thepage`
--

DROP TABLE IF EXISTS `thepage`;
CREATE TABLE IF NOT EXISTS `thepage` (
  `idthepage` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` varchar(250) NOT NULL,
  `thelongtext` text NOT NULL,
  `thetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `author_idauthor` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idthepage`),
  KEY `fk_thepage_author_idx` (`author_idauthor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `thepage`
--

INSERT INTO `thepage` (`idthepage`, `thetitle`, `thelongtext`, `thetime`, `author_idauthor`) VALUES
(1, 'UML', 'Le Langage de Mod�lisation Unifi�, de l\'anglais Unified Modeling Language (UML), est un langage de mod�lisation graphique � base de pictogrammes con�u pour fournir une m�thode normalis�e pour visualiser la conception d\'un syst�me. Il est couramment utilis� en d�veloppement logiciel et en conception orient�e objet.\r\n\r\nL\'UML est le r�sultat de la fusion de pr�c�dents langages de mod�lisation objet : Booch, OMT, OOSE. Principalement issu des travaux de Grady Booch, James Rumbaugh et Ivar Jacobson, UML est � pr�sent un standard adopt� par l\'Object Management Group (OMG).\r\n\r\nUML est utilis� pour sp�cifier, visualiser, modifier et construire les documents n�cessaires au bon d�veloppement d\'un logiciel orient� objet. UML offre un standard de mod�lisation, pour repr�senter l\'architecture logicielle. Les diff�rents �l�ments repr�sentables sont :\r\n\r\nActivit� d\'un objet/logiciel\r\n\r\nActeurs\r\n\r\nProcessus\r\n\r\nSch�ma de base de donn�es\r\n\r\nComposants logiciels\r\n\r\nR�utilisation de composants\r\n\r\nGr�ce aux outils de mod�lisation UML, il est �galement possible de g�n�rer automatiquement tout ou partie du code d\'une application logicielle, par exemple en langage Java, � partir des divers documents r�alis�s.', '2018-10-21 22:08:08', 2),
(2, 'MongoDB', 'MongoDB (de l\'anglais humongous qui peut �tre traduit par � �norme �) est un syst�me de gestion de base de donn�es orient�e documents, r�partissable sur un nombre quelconque d\'ordinateurs et ne n�cessitant pas de sch�ma pr�d�fini des donn�es. Il est �crit en C++. \r\n\r\nLe serveur et les outils sont distribu�s sous licence AGPL, les pilotes sous licence Apache et la documentation sous licence Creative Commons. Il fait partie de la mouvance NoSQL.\r\n\r\nMongoDB permet de manipuler des objets structur�s au format BSON (JSON binaire), sans sch�ma pr�d�termin�. En d\'autres termes, des cl�s peuvent �tre ajout�es � tout moment � � la vol�e �, sans reconfiguration de la base.\r\n\r\nLes donn�es prennent la forme de documents enregistr�s eux-m�mes dans des collections, une collection contenant un nombre quelconque de documents. Les collections sont comparables aux tables, et les documents aux enregistrements des bases de donn�es relationnelles. \r\n\r\nContrairement aux bases de donn�es relationnelles, les champs d\'un enregistrement sont libres et peuvent �tre diff�rents d\'un enregistrement � un autre au sein d\'une m�me collection. \r\n\r\nLe seul champ commun et obligatoire est le champ de cl� principale (\"id\"). Par ailleurs, MongoDB ne permet ni les requ�tes tr�s complexes standardis�es, ni les JOIN, mais permet de programmer des requ�tes sp�cifiques en JavaScript.', '2018-10-21 22:09:30', 2),
(3, 'MariaDB', 'En 2009, � la suite du rachat de MySQL par Sun Microsystems et des annonces du rachat de Sun Microsystems par Oracle Corporation, Michael Widenius, fondateur de MySQL, quitte cette soci�t� pour lancer le projet MariaDB, dans une d�marche visant � remplacer MySQL tout en assurant l�interop�rabilit�. Le nom vient de la 2e fille de Michael Widenius, Maria (la premi�re s\'appelant My).\r\n\r\nL�encyclop�die libre Wikip�dia annonce, fin 2012, la migration de MySQL � MariaDB. Les distributions GNU/Linux, comme Fedora, openSuse et Debian abandonnent elles aussi MySQL.\r\n\r\nEn septembre 2013 Google annonce l\'adoption de MariaDB en lieu et place de MySQL. Dans la foul�e un des ing�nieurs de Google est affect� � la Fondation MariaDB.\r\n\r\nUn consortium baptis� � Open Database Alliance � a par ailleurs �t� cr�� pour assurer le d�veloppement du logiciel (comparable � la fondation Linux avec le noyau Linux).', '2018-10-21 22:11:13', 1);

-- --------------------------------------------------------

--
-- Structure de la table `thepage_has_thesection`
--

DROP TABLE IF EXISTS `thepage_has_thesection`;
CREATE TABLE IF NOT EXISTS `thepage_has_thesection` (
  `thepage_idthepage` int(10) UNSIGNED NOT NULL,
  `thesection_idthesection` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`thepage_idthepage`,`thesection_idthesection`),
  KEY `fk_thepage_has_thesection_thesection1_idx` (`thesection_idthesection`),
  KEY `fk_thepage_has_thesection_thepage1_idx` (`thepage_idthepage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `thepage_has_thesection`
--

INSERT INTO `thepage_has_thesection` (`thepage_idthepage`, `thesection_idthesection`) VALUES
(2, 1),
(3, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `thesection`
--

DROP TABLE IF EXISTS `thesection`;
CREATE TABLE IF NOT EXISTS `thesection` (
  `idthesection` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thenamesection` varchar(120) NOT NULL,
  `thedescriptif` varchar(500) NOT NULL,
  PRIMARY KEY (`idthesection`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `thesection`
--

INSERT INTO `thesection` (`idthesection`, `thenamesection`, `thedescriptif`) VALUES
(1, 'NoSQL', 'En informatique et en bases de donn�es, NoSQL d�signe une famille de syst�mes de gestion de base de donn�es (SGBD) qui s\'�carte du paradigme classique des bases relationnelles. L\'explicitation du terme la plus populaire de l\'acronyme est Not only SQL (� pas seulement SQL � en anglais) m�me si cette interpr�tation peut �tre discut�e.'),
(2, 'SQL', 'SQL (sigle de Structured Query Language, en fran�ais langage de requ�te structur�e) est un langage informatique normalis� servant � exploiter des bases de donn�es relationnelles. La partie langage de manipulation des donn�es de SQL permet de rechercher, d\'ajouter, de modifier ou de supprimer des donn�es dans les bases de donn�es relationnelles.'),
(3, 'Mod�le de donn�es', 'En informatique, un mod�le de donn�es est un mod�le qui d�crit de fa�on abstraite comment sont repr�sent�es les donn�es dans une organisation m�tier, un syst�me d\'information ou une base de donn�es.');

--
-- Contraintes pour les tables d�charg�es
--

--
-- Contraintes pour la table `thepage`
--
ALTER TABLE `thepage`
  ADD CONSTRAINT `fk_thepage_author` FOREIGN KEY (`author_idauthor`) REFERENCES `author` (`idauthor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `thepage_has_thesection`
--
ALTER TABLE `thepage_has_thesection`
  ADD CONSTRAINT `fk_thepage_has_thesection_thepage1` FOREIGN KEY (`thepage_idthepage`) REFERENCES `thepage` (`idthepage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_thepage_has_thesection_thesection1` FOREIGN KEY (`thesection_idthesection`) REFERENCES `thesection` (`idthesection`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
