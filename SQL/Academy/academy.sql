CREATE DATABASE  IF NOT EXISTS `academy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `academy`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: academy
-- ------------------------------------------------------
-- Server version	5.5.21

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
-- Table structure for table `Lehrgang`
--

DROP TABLE IF EXISTS `Lehrgang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lehrgang` (
  `idLehrgang` int(11) NOT NULL,
  `fkInhalt` int(11) DEFAULT NULL,
  `Beginn` date DEFAULT NULL,
  `fkDozent` int(11) DEFAULT NULL,
  `fkLehrgangsort` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLehrgang`),
  KEY `fkInhalt` (`fkInhalt`),
  KEY `fkDozent` (`fkDozent`),
  KEY `fkLehrgangsort` (`fkLehrgangsort`),
  CONSTRAINT `fkInhalt` FOREIGN KEY (`fkInhalt`) REFERENCES `Inhalt` (`idInhalt`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkDozent` FOREIGN KEY (`fkDozent`) REFERENCES `Dozent` (`idDozent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkLehrgangsort` FOREIGN KEY (`fkLehrgangsort`) REFERENCES `Lehrgangsort` (`idLehrgangsort`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lehrgang`
--

LOCK TABLES `Lehrgang` WRITE;
/*!40000 ALTER TABLE `Lehrgang` DISABLE KEYS */;
INSERT INTO `Lehrgang` VALUES (1,2,'2000-06-15',10,3),(2,2,'2000-06-15',9,2),(3,8,'2000-11-23',8,1),(4,14,'2000-02-08',7,1),(5,3,'2000-01-15',5,2),(6,9,'2000-06-30',3,2),(7,1,'2000-01-25',4,1),(8,9,'2000-06-30',3,2),(9,6,'2000-10-10',2,3),(10,11,'2000-03-30',1,1),(11,7,'2000-08-30',7,3);
/*!40000 ALTER TABLE `Lehrgang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lehrgangsort`
--

DROP TABLE IF EXISTS `Lehrgangsort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lehrgangsort` (
  `idLehrgangsort` int(11) NOT NULL,
  `Bezeichnung` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idLehrgangsort`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lehrgangsort`
--

LOCK TABLES `Lehrgangsort` WRITE;
/*!40000 ALTER TABLE `Lehrgangsort` DISABLE KEYS */;
INSERT INTO `Lehrgangsort` VALUES (1,'Hotel Savoy Köln'),(2,'Friedrich-List-Berufskolleg Bonn'),(3,'Hotel Petersberg Königswinter');
/*!40000 ALTER TABLE `Lehrgangsort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teilnahme`
--

DROP TABLE IF EXISTS `Teilnahme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teilnahme` (
  `fkTeilnehmer` int(11) NOT NULL,
  `fkLehrgang` int(11) NOT NULL,
  PRIMARY KEY (`fkTeilnehmer`,`fkLehrgang`),
  KEY `fkTeilnehmer` (`fkTeilnehmer`),
  KEY `fkLehrgang` (`fkLehrgang`),
  CONSTRAINT `fkTeilnehmer` FOREIGN KEY (`fkTeilnehmer`) REFERENCES `Teilnehmer` (`idTeilnehmer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkLehrgang` FOREIGN KEY (`fkLehrgang`) REFERENCES `Lehrgang` (`idLehrgang`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teilnahme`
--

LOCK TABLES `Teilnahme` WRITE;
/*!40000 ALTER TABLE `Teilnahme` DISABLE KEYS */;
INSERT INTO `Teilnahme` VALUES (1,9),(1,10),(2,1),(3,3),(3,6),(3,9),(4,7),(5,2),(5,8),(5,9),(6,6),(7,2),(7,8),(7,9),(7,11),(8,1),(8,4),(8,7),(9,5),(9,9),(10,5),(11,5),(11,9),(12,4),(12,5),(12,7),(13,1),(13,3),(13,8),(14,1),(14,8),(15,3),(15,7),(16,4),(16,7),(17,2),(17,4),(17,7),(19,3),(19,10),(20,3),(20,10),(21,8),(21,10);
/*!40000 ALTER TABLE `Teilnahme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ort`
--

DROP TABLE IF EXISTS `Ort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ort` (
  `idOrt` varchar(5) NOT NULL,
  `Ortsname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idOrt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ort`
--

LOCK TABLES `Ort` WRITE;
/*!40000 ALTER TABLE `Ort` DISABLE KEYS */;
INSERT INTO `Ort` VALUES ('16845','Holzhausen'),('22926','Birkenbusch'),('23898','Kühsen'),('36115','Ehrenberg'),('38275','Haverlah'),('45881','Gelsenkirchen'),('46117','Oberhausen'),('47259','Duisburg'),('47929','Grefrath'),('50769','Köln'),('50858','Köln'),('53177','Bonn'),('53229','Bonn'),('53474','Bad Neuenahr-Ahrweiler'),('53547','Dattenberg'),('56295','Lonning'),('56584','Rüschied'),('59075','Hamm'),('73486','Adelmannsfelden'),('83739','Heißkistler'),('84405','Loh'),('91469','Erlachskirchen');
/*!40000 ALTER TABLE `Ort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dozent`
--

DROP TABLE IF EXISTS `Dozent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dozent` (
  `idDozent` int(11) NOT NULL,
  `Nachname` varchar(50) DEFAULT NULL,
  `Stundensatz` double DEFAULT NULL,
  PRIMARY KEY (`idDozent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dozent`
--

LOCK TABLES `Dozent` WRITE;
/*!40000 ALTER TABLE `Dozent` DISABLE KEYS */;
INSERT INTO `Dozent` VALUES (1,'Wirtgen',60),(2,'Schult',65),(3,'Schneider',50),(4,'Göppert',70),(5,'Hamblen',70),(6,'Dohlen',55),(7,'Heidert',60),(8,'Kruse',55),(9,'Feldmann',70),(10,'Seibold',65),(11,'Bachmann',22.5);
/*!40000 ALTER TABLE `Dozent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inhalt`
--

DROP TABLE IF EXISTS `Inhalt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inhalt` (
  `idInhalt` int(11) NOT NULL,
  `Beschreibung` varchar(50) DEFAULT NULL,
  `Stundensatz` double DEFAULT NULL,
  `Dauer` int(11) DEFAULT NULL,
  PRIMARY KEY (`idInhalt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inhalt`
--

LOCK TABLES `Inhalt` WRITE;
/*!40000 ALTER TABLE `Inhalt` DISABLE KEYS */;
INSERT INTO `Inhalt` VALUES (1,'MS-Office Grundlagen',20,16),(2,'Java Anfänger',22,48),(3,'C++ Fortgeschrittene',30,32),(4,'Konfiguration eines Firewalls',25,8),(5,'Einrichtung eines Web-Servers',18,16),(6,'Teamarbeit',15,40),(7,'Projektmanagement',12,16),(8,'Qualitätsssicherung',20,32),(9,'Java-Fortgeschrittene',30,40),(10,'C++ Experten',30,80),(11,'Systemadministration WIN-NT',15,32),(12,'LINUX Installation',20,20),(13,'C++-Anfänger',15,32),(14,'Access Einführung',15,32);
/*!40000 ALTER TABLE `Inhalt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teilnehmer`
--

DROP TABLE IF EXISTS `Teilnehmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teilnehmer` (
  `idTeilnehmer` int(11) NOT NULL,
  `Nachname` varchar(50) DEFAULT NULL,
  `fkOrt` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idTeilnehmer`),
  KEY `fkOrt` (`fkOrt`),
  CONSTRAINT `fkOrt` FOREIGN KEY (`fkOrt`) REFERENCES `Ort` (`idOrt`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teilnehmer`
--

LOCK TABLES `Teilnehmer` WRITE;
/*!40000 ALTER TABLE `Teilnehmer` DISABLE KEYS */;
INSERT INTO `Teilnehmer` VALUES (1,'Battner','38275'),(2,'Mitz','16845'),(3,'Jäger','23898'),(4,'Griffith','56584'),(5,'Betz','53177'),(6,'Gründgens','56295'),(7,'Bach','83739'),(8,'Eisenmann','84405'),(9,'Kelter','53474'),(10,'Bachmann','47259'),(11,'Ahmendt','50858'),(12,'Jacobs','56295'),(13,'Dotzler','46117'),(14,'Sterling','50769'),(15,'Escher','59075'),(16,'Bochers','91469'),(17,'Zobel','84405'),(18,'Zimmermann','47929'),(19,'Brödner','53229'),(20,'Babbage','56584'),(21,'Coy','84405');
/*!40000 ALTER TABLE `Teilnehmer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-26 19:48:00
