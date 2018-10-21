-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 21 oct. 2018 à 18:44
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données :  `sym4_shaban`
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
-- Déchargement des données de la table `familles`
--

INSERT INTO `familles` (`idfamilles`, `lintitule`, `breve`) VALUES
(1, 'Cordes', 'Les cordes peuvent être utilisées pour fabriquer des sons.\r\n\r\nLa corde est tendue sur un cadre (piano) ou un manche (guitare, contrebassine, instruments à cordes…), lequel est fixé contre une caisse.\r\n\r\nLe musicien imprime de l\'énergie à la corde en la frottant (archet), en la tapant (marteau), ou en la pinçant. La corde tendue ne peut pas se déformer pour absorber l\'énergie, alors cette dernière est transformée en ondes.'),
(2, 'Bois', 'La famille des bois désigne les instruments de musique dont le son est, ou était, émis par une pièce en bois. Même si l\'instrument est en métal, c\'est ce qui fait le son qui détermine la famille de l\'instrument.'),
(3, 'Cuivres', 'En musique, les cuivres forment une famille d\'instruments à vent. Dans un cuivre les mouvements des lèvres posées sur l\'embouchure font vibrer l\'air expiré ce qui produit un son. De ce fait le saxophone où c\'est une anche qui fait vibrer l\'air n\'est pas un cuivre mais un bois.'),
(4, 'Percussions', 'La famille des percussions désigne les instruments de musique dont le son est émis lorsque l\'instrument est frappé, secoué ou gratté.');

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
-- Déchargement des données de la table `instruments`
--

INSERT INTO `instruments` (`idinstruments`, `intitule`, `ladesc`, `parution`, `redacteur_idredacteur`) VALUES
(1, 'Djembé', 'Un djembé est un instrument de percussion africain composé d\'un fût de bois en forme de calice sur lequel est montée une peau de chèvre ou d\'antilope tendue à l\'aide d\'un système de tension (originellement des chevilles en bois ou des cordes en peaux, maintenant le plus souvent utilisées sont des cordes synthétiques et des anneaux en fer à béton), que l\'on joue à mains nues et dont le spectre sonore très large génère une grande richesse de timbre. La forme évasée du fût viendrait de celle du mortier à piler le grain.\r\n\r\n\r\nIl vient de l\'Afrique de l\'Ouest, créé au sein de l\'Empire Mandingue, dit aussi Empire du Mali, mis en place par Soundiata Keïta au xiiie siècle, qui s\'étendait de la Guinée à l\'est du Mali, et au nord de la Côte d\'Ivoire en passant par le Burkina Faso.\r\n\r\nLe djembé, appelé par les Soussous de Guinée « boté », fait partie d\'un ensemble polyrythmique, et ne s\'entend que très rarement seul. Les membres de cet instrumentarium sont le doundounba, le sangban, le kenkeni, plusieurs djembés d\'accompagnement et un djembé soliste. De plus, il est presque indissociable de la danse africaine dont les phrases du soliste marquent les pas.', '2018-10-21 20:39:33', 2),
(2, 'Saxophone', 'Le saxophone est un instrument de musique à vent appartenant à la famille des bois. Il a été inventé par le Belge Adolphe Sax et breveté à Paris le 21 mars 1846.\r\n\r\nIl ne doit pas être confondu avec le saxhorn, de la famille des cuivres, mis au point, lui aussi, par Adolphe Sax. Le saxophone est généralement en laiton, bien qu\'il en existe certains en cuivre, en argent, en plastique ou plaqués en or.\r\n\r\nLe corps du saxophone est composé de trois parties trouées ou collées réalisées en laiton : le corps conique, le pavillon et la culasse reliant les deux. Les clés (au nombre de 19 à 22 selon les membres de la famille et le modèle) commandent l\'ouverture et la fermeture des trous latéraux percés sur le corps (ou cheminées). L\'extrémité haute du corps est prolongée horizontalement par le bocal (démontable) qui porte le bec (en ébonite, en métal, en bois, ou encore depuis peu en plastique ABS par impression 3D), équipé d\'une anche simple attachée avec une ligature. Il existe différentes sortes de bec permettant d\'obtenir le son souhaité en modifiant l\'ouverture et la forme du bec (bec classique, bec jazz...), ainsi que différentes sortes de ligatures (métal, cuir, cuir avec lamelle d\'or, d\'argent, etc.).\r\n\r\nLe son du saxophone est produit à l\'aide du bec et de l\'anche (en général en roseau, mais peut être aussi en matière synthétique). C\'est la vibration de l\'anche sur la facette du bec qui permet l\'émission du son par mise en vibration de la colonne d\'air contenue dans le corps de l\'instrument.', '2018-10-21 20:40:53', 1),
(3, 'Cornemuse', 'La cornemuse est un instrument de musique à vent et plus particulièrement à anches. Il en existe plus d\'une centaine de types dans le monde. Sa répartition géographique correspond à l\'Europe entière, au Caucase, au Maghreb, au golfe Persique et va jusqu\'à l\'Inde du Nord.\r\n\r\nLes origines de la cornemuse sont lointaines et difficiles à déterminer étant donné le peu de preuves archéologiques dont on dispose aujourd\'hui. Elle est mentionnée dès l\'époque gréco-romaine : les Grecs l\'appelaient ?s?a???? / áskaulos et chez les Romains elle se nommait tibia utricularis. \r\n\r\nOn suppose que la cornemuse prendrait ses origines en Égypte antique car de nombreuses représentations de chalumeaux doubles, tant chez les Grecs (aulos bicalame, de calamus = roseau en latin) que chez les Égyptiens montrent l\'importance de cet instrument. \r\n\r\nDes débris de ce dernier ont été retrouvés dans des pyramides égyptiennes datant d\'environ 300 ans av. J.-C. Aristophane (˜450-386 av. J.-C.) poète comique d\'Athènes s\'en moquait déjà. \r\n\r\nEn théorie, il serait arrivé en Europe grâce aux Grecs, puis aux Romains et au commerce avec les Celtes tout autour du bassin méditerranéen. En effet, d\'après Procope (fin ve s. – vers 562) cet instrument aurait été l\'instrument de marche des légions romaines. \r\n\r\nMais rien ne permet de conforter cette théorie au vu du peu de témoignages dont nous disposons.', '2018-10-21 20:42:51', 1);

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
-- Déchargement des données de la table `instruments_has_familles`
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
-- Déchargement des données de la table `redacteur`
--

INSERT INTO `redacteur` (`idredacteur`, `surnom`, `thepwd`, `cname`) VALUES
(1, 'Patricia', 'Patricia', 'Kalogera Patricia'),
(2, 'Kris', 'Kris', 'Petersen Kris');

--
-- Contraintes pour les tables déchargées
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
