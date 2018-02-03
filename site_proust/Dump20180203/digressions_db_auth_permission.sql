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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add auth group',1,'add_authgroup'),(2,'Can change auth group',1,'change_authgroup'),(3,'Can delete auth group',1,'delete_authgroup'),(4,'Can add auth group permissions',2,'add_authgrouppermissions'),(5,'Can change auth group permissions',2,'change_authgrouppermissions'),(6,'Can delete auth group permissions',2,'delete_authgrouppermissions'),(7,'Can add auth permission',3,'add_authpermission'),(8,'Can change auth permission',3,'change_authpermission'),(9,'Can delete auth permission',3,'delete_authpermission'),(10,'Can add auth user',4,'add_authuser'),(11,'Can change auth user',4,'change_authuser'),(12,'Can delete auth user',4,'delete_authuser'),(13,'Can add auth user groups',5,'add_authusergroups'),(14,'Can change auth user groups',5,'change_authusergroups'),(15,'Can delete auth user groups',5,'delete_authusergroups'),(16,'Can add auth user user permissions',6,'add_authuseruserpermissions'),(17,'Can change auth user user permissions',6,'change_authuseruserpermissions'),(18,'Can delete auth user user permissions',6,'delete_authuseruserpermissions'),(19,'Can add django admin log',7,'add_djangoadminlog'),(20,'Can change django admin log',7,'change_djangoadminlog'),(21,'Can delete django admin log',7,'delete_djangoadminlog'),(22,'Can add django content type',8,'add_djangocontenttype'),(23,'Can change django content type',8,'change_djangocontenttype'),(24,'Can delete django content type',8,'delete_djangocontenttype'),(25,'Can add django migrations',9,'add_djangomigrations'),(26,'Can change django migrations',9,'change_djangomigrations'),(27,'Can delete django migrations',9,'delete_djangomigrations'),(28,'Can add django session',10,'add_djangosession'),(29,'Can change django session',10,'change_djangosession'),(30,'Can delete django session',10,'delete_djangosession'),(31,'Can add pr commentmeta',11,'add_prcommentmeta'),(32,'Can change pr commentmeta',11,'change_prcommentmeta'),(33,'Can delete pr commentmeta',11,'delete_prcommentmeta'),(34,'Can add pr comments',12,'add_prcomments'),(35,'Can change pr comments',12,'change_prcomments'),(36,'Can delete pr comments',12,'delete_prcomments'),(37,'Can add pr links',13,'add_prlinks'),(38,'Can change pr links',13,'change_prlinks'),(39,'Can delete pr links',13,'delete_prlinks'),(40,'Can add pr options',14,'add_proptions'),(41,'Can change pr options',14,'change_proptions'),(42,'Can delete pr options',14,'delete_proptions'),(43,'Can add pr postmeta',15,'add_prpostmeta'),(44,'Can change pr postmeta',15,'change_prpostmeta'),(45,'Can delete pr postmeta',15,'delete_prpostmeta'),(46,'Can add pr posts',16,'add_prposts'),(47,'Can change pr posts',16,'change_prposts'),(48,'Can delete pr posts',16,'delete_prposts'),(49,'Can add pr termmeta',17,'add_prtermmeta'),(50,'Can change pr termmeta',17,'change_prtermmeta'),(51,'Can delete pr termmeta',17,'delete_prtermmeta'),(52,'Can add pr term relationships',18,'add_prtermrelationships'),(53,'Can change pr term relationships',18,'change_prtermrelationships'),(54,'Can delete pr term relationships',18,'delete_prtermrelationships'),(55,'Can add pr terms',19,'add_prterms'),(56,'Can change pr terms',19,'change_prterms'),(57,'Can delete pr terms',19,'delete_prterms'),(58,'Can add pr term taxonomy',20,'add_prtermtaxonomy'),(59,'Can change pr term taxonomy',20,'change_prtermtaxonomy'),(60,'Can delete pr term taxonomy',20,'delete_prtermtaxonomy'),(61,'Can add pr usermeta',21,'add_prusermeta'),(62,'Can change pr usermeta',21,'change_prusermeta'),(63,'Can delete pr usermeta',21,'delete_prusermeta'),(64,'Can add pr users',22,'add_prusers'),(65,'Can change pr users',22,'change_prusers'),(66,'Can delete pr users',22,'delete_prusers'),(67,'Can add pr post',23,'add_prpost'),(68,'Can change pr post',23,'change_prpost'),(69,'Can delete pr post',23,'delete_prpost'),(70,'Can add etiquettes',24,'add_etiquettes'),(71,'Can change etiquettes',24,'change_etiquettes'),(72,'Can delete etiquettes',24,'delete_etiquettes'),(73,'Can add extraits',25,'add_extraits'),(74,'Can change extraits',25,'change_extraits'),(75,'Can delete extraits',25,'delete_extraits'),(76,'Can add r_ extraits_ etiquettes',26,'add_r_extraits_etiquettes'),(77,'Can change r_ extraits_ etiquettes',26,'change_r_extraits_etiquettes'),(78,'Can delete r_ extraits_ etiquettes',26,'delete_r_extraits_etiquettes'),(79,'Can add log entry',27,'add_logentry'),(80,'Can change log entry',27,'change_logentry'),(81,'Can delete log entry',27,'delete_logentry'),(82,'Can add permission',28,'add_permission'),(83,'Can change permission',28,'change_permission'),(84,'Can delete permission',28,'delete_permission'),(85,'Can add group',29,'add_group'),(86,'Can change group',29,'change_group'),(87,'Can delete group',29,'delete_group'),(88,'Can add user',30,'add_user'),(89,'Can change user',30,'change_user'),(90,'Can delete user',30,'delete_user'),(91,'Can add content type',31,'add_contenttype'),(92,'Can change content type',31,'change_contenttype'),(93,'Can delete content type',31,'delete_contenttype'),(94,'Can add session',32,'add_session'),(95,'Can change session',32,'change_session'),(96,'Can delete session',32,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
