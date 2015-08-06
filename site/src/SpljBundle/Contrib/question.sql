-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Client :  db518663206.db.1and1.com
-- Généré le :  Jeu 06 Août 2015 à 02:17
-- Version du serveur :  5.1.73-log
-- Version de PHP :  5.4.41-0+deb7u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `db518663206`
--

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_qcm` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `question`, `id_qcm`) VALUES
(1, 'Quel provider faut il utiliser', 1),
(2, 'On gère l’encryption des password via', 1),
(3, 'Les roles dans la base sont', 1),
(4, 'Quelle(s) française(s) a gagné Roland Garros sous l''ère Open ?', 2),
(5, 'Quel est le dernier  américain a avoir remporté l''US open ?', 2),
(6, 'Quel phénomène est responsable d''un cheveux abîmé ?', 5),
(7, 'Question mobile', 6),
(8, 'AngularJS définit un certain nombre de modules externes : parmi eux lequel permet de définir des services REST simplement ?', 7),
(9, 'Quelle librairie AngularJS utilise-t''il pour manipuler les éléments DOM HTML ?', 7),
(10, 'Quelle syntaxe permet d''afficher "Dupont" contenu dans l''attribut nom d''un objet personne définit dans le scope du contrôleur ?', 7),
(11, 'Comment peut-on indiquer plusieurs fichiers au player vidéo HTML5 ?', 8),
(12, 'Quelle balise n''est pas une nouveauté HTML 5 ?', 8),
(13, 'Où se trouve l''origine des coordonnées quand on dessine en Canvas ?', 8),
(14, 'Parmi les méthodes suivantes, laquelle appartient à l''API ''localStorage'' ?', 8),
(15, 'Parmi les événements suivants, quel est celui dont la cible ("target") n''est pas l''élément déplacé ?', 8),
(16, 'Quelle balise HTML permet d''héberger du JavaScript', 9),
(17, 'Quel affichage provoque le code suivant ?\r\nalert (null == undefined);\r\nalert (null === undefined);', 9),
(18, 'En Javascript, quel code permet de modifier le contenu de l''élément HTML suivant ?\r\n<p id="demo">Comment dit-on bonjour ?</p>', 9),
(19, 'Quel sera le contenu de la variable valeur suivante ?\r\nvar valeur = 99+true+100+"517"+false', 9),
(20, 'Dans quelle pièce de Molière le personnage d''Harpagon apparaît-il ?', 10),
(21, 'Dans quel roman de Balzac un père est-il abandonné par ses filles qu''il adore?', 10),
(22, 'Quel célèbre détective a été créé par Agatha Christie?', 10),
(23, 'Qui a écrit La Condition humaine ?', 10),
(24, 'Ville nouvelle créée par la volonté de Louis XIV, elle fut ville royale de 1682 à 1789.', 11),
(25, 'Dans quelle ville, qui est en même temps un département, trouve-t-on le point zéro des routes de France ?', 11),
(26, '"Capitale" de la coquille Saint-Jacques grâce à son port de pêche, l''un des meilleurs des Côtes d''Armor, cette commune et ses nombreux hameaux sont situés dans la baie de Saint-Brieuc. Où habitent les Réginiens ?', 11);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
