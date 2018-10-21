-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- H�te : 127.0.0.1:3306
-- G�n�r� le :  Dim 21 oct. 2018 � 19:40
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de donn�es :  `sym4_kevin`
--

CREATE DATABASE IF NOT EXISTS `sym4_kevin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sym4_kevin`;

-- --------------------------------------------------------

--
-- Structure de la table `lauteur`
--

DROP TABLE IF EXISTS `lauteur`;
CREATE TABLE IF NOT EXISTS `lauteur` (
  `idlauteur` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lelog` varchar(80) NOT NULL,
  `lepass` varchar(80) NOT NULL,
  `lenomcomplet` varchar(150) NOT NULL,
  PRIMARY KEY (`idlauteur`),
  UNIQUE KEY `lenom_UNIQUE` (`lelog`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `lauteur`
--

INSERT INTO `lauteur` (`idlauteur`, `lelog`, `lepass`, `lenomcomplet`) VALUES
(1, 'Jim', 'Jim', 'Rud Jim'),
(2, 'Djin', 'Djin', 'Katao Djin');

-- --------------------------------------------------------

--
-- Structure de la table `lesports`
--

DROP TABLE IF EXISTS `lesports`;
CREATE TABLE IF NOT EXISTS `lesports` (
  `idlesports` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `letitres` varchar(200) NOT NULL,
  `letextes` text NOT NULL,
  `ladates` datetime DEFAULT CURRENT_TIMESTAMP,
  `lauteur_idlauteur` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idlesports`),
  KEY `fk_lesports_lauteur_idx` (`lauteur_idlauteur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `lesports`
--

INSERT INTO `lesports` (`idlesports`, `letitres`, `letextes`, `ladates`, `lauteur_idlauteur`) VALUES
(1, 'Judo', 'Le souhait de Jigoro Kano, son fondateur, �tait de populariser une m�thode visant � mieux utiliser ses ressources physiques et mentales en prenant comme point de d�part l\'enseignement des koryu (anciennes �coles traditionnelles), Tenshin Shinyo Ryu et Kito Ryu, qu\'il avait pratiqu� durant six ann�es. \r\n\r\nLa l�gende dit que pour �tablir les principes du judo, il s\'inspira du spectacle d\'arbres couverts de neige, lors d\'un hiver rigoureux, en remarquant que les branches du cerisier r�agissaient diff�remment des roseaux (cette l�gende est en fait celle de la cr�ation du ju-jitsu bien avant la cr�ation du judo3).\r\n\r\nSous le poids de la neige abondante, les branches de cerisiers, dures, cassaient alors que les roseaux, plus souples pliaient et se d�barrassaient de � l\'agresseur � avec souplesse. La voie de la souplesse �tait n�e.\r\n\r\nLa � l�gende �, dans sa simplicit�, n\'est pas �loign�e du souhait initial de populariser une m�thode visant � mieux utiliser ses ressources physiques et mentales. Jigoro Kano avait conscience que le ju-jitsu tel qu\'il �tait pratiqu� n\'�tait plus adapt� � l\'�poque moderne. Les techniques �taient parfois tr�s dangereuses � apprendre et la plupart des ma�tres n\'�taient pas tr�s p�dagogues ou enseignaient un ju-jitsu d�cadent et inefficace. \r\n\r\nEn s\'inspirant des m�thodes de diff�rentes gymnastiques occidentales, Jigoro Kano d�cida d\'expurger du jujitsu les mouvements dangereux et de codifier les techniques restantes afin de faciliter l\'enseignement sous formes de kata. L\'art de la souplesse, d�barrass� de sa vocation guerri�re, n\'�tait plus du ju-jitsu, mais une nouvelle voie martiale (??, budo?) � vocation �ducative. Le judo �tait n�.\r\n\r\nLe judo connut un succ�s qui s\'�tendit largement au-del� des fronti�res japonaises et contribua largement � populariser les arts martiaux japonais, tout en entra�nant la confusion entre art martial et sport de combat. Ainsi, le judo des origines s\'orienta de plus en plus vers l\'aspect sportif lorsque les champions du Kodokan eurent d�finitivement battu la plupart des �coles de ju-jitsu au cours de combats organis�s. Le pouvoir �conomique du Kodokan �tait ainsi d�finitivement install� dans le monde des arts martiaux japonais.', '2018-10-21 21:36:01', 2),
(2, 'MMA', 'Les arts martiaux mixtes ou mixed martial arts (MMA), (et anciennement combat libre ou free-fight), sont un sport de combat complet, associant pugilat et lutte au corps � corps. Les deux combattants peuvent utiliser de nombreuses techniques ; selon les f�d�rations, sont autoris�es les techniques de percussion telles que coups de pied, de poing, de genou et de coude, mais aussi les techniques de corps � corps debout (clinch), de projections et de soumission (grappling) et quelquefois des techniques particuli�res de percussion au sol.\r\n\r\nCe sport est consid�r� comme r�cent, et plus efficace qu\'artistique. Il peut �tre consid�r� comme �tant aux arts martiaux et aux sports de combat, ce que le d�cathlon est � l\'athl�tisme. Les arts martiaux mixtes existent en r�alit� depuis fort longtemps (� travers la lutte et le pugilat). \r\n\r\nOn en retrouve des traces dans les applications de combat de nombreux arts martiaux anciens. N�anmoins, ce sport est interdit en comp�tition dans certains pays, par exemple en France3. En effet, ses d�tracteurs soulignent la violence des coups qui peuvent �tre port�s avec peu de contr�le lorsqu\'un combattant se situe au sol. \r\n\r\nSes partisans admettent cette violence gr�ce � la diversit� des zones de frappes possibles et la possibilit� d\'aller au sol.', '2018-10-21 21:38:44', 1);

-- --------------------------------------------------------

--
-- Structure de la table `styles`
--

DROP TABLE IF EXISTS `styles`;
CREATE TABLE IF NOT EXISTS `styles` (
  `idstyles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lestyles` varchar(120) NOT NULL,
  `ladescription` varchar(600) NOT NULL,
  PRIMARY KEY (`idstyles`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `styles`
--

INSERT INTO `styles` (`idstyles`, `lestyles`, `ladescription`) VALUES
(1, 'Pr�hension', 'La pr�hension (du latin prehensio) est d\'abord la facult� ou l\'action de saisir des proies ou autres objets avec la main. Le terme d�signe �galement la capacit� d\'un organe quelconque � saisir des objets.'),
(2, 'Percussion', 'Le terme sport de combat de percussion est une expression des ann�es 1970 du monde universitaire, d�signant les sports de combat codifi�s permettant l�utilisation de certaines armes corporelles pour percuter les cibles corporelles autoris�es de l\'opposant et cela dans un espace et une dur�e d�finie qui la plupart du temps d�bouche sur la comp�tition.'),
(3, 'Mixtes', 'Les arts martiaux mixtes ou mixed martial arts (MMA), (et anciennement combat libre ou free-fight), sont un sport de combat complet, associant pugilat et lutte au corps � corps.'),
(4, 'Avec Armes', 'Certains arts martiaux concentrent leur pratique sur l�apprentissage d�une seule et unique arme (le Kendo, par exemple), et d�autres �coles, enfin, combinent pratique � mains nues et pratiques des armes (l�A�kido, pour rester dans les exemples japonais�). Les armes peuvent �tre extr�mement vari�es, et la liste serait trop longue � faire ici ; mentionnons, � titre d�exemple, les quatre armes de base en art martial chinois : �p�e, lance, b�ton et sabre.');

-- --------------------------------------------------------

--
-- Structure de la table `styles_has_lesports`
--

DROP TABLE IF EXISTS `styles_has_lesports`;
CREATE TABLE IF NOT EXISTS `styles_has_lesports` (
  `styles_idstyles` int(10) UNSIGNED NOT NULL,
  `lesports_idlesports` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`styles_idstyles`,`lesports_idlesports`),
  KEY `fk_styles_has_lesports_lesports1_idx` (`lesports_idlesports`),
  KEY `fk_styles_has_lesports_styles1_idx` (`styles_idstyles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `styles_has_lesports`
--

INSERT INTO `styles_has_lesports` (`styles_idstyles`, `lesports_idlesports`) VALUES
(1, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2);

--
-- Contraintes pour les tables d�charg�es
--

--
-- Contraintes pour la table `lesports`
--
ALTER TABLE `lesports`
  ADD CONSTRAINT `fk_lesports_lauteur` FOREIGN KEY (`lauteur_idlauteur`) REFERENCES `lauteur` (`idlauteur`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `styles_has_lesports`
--
ALTER TABLE `styles_has_lesports`
  ADD CONSTRAINT `fk_styles_has_lesports_lesports1` FOREIGN KEY (`lesports_idlesports`) REFERENCES `lesports` (`idlesports`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_styles_has_lesports_styles1` FOREIGN KEY (`styles_idstyles`) REFERENCES `styles` (`idstyles`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
