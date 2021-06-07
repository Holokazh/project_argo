-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour project_argo
CREATE DATABASE IF NOT EXISTS `project_argo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `project_argo`;

-- Listage de la structure de la table project_argo. argonaute
CREATE TABLE IF NOT EXISTS `argonaute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table project_argo.argonaute : ~48 rows (environ)
/*!40000 ALTER TABLE `argonaute` DISABLE KEYS */;
INSERT INTO `argonaute` (`id`, `nom`, `created_at`) VALUES
	(81, 'Eleftheria', '2021-06-07 15:17:58'),
	(82, 'Gennadios', '2021-06-07 15:18:04'),
	(83, 'Lysimachos', '2021-06-07 15:18:12'),
	(84, 'Charalampos', '2021-06-07 15:18:19'),
	(85, 'Agénor', '2021-06-07 15:19:47'),
	(86, 'Astyanax', '2021-06-07 15:20:03'),
	(87, 'Gérasime', '2021-06-07 15:20:13'),
	(88, 'Irénée', '2021-06-07 15:20:18'),
	(89, 'Eudoxe', '2021-06-07 15:20:22'),
	(90, 'Euripide', '2021-06-07 15:20:30'),
	(91, 'Eustathe', '2021-06-07 15:20:33'),
	(92, 'Eustrate', '2021-06-07 15:20:36'),
	(93, 'Zénobe', '2021-06-07 15:20:40'),
	(94, 'Zénodore', '2021-06-07 15:20:45'),
	(95, 'Théognoste', '2021-06-07 15:20:49'),
	(96, 'Théophane', '2021-06-07 15:20:53'),
	(97, 'Thrasybule', '2021-06-07 15:20:58'),
	(98, 'Hiéroclès', '2021-06-07 15:21:03'),
	(99, 'Justinien', '2021-06-07 15:21:10'),
	(100, 'Claudien', '2021-06-07 15:21:15'),
	(101, 'Cléon', '2021-06-07 15:21:18'),
	(102, 'Ctésias', '2021-06-07 15:21:22'),
	(103, 'Cronos', '2021-06-07 15:21:25'),
	(104, 'Constantin', '2021-06-07 15:21:32'),
	(105, 'Irénée', '2021-06-07 15:21:35'),
	(106, 'Lycurgue', '2021-06-07 15:21:41'),
	(107, 'Marius', '2021-06-07 15:21:45'),
	(108, 'Méthode', '2021-06-07 15:21:48'),
	(109, 'Métrophane', '2021-06-07 15:21:54'),
	(110, 'Moïse', '2021-06-07 15:21:58'),
	(111, 'Nazaire', '2021-06-07 15:22:06'),
	(112, 'Nicostrate', '2021-06-07 15:22:09'),
	(113, 'Xénophon', '2021-06-07 15:22:13'),
	(114, 'Othon', '2021-06-07 15:22:16'),
	(115, 'Ulysse', '2021-06-07 15:22:18'),
	(116, 'Zeus', '2021-06-07 15:40:17'),
	(147, 'Zeus', '2021-06-07 15:40:17'),
	(148, 'Zeus', '2021-06-07 15:40:17'),
	(149, 'Zeus', '2021-06-07 15:40:17'),
	(150, 'Zeus', '2021-06-07 15:40:17'),
	(151, 'Zeus', '2021-06-07 15:40:17'),
	(152, 'Zeus', '2021-06-07 15:40:17'),
	(153, 'Zeus', '2021-06-07 15:40:17'),
	(154, 'Zeus', '2021-06-07 15:40:17'),
	(155, 'Zeus', '2021-06-07 15:40:17'),
	(156, 'Zeus', '2021-06-07 15:40:17'),
	(157, 'Zeus', '2021-06-07 15:40:17'),
	(158, 'Zeus', '2021-06-07 15:40:17');
/*!40000 ALTER TABLE `argonaute` ENABLE KEYS */;

-- Listage de la structure de la table project_argo. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Listage des données de la table project_argo.doctrine_migration_versions : ~4 rows (environ)
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20210606144645', '2021-06-06 14:47:04', 21),
	('DoctrineMigrations\\Version20210607124912', '2021-06-07 12:52:38', 30),
	('DoctrineMigrations\\Version20210607125235', '2021-06-07 12:55:38', 27),
	('DoctrineMigrations\\Version20210607125516', '2021-06-07 12:55:38', 2);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
