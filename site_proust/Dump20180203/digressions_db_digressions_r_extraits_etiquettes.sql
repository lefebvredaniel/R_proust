-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: digressions_db
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `digressions_r_extraits_etiquettes`
--

DROP TABLE IF EXISTS `digressions_r_extraits_etiquettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digressions_r_extraits_etiquettes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etiquettes_id_id` int(11) NOT NULL,
  `extraits_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `digressions_r_extrai_etiquettes_id_id_e162c9dd_fk_digressio` (`etiquettes_id_id`),
  KEY `digressions_r_extrai_extraits_id_id_c53fe118_fk_digressio` (`extraits_id_id`),
  CONSTRAINT `digressions_r_extrai_etiquettes_id_id_e162c9dd_fk_digressio` FOREIGN KEY (`etiquettes_id_id`) REFERENCES `digressions_etiquettes` (`id`),
  CONSTRAINT `digressions_r_extrai_extraits_id_id_c53fe118_fk_digressio` FOREIGN KEY (`extraits_id_id`) REFERENCES `digressions_extraits` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digressions_r_extraits_etiquettes`
--

LOCK TABLES `digressions_r_extraits_etiquettes` WRITE;
/*!40000 ALTER TABLE `digressions_r_extraits_etiquettes` DISABLE KEYS */;
INSERT INTO `digressions_r_extraits_etiquettes` VALUES (1,1,1),(3,4,1),(10,5,5),(11,4,5),(12,3,6),(13,4,6),(14,2,7),(15,3,7),(16,4,7),(17,4,8),(18,1,8),(20,6,8),(21,7,9),(22,4,9),(23,8,9),(24,9,9),(25,4,10),(26,10,10),(27,11,10),(28,12,10),(29,4,11),(30,13,11),(31,14,11),(32,4,12),(33,15,12);
/*!40000 ALTER TABLE `digressions_r_extraits_etiquettes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-03 17:01:18
