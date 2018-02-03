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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-01-13 11:47:32.417890','1','songe',1,'[{\"added\": {}}]',24,2),(2,'2018-01-13 11:47:39.627535','2','jalousir',1,'[{\"added\": {}}]',24,2),(3,'2018-01-13 11:47:47.792125','2','jalousie',2,'[{\"changed\": {\"fields\": [\"etiquettes_nom\"]}}]',24,2),(4,'2018-01-13 11:47:50.669920','2','jalousie',2,'[]',24,2),(5,'2018-01-13 11:47:58.755109','3','amour',1,'[{\"added\": {}}]',24,2),(6,'2018-01-13 11:48:11.457196','4','du coté de chez Swann',1,'[{\"added\": {}}]',24,2),(7,'2018-01-13 11:48:39.042525','1','content1',1,'[{\"added\": {}}]',25,2),(8,'2018-01-13 11:49:03.135068','2','content2',1,'[{\"added\": {}}]',25,2),(9,'2018-01-13 11:49:27.278849','3','content 3 jalousie',1,'[{\"added\": {}}]',25,2),(10,'2018-01-13 11:49:42.014752','2','content2 amour',2,'[{\"changed\": {\"fields\": [\"extraits_content\"]}}]',25,2),(11,'2018-01-13 11:49:45.679003','2','content2 amour',2,'[]',25,2),(12,'2018-01-13 11:49:54.957833','1','content1 songe',2,'[{\"changed\": {\"fields\": [\"extraits_content\"]}}]',25,2),(13,'2018-01-13 11:50:15.159587','4','content 4 amour',1,'[{\"added\": {}}]',25,2),(14,'2018-01-13 11:50:36.194300','1','R_Extraits_Etiquettes object (1)',1,'[{\"added\": {}}]',26,2),(15,'2018-01-13 11:50:49.693823','2','R_Extraits_Etiquettes object (2)',1,'[{\"added\": {}}]',26,2),(16,'2018-01-13 11:50:56.937312','3','R_Extraits_Etiquettes object (3)',1,'[{\"added\": {}}]',26,2),(17,'2018-01-13 11:51:10.807803','4','R_Extraits_Etiquettes object (4)',1,'[{\"added\": {}}]',26,2),(18,'2018-01-13 11:51:23.215023','5','R_Extraits_Etiquettes object (5)',1,'[{\"added\": {}}]',26,2),(19,'2018-01-13 11:52:08.313560','5','R_Extraits_Etiquettes object (5)',2,'[{\"changed\": {\"fields\": [\"extraits_id\", \"etiquettes_id\"]}}]',26,2),(20,'2018-01-13 11:52:14.831516','6','R_Extraits_Etiquettes object (6)',1,'[{\"added\": {}}]',26,2),(21,'2018-01-13 11:52:22.725088','7','R_Extraits_Etiquettes object (7)',1,'[{\"added\": {}}]',26,2),(22,'2018-01-13 11:52:29.151716','8','R_Extraits_Etiquettes object (8)',1,'[{\"added\": {}}]',26,2),(23,'2018-01-14 18:13:44.451384','8','R_Extraits_Etiquettes object (8)',2,'[]',26,2),(24,'2018-01-14 18:13:48.262702','8','R_Extraits_Etiquettes object (8)',2,'[]',26,2),(25,'2018-01-14 18:13:50.186338','8','R_Extraits_Etiquettes object (8)',2,'[]',26,2),(26,'2018-01-14 18:13:51.763715','8','R_Extraits_Etiquettes object (8)',2,'[]',26,2),(27,'2018-01-15 18:29:22.314941','9','R_Extraits_Etiquettes object (9)',2,'[]',26,2),(28,'2018-01-15 18:29:45.004660','10','R_Extraits_Etiquettes object (10)',1,'[{\"added\": {}}]',26,2),(29,'2018-01-15 18:29:56.855512','11','R_Extraits_Etiquettes object (11)',1,'[{\"added\": {}}]',26,2),(30,'2018-01-15 18:33:04.264498','6','les premiers moments de l\'amour',1,'[{\"added\": {}}]',25,2),(31,'2018-01-15 18:33:56.533767','12','R_Extraits_Etiquettes object (12)',1,'[{\"added\": {}}]',26,2),(32,'2018-01-15 18:34:06.193942','13','R_Extraits_Etiquettes object (13)',1,'[{\"added\": {}}]',26,2),(33,'2018-01-15 18:35:08.722498','7','jalousie',1,'[{\"added\": {}}]',25,2),(34,'2018-01-15 18:35:51.913506','14','R_Extraits_Etiquettes object (14)',1,'[{\"added\": {}}]',26,2),(35,'2018-01-15 18:36:06.567417','15','R_Extraits_Etiquettes object (15)',1,'[{\"added\": {}}]',26,2),(36,'2018-01-15 18:36:15.468134','16','R_Extraits_Etiquettes object (16)',1,'[{\"added\": {}}]',26,2),(37,'2018-01-15 18:37:37.273693','4','amour titre',3,'',25,2),(38,'2018-01-15 18:37:51.263228','2','amour titre',3,'',25,2),(39,'2018-01-15 18:37:59.740291','3','jalousie titre',3,'',25,2),(40,'2018-01-15 18:39:46.270409','1','songe',2,'[{\"changed\": {\"fields\": [\"extraits_content\", \"extraits_titre\", \"pub_date\"]}}]',25,2),(41,'2018-01-27 16:05:11.514719','8','sommeil',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (17)\"}}]',25,2),(42,'2018-01-27 16:16:36.255189','8','sommeil',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (18)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (19)\"}}]',25,2),(43,'2018-01-27 16:16:53.526529','8','sommeil',2,'[{\"deleted\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (None)\"}}]',25,2),(44,'2018-01-27 16:17:52.539988','8','sommeil',2,'[]',25,2),(45,'2018-01-27 16:39:10.928669','6','sommeil',1,'[{\"added\": {}}]',24,2),(46,'2018-01-27 16:39:49.364958','8','sommeil',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (20)\"}}]',25,2),(47,'2018-01-28 16:07:21.957690','7','rêveries',1,'[{\"added\": {}}]',24,2),(48,'2018-01-28 16:07:53.720153','8','chambres d\'hiver',1,'[{\"added\": {}}]',24,2),(49,'2018-01-28 16:08:06.012243','9','chambres d\'été',1,'[{\"added\": {}}]',24,2),(50,'2018-01-28 16:08:09.831615','9','rêveries',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (21)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (22)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (23)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (24)\"}}]',25,2),(51,'2018-01-28 16:23:23.453938','10','lampe',1,'[{\"added\": {}}]',24,2),(52,'2018-01-28 16:24:28.671880','11','gothique',1,'[{\"added\": {}}]',24,2),(53,'2018-01-28 16:24:50.581400','12','vitrail',1,'[{\"added\": {}}]',24,2),(54,'2018-01-28 16:24:53.568565','10','vitrail',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (25)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (26)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (27)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (28)\"}}]',25,2),(55,'2018-01-28 17:08:12.492601','13','roses',1,'[{\"added\": {}}]',24,2),(56,'2018-01-28 17:08:28.941627','14','cheveux',1,'[{\"added\": {}}]',24,2),(57,'2018-01-28 17:08:36.574417','11','naturel des cheveux',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (29)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (30)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (31)\"}}]',25,2),(58,'2018-01-28 17:13:03.683075','15','apparence',1,'[{\"added\": {}}]',24,2),(59,'2018-01-28 17:13:09.642955','12','personnalité',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (32)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (33)\"}}]',25,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-03 17:01:17
