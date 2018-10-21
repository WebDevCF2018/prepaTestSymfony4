-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- H�te : 127.0.0.1:3306
-- G�n�r� le :  Dim 21 oct. 2018 � 19:13
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de donn�es :  `sym4_romain`
--

CREATE DATABASE IF NOT EXISTS `sym4_romain` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sym4_romain`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `idarticles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` varchar(180) NOT NULL,
  `thetxt` text NOT NULL,
  `thedate` datetime DEFAULT CURRENT_TIMESTAMP,
  `auteurs_idauteurs` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idarticles`),
  KEY `fk_articles_auteurs_idx` (`auteurs_idauteurs`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `articles`
--

INSERT INTO `articles` (`idarticles`, `thetitle`, `thetxt`, `thedate`, `auteurs_idauteurs`) VALUES
(1, 'Le Platonisme', 'Le platonisme est une th�orie philosophique selon laquelle il existe des entit�s intelligibles en soi, dont le contenu est ind�pendant de la contingence de l\'exp�rience sensible.\r\n\r\ne platonisme est une th�orie philosophique selon laquelle il existe des entit�s intelligibles en soi, dont le contenu est ind�pendant de la contingence de l\'exp�rience sensible. Ces entit�s, suivant la version du platonisme dont on parle, peuvent �tre les concepts (les Id�es g�n�ralement, comme chez Plotin), les nombres (platonisme math�matique), ou encore les valeurs logiques (dans le logicisme de Frege par exemple). \r\n\r\nCette th�orie est une des r�ponses envisageables, avec le nominalisme et le conceptualisme (Pierre Ab�lard), � la question du statut ontologique des concepts � valeur cognitive (id�es, nombres ou contenus propositionnels).', '2018-10-21 21:05:09', 2),
(2, 'La Renaissance', 'La Renaissance est une p�riode historique qui eut comme origine la Renaissance italienne : une Pr�-Renaissance se produisit dans plusieurs villes d\'Italie d�s le XIVe si�cle, se propagea au XVe si�cle dans la plus grande partie de l\'Italie,...\r\n\r\na Renaissance est une p�riode historique qui eut comme origine la Renaissance italienne : une Pr�-Renaissance se produisit dans plusieurs villes d\'Italie d�s le XIVe si�cle (Trecento), se propagea au XVe si�cle dans la plus grande partie de l\'Italie, en Espagne, dans certaines enclaves d\'Europe du Nord et d\'Allemagne, sous la forme de ce qu\'on nomme la premi�re Renaissance (Quattrocento), puis gagna la totalit� de l\'Europe au XVIe si�cle (Cinquecento).\r\n\r\nDans le courant du XVe et au XVIe si�cle, ce mouvement permit � l\'Europe de se lancer dans des exp�ditions maritimes d\'envergure mondiale, connues sous le nom de grandes d�couvertes.\r\n\r\nLa Renaissance s\'accompagna aussi d\'un ensemble de r�formes religieuses.\r\n\r\nSelon l\'historien anglais John Hale, ce fut � cette �poque que le mot Europe entra dans le langage courant et fut pourvu d\'un cadre de r�f�rence solidement appuy� sur des cartes et d\'un ensemble d\'images affirmant son identit� visuelle et culturelle.\r\n\r\nLa d�coupe historique de cette �poque charni�re entre l\'�poque m�di�vale et l\'�poque moderne est sujette � un d�bat interpr�tatif entre historiens et historiennes de l\'art. Certains parlent d\'une Renaissance du XIIe si�cle. En r�alit�, l\'emploi m�me de Renaissance d�coule d\'une vision de l\'Histoire visant � lui donner un sens, ce qui correspond au r�gime de pens�e de l\'id�alisme allemand du XIXe si�cle, surtout au travers des concepts de Hegel. Cette mani�re de percevoir l\'Histoire �tant elle-m�me controvers�e, le lecteur se reportera � l\'article indiqu� la Renaissance du XIIe si�cle eut effectivement lieu, elle fut cependant interrompue par une p�riode particuli�rement complexe en Europe : le XIVe si�cle vit la peste noire d�cimer plus du tiers de la population europ�enne. Les conflits de la guerre de Cent Ans expliquent que ce qu\'on nomme couramment la Renaissance (objet de cet article) commen�a bien plus t�t en Italie que dans le reste de l\'Europe, en France surtout.', '2018-10-21 21:11:57', 1);

-- --------------------------------------------------------

--
-- Structure de la table `articles_has_sections`
--

DROP TABLE IF EXISTS `articles_has_sections`;
CREATE TABLE IF NOT EXISTS `articles_has_sections` (
  `articles_idarticles` int(10) UNSIGNED NOT NULL,
  `sections_idsections` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`articles_idarticles`,`sections_idsections`),
  KEY `fk_articles_has_sections_sections1_idx` (`sections_idsections`),
  KEY `fk_articles_has_sections_articles1_idx` (`articles_idarticles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `articles_has_sections`
--

INSERT INTO `articles_has_sections` (`articles_idarticles`, `sections_idsections`) VALUES
(2, 1),
(2, 3),
(2, 4),
(1, 6),
(2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

DROP TABLE IF EXISTS `auteurs`;
CREATE TABLE IF NOT EXISTS `auteurs` (
  `idauteurs` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thelog` varchar(60) NOT NULL,
  `thepwd` varchar(120) NOT NULL,
  `thename` varchar(160) NOT NULL,
  PRIMARY KEY (`idauteurs`),
  UNIQUE KEY `lenom_UNIQUE` (`thelog`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `auteurs`
--

INSERT INTO `auteurs` (`idauteurs`, `thelog`, `thepwd`, `thename`) VALUES
(1, 'Thierry', 'Thierry', 'Jacques Thierry'),
(2, 'St�phanie', 'St�phanie', 'Dupuis St�phanie');

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `idsections` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thesection` varchar(120) NOT NULL,
  `thedesc` varchar(500) NOT NULL,
  PRIMARY KEY (`idsections`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `sections`
--

INSERT INTO `sections` (`idsections`, `thesection`, `thedesc`) VALUES
(1, 'Ath�isme', 'L\'ath�isme est une attitude ou une doctrine qui ne con�oit pas l\'existence ou affirme l\'inexistence de quelque dieu, divinit� ou entit� surnaturelle que ce soit, contrairement, par exemple, au d�isme, au th�isme...'),
(2, 'Empirisme', 'L\'empirisme sert � d�signer un ensemble de th�ories philosophiques qui font de l\'exp�rience sensible l\'origine de toute connaissance valide et de tout plaisir esth�tique.'),
(3, 'H�donisme', 'L\'h�donisme plaisir, et du verbe ?d?�a? se r�jouir, selon lequel sont constitu�s les adjectifs ?d??, ?de?a et ?d? ; h�dus, h�de�a, h�du ; doux, agr�able ou aimable) est une doctrine philosophique selon laquelle la recherche du plaisir...'),
(4, 'Id�alisme', 'On nomme id�alisme toute pr��minence donn�e � des formes abstraites ou repr�sentations mentales sur la r�alit�, qu\'elle soit exp�riment�e ou qu\'elle soit inconnaissable ; ces formes �tant comme l\'essence des caract�res certains de la r�alit�,...'),
(5, 'Mat�rialisme', 'Le mat�rialisme est une philosophie qui affirme que la substance du monde est de nature mat�rielle.'),
(6, 'Rationalisme', 'Le rationalisme est la doctrine qui pose la raison discursive comme seule source envisageable de toute connaissance r�elle.'),
(7, 'R�alisme', 'Le terme r�alisme peut se rapporter � plusieurs choses ...');

--
-- Contraintes pour les tables d�charg�es
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_articles_auteurs` FOREIGN KEY (`auteurs_idauteurs`) REFERENCES `auteurs` (`idauteurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `articles_has_sections`
--
ALTER TABLE `articles_has_sections`
  ADD CONSTRAINT `fk_articles_has_sections_articles1` FOREIGN KEY (`articles_idarticles`) REFERENCES `articles` (`idarticles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_articles_has_sections_sections1` FOREIGN KEY (`sections_idsections`) REFERENCES `sections` (`idsections`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
