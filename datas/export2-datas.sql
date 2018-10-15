-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 15 oct. 2018 à 12:28
-- Version du serveur :  5.7.21
-- Version de PHP :  7.2.4

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données :  `prepatestsymfony4`
--

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`idarticles`, `thetitle`, `thetext`, `thedate`, `users_idusers`) VALUES
(1, 'PHP 7.3.0 est disponible en version alpha 1 et intègre de nouvelles fonctionnalités', 'PHP serait le langage de programmation web côté serveur le plus utilisé au monde. Selon un rapport de la W3Techs de 2017, plus de 80 % des sites et applications web l\'utilisent. C\'est un langage de script populaire assez flexible et pragmatique. Depuis la sortie de la première version en 1994, bien d\'autres versions ont vu le jour. Et à l\'instar de tous les autres langages, il évolue et apporte régulièrement de nouvelles fonctionnalités et des corrections de bogues. Sa dernière version stable, la 7.2.6, est sortie le 25 mai 2018. Et maintenant, PHP annonce la disponibilité de sa version 7.3.0 alpha 1 depuis le 7 juin 2018. Bien que cette préversion de test ne peut pas être utilisée en production, les développeurs PHP peuvent déjà la tester et reporter les bogues et améliorations qu\'ils souhaitent avoir pour la prochaine version stable dont la sortie est prévue pour la fin de l\'année 2018. \r\n\r\nAprès la sortie de cette première préversion de test, les développeurs de PHP prévoient la sortie de trois versions alpha et trois versions bêta vers mi-août 2018 puis six versions admissibles (pre-release), la RC, qui sortiront à chaque deux semaines. Après cela, la version stable 7.3.0 pourra être disponible le 29 novembre 2018 selon le calendrier établi. Déjà dans cette préversion de test 7.3.0 alpha 1, de nouvelles fonctionnalités sont à noter. Dans le core, la fonction net_get_interfaces() est disponible pour permettre de lister les cartes réseau disponibles dans le système d\'exploitation. Une nouvelle méthode a été ajoutée à la classe Date : DateTime::createFromImmutable(). Le drapeau JSON_THROW_ON_ERROR a été ajouté à JSON. Pour SQLite3, libsqlite a été mis à jour vers la version 3.24.0. La fonction openssl_pkey_derive a été ajoutée pour OpenSSL.\r\n\r\nPlusieurs bogues ont également été corrigés et parmi eux nous avons notamment :\r\n#75683 (manque de mémoire dans zend_register_functions() en mode ZTS) ;\r\n#74860 (les exceptions non interceptées ne sont pas formatées correctement lorsque error_log est défini sur syslog) ;\r\n#53033 (les opérations mathématiques convertissent les objets en entier) ;\r\n#75765 (erreur fatale au lieu de l\'exception erreur lorsque la classe parente n\'est pas trouvée) ;\r\n#74941 (la session ne démarre pas après l\'envoi des headers).', '2018-10-15 14:27:04', 1),
(2, 'PDO Mysql affiche echo', 'Bonjour,\r\n\r\nJ\'ai un code PDO Mysql pour ajouter des datas d\'une base dans une autre en vérifiant une condition si le code existe déjà.\r\nMon code fonctionne bien, cependant, je n\'arrive pas à mettre un simple ECHO pour dire par exemple \"enregistrement effectué\".\r\nDans mon code, la requête fonctionne et ajoute bien en base mais dès que je mets mon ECHO, il me l\'affiche directement en texte\r\ndans la page sans avoir cliqué sur mon bouton submit.', '2018-10-15 14:31:06', 2);

--
-- Déchargement des données de la table `sections`
--

INSERT INTO `sections` (`idsections`, `thetitled`, `thedesc`) VALUES
(1, 'PHP', 'PHP: Hypertext Preprocessor'),
(2, 'MySQL', 'système de gestion de bases de données relationnelles (SGBDR)'),
(3, 'HTML / CSS', 'L\'HyperText Markup Language, est le langage de balisage conçu pour représenter les pages web. \r\nCSS est le style en cascade'),
(4, 'Node.js', 'Node.js est une plateforme logicielle libre et événementielle en JavaScript orientée vers les applications réseau qui doivent pouvoir monter en charge.'),
(5, 'JavaScript ', 'JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives');

--
-- Déchargement des données de la table `sections_has_articles`
--

INSERT INTO `sections_has_articles` (`sections_idsections`, `articles_idarticles`) VALUES
(1, 1),
(1, 2),
(2, 2);

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idusers`, `thelogin`, `thepwd`, `therealname`) VALUES
(1, 'admin', '$2y$10$v.EBHJDQt9ZjVkgkPXLLd.TUdrdjs55enFelG.QcynBsYPo3PUpIK', 'Pitz Michaël'),
(2, 'user1', '$2y$10$QtDjQhwp7uVeI6tsIcXHD.pxkeDWJWBqiPZFRpmF7FFnJ7Ojw8Ti.', 'Hulot Nicolas');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;