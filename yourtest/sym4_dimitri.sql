-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- H�te : 127.0.0.1:3306
-- G�n�r� le :  Dim 21 oct. 2018 � 18:15
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de donn�es :  `sym4_dimitri`
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
-- D�chargement des donn�es de la table `lesarticles`
--

INSERT INTO `lesarticles` (`idlesarticles`, `thetitle`, `thetext`, `thedate`, `lesauteurs_idlesauteurs`) VALUES
(1, 'Belgique', 'La Belgique ou Royaume de Belgique, en n�erlandais Belgi� et Koninkrijk Belgi�, en allemand Belgien et K�nigreich Belgien, est un pays d�Europe de l\'Ouest, bord� par la France, les Pays-Bas, l�Allemagne, le Luxembourg et la mer du Nord. \r\n\r\nPolitiquement, il s\'agit d�une monarchie constitutionnelle f�d�rale � r�gime parlementaire. Elle est l�un des six pays fondateurs de l�Union europ�enne dont elle accueille, dans sa capitale Bruxelles, les principales institutions (le Parlement europ�en, le Conseil de l�Union europ�enne et la Commission europ�enne), ainsi que celles d�autres organisations internationales comme l�OTAN. \r\n\r\nLa Belgique couvre une superficie de 30 528 km2 avec une population de 11 358 357 habitants au 1er janvier 20181, soit une densit� de 372 habitants/km2.\r\n\r\nSitu�e � mi-chemin entre l�Europe germanique et l�Europe romane, la Belgique abrite principalement deux groupes linguistiques : les n�erlandophones, membres de la Communaut� flamande (qui constitue 57 % de la population), et les francophones, membres de la Communaut� fran�aise (qui repr�sente 43 % des Belges). De plus, il y a �galement un petit groupe de germanophones, officiellement reconnu, qui forme la Communaut� germanophone. Les deux plus grandes r�gions belges sont la r�gion n�erlandophone de Flandre au nord et la r�gion francophone de Wallonie au sud. \r\n\r\nLa R�gion de Bruxelles-Capitale, officiellement bilingue, est une enclave majoritairement francophone dans la R�gion flamande. La Communaut� germanophone se situe dans l�est de la Wallonie. La diversit� linguistique de la Belgique et ses conflits politiques connexes sont refl�t�s dans son histoire politique et son syst�me de gouvernement complexe.', '2018-10-21 20:10:32', 1),
(2, 'Russie', 'La Russie, en forme longue la f�d�ration de Russiea (en russe : ??????, Rossiab ; [forme longue] ?????????? ?????????, Rossi�ska�a Federatsi�ac), est un �tat f�d�ral transcontinental dont le territoire est le plus vaste de la plan�te.\r\n\r\nSa population est estim�e � 146,88 millions d�habitants en 20181. Le pays est � cheval sur l�Asie du Nord (74,7 % de sa superficie) et sur l�Europe (25,3 % de sa superficie, mais 78 % de ses habitants sont en Europe6). Son territoire s\'�tend d�ouest en est (de Kaliningrad � Vladivostok) sur plus de 9 000 km pour une superficie de dix-sept millions de kilom�tres carr�s (17 000 000 km2) et compte onze fuseaux horaires. Sa capitale est Moscou, sa langue officielle le russe et sa monnaie le rouble. Bien qu�entour�e de nombreuses mers et de deux oc�ans, la Russie est caract�ris�e par un climat continental avec des milieux froids et hostiles sur la majeure partie du territoire.\r\n\r\nLa Russie dispose de ressources mini�res (houille, fer, nickel, diamant, etc.) et �nerg�tiques (p�trole, gaz naturel, hydro�lectricit�) abondantes qui en font l�un des principaux producteurs et exportateurs mondiaux. Elle se dote, � l\'�poque de l�URSS, d\'une industrie lourde puissante (aci�ries, raffineries, industrie chimique, etc.). Les secteurs li�s � l�armement, au nucl�aire et � l�a�rospatiale sont �galement fortement d�velopp�s, ce qui a permis au pays de jouer un r�le pionnier dans la conqu�te de l\'espace.\r\n\r\nLa r�publique socialiste f�d�rative sovi�tique de Russie (RSFSR) fut la plus importante des quinze r�publiques de l�Union des r�publiques socialistes sovi�tiques, dont elle constituait le noyau historique.', '2018-10-21 20:12:04', 2),
(3, 'Nouvelle-Z�lande', 'La Nouvelle-Z�lande, en anglais New Zealand, en maori Aotearoa, est un pays d\'Oc�anie, au sud-ouest de l\'oc�an Pacifique, constitu� de deux �les principales (l\'�le du Nord et l\'�le du Sud), et de nombreuses �les beaucoup plus petites, notamment l\'�le Stewart/Rakiura et les �les Chatham. Situ�e � environ 2 000 km de l\'Australie dont elle est s�par�e par la mer de Tasman, la Nouvelle-Z�lande est tr�s isol�e g�ographiquement. Cet isolement a permis le d�veloppement d\'une flore et d\'une faune end�miques tr�s riches et vari�es, allant des kauri g�ants aux insectes weta en passant par les kaponga et le kiwi, ces deux derniers �tant des symboles du pays.\r\n\r\nL\'histoire de ce pays est l\'une des plus courtes du monde, car il s\'agit d\'un des derniers territoires d�couverts par l\'Homme : en effet les Maori y sont arriv�s entre 1050 et 13009, tandis que les Europ�ens y d�barqu�rent en 1642. De 1788 � 1840, les �les de Nouvelle-Z�lande font officiellement partie de la Nouvelle-Galles-du-Sud, le territoire devient par la suite une colonie britannique � part enti�re le 6 f�vrier 1840 � jour de la f�te nationale n�o-z�landaise � avec la signature du trait� de Waitangi. La Nouvelle-Z�lande devient ind�pendante le 26 septembre 1907 en devenant un dominion, puis acc�de � la pleine souverainet� en 1947 avec la ratification du Statut de Westminster de 1931. Elle maintient de forts liens avec le Royaume-Uni, ainsi qu\'avec l\'Australie (pays anglo-saxon le plus proche et partageant une partie de son histoire).\r\n\r\nLa Nouvelle-Z�lande est depuis son ind�pendance une monarchie parlementaire, et est membre du Commonwealth. Le pouvoir politique est d�tenu par le Parlement d�mocratiquement �lu. La langue nationale est l\'anglais, mais la langue des signes et le maori ont �galement un statut officiel, bien que peu utilis�es. La capitale est Wellington et la plus grande ville Auckland. La monnaie est le dollar n�o-z�landais. La population, estim�e � environ 4 millions d\'habitants en 2013, est majoritairement d\'origine europ�enne, tandis que les Maoris forment la minorit� la plus nombreuse. Les Polyn�siens non maoris et les Asiatiques, repr�sentent �galement d\'importantes minorit�s.', '2018-10-21 20:13:34', 3);

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
-- D�chargement des donn�es de la table `lesauteurs`
--

INSERT INTO `lesauteurs` (`idlesauteurs`, `lauteur`, `lepwd`, `lenomcomplet`) VALUES
(1, 'Fred', 'Fred', 'Pielot Fred'),
(2, 'James', 'James', 'Hensolart James'),
(3, 'Na�ma', 'Na�ma', 'Ben Amid Na�ma');

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
-- D�chargement des donn�es de la table `thesections`
--

INSERT INTO `thesections` (`idthesections`, `letitre`, `thedesc`) VALUES
(1, 'Am�rique du Nord', 'L�Am�rique du Nord est un sous-continent de l\'Am�rique.\r\n\r\nElle est entour�e par l\'oc�an Pacifique � l\'ouest, l\'oc�an Arctique au nord et l\'oc�an Atlantique � l\'est. L\'isthme de l\'Am�rique centrale le relie � l\'Am�rique du Sud. Les Cara�bes, r�gion quelquefois incluse dans l\'Am�rique du Nord, ferment le Golfe du Mexique.'),
(2, 'Am�rique du Sud', 'L�Am�rique du Sud est un sous-continent et la partie m�ridionale de l\'Am�rique, selon le point de vue. Le sous-continent est situ� enti�rement dans l\'h�misph�re ouest et principalement dans l\'h�misph�re sud.'),
(3, 'Antarctique', 'L\'Antarctique (prononc� /?~.ta?k.tik/, ou aussi /?~.ta?.tik/), parfois appel� � le Continent Austral � ou � le Continent Blanc �, est le continent le plus m�ridional de la Terre. Situ� autour du p�le Sud, il est entour� de l\'oc�an Austral (ou oc�an Antarctique) et bord� par les mers de Ross et de Weddell.'),
(4, 'Asie', 'L\'Asie (dont le nom vient d\'une racine s�mitique � esch �, d�signe le lieu o� se l�ve le Soleil) est un des sept continents ou une partie des supercontinents Eurasie ou Afro-Eurasie de la Terre.'),
(5, 'Europe', 'L�Europe est consid�r�e politiquement comme un continent ou g�ographiquement comme une partie des supercontinents de l\'Eurasie et de l\'Afro-Eurasie. Elle est parfois appel�e le � Vieux Continent �, par opposition au � Nouveau Monde � (l\'Am�rique).'),
(6, 'Afrique', 'L�Afrique est un continent qui couvre 6 % de la surface terrestre et 20 % de la surface des terres �merg�es. Sa superficie est de 30 415 873 km2 avec les �les, ce qui en fait la troisi�me mondiale si l\'on compte l\'Am�rique comme un seul continent.'),
(7, 'Oc�anie', 'L�Oc�anie est une r�gion du monde qui n\'est pas un continent stricto sensu. Cependant, cette r�gion �tant souvent assimil�e � un continent par les g�ographes, on peut consid�rer cette partie du monde comme le moins �tendu des continents �merg�s de la Terre.');

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
-- D�chargement des donn�es de la table `thesections_has_lesarticles`
--

INSERT INTO `thesections_has_lesarticles` (`thesections_idthesections`, `lesarticles_idlesarticles`) VALUES
(5, 1),
(4, 2),
(5, 2),
(7, 3);

--
-- Contraintes pour les tables d�charg�es
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
