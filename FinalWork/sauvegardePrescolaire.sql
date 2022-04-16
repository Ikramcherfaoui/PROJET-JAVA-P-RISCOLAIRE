-- MySQL dump 10.13  Distrib 5.7.37, for Linux (x86_64)
--
-- Host: localhost    Database: prescolaire
-- ------------------------------------------------------
-- Server version	5.7.37-0ubuntu0.18.04.1

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
-- Table structure for table `Activite`
--

DROP TABLE IF EXISTS `Activite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Activite` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `titreActivite` varchar(40) NOT NULL,
  `dateActivite` varchar(40) NOT NULL,
  `enfant_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enfant_activite` (`enfant_id`),
  CONSTRAINT `fk_enfant_activite` FOREIGN KEY (`enfant_id`) REFERENCES `Enfant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Activite`
--

LOCK TABLES `Activite` WRITE;
/*!40000 ALTER TABLE `Activite` DISABLE KEYS */;
INSERT INTO `Activite` VALUES (8,'nettoyage','22/12/2022',6),(9,'match de foot','06/09/2022',7),(10,'nettoyage','13/11/2022',8),(11,'sortie cinema','09/09/2022',7);
/*!40000 ALTER TABLE `Activite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CompteParent`
--

DROP TABLE IF EXISTS `CompteParent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompteParent` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `parent_id` smallint(5) unsigned NOT NULL,
  `isConnected` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent_id` (`parent_id`),
  CONSTRAINT `fk_compteParent_parent` FOREIGN KEY (`parent_id`) REFERENCES `Parent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompteParent`
--

LOCK TABLES `CompteParent` WRITE;
/*!40000 ALTER TABLE `CompteParent` DISABLE KEYS */;
INSERT INTO `CompteParent` VALUES (1,'theGoat','1234',2,0),(2,'supermax','12345',1,0),(3,'Emmanuel','abcd',3,0);
/*!40000 ALTER TABLE `CompteParent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enfant`
--

DROP TABLE IF EXISTS `Enfant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Enfant` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `age` smallint(5) unsigned NOT NULL,
  `hendicape` text,
  `heureArr` varchar(40) NOT NULL,
  `heureDep` varchar(40) NOT NULL,
  `compteParent_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enfant_parent` (`compteParent_id`),
  CONSTRAINT `fk_enfant_parent` FOREIGN KEY (`compteParent_id`) REFERENCES `CompteParent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enfant`
--

LOCK TABLES `Enfant` WRITE;
/*!40000 ALTER TABLE `Enfant` DISABLE KEYS */;
INSERT INTO `Enfant` VALUES (1,'Levy','Sylvin',10,NULL,'8h','16h',1),(2,'Chabrier','Pierre',9,NULL,'10h','14h',1),(3,'Noris','Lando',11,'',' ',' ',1),(4,'Vettel','Sebastian',5,'',' ',' ',2),(5,'Camus','Albert',6,'','8h','16h',1),(6,'Daniel','Riccardo',8,'','10h','14h',1),(7,'Alex','Albon',10,'','9h','17h',2),(8,'Lance','Stroll',6,'','9h','17h',1);
/*!40000 ALTER TABLE `Enfant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facture`
--

DROP TABLE IF EXISTS `Facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Facture` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typeFacture` varchar(40) NOT NULL,
  `paiementDate` varchar(40) NOT NULL,
  `montant` double NOT NULL,
  `parent_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_facture_parent` (`parent_id`),
  CONSTRAINT `fk_facture_parent` FOREIGN KEY (`parent_id`) REFERENCES `Parent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facture`
--

LOCK TABLES `Facture` WRITE;
/*!40000 ALTER TABLE `Facture` DISABLE KEYS */;
INSERT INTO `Facture` VALUES (10,'Périscolaire','22/12/2021',245.94,2),(11,'Cantine','22/10/2021',125.94,2),(12,'Cantine','10/09/2021',41.98,1),(13,'Périscolaire','10/10/2021',81.98,1);
/*!40000 ALTER TABLE `Facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parent`
--

DROP TABLE IF EXISTS `Parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Parent` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `numSec` int(10) unsigned NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `dateNaissance` varchar(40) DEFAULT NULL,
  `numTel` int(10) unsigned DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `revenue` int(11) DEFAULT NULL,
  `situation` text,
  `adresse` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parent`
--

LOCK TABLES `Parent` WRITE;
/*!40000 ALTER TABLE `Parent` DISABLE KEYS */;
INSERT INTO `Parent` VALUES (1,223344,'Merstapen','Max','12/02/1998',6452647,'supermax@g.com',50,NULL,'Monaco'),(2,112248,'Hamilton','Lewis','12/02/1989',6489632,'sirLewis@g.com',60,NULL,'Monaco'),(3,11259848,'Kant','Emmanuel','14/05/1989',6509878,'manu@g.com',4500,NULL,'Paris');
/*!40000 ALTER TABLE `Parent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-11 17:46:47
