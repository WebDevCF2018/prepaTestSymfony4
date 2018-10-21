-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- H�te : 127.0.0.1:3306
-- G�n�r� le :  Dim 21 oct. 2018 � 18:44
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de donn�es :  `sym4_shaban`
--

CREATE DATABASE IF NOT EXISTS `sym4_shaban` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sym4_shaban`;

-- --------------------------------------------------------

--
-- Structure de la table `familles`
--

DROP TABLE IF EXISTS `familles`;
CREATE TABLE IF NOT EXISTS `familles` (
  `idfamilles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lintitule` varchar(150) NOT NULL,
  `breve` varchar(600) NOT NULL,
  PRIMARY KEY (`idfamilles`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `familles`
--

INSERT INTO `familles` (`idfamilles`, `lintitule`, `breve`) VALUES
(1, 'Cordes', 'Les cordes peuvent �tre utilis�es pour fabriquer des sons.\r\n\r\nLa corde est tendue sur un cadre (piano) ou un manche (guitare, contrebassine, instruments � cordes�), lequel est fix� contre une caisse.\r\n\r\nLe musicien imprime de l\'�nergie � la corde en la frottant (archet), en la tapant (marteau), ou en la pin�ant. La corde tendue ne peut pas se d�former pour absorber l\'�nergie, alors cette derni�re est transform�e en ondes.'),
(2, 'Bois', 'La famille des bois d�signe les instruments de musique dont le son est, ou �tait, �mis par une pi�ce en bois. M�me si l\'instrument est en m�tal, c\'est ce qui fait le son qui d�termine la famille de l\'instrument.'),
(3, 'Cuivres', 'En musique, les cuivres forment une famille d\'instruments � vent. Dans un cuivre les mouvements des l�vres pos�es sur l\'embouchure font vibrer l\'air expir� ce qui produit un son. De ce fait le saxophone o� c\'est une anche qui fait vibrer l\'air n\'est pas un cuivre mais un bois.'),
(4, 'Percussions', 'La famille des percussions d�signe les instruments de musique dont le son est �mis lorsque l\'instrument est frapp�, secou� ou gratt�.');

-- --------------------------------------------------------

--
-- Structure de la table `instruments`
--

DROP TABLE IF EXISTS `instruments`;
CREATE TABLE IF NOT EXISTS `instruments` (
  `idinstruments` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `intitule` varchar(150) NOT NULL,
  `ladesc` text NOT NULL,
  `parution` datetime DEFAULT CURRENT_TIMESTAMP,
  `redacteur_idredacteur` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idinstruments`),
  KEY `fk_instruments_redacteur_idx` (`redacteur_idredacteur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `instruments`
--

INSERT INTO `instruments` (`idinstruments`, `intitule`, `ladesc`, `parution`, `redacteur_idredacteur`) VALUES
(1, 'Djemb�', 'Un djemb� est un instrument de percussion africain compos� d\'un f�t de bois en forme de calice sur lequel est mont�e une peau de ch�vre ou d\'antilope tendue � l\'aide d\'un syst�me de tension (originellement des chevilles en bois ou des cordes en peaux, maintenant le plus souvent utilis�es sont des cordes synth�tiques et des anneaux en fer � b�ton), que l\'on joue � mains nues et dont le spectre sonore tr�s large g�n�re une grande richesse de timbre. La forme �vas�e du f�t viendrait de celle du mortier � piler le grain.\r\n\r\n\r\nIl vient de l\'Afrique de l\'Ouest, cr�� au sein de l\'Empire Mandingue, dit aussi Empire du Mali, mis en place par Soundiata Ke�ta au xiiie si�cle, qui s\'�tendait de la Guin�e � l\'est du Mali, et au nord de la C�te d\'Ivoire en passant par le Burkina Faso.\r\n\r\nLe djemb�, appel� par les Soussous de Guin�e � bot� �, fait partie d\'un ensemble polyrythmique, et ne s\'entend que tr�s rarement seul. Les membres de cet instrumentarium sont le doundounba, le sangban, le kenkeni, plusieurs djemb�s d\'accompagnement et un djemb� soliste. De plus, il est presque indissociable de la danse africaine dont les phrases du soliste marquent les pas.', '2018-10-21 20:39:33', 2),
(2, 'Saxophone', 'Le saxophone est un instrument de musique � vent appartenant � la famille des bois. Il a �t� invent� par le Belge Adolphe Sax et brevet� � Paris le 21 mars 1846.\r\n\r\nIl ne doit pas �tre confondu avec le saxhorn, de la famille des cuivres, mis au point, lui aussi, par Adolphe Sax. Le saxophone est g�n�ralement en laiton, bien qu\'il en existe certains en cuivre, en argent, en plastique ou plaqu�s en or.\r\n\r\nLe corps du saxophone est compos� de trois parties trou�es ou coll�es r�alis�es en laiton : le corps conique, le pavillon et la culasse reliant les deux. Les cl�s (au nombre de 19 � 22 selon les membres de la famille et le mod�le) commandent l\'ouverture et la fermeture des trous lat�raux perc�s sur le corps (ou chemin�es). L\'extr�mit� haute du corps est prolong�e horizontalement par le bocal (d�montable) qui porte le bec (en �bonite, en m�tal, en bois, ou encore depuis peu en plastique ABS par impression 3D), �quip� d\'une anche simple attach�e avec une ligature. Il existe diff�rentes sortes de bec permettant d\'obtenir le son souhait� en modifiant l\'ouverture et la forme du bec (bec classique, bec jazz...), ainsi que diff�rentes sortes de ligatures (m�tal, cuir, cuir avec lamelle d\'or, d\'argent, etc.).\r\n\r\nLe son du saxophone est produit � l\'aide du bec et de l\'anche (en g�n�ral en roseau, mais peut �tre aussi en mati�re synth�tique). C\'est la vibration de l\'anche sur la facette du bec qui permet l\'�mission du son par mise en vibration de la colonne d\'air contenue dans le corps de l\'instrument.', '2018-10-21 20:40:53', 1),
(3, 'Cornemuse', 'La cornemuse est un instrument de musique � vent et plus particuli�rement � anches. Il en existe plus d\'une centaine de types dans le monde. Sa r�partition g�ographique correspond � l\'Europe enti�re, au Caucase, au Maghreb, au golfe Persique et va jusqu\'� l\'Inde du Nord.\r\n\r\nLes origines de la cornemuse sont lointaines et difficiles � d�terminer �tant donn� le peu de preuves arch�ologiques dont on dispose aujourd\'hui. Elle est mentionn�e d�s l\'�poque gr�co-romaine : les Grecs l\'appelaient ?s?a???? / �skaulos et chez les Romains elle se nommait tibia utricularis. \r\n\r\nOn suppose que la cornemuse prendrait ses origines en �gypte antique car de nombreuses repr�sentations de chalumeaux doubles, tant chez les Grecs (aulos bicalame, de calamus = roseau en latin) que chez les �gyptiens montrent l\'importance de cet instrument. \r\n\r\nDes d�bris de ce dernier ont �t� retrouv�s dans des pyramides �gyptiennes datant d\'environ 300 ans av. J.-C. Aristophane (�450-386 av. J.-C.) po�te comique d\'Ath�nes s\'en moquait d�j�. \r\n\r\nEn th�orie, il serait arriv� en Europe gr�ce aux Grecs, puis aux Romains et au commerce avec les Celtes tout autour du bassin m�diterran�en. En effet, d\'apr�s Procope (fin ve s. � vers 562) cet instrument aurait �t� l\'instrument de marche des l�gions romaines. \r\n\r\nMais rien ne permet de conforter cette th�orie au vu du peu de t�moignages dont nous disposons.', '2018-10-21 20:42:51', 1);

-- --------------------------------------------------------

--
-- Structure de la table `instruments_has_familles`
--

DROP TABLE IF EXISTS `instruments_has_familles`;
CREATE TABLE IF NOT EXISTS `instruments_has_familles` (
  `instruments_idinstruments` int(10) UNSIGNED NOT NULL,
  `familles_idfamilles` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`instruments_idinstruments`,`familles_idfamilles`),
  KEY `fk_instruments_has_familles_familles1_idx` (`familles_idfamilles`),
  KEY `fk_instruments_has_familles_instruments1_idx` (`instruments_idinstruments`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `instruments_has_familles`
--

INSERT INTO `instruments_has_familles` (`instruments_idinstruments`, `familles_idfamilles`) VALUES
(2, 2),
(3, 2),
(1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `redacteur`
--

DROP TABLE IF EXISTS `redacteur`;
CREATE TABLE IF NOT EXISTS `redacteur` (
  `idredacteur` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `surnom` varchar(80) NOT NULL,
  `thepwd` varchar(80) NOT NULL,
  `cname` varchar(160) NOT NULL,
  PRIMARY KEY (`idredacteur`),
  UNIQUE KEY `lenom_UNIQUE` (`surnom`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `redacteur`
--

INSERT INTO `redacteur` (`idredacteur`, `surnom`, `thepwd`, `cname`) VALUES
(1, 'Patricia', 'Patricia', 'Kalogera Patricia'),
(2, 'Kris', 'Kris', 'Petersen Kris');

--
-- Contraintes pour les tables d�charg�es
--

--
-- Contraintes pour la table `instruments`
--
ALTER TABLE `instruments`
  ADD CONSTRAINT `fk_instruments_redacteur` FOREIGN KEY (`redacteur_idredacteur`) REFERENCES `redacteur` (`idredacteur`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `instruments_has_familles`
--
ALTER TABLE `instruments_has_familles`
  ADD CONSTRAINT `fk_instruments_has_familles_familles1` FOREIGN KEY (`familles_idfamilles`) REFERENCES `familles` (`idfamilles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_instruments_has_familles_instruments1` FOREIGN KEY (`instruments_idinstruments`) REFERENCES `instruments` (`idinstruments`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
