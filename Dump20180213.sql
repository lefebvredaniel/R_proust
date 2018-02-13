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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$100000$v0wEFef2FJxN$pnE8HfqPa5G2yqqcHjONzCf56FbQZKsIpDmqTDhlxMo=','2018-02-11 20:15:46.388049',1,'daniellefebvre','','','',1,1,'2018-01-13 11:46:53.705817');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digressions_etiquettes`
--

DROP TABLE IF EXISTS `digressions_etiquettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digressions_etiquettes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etiquettes_nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `etiquettes_nom_UNIQUE` (`etiquettes_nom`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digressions_etiquettes`
--

LOCK TABLES `digressions_etiquettes` WRITE;
/*!40000 ALTER TABLE `digressions_etiquettes` DISABLE KEYS */;
INSERT INTO `digressions_etiquettes` VALUES (3,'amour'),(15,'apparence'),(27,'brebis'),(9,'chambres d\'été'),(8,'chambres d\'hiver'),(30,'cheminée'),(14,'cheveux'),(31,'confort'),(5,'distance'),(4,'du coté de chez Swann'),(26,'église'),(24,'fleurs'),(11,'gothique'),(2,'jalousie'),(23,'japonais'),(10,'lampe'),(21,'odeur'),(28,'pasteur'),(19,'peintre'),(16,'personnalité'),(7,'rêveries'),(17,'rime'),(13,'roses'),(22,'saveur'),(6,'sommeil'),(1,'songe'),(20,'souvenir'),(29,'tailleur de pierre'),(18,'tyrannie'),(12,'vitrail');
/*!40000 ALTER TABLE `digressions_etiquettes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digressions_extraits`
--

DROP TABLE IF EXISTS `digressions_extraits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digressions_extraits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extraits_titre` varchar(50) NOT NULL,
  `extraits_content` varchar(2000) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digressions_extraits`
--

LOCK TABLES `digressions_extraits` WRITE;
/*!40000 ALTER TABLE `digressions_extraits` DISABLE KEYS */;
INSERT INTO `digressions_extraits` VALUES (1,'songe','…comme ceux qui partent en voyage pour voir de leurs yeux une cité désirée et s’imaginent qu’on peut goûter dans une réalité le charme du songe.','2018-01-15 18:39:42.000000'),(5,'distance','j’entendais le sifflement des trains qui, plus ou moins éloigné, comme le chant d’un oiseau dans une forêt, relevant les distances, me décrivait l’étendue de la campagne déserte où le voyageur se hâte vers la station prochaine','2018-01-15 18:50:13.000000'),(6,'les premiers moments de l\'amour','…comme dans ces premiers moments de l’amour où on va tous les jours retrouver une femme à quelque réunion, à quelque divertissement par les agréments desquels on se croit attiré','2018-01-15 18:32:58.000000'),(7,'jalousie','Car ce que nous croyons notre amour, notre jalousie, n’est pas une même passion continue, indivisible. Ils se composent d’une infinité d’amours successifs, de jalousies différentes et qui sont éphémères, mais par leur multitude ininterrompue donnent l’impression de la continuité, l’illusion de l’unité','2018-01-15 18:35:06.000000'),(8,'sommeil','Un homme qui dort tient en cercle autour de lui le fil des heures, l\'ordre des années et des mondes. Il les consulte d\'instinct en s\'éveillant et y lit en une seconde le point de la terre qu\'il occupe, le temps qui s\'est écoulé jusqu\'à son réveil ; mais leurs rangs peuvent se mêler, se rompre. Que vers le matin, après quelque insomnie, le sommeil le prenne en train de lire, dans une posture trop différente de celle où il dort habituellement, il suffit de son bras soulevé pour arrêter et faire reculer le soleil, et à la première minute de son réveil, il ne saura plus l\'heure, il estimera qu\'il vient à peine de se coucher. Que s\'il s\'assoupit dans une position encore plus déplacée et divergente, par exemple après dîner assis dans un fauteuil, alors le bouleversement sera complet dans les mondes désorbités, le fauteuil magique le fera voyager à toute vitesse dans le temps et dans l\'espace, et au moment d\'ouvrir les paupières, il se croira couché quelques mois plus tôt dans une autre contrée.','2018-01-27 16:04:59.000000'),(9,'rêveries','chambres d\'hiver où quand on est couché, on se blottit la tête dans un nid qu\'on se tresse avec les choses les plus disparates, un coin de l\'oreiller, le haut des couvertures, un bout de châle, le bord du lit et un numéro des Débats roses , qu\'on finit par cimenter ensemble selon la technique des oiseaux en s\'y appuyant indéfiniment ; où, par un temps glacial, le plaisir qu\'on goûte est de se sentir séparé du dehors (comme l\'hirondelle de mer qui a son nid au fond d\'un souterrain dans la chaleur de la terre) et où, le feu étant entretenu toute la nuit dans la cheminée, on dort dans un grand manteau d\'air chaud et fumeux, traversé des lueurs des tisons qui se rallument, sorte d\'impalpable alcôve, de chaude caverne creusée au sein de la chambre même, zone ardente et mobile en ses contours thermiques, aérée de souffles qui nous rafraîchissent la figure et viennent des angles, des parties voisines de la fenêtre ou éloignées du foyer, et qui se sont refroidies ; − chambres d\'été où l\'on aime être uni à la nuit tiède, où le clair de lune appuyé aux volets entr\'ouverts jette jusqu\'au pied du lit son échelle enchantée, où on dort presque en plein air, comme la mésange balancée par la brise à la pointe d\'un rayon ;','2018-01-28 16:07:02.000000'),(10,'vitrail','en attendant l\'heure du dîner, on coiffait ma lampe ; et, à l\'instar des premiers architectes et maîtres verriers de l\'âge gothique, elle substituait  à l\'opacité des murs d\'impalpables irisations, de surnaturelles apparitions multicolores, où des légendes étaient dépeintes comme dans un vitrail vacillant et momentané.','2018-01-28 16:23:01.000000'),(11,'naturel des cheveux','qui en profitait pour arracher subrepticement au passage quelques tuteurs de rosiers afin de rendre aux roses un peu de naturel, comme une mère qui, pour les faire bouffer, passe la main dans les cheveux de son fils que le coiffeur a trop aplatis.','2018-01-28 17:08:00.000000'),(12,'personnalité','notre personnalité sociale est une création de la pensée des autres. Même l\'acte si simple que nous appelons \"voir une personne que nous connaissons\" est en partie un acte intellectuel. Nous remplissons l\'apparence physique de l\'être que nous voyons de toutes les notions que nous avons sur lui, et dans l\'aspect total que nous nous représentons, ces notions ont certainement la plus grande part. Elles finissent par gonfler si parfaitement les joues, par suivre en une adhérence si exacte la ligne du nez, elles se mêlent si bien de nuancer la sonorité de la voix comme si celle−ci n\'était qu\'une transparente enveloppe, que chaque fois que nous voyons ce visage et que nous entendons cette voix, ce sont ces notions que nous retrouvons, que nous écoutons','2018-01-28 17:11:52.000000'),(13,'poètes','comme les bons poètes que la tyrannie de la rime force à trouver leurs plus grandes beautés','2018-02-11 20:24:20.000000'),(14,'peintre','comme un peintre qui ne peut obtenir que de courtes séances de pose, prépare sa palette et a fait d\'avance de souvenir, d\'après ses notes, tout ce pour quoi il pouvait à la rigueur se passer de la présence du modèle.','2018-02-11 20:27:14.000000'),(15,'souvenir','Mais, quand d\'un passé ancien rien ne subsiste, après la mort des êtres, après la destruction des choses, seules, plus frêles mais plus vivaces, plus immatérielles, plus persistantes, plus fidèles, l\'odeur et la saveur restent encore longtemps, comme des âmes, à se rappeler, à attendre, à espérer, sur la ruine de tout le reste, à porter sans fléchir, sur leur gouttelette presque impalpable, l\'édifice immense du souvenir','2018-02-11 20:34:33.000000'),(16,'métamorphose','Et comme dans ce jeu où les japonais s\'amusent à tremper dans un bol de porcelaine rempli d\'eau, de  petits morceaux de papier jusque−là indistincts qui, à peine y sont−ils plongés, s\'étirent, se contournent, se colorent, se différencient, deviennent des fleurs, des maisons, des personnages consistants et reconnaissables,','2018-02-11 20:37:49.000000'),(17,'église','ce n\'était qu\'une église résumant la ville, la représentant, parlant d\'elle et pour elle aux lointains, et, quand on approchait, tenant serrés autour de sa haute mante sombre, en plein champ, contre le vent, comme une pastoure ses brebis, les dos laineux et gris des maisons rassemblées qu\'un reste de remparts du moyen âge cernait çà et là d\'un trait aussi parfaitement circulaire qu\'une petite ville dans un tableau de primitif','2018-02-11 20:40:53.000000'),(18,'gothique','avec les trois hautes marches de grès presque devant chaque porte, semblait comme un défilé pratiqué par un tailleur d\'images gothiques à même la pierre où il eût sculpté une crèche ou un calvaire','2018-02-11 20:44:28.000000'),(19,'hiver','où le soleil, d\'hiver encore, était venu se mettre au chaud devant le feu, déjà allumé entre les deux briques et qui badigeonnait toute la chambre d\'une odeur de suie, en faisait comme un de ces grands \"Devants de four\" de campagne, ou de ces manteaux de cheminée de châteaux, sous lesquels on souhaite que se déclarent dehors la pluie, la neige, même quelque catastrophe diluvienne pour ajouter au confort de la réclusion la poésie de l\'hivernage','2018-02-11 20:47:23.000000'),(20,'peintre','Le desséchement des tiges les avait incurvées en un capricieux treillage dans les entrelacs duquel s\'ouvraient les fleurs pâles, comme si un peintre les eût arrangées, les eût fait poser de la façon la plus ornementale.','2018-02-11 21:01:42.000000');
/*!40000 ALTER TABLE `digressions_extraits` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digressions_r_extraits_etiquettes`
--

LOCK TABLES `digressions_r_extraits_etiquettes` WRITE;
/*!40000 ALTER TABLE `digressions_r_extraits_etiquettes` DISABLE KEYS */;
INSERT INTO `digressions_r_extraits_etiquettes` VALUES (1,1,1),(3,4,1),(10,5,5),(11,4,5),(12,3,6),(13,4,6),(14,2,7),(15,3,7),(16,4,7),(17,4,8),(18,1,8),(20,6,8),(21,7,9),(22,4,9),(23,8,9),(24,9,9),(25,4,10),(26,10,10),(27,11,10),(28,12,10),(29,4,11),(30,13,11),(31,14,11),(32,4,12),(33,15,12),(34,16,12),(35,17,13),(36,18,13),(37,19,14),(38,20,15),(39,21,15),(40,22,15),(41,23,16),(42,24,16),(43,26,17),(44,27,17),(45,28,17),(46,11,18),(47,29,18),(48,30,19),(49,31,19),(50,19,20),(51,24,20),(52,4,20),(53,4,19),(54,4,18),(55,4,17),(56,4,16),(57,4,15),(58,4,14),(59,4,13);
/*!40000 ALTER TABLE `digressions_r_extraits_etiquettes` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-01-13 11:47:32.417890','1','songe',1,'[{\"added\": {}}]',24,2),(2,'2018-01-13 11:47:39.627535','2','jalousir',1,'[{\"added\": {}}]',24,2),(3,'2018-01-13 11:47:47.792125','2','jalousie',2,'[{\"changed\": {\"fields\": [\"etiquettes_nom\"]}}]',24,2),(4,'2018-01-13 11:47:50.669920','2','jalousie',2,'[]',24,2),(5,'2018-01-13 11:47:58.755109','3','amour',1,'[{\"added\": {}}]',24,2),(6,'2018-01-13 11:48:11.457196','4','du coté de chez Swann',1,'[{\"added\": {}}]',24,2),(7,'2018-01-13 11:48:39.042525','1','content1',1,'[{\"added\": {}}]',25,2),(8,'2018-01-13 11:49:03.135068','2','content2',1,'[{\"added\": {}}]',25,2),(9,'2018-01-13 11:49:27.278849','3','content 3 jalousie',1,'[{\"added\": {}}]',25,2),(10,'2018-01-13 11:49:42.014752','2','content2 amour',2,'[{\"changed\": {\"fields\": [\"extraits_content\"]}}]',25,2),(11,'2018-01-13 11:49:45.679003','2','content2 amour',2,'[]',25,2),(12,'2018-01-13 11:49:54.957833','1','content1 songe',2,'[{\"changed\": {\"fields\": [\"extraits_content\"]}}]',25,2),(13,'2018-01-13 11:50:15.159587','4','content 4 amour',1,'[{\"added\": {}}]',25,2),(14,'2018-01-13 11:50:36.194300','1','R_Extraits_Etiquettes object (1)',1,'[{\"added\": {}}]',26,2),(15,'2018-01-13 11:50:49.693823','2','R_Extraits_Etiquettes object (2)',1,'[{\"added\": {}}]',26,2),(16,'2018-01-13 11:50:56.937312','3','R_Extraits_Etiquettes object (3)',1,'[{\"added\": {}}]',26,2),(17,'2018-01-13 11:51:10.807803','4','R_Extraits_Etiquettes object (4)',1,'[{\"added\": {}}]',26,2),(18,'2018-01-13 11:51:23.215023','5','R_Extraits_Etiquettes object (5)',1,'[{\"added\": {}}]',26,2),(19,'2018-01-13 11:52:08.313560','5','R_Extraits_Etiquettes object (5)',2,'[{\"changed\": {\"fields\": [\"extraits_id\", \"etiquettes_id\"]}}]',26,2),(20,'2018-01-13 11:52:14.831516','6','R_Extraits_Etiquettes object (6)',1,'[{\"added\": {}}]',26,2),(21,'2018-01-13 11:52:22.725088','7','R_Extraits_Etiquettes object (7)',1,'[{\"added\": {}}]',26,2),(22,'2018-01-13 11:52:29.151716','8','R_Extraits_Etiquettes object (8)',1,'[{\"added\": {}}]',26,2),(23,'2018-01-14 18:13:44.451384','8','R_Extraits_Etiquettes object (8)',2,'[]',26,2),(24,'2018-01-14 18:13:48.262702','8','R_Extraits_Etiquettes object (8)',2,'[]',26,2),(25,'2018-01-14 18:13:50.186338','8','R_Extraits_Etiquettes object (8)',2,'[]',26,2),(26,'2018-01-14 18:13:51.763715','8','R_Extraits_Etiquettes object (8)',2,'[]',26,2),(27,'2018-01-15 18:29:22.314941','9','R_Extraits_Etiquettes object (9)',2,'[]',26,2),(28,'2018-01-15 18:29:45.004660','10','R_Extraits_Etiquettes object (10)',1,'[{\"added\": {}}]',26,2),(29,'2018-01-15 18:29:56.855512','11','R_Extraits_Etiquettes object (11)',1,'[{\"added\": {}}]',26,2),(30,'2018-01-15 18:33:04.264498','6','les premiers moments de l\'amour',1,'[{\"added\": {}}]',25,2),(31,'2018-01-15 18:33:56.533767','12','R_Extraits_Etiquettes object (12)',1,'[{\"added\": {}}]',26,2),(32,'2018-01-15 18:34:06.193942','13','R_Extraits_Etiquettes object (13)',1,'[{\"added\": {}}]',26,2),(33,'2018-01-15 18:35:08.722498','7','jalousie',1,'[{\"added\": {}}]',25,2),(34,'2018-01-15 18:35:51.913506','14','R_Extraits_Etiquettes object (14)',1,'[{\"added\": {}}]',26,2),(35,'2018-01-15 18:36:06.567417','15','R_Extraits_Etiquettes object (15)',1,'[{\"added\": {}}]',26,2),(36,'2018-01-15 18:36:15.468134','16','R_Extraits_Etiquettes object (16)',1,'[{\"added\": {}}]',26,2),(37,'2018-01-15 18:37:37.273693','4','amour titre',3,'',25,2),(38,'2018-01-15 18:37:51.263228','2','amour titre',3,'',25,2),(39,'2018-01-15 18:37:59.740291','3','jalousie titre',3,'',25,2),(40,'2018-01-15 18:39:46.270409','1','songe',2,'[{\"changed\": {\"fields\": [\"extraits_content\", \"extraits_titre\", \"pub_date\"]}}]',25,2),(41,'2018-01-27 16:05:11.514719','8','sommeil',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (17)\"}}]',25,2),(42,'2018-01-27 16:16:36.255189','8','sommeil',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (18)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (19)\"}}]',25,2),(43,'2018-01-27 16:16:53.526529','8','sommeil',2,'[{\"deleted\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (None)\"}}]',25,2),(44,'2018-01-27 16:17:52.539988','8','sommeil',2,'[]',25,2),(45,'2018-01-27 16:39:10.928669','6','sommeil',1,'[{\"added\": {}}]',24,2),(46,'2018-01-27 16:39:49.364958','8','sommeil',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (20)\"}}]',25,2),(47,'2018-01-28 16:07:21.957690','7','rêveries',1,'[{\"added\": {}}]',24,2),(48,'2018-01-28 16:07:53.720153','8','chambres d\'hiver',1,'[{\"added\": {}}]',24,2),(49,'2018-01-28 16:08:06.012243','9','chambres d\'été',1,'[{\"added\": {}}]',24,2),(50,'2018-01-28 16:08:09.831615','9','rêveries',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (21)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (22)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (23)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (24)\"}}]',25,2),(51,'2018-01-28 16:23:23.453938','10','lampe',1,'[{\"added\": {}}]',24,2),(52,'2018-01-28 16:24:28.671880','11','gothique',1,'[{\"added\": {}}]',24,2),(53,'2018-01-28 16:24:50.581400','12','vitrail',1,'[{\"added\": {}}]',24,2),(54,'2018-01-28 16:24:53.568565','10','vitrail',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (25)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (26)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (27)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (28)\"}}]',25,2),(55,'2018-01-28 17:08:12.492601','13','roses',1,'[{\"added\": {}}]',24,2),(56,'2018-01-28 17:08:28.941627','14','cheveux',1,'[{\"added\": {}}]',24,2),(57,'2018-01-28 17:08:36.574417','11','naturel des cheveux',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (29)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (30)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (31)\"}}]',25,2),(58,'2018-01-28 17:13:03.683075','15','apparence',1,'[{\"added\": {}}]',24,2),(59,'2018-01-28 17:13:09.642955','12','personnalité',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (32)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (33)\"}}]',25,2),(60,'2018-02-11 20:16:34.696292','1','-p',3,'',30,2),(61,'2018-02-11 20:20:19.840948','16','personnalité',1,'[{\"added\": {}}]',24,2),(62,'2018-02-11 20:20:35.228777','12','personnalité',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (34)\"}}]',25,2),(63,'2018-02-11 20:24:34.081090','17','rime',1,'[{\"added\": {}}]',24,2),(64,'2018-02-11 20:25:06.494708','18','tyrannie',1,'[{\"added\": {}}]',24,2),(65,'2018-02-11 20:25:12.042703','13','poètes',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (35)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (36)\"}}]',25,2),(66,'2018-02-11 20:27:08.844507','19','peintre',1,'[{\"added\": {}}]',24,2),(67,'2018-02-11 20:27:17.720247','14','peintre',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (37)\"}}]',25,2),(68,'2018-02-11 20:34:54.115641','20','souvenir',1,'[{\"added\": {}}]',24,2),(69,'2018-02-11 20:35:14.010399','21','odeur',1,'[{\"added\": {}}]',24,2),(70,'2018-02-11 20:35:22.576048','22','saveur',1,'[{\"added\": {}}]',24,2),(71,'2018-02-11 20:35:26.539356','15','souvenir',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (38)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (39)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (40)\"}}]',25,2),(72,'2018-02-11 20:38:05.039052','23','japonais',1,'[{\"added\": {}}]',24,2),(73,'2018-02-11 20:38:44.579042','24','fleurs',1,'[{\"added\": {}}]',24,2),(74,'2018-02-11 20:38:54.863169','16','métamorphose',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (41)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (42)\"}}]',25,2),(75,'2018-02-11 20:41:09.394473','26','église',1,'[{\"added\": {}}]',24,2),(76,'2018-02-11 20:41:30.580661','27','brebis',1,'[{\"added\": {}}]',24,2),(77,'2018-02-11 20:42:21.021420','28','pasteur',1,'[{\"added\": {}}]',24,2),(78,'2018-02-11 20:43:08.760776','17','église',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (43)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (44)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (45)\"}}]',25,2),(79,'2018-02-11 20:45:09.161130','29','tailleur de pierre',1,'[{\"added\": {}}]',24,2),(80,'2018-02-11 20:45:15.138710','18','gothique',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (46)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (47)\"}}]',25,2),(81,'2018-02-11 20:47:40.865298','30','cheminée',1,'[{\"added\": {}}]',24,2),(82,'2018-02-11 20:48:25.134719','31','confoert',1,'[{\"added\": {}}]',24,2),(83,'2018-02-11 20:48:37.075246','31','confort',2,'[{\"changed\": {\"fields\": [\"etiquettes_nom\"]}}]',24,2),(84,'2018-02-11 20:49:58.132213','19','hiver',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (48)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (49)\"}}]',25,2),(85,'2018-02-11 21:02:32.727230','20','peintre',1,'[{\"added\": {}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (50)\"}}, {\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (51)\"}}]',25,2),(86,'2018-02-11 21:04:52.236144','20','peintre',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (52)\"}}]',25,2),(87,'2018-02-11 21:05:17.213158','19','hiver',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (53)\"}}]',25,2),(88,'2018-02-11 21:05:32.083238','18','gothique',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (54)\"}}]',25,2),(89,'2018-02-11 21:06:42.882317','17','église',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (55)\"}}]',25,2),(90,'2018-02-11 21:07:04.078031','16','métamorphose',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (56)\"}}]',25,2),(91,'2018-02-11 21:07:23.224058','15','souvenir',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (57)\"}}]',25,2),(92,'2018-02-11 21:07:46.808125','14','peintre',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (58)\"}}]',25,2),(93,'2018-02-11 21:08:08.023905','13','poètes',2,'[{\"added\": {\"name\": \"r_ extraits_ etiquettes\", \"object\": \"R_Extraits_Etiquettes object (59)\"}}]',25,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (27,'admin','logentry'),(29,'auth','group'),(28,'auth','permission'),(30,'auth','user'),(31,'contenttypes','contenttype'),(24,'digressions','etiquettes'),(25,'digressions','extraits'),(26,'digressions','r_extraits_etiquettes'),(1,'proust','authgroup'),(2,'proust','authgrouppermissions'),(3,'proust','authpermission'),(4,'proust','authuser'),(5,'proust','authusergroups'),(6,'proust','authuseruserpermissions'),(7,'proust','djangoadminlog'),(8,'proust','djangocontenttype'),(9,'proust','djangomigrations'),(10,'proust','djangosession'),(11,'proust','prcommentmeta'),(12,'proust','prcomments'),(13,'proust','prlinks'),(14,'proust','proptions'),(23,'proust','prpost'),(15,'proust','prpostmeta'),(16,'proust','prposts'),(17,'proust','prtermmeta'),(18,'proust','prtermrelationships'),(19,'proust','prterms'),(20,'proust','prtermtaxonomy'),(21,'proust','prusermeta'),(22,'proust','prusers'),(32,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'digressions','0001_initial','2018-01-13 09:59:11.784508'),(2,'contenttypes','0001_initial','2018-01-13 11:28:46.409995'),(3,'auth','0001_initial','2018-01-13 11:28:46.786009'),(4,'admin','0001_initial','2018-01-13 11:28:46.866574'),(5,'admin','0002_logentry_remove_auto_add','2018-01-13 11:28:46.879267'),(6,'contenttypes','0002_remove_content_type_name','2018-01-13 11:28:46.950399'),(7,'auth','0002_alter_permission_name_max_length','2018-01-13 11:28:46.983760'),(8,'auth','0003_alter_user_email_max_length','2018-01-13 11:28:47.009219'),(9,'auth','0004_alter_user_username_opts','2018-01-13 11:28:47.022221'),(10,'auth','0005_alter_user_last_login_null','2018-01-13 11:28:47.051123'),(11,'auth','0006_require_contenttypes_0002','2018-01-13 11:28:47.055017'),(12,'auth','0007_alter_validators_add_error_messages','2018-01-13 11:28:47.068103'),(13,'auth','0008_alter_user_username_max_length','2018-01-13 11:28:47.143468'),(14,'auth','0009_alter_user_last_name_max_length','2018-01-13 11:28:47.188928'),(15,'proust','0001_initial','2018-01-13 11:28:47.275395'),(16,'proust','0002_prpost','2018-01-13 11:28:47.282672'),(17,'sessions','0001_initial','2018-01-13 11:28:47.321754');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0se782wej66a4chviazpuv8qfkcrk2b3','N2ZjNjc5NTZhYzMyZWIyZGVjNTQ1NmQ4OGJhNzg0Mjk2YTQwZjcwMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjBkOWZkNTRhNjNmNTUyZTkwZTk3M2NhOWRlNjhjYTM1ZGEwZmM0In0=','2018-02-10 13:19:43.666386'),('epfbt0u2ctbyepa782zid5700l2fiil1','N2ZjNjc5NTZhYzMyZWIyZGVjNTQ1NmQ4OGJhNzg0Mjk2YTQwZjcwMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjBkOWZkNTRhNjNmNTUyZTkwZTk3M2NhOWRlNjhjYTM1ZGEwZmM0In0=','2018-02-25 20:15:46.420445'),('n36n7l0ge1ha9eug5yzb4s31oq095n4o','N2ZjNjc5NTZhYzMyZWIyZGVjNTQ1NmQ4OGJhNzg0Mjk2YTQwZjcwMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjBkOWZkNTRhNjNmNTUyZTkwZTk3M2NhOWRlNjhjYTM1ZGEwZmM0In0=','2018-01-27 11:47:12.426182');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-13 22:47:08
