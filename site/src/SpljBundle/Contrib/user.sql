-- phpMyAdmin SQL Dump
-- version 4.3.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2015 at 11:24 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `e_lycee`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `roles`, `username_canonical`, `email`, `email_canonical`, `enabled`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `credentials_expired`, `credentials_expire_at`) VALUES
(4, 'Albert', 'R5qleKPHgQWRfTnXAACeWGJ26PSKjd+GyVR6GXjaLtfIgoYLZLtzuidVNbyaK3DfOT8W61JBJrmnmryxnSZUfA==', '21432yayxdwgowwc8kgwcco4goc0gkg', 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'albert', 'albert.e@email.com', 'albert.e@email.com', 1, '2015-08-05 20:21:09', 0, 0, NULL, NULL, NULL, 0, NULL),
(5, 'Francoise', 'oTcjpp83MFl0KryIMfO+2iTKqslpjdkMpWs9ARl5uM1A6RPUwsRyF/JNcPfTt4pKt9Y6GTqEcQRfBuj78JbdIA==', '6rn4jcb01zwg088w00cckskockc4woo', 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 'francoise', 'f.Dolto@email.com', 'f.dolto@email.com', 1, '2015-08-05 19:21:19', 0, 0, NULL, NULL, NULL, 0, NULL),
(6, 'Basile', 'nsS+jcZo2vnpzZ+8BqvMD/UafojcLPmvnGxz1PcUz4ZnXeVAHiioqKdWNeKJmkw+qObyrMxLLXxJlDsAzhKO9w==', 'fn1xaygod40kw8oocgwcwc4o08gwkg8', 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'basile', 'basile@lechien.com', 'basile@lechien.com', 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL),
(7, 'Josie', '4w79nUeLoxFd310+C2mylNDGkNwJEmgMJv+CWBsNe6bCtZHjpzuvZw1P045kk7bn2Fh7kFj2Xl/l034xPGWVUw==', '6gcxuwk75zksogcwg4cs84soossgwgo', 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 'josie', 'josie.bellegosse@gmail.com', 'josie.bellegosse@gmail.com', 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL),
(8, 'andrea', 'hEZI3Aw/P7G7MLh0f6hveSh8aW6pJYxyq221AwuBWH329f02yJUnWdsB7CXkrPQUfTynbkFjYMywGsDNIinGnQ==', '23d9tci4qbtww40s4swskw00kcgc4ko', 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 'andrea', 'andrea.vuolo@email.com', 'andrea.vuolo@email.com', 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`), ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
