-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.4.25-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win64
-- HeidiSQL Versione:            12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dump della struttura del database jerome_aws_database
CREATE DATABASE IF NOT EXISTS `jerome_aws_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `jerome_aws_database`;

-- Dump della struttura di tabella jerome_aws_database.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password_bcrypt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella jerome_aws_database.users: ~3 rows (circa)
INSERT INTO `users` (`id`, `username`, `email`, `password_bcrypt`) VALUES
	(1, 'admin', 'jerome@gmail.com', '$2y$10$4PPcxyTtqxKC.Y1lGxzT1.RZ2GGJMPFXh\\/OAIBUIH\\/mmEpf1UfghS'),
	(2, 'profpreve', 'profpreve@gmail.com', '$2y$10$6vo8VuwpCVhw\\/00xU5RsiudOfPCT.l75MH7syJRIUTgT93mVIPcNO'),
	(3, 'profruben', 'profruben@gmail.com', '$2y$10$\\/sX2dyjL.UNuo6TbLlyjOeyU8SYnu\\/YET\\/sfwFPaHHw3wu0aKZ7mS');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
