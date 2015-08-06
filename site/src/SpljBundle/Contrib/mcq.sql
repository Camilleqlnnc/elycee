-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Client :  db518663206.db.1and1.com
-- Généré le :  Jeu 06 Août 2015 à 02:16
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
-- Structure de la table `mcq`
--

CREATE TABLE IF NOT EXISTS `mcq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `nb_questions` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `mcq`
--

INSERT INTO `mcq` (`id`, `title`, `theme`, `user_id`, `nb_questions`, `status`) VALUES
(1, 'Connexion base de données', 'Sécurité', 4, 3, 0),
(2, 'Tennis', 'Sport', 4, 2, 1),
(3, 'Les cheveux', 'capilaire', 4, 2, 2),
(4, 'Les cheveux', 'capilaire', 4, 2, 2),
(5, 'Cheveux', 'capilaire', 4, 1, 2),
(6, 'test', 'thème', 4, 1, 2),
(7, 'AngularJS', 'Informatique', 4, 3, 1),
(8, 'HTML 5', 'Informatique', 4, 5, 1),
(9, 'Javascript', 'Informatique', 4, 4, 1),
(10, 'Littérature', 'Littérature', 6, 4, 1),
(11, 'Villes de France', 'Géographie', 6, 3, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
