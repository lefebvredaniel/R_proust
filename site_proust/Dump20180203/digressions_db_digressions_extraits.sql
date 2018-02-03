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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digressions_extraits`
--

LOCK TABLES `digressions_extraits` WRITE;
/*!40000 ALTER TABLE `digressions_extraits` DISABLE KEYS */;
INSERT INTO `digressions_extraits` VALUES (1,'songe','…comme ceux qui partent en voyage pour voir de leurs yeux une cité désirée et s’imaginent qu’on peut goûter dans une réalité le charme du songe.','2018-01-15 18:39:42.000000'),(5,'distance','j’entendais le sifflement des trains qui, plus ou moins éloigné, comme le chant d’un oiseau dans une forêt, relevant les distances, me décrivait l’étendue de la campagne déserte où le voyageur se hâte vers la station prochaine','2018-01-15 18:50:13.000000'),(6,'les premiers moments de l\'amour','…comme dans ces premiers moments de l’amour où on va tous les jours retrouver une femme à quelque réunion, à quelque divertissement par les agréments desquels on se croit attiré','2018-01-15 18:32:58.000000'),(7,'jalousie','Car ce que nous croyons notre amour, notre jalousie, n’est pas une même passion continue, indivisible. Ils se composent d’une infinité d’amours successifs, de jalousies différentes et qui sont éphémères, mais par leur multitude ininterrompue donnent l’impression de la continuité, l’illusion de l’unité','2018-01-15 18:35:06.000000'),(8,'sommeil','Un homme qui dort tient en cercle autour de lui le fil des heures, l\'ordre des années et des mondes. Il les consulte d\'instinct en s\'éveillant et y lit en une seconde le point de la terre qu\'il occupe, le temps qui s\'est écoulé jusqu\'à son réveil ; mais leurs rangs peuvent se mêler, se rompre. Que vers le matin, après quelque insomnie, le sommeil le prenne en train de lire, dans une posture trop différente de celle où il dort habituellement, il suffit de son bras soulevé pour arrêter et faire reculer le soleil, et à la première minute de son réveil, il ne saura plus l\'heure, il estimera qu\'il vient à peine de se coucher. Que s\'il s\'assoupit dans une position encore plus déplacée et divergente, par exemple après dîner assis dans un fauteuil, alors le bouleversement sera complet dans les mondes désorbités, le fauteuil magique le fera voyager à toute vitesse dans le temps et dans l\'espace, et au moment d\'ouvrir les paupières, il se croira couché quelques mois plus tôt dans une autre contrée.','2018-01-27 16:04:59.000000'),(9,'rêveries','chambres d\'hiver où quand on est couché, on se blottit la tête dans un nid qu\'on se tresse avec les choses les plus disparates, un coin de l\'oreiller, le haut des couvertures, un bout de châle, le bord du lit et un numéro des Débats roses , qu\'on finit par cimenter ensemble selon la technique des oiseaux en s\'y appuyant indéfiniment ; où, par un temps glacial, le plaisir qu\'on goûte est de se sentir séparé du dehors (comme l\'hirondelle de mer qui a son nid au fond d\'un souterrain dans la chaleur de la terre) et où, le feu étant entretenu toute la nuit dans la cheminée, on dort dans un grand manteau d\'air chaud et fumeux, traversé des lueurs des tisons qui se rallument, sorte d\'impalpable alcôve, de chaude caverne creusée au sein de la chambre même, zone ardente et mobile en ses contours thermiques, aérée de souffles qui nous rafraîchissent la figure et viennent des angles, des parties voisines de la fenêtre ou éloignées du foyer, et qui se sont refroidies ; − chambres d\'été où l\'on aime être uni à la nuit tiède, où le clair de lune appuyé aux volets entr\'ouverts jette jusqu\'au pied du lit son échelle enchantée, où on dort presque en plein air, comme la mésange balancée par la brise à la pointe d\'un rayon ;','2018-01-28 16:07:02.000000'),(10,'vitrail','en attendant l\'heure du dîner, on coiffait ma lampe ; et, à l\'instar des premiers architectes et maîtres verriers de l\'âge gothique, elle substituait  à l\'opacité des murs d\'impalpables irisations, de surnaturelles apparitions multicolores, où des légendes étaient dépeintes comme dans un vitrail vacillant et momentané.','2018-01-28 16:23:01.000000'),(11,'naturel des cheveux','qui en profitait pour arracher subrepticement au passage quelques tuteurs de rosiers afin de rendre aux roses un peu de naturel, comme une mère qui, pour les faire bouffer, passe la main dans les cheveux de son fils que le coiffeur a trop aplatis.','2018-01-28 17:08:00.000000'),(12,'personnalité','notre personnalité sociale est une création de la pensée des autres. Même l\'acte si simple que nous appelons \"voir une personne que nous connaissons\" est en partie un acte intellectuel. Nous remplissons l\'apparence physique de l\'être que nous voyons de toutes les notions que nous avons sur lui, et dans l\'aspect total que nous nous représentons, ces notions ont certainement la plus grande part. Elles finissent par gonfler si parfaitement les joues, par suivre en une adhérence si exacte la ligne du nez, elles se mêlent si bien de nuancer la sonorité de la voix comme si celle−ci n\'était qu\'une transparente enveloppe, que chaque fois que nous voyons ce visage et que nous entendons cette voix, ce sont ces notions que nous retrouvons, que nous écoutons','2018-01-28 17:11:52.000000');
/*!40000 ALTER TABLE `digressions_extraits` ENABLE KEYS */;
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
