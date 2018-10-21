-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 21 oct. 2018 à 18:15
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données :  `sym4_dimitri`
--

CREATE DATABASE IF NOT EXISTS `sym4_dimitri` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sym4_dimitri`;

-- --------------------------------------------------------

--
-- Structure de la table `lesarticles`
--

DROP TABLE IF EXISTS `lesarticles`;
CREATE TABLE IF NOT EXISTS `lesarticles` (
  `idlesarticles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` varchar(250) NOT NULL,
  `thetext` text NOT NULL,
  `thedate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lesauteurs_idlesauteurs` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idlesarticles`),
  KEY `fk_lesarticles_lesauteurs_idx` (`lesauteurs_idlesauteurs`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lesarticles`
--

INSERT INTO `lesarticles` (`idlesarticles`, `thetitle`, `thetext`, `thedate`, `lesauteurs_idlesauteurs`) VALUES
(1, 'Belgique', 'La Belgique ou Royaume de Belgique, en néerlandais België et Koninkrijk België, en allemand Belgien et Königreich Belgien, est un pays d’Europe de l\'Ouest, bordé par la France, les Pays-Bas, l’Allemagne, le Luxembourg et la mer du Nord. \r\n\r\nPolitiquement, il s\'agit d’une monarchie constitutionnelle fédérale à régime parlementaire. Elle est l’un des six pays fondateurs de l’Union européenne dont elle accueille, dans sa capitale Bruxelles, les principales institutions (le Parlement européen, le Conseil de l’Union européenne et la Commission européenne), ainsi que celles d’autres organisations internationales comme l’OTAN. \r\n\r\nLa Belgique couvre une superficie de 30 528 km2 avec une population de 11 358 357 habitants au 1er janvier 20181, soit une densité de 372 habitants/km2.\r\n\r\nSituée à mi-chemin entre l’Europe germanique et l’Europe romane, la Belgique abrite principalement deux groupes linguistiques : les néerlandophones, membres de la Communauté flamande (qui constitue 57 % de la population), et les francophones, membres de la Communauté française (qui représente 43 % des Belges). De plus, il y a également un petit groupe de germanophones, officiellement reconnu, qui forme la Communauté germanophone. Les deux plus grandes régions belges sont la région néerlandophone de Flandre au nord et la région francophone de Wallonie au sud. \r\n\r\nLa Région de Bruxelles-Capitale, officiellement bilingue, est une enclave majoritairement francophone dans la Région flamande. La Communauté germanophone se situe dans l’est de la Wallonie. La diversité linguistique de la Belgique et ses conflits politiques connexes sont reflétés dans son histoire politique et son système de gouvernement complexe.', '2018-10-21 20:10:32', 1),
(2, 'Russie', 'La Russie, en forme longue la fédération de Russiea (en russe : ??????, Rossiab ; [forme longue] ?????????? ?????????, Rossiïskaïa Federatsiïac), est un État fédéral transcontinental dont le territoire est le plus vaste de la planète.\r\n\r\nSa population est estimée à 146,88 millions d’habitants en 20181. Le pays est à cheval sur l’Asie du Nord (74,7 % de sa superficie) et sur l’Europe (25,3 % de sa superficie, mais 78 % de ses habitants sont en Europe6). Son territoire s\'étend d’ouest en est (de Kaliningrad à Vladivostok) sur plus de 9 000 km pour une superficie de dix-sept millions de kilomètres carrés (17 000 000 km2) et compte onze fuseaux horaires. Sa capitale est Moscou, sa langue officielle le russe et sa monnaie le rouble. Bien qu’entourée de nombreuses mers et de deux océans, la Russie est caractérisée par un climat continental avec des milieux froids et hostiles sur la majeure partie du territoire.\r\n\r\nLa Russie dispose de ressources minières (houille, fer, nickel, diamant, etc.) et énergétiques (pétrole, gaz naturel, hydroélectricité) abondantes qui en font l’un des principaux producteurs et exportateurs mondiaux. Elle se dote, à l\'époque de l’URSS, d\'une industrie lourde puissante (aciéries, raffineries, industrie chimique, etc.). Les secteurs liés à l’armement, au nucléaire et à l’aérospatiale sont également fortement développés, ce qui a permis au pays de jouer un rôle pionnier dans la conquête de l\'espace.\r\n\r\nLa république socialiste fédérative soviétique de Russie (RSFSR) fut la plus importante des quinze républiques de l’Union des républiques socialistes soviétiques, dont elle constituait le noyau historique.', '2018-10-21 20:12:04', 2),
(3, 'Nouvelle-Zélande', 'La Nouvelle-Zélande, en anglais New Zealand, en maori Aotearoa, est un pays d\'Océanie, au sud-ouest de l\'océan Pacifique, constitué de deux îles principales (l\'île du Nord et l\'île du Sud), et de nombreuses îles beaucoup plus petites, notamment l\'île Stewart/Rakiura et les îles Chatham. Située à environ 2 000 km de l\'Australie dont elle est séparée par la mer de Tasman, la Nouvelle-Zélande est très isolée géographiquement. Cet isolement a permis le développement d\'une flore et d\'une faune endémiques très riches et variées, allant des kauri géants aux insectes weta en passant par les kaponga et le kiwi, ces deux derniers étant des symboles du pays.\r\n\r\nL\'histoire de ce pays est l\'une des plus courtes du monde, car il s\'agit d\'un des derniers territoires découverts par l\'Homme : en effet les Maori y sont arrivés entre 1050 et 13009, tandis que les Européens y débarquèrent en 1642. De 1788 à 1840, les îles de Nouvelle-Zélande font officiellement partie de la Nouvelle-Galles-du-Sud, le territoire devient par la suite une colonie britannique à part entière le 6 février 1840 — jour de la fête nationale néo-zélandaise — avec la signature du traité de Waitangi. La Nouvelle-Zélande devient indépendante le 26 septembre 1907 en devenant un dominion, puis accède à la pleine souveraineté en 1947 avec la ratification du Statut de Westminster de 1931. Elle maintient de forts liens avec le Royaume-Uni, ainsi qu\'avec l\'Australie (pays anglo-saxon le plus proche et partageant une partie de son histoire).\r\n\r\nLa Nouvelle-Zélande est depuis son indépendance une monarchie parlementaire, et est membre du Commonwealth. Le pouvoir politique est détenu par le Parlement démocratiquement élu. La langue nationale est l\'anglais, mais la langue des signes et le maori ont également un statut officiel, bien que peu utilisées. La capitale est Wellington et la plus grande ville Auckland. La monnaie est le dollar néo-zélandais. La population, estimée à environ 4 millions d\'habitants en 2013, est majoritairement d\'origine européenne, tandis que les Maoris forment la minorité la plus nombreuse. Les Polynésiens non maoris et les Asiatiques, représentent également d\'importantes minorités.', '2018-10-21 20:13:34', 3);

-- --------------------------------------------------------

--
-- Structure de la table `lesauteurs`
--

DROP TABLE IF EXISTS `lesauteurs`;
CREATE TABLE IF NOT EXISTS `lesauteurs` (
  `idlesauteurs` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lauteur` varchar(100) NOT NULL,
  `lepwd` varchar(100) NOT NULL,
  `lenomcomplet` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idlesauteurs`),
  UNIQUE KEY `lenom_UNIQUE` (`lauteur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lesauteurs`
--

INSERT INTO `lesauteurs` (`idlesauteurs`, `lauteur`, `lepwd`, `lenomcomplet`) VALUES
(1, 'Fred', 'Fred', 'Pielot Fred'),
(2, 'James', 'James', 'Hensolart James'),
(3, 'Naïma', 'Naïma', 'Ben Amid Naïma');

-- --------------------------------------------------------

--
-- Structure de la table `thesections`
--

DROP TABLE IF EXISTS `thesections`;
CREATE TABLE IF NOT EXISTS `thesections` (
  `idthesections` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `letitre` varchar(120) NOT NULL,
  `thedesc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idthesections`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `thesections`
--

INSERT INTO `thesections` (`idthesections`, `letitre`, `thedesc`) VALUES
(1, 'Amérique du Nord', 'L’Amérique du Nord est un sous-continent de l\'Amérique.\r\n\r\nElle est entourée par l\'océan Pacifique à l\'ouest, l\'océan Arctique au nord et l\'océan Atlantique à l\'est. L\'isthme de l\'Amérique centrale le relie à l\'Amérique du Sud. Les Caraïbes, région quelquefois incluse dans l\'Amérique du Nord, ferment le Golfe du Mexique.'),
(2, 'Amérique du Sud', 'L’Amérique du Sud est un sous-continent et la partie méridionale de l\'Amérique, selon le point de vue. Le sous-continent est situé entièrement dans l\'hémisphère ouest et principalement dans l\'hémisphère sud.'),
(3, 'Antarctique', 'L\'Antarctique (prononcé /?~.ta?k.tik/, ou aussi /?~.ta?.tik/), parfois appelé « le Continent Austral » ou « le Continent Blanc », est le continent le plus méridional de la Terre. Situé autour du pôle Sud, il est entouré de l\'océan Austral (ou océan Antarctique) et bordé par les mers de Ross et de Weddell.'),
(4, 'Asie', 'L\'Asie (dont le nom vient d\'une racine sémitique « esch », désigne le lieu où se lève le Soleil) est un des sept continents ou une partie des supercontinents Eurasie ou Afro-Eurasie de la Terre.'),
(5, 'Europe', 'L’Europe est considérée politiquement comme un continent ou géographiquement comme une partie des supercontinents de l\'Eurasie et de l\'Afro-Eurasie. Elle est parfois appelée le « Vieux Continent », par opposition au « Nouveau Monde » (l\'Amérique).'),
(6, 'Afrique', 'L’Afrique est un continent qui couvre 6 % de la surface terrestre et 20 % de la surface des terres émergées. Sa superficie est de 30 415 873 km2 avec les îles, ce qui en fait la troisième mondiale si l\'on compte l\'Amérique comme un seul continent.'),
(7, 'Océanie', 'L’Océanie est une région du monde qui n\'est pas un continent stricto sensu. Cependant, cette région étant souvent assimilée à un continent par les géographes, on peut considérer cette partie du monde comme le moins étendu des continents émergés de la Terre.');

-- --------------------------------------------------------

--
-- Structure de la table `thesections_has_lesarticles`
--

DROP TABLE IF EXISTS `thesections_has_lesarticles`;
CREATE TABLE IF NOT EXISTS `thesections_has_lesarticles` (
  `thesections_idthesections` int(10) UNSIGNED NOT NULL,
  `lesarticles_idlesarticles` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`thesections_idthesections`,`lesarticles_idlesarticles`),
  KEY `fk_thesections_has_lesarticles_lesarticles1_idx` (`lesarticles_idlesarticles`),
  KEY `fk_thesections_has_lesarticles_thesections1_idx` (`thesections_idthesections`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `thesections_has_lesarticles`
--

INSERT INTO `thesections_has_lesarticles` (`thesections_idthesections`, `lesarticles_idlesarticles`) VALUES
(5, 1),
(4, 2),
(5, 2),
(7, 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `lesarticles`
--
ALTER TABLE `lesarticles`
  ADD CONSTRAINT `fk_lesarticles_lesauteurs` FOREIGN KEY (`lesauteurs_idlesauteurs`) REFERENCES `lesauteurs` (`idlesauteurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `thesections_has_lesarticles`
--
ALTER TABLE `thesections_has_lesarticles`
  ADD CONSTRAINT `fk_thesections_has_lesarticles_lesarticles1` FOREIGN KEY (`lesarticles_idlesarticles`) REFERENCES `lesarticles` (`idlesarticles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_thesections_has_lesarticles_thesections1` FOREIGN KEY (`thesections_idthesections`) REFERENCES `thesections` (`idthesections`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
