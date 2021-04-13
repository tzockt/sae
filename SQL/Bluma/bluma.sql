CREATE DATABASE  IF NOT EXISTS `bluma` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bluma`;
-- MySQL dump 10.13  Distrib 5.5.21, for Win32 (x86)
--
-- Host: localhost    Database: bluma
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
-- Table structure for table `angebote`
--

DROP TABLE IF EXISTS `angebote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `angebote` (
  `ANG_L_ART_NR` varchar(5) DEFAULT NULL,
  `ANG_LFR_NR` varchar(3) DEFAULT NULL,
  `ANG_PREIS` double DEFAULT NULL,
  `ANG_PFL_ART_NR` double DEFAULT NULL,
  `ANG_L_ZEIT` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angebote`
--

LOCK TABLES `angebote` WRITE;
/*!40000 ALTER TABLE `angebote` DISABLE KEYS */;
INSERT INTO `angebote` VALUES ('A004','004',1.1,36,7),('A075','004',0.35,426,7),('A103','004',0.3,157,7),('A184','004',0.6,478,7),('A385','004',0.6,95,7),('A421','004',1.2,455,7),('B148','004',0.6,380,7),('B331','004',0.6,102,7),('B337','004',1.1,74,7),('C274','004',0.6,470,7),('D225','004',0.5,434,7),('103','009',6.1,66,14),('11','009',9.9,420,21),('114','009',8.8,209,14),('115','009',5.65,281,21),('116','009',14.4,263,21),('13','009',6.55,195,21),('14','009',7.9,104,21),('145','009',4.3,162,21),('2','009',2.95,498,21),('21','009',2.25,364,21),('23','009',10.15,408,21),('24','009',7.9,106,21),('29','009',2.5,117,21),('44','009',3.4,257,21),('45','009',6.75,397,21),('50','009',8.8,1,21),('64','009',4.7,393,14),('78','009',10.15,286,14),('81','009',3.4,178,14),('85','009',4.5,471,14),('91','009',7.9,27,14),('97','009',0.2,210,14),('99','009',5.65,362,14),('E01R','011',2.9,335,21),('E05R','011',0.8,365,10),('E11X','011',0.9,35,10),('E23W','011',1.05,255,10),('H09','011',7.95,408,14),('H10R','011',10.35,1,14),('H14R','011',7.35,397,14),('H14W','011',7.7,195,14),('H17','011',2.9,117,14),('H180','011',10,106,14),('H75P','011',10.35,12,14),('H99G','011',16.95,263,14),('A002','013',1.45,67,10),('A101','013',1.15,36,7),('A103','013',0.1,184,7),('A154','013',0.5,314,7),('A230','013',1.65,372,10),('A395','013',2.3,82,10),('A472','013',0.65,383,7),('A520','013',1.3,391,10),('A677','013',1.3,437,10),('B006','013',1,365,14),('B024','013',6.2,393,14),('B101','013',0.4,123,7),('B111','013',2.3,422,10),('B396','013',1.65,311,10),('B578','013',12.7,1,14),('C051','013',8.15,281,14),('C119','013',6.2,262,14),('C243','013',11.4,200,14),('D029','013',6.5,471,14),('D296','013',8.15,362,14),('D321','013',1.65,56,14),('D555','013',12.7,47,14),('D742','013',3.25,364,14),('E089','013',1.95,87,10),('E409','013',1.3,228,10),('F432','013',6.2,300,10),('F823','013',1.65,332,10),('G001','013',1.3,71,10),('G002','013',6.5,31,14),('G430','013',2.95,312,10),('H510','013',1.95,316,10),('001-2','014',1.15,455,10),('012-V','014',1.7,212,10),('027-V','014',1.45,372,10),('067-V','014',2,384,10),('087-V','014',1.15,297,10),('103-2','014',1.05,23,10),('117-V','014',1.7,13,10),('118-V','014',1.15,467,10),('162-V','014',1.15,228,10),('195-V','014',0.55,478,10),('201-V','014',2,390,10),('209-V','014',1.7,68,10),('255-1','014',0.35,50,10),('257-V','014',1.45,164,10),('263-V','014',1.7,54,10),('264-V','014',1.45,351,10),('273-V','014',0.55,398,10),('281-1','014',0.55,102,10),('286-V','014',1.7,87,10),('300-V','014',1.15,71,10),('327-1','014',0.45,147,10),('335-V','014',1.7,436,10),('362-V','014',1.45,311,10),('365-V','014',0.3,157,10),('393-V','014',1.45,56,10),('397-V','014',2.55,363,10),('400-2','014',0.55,380,10),('408-V','014',1.7,316,10),('471-2','014',0.55,35,10),('498-2','014',0.35,123,10),('ACMO','019',2.1,82,14),('ACON','019',1.8,175,14),('ALSC','019',1.2,425,14),('ALTH','019',1.2,61,14),('CAMP','019',1.8,87,14),('CENT','019',1.2,80,14),('CHRY','019',1.5,164,14),('CYNO','019',1.5,56,14),('DELP','019',1.8,212,14),('DIAN','019',1.8,436,14),('ERYN','019',1.8,13,14),('EUPH','019',1.5,372,14),('GEUM','019',1.8,316,14),('GYPS','019',2.7,363,14),('HELI','019',1.2,467,14),('KNIP','019',2.1,486,14),('LAMI','019',1.2,71,14),('LUPI','019',1.5,89,14),('MATR','019',1.8,234,14),('PAEO','019',2.7,78,14),('POTE','019',1.35,67,14),('ROSM','019',1.2,207,14),('1','020',0.65,470,7),('103','020',1.15,36,7),('162','020',0.5,468,7),('195','020',0.1,184,7),('209','020',0.4,123,7),('210','020',0.5,434,7),('257','020',0.65,266,7),('263','020',0.05,169,7),('281','020',2.45,126,7),('362','020',0.65,383,7),('393','020',0.5,147,7),('47','020',0.65,361,7),('471','020',1,143,7),('498','020',0.5,314,7),('66','020',0.1,253,7),('AZA','021',8.75,106,10),('BRE','021',2.5,364,10),('FOR','021',2.75,108,10),('HUL','021',11.25,408,10),('KOR','021',2.75,117,10),('LIG','021',0.2,210,10),('MAG','021',7.25,195,10),('OLI','021',5,471,10),('PEP','021',7.5,397,10),('ROD','021',9.75,1,10),('SER','021',9.75,12,10),('TOV','021',16,263,10),('VUU','021',2.5,19,10),('ZUU','021',1.75,242,10),('B-003','022',5.15,393,14),('B-011','022',12.15,286,14),('B-034','022',6.75,281,14),('B-076','022',2.45,39,14),('B-104','022',22.95,28,14),('E-002','022',2.85,335,10),('E-003','022',0.8,365,10),('S-015','022',0.2,210,14),('S-077','022',5.4,471,14),('S-118','022',9.45,471,14),('S-154','022',2.7,364,14),('ACMO','034',2.15,82,14),('ALTH','034',1.25,61,14),('ANCE','034',1.25,462,14),('ANEM','034',2.15,390,14),('ANGR','034',1.25,224,14),('ANTI','034',0.5,468,14),('AQUI','034',1.55,153,14),('ARDR','034',1.25,105,14),('BEGO','034',0.4,123,14),('CAMP','034',1.85,87,14),('CHEI','034',1.1,74,14),('CHMA','034',1.55,164,14),('CORT','034',5.9,300,14),('CYNO','034',0.6,398,14),('DELP','034',1.85,212,14),('ECHI','034',1.85,24,14),('ERYN','034',1.85,13,14),('HEDE','034',4.65,427,14),('LUPI','034',1.55,89,14),('OCBA','034',1.25,120,14),('PAPA','034',3.1,285,14),('PARH','034',0.6,380,14),('PHLO','034',0.95,143,14),('PRIM','034',1.25,455,14),('RUSC','034',1.25,319,14),('SALV','034',1.25,391,14),('TAGE','034',0.35,50,14),('TULI','034',0.25,50,14),('VIOL','034',0.3,157,14),('VITI','034',6.2,31,14),('WIST','034',0.05,253,14),('ST1P1','035',1.65,89,10),('ST1P3','035',1.65,311,10),('ST1P4','035',1.3,130,10),('ST1P6','035',1.3,61,10),('ST1P8','035',2.95,428,10),('ST1P9','035',3.3,285,10),('ST2P1','035',1.3,467,10),('ST2P2','035',2,54,10),('ST2P3','035',2.3,82,10),('ST2P5','035',2.95,205,10),('ST2P6','035',2,68,10),('ST3P1','035',4.3,180,10),('ST3P2','035',4.95,427,10),('ST3P5','035',1.3,296,10),('ST4P1','035',7.9,320,10),('ST4P2','035',3.3,283,10),('ST4P5','035',0.85,190,10),('ST4P6','035',3.3,42,10);
/*!40000 ALTER TABLE `angebote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bestellungen`
--

DROP TABLE IF EXISTS `bestellungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestellungen` (
  `BST_NR` double DEFAULT NULL,
  `BST_DAT` date DEFAULT NULL,
  `BST_LFR_DAT` date DEFAULT NULL,
  `BST_LFR_NR` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestellungen`
--

LOCK TABLES `bestellungen` WRITE;
/*!40000 ALTER TABLE `bestellungen` DISABLE KEYS */;
INSERT INTO `bestellungen` VALUES (121,'1998-02-10','1998-02-24','013'),(174,'1998-03-21','1998-03-28','004'),(175,'1998-03-23','1998-03-30','004'),(181,'1998-03-30','1998-04-20','009'),(184,'1998-03-30','1998-04-09','022'),(186,'1998-04-04','1998-04-11','020'),(190,'1998-04-06','1998-04-16','014'),(191,'1998-04-06','1998-04-20','013'),(192,'1998-04-06','1998-04-16','035'),(197,'1998-04-07','1998-04-16','035'),(200,'1998-04-07','1998-04-14','004'),(201,'1998-04-19','1998-04-26','004'),(202,'1998-04-19','1998-04-29','014'),(203,'1998-04-25','1998-05-09','019'),(204,'1998-04-25','1998-05-09','034'),(218,'1998-04-28','1998-05-14','035'),(219,'1998-04-25','1998-05-10','021'),(500,'1998-05-14','1998-05-28','011'),(527,'1998-01-01','1998-01-12','021'),(530,'1998-01-01','1998-01-02','014'),(548,'1999-03-10','1999-03-24','004'),(549,'1999-03-10','1999-03-24','013'),(578,'1998-01-03','1998-01-23','019'),(617,'1998-01-03','1998-01-21','014'),(640,'1998-01-04','1998-01-24','020'),(660,'1998-01-05','1998-01-20','020'),(822,'1998-02-18','1998-03-08','004'),(840,'1998-02-21','1998-03-10','014');
/*!40000 ALTER TABLE `bestellungen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bestpositionen`
--

DROP TABLE IF EXISTS `bestpositionen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestpositionen` (
  `POS_ANG_L_ART_NR` varchar(5) DEFAULT NULL,
  `POS_LFR_NR` varchar(3) DEFAULT NULL,
  `POS_BST_NR` double DEFAULT NULL,
  `POS_BST_MENGE` smallint(6) DEFAULT NULL,
  `POS_BST_PREIS` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestpositionen`
--

LOCK TABLES `bestpositionen` WRITE;
/*!40000 ALTER TABLE `bestpositionen` DISABLE KEYS */;
INSERT INTO `bestpositionen` VALUES ('099','009',181,20,6.05),('103','020',640,20,1.15),('103-2','014',190,100,1),('1114','009',181,3,9.45),('116','009',181,25,15.45),('118-V','014',190,200,1.15),('162','020',186,100,0.65),('162-V','014',202,75,1.35),('201-V','014',190,100,1.15),('201-V','014',202,25,2.4),('209','020',640,15,0.4),('209','020',660,100,0.4),('209-V','014',190,25,1.6),('225-1','014',190,200,0.35),('255-1','014',202,150,0.4),('263-V','014',190,50,1.65),('281','020',186,100,3.25),('281-2','014',190,25,0.55),('327-1','014',202,150,0.5),('335-V','014',617,50,1.7),('362-V','014',617,25,1.45),('365V','014',530,100,0.3),('365-V','014',840,50,0.3),('393V','014',530,50,1.45),('393-V','014',190,20,1.45),('408-V','014',202,100,2.05),('44','009',181,10,3.6),('45','009',181,5,7.2),('471','020',186,25,1.3),('471-2','014',840,45,0.55),('498-1','014',202,100,0.4),('A002','013',549,200,1.45),('A004','004',175,50,0.75),('A004','004',200,25,1.25),('A004','004',201,25,1.25),('A004','004',548,100,1.1),('A004','004',822,67,1.1),('A075','004',175,250,0.25),('A075','004',548,200,0.35),('A101','013',191,100,1.1),('A103','004',175,400,0.2),('A103','004',822,78,0.3),('A103','013',191,1000,0.1),('A103','013',549,100,0.1),('A154','013',121,150,0.45),('A154','013',191,100,0.5),('A154','013',549,200,0.5),('A184','004',175,50,0.45),('A184','004',200,25,0.65),('A184','004',201,25,0.7),('A184','004',822,412,0.6),('A230','013',121,10,1.65),('A385','004',175,100,0.4),('A385','004',201,25,0.7),('A395','013',121,15,2.3),('A421','004',174,50,1.35),('A421','004',175,50,0.8),('A421','004',201,50,1.45),('A472','013',191,250,0.6),('ACMO','034',204,100,2.15),('ALTH','019',203,25,1.15),('ALTH','034',204,50,1),('ALTH','035',218,50,1),('B006','013',121,150,0.95),('B101','013',191,50,0.4),('B111','013',121,25,2.25),('B111','013',191,50,2.15),('B148','004',174,25,0.65),('B148','004',175,50,0.45),('B148','004',200,25,0.7),('B148','004',201,25,0.7),('B331','004',174,25,0.7),('B331','004',175,10,0.45),('B331','004',200,10,0.7),('B331','004',201,25,0.75),('B337','004',175,100,0.7),('B396','013',121,50,1.65),('B396','013',191,50,1.5),('B578','013',191,10,11.7),('BEGO','034',204,50,0.35),('C051','013',191,10,7.55),('C204','004',174,25,0.65),('C274','004',175,25,0.45),('C274','004',201,25,0.75),('CAMP','034',204,150,1.55),('CENT','019',203,50,1.15),('CHEI','034',204,50,0.95),('CYNO','019',203,50,1.4),('D029','013',191,15,6),('D225','004',175,25,0.35),('D225','004',201,50,0.55),('D296','013',191,10,7.55),('D742','013',191,25,2.95),('DELP','034',204,100,1.5),('E-003','022',184,200,1.2),('E05R','011',500,100,0.8),('E098','013',121,50,1.9),('E098','013',191,50,1.8),('G001','013',191,24,1.2),('G202','013',121,25,6.35),('G430','013',191,30,2.75),('GYPS','019',203,25,2.65),('H510','013',191,40,1.75),('HELI','019',578,40,1.2),('HUL','021',527,50,11.25),('KNIP','019',203,50,2.05),('KOR','021',527,100,2.75),('LIG','021',219,1000,0.2),('LIG','021',527,100,0.2),('LUPI','019',203,200,1.4),('MATR','019',578,10,1.5),('PAEO','019',578,20,2.7),('POTE','019',578,40,1.35),('ROSM','019',578,40,1.2),('ST1P1','035',192,100,1.65),('ST1P9','035',197,50,3.75),('ST2P1','035',197,25,1.45),('ST2P2','035',192,25,1.35),('ST2P6','035',197,50,2.3),('ST3P1','035',197,36,4.85),('ST3P2','035',192,24,5.05),('ST4P1','035',197,48,8.95),('ST4P5','035',192,12,0.9),('ST4P5','035',197,24,1);
/*!40000 ALTER TABLE `bestpositionen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieferanten`
--

DROP TABLE IF EXISTS `lieferanten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieferanten` (
  `LFR_NR` varchar(3) DEFAULT NULL,
  `LFR_NAME` varchar(20) DEFAULT NULL,
  `LFR_ORT` varchar(20) DEFAULT NULL,
  `LFR_STRASSE` varchar(25) DEFAULT NULL,
  `LFR_PLZ` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieferanten`
--

LOCK TABLES `lieferanten` WRITE;
/*!40000 ALTER TABLE `lieferanten` DISABLE KEYS */;
INSERT INTO `lieferanten` VALUES ('004','Flora GmbH','Freiburg','Gartenlaubenweg 12','78000'),('009','Baumgarten','Bräunlingen','Hinter den Höfen 3','78199'),('011','Strauch GmbH','München 6','Bergstraße 21','88000'),('013','Weißmann','Zittau','Bahnhofsstraße 14','23453'),('014','Kulturpflanzen GmbH','Abikon','Waldseeweg 9','CH-1234'),('019','Holzammer & Co','Oberkirch','Im Ried 6','77712'),('020','Blum & Partner','Kehl-Rheinheim','Rheinau 7','77757'),('021','Traube AG','Vordertal','Kuhstraße 24','A-3456'),('022','Heidepflanzen','Neudorf','Birkenweg 27','67897'),('034','Blumengroßmarkt Grün','Karlsruhe','In den Auen','77000'),('035','Garten Import-Export','Karlsruhe','Industriestraße','77000');
/*!40000 ALTER TABLE `lieferanten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pflanzen`
--

DROP TABLE IF EXISTS `pflanzen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pflanzen` (
  `PFL_ART_NR` double DEFAULT NULL,
  `PFL_PREIS` double DEFAULT NULL,
  `PFL_NAME` varchar(16) DEFAULT NULL,
  `PFL_SORTE` varchar(8) DEFAULT NULL,
  `PFL_BL_END` smallint(6) DEFAULT NULL,
  `PFL_FARBE` varchar(8) DEFAULT NULL,
  `PFL_HOEHE` smallint(6) DEFAULT NULL,
  `PFL_BL_BEG` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pflanzen`
--

LOCK TABLES `pflanzen` WRITE;
/*!40000 ALTER TABLE `pflanzen` DISABLE KEYS */;
INSERT INTO `pflanzen` VALUES (1,19.5,'Rhododendron','Strauch',7,'rot',125,5),(12,19.5,'Flieder','Strauch',6,'purpur',500,5),(13,3,'Feldmannstreu','Staude',7,'blau',75,6),(19,5,'Feuerdorn','Strauch',6,'weiß',0,6),(23,1.8,'Glockenblume','2-jährig',8,'blau',70,6),(24,3,'Kugeldistel','Staude',7,'blau',175,6),(27,32,'Kastanie','Baum',5,'weiß',2500,5),(28,42.5,'Linde','Baum',8,'gelb',4000,7),(31,10,'Wein','Ranke',NULL,NULL,600,NULL),(35,1,'Levkoje','2-jährig',7,'gemischt',60,6),(36,2.2,'Sonnenblume','1-jährig',10,'gelb',150,8),(39,28,'Pappel','Baum',4,'weiß',1000,3),(42,5,'Zyperngras','Wasser',NULL,NULL,0,NULL),(47,19.5,'Weißtanne','Baum',NULL,NULL,3000,NULL),(50,0.6,'Tagetes','1-jährig',10,'gelb',25,7),(54,3,'Butterblume','Staude',6,'weiß',50,5),(56,2.5,'Hundezunge','Staude',8,'blau',30,6),(61,2,'Stockrose','Staude',9,'rot',250,6),(66,13.5,'Zwergzypresse','Baum',NULL,NULL,500,NULL),(67,2.25,'Fingerkraut','Staude',9,'rot',25,6),(68,3,'Tagilie','Staude',8,'rot',80,6),(71,2,'Taubnessel','Staude',5,'gelb',35,4),(74,1.8,'Goldlack','2-jährig',5,'braun',50,4),(78,8,'Pfingstrose','Staude',7,'rot',50,6),(80,2,'Kornblume','Staude',8,'blau',80,7),(82,3.5,'Bärentatze','Staude',9,'weiß',100,7),(87,3,'Glockenblume','Staude',8,'blau',90,6),(89,2.5,'Lupine','Staude',7,'gemischt',100,6),(95,1,'Levkoje','1-jährig',8,'gemischt',60,6),(102,1,'Silberblatt','2-jährig',7,'lila',70,5),(104,17.5,'Ahorn','Baum',6,'grün',2500,6),(105,2,'Estragon','Kraut',9,'weiß',100,4),(106,17.5,'Azalee','Strauch',5,'orange',200,4),(108,5.5,'Forsysthie','Strauch',4,'gelb',250,3),(117,5,'Kornelkirsche','Strauch',NULL,'gelb',300,5),(120,2,'Basilikum','Kraut',9,'weiß',50,8),(123,0.65,'Begonie','1-jährig',9,'rot',15,6),(126,2.75,'Zierlauch','Zwiebel',8,'blau',75,6),(130,2,'Fingerhutskraut','Staude',8,'gemischt',0,6),(143,1.5,'Flammenblume','1-jährig',8,'gemischt',30,7),(147,0.75,'Aster','1-jährig',10,'gemischt',50,7),(153,2.5,'Akelei','Staude',7,'blau',60,5),(157,0.5,'Veilchen','2-jährig',8,'gemischt',15,3),(162,9.5,'Essigbaum','Baum',7,'rot',0,6),(164,2.5,'Margerite','Staude',8,'weiß',70,6),(169,0.1,'Krokus','Zwiebel',3,'weiß',15,2),(175,3,'Eisenhut','Staude',9,'violett',120,8),(178,7.5,'Vogelbeere','Baum',5,'weiß',500,5),(180,6.5,'Waldranke','Ranke',9,'purpur',300,7),(184,0.14,'Iris','Zwiebel',7,'blau',100,5),(190,1.25,'Froschbiß','Wasser',8,'weiß',0,7),(195,14.5,'Magnolie','Strauch',5,'weiß',1000,4),(200,17.5,'Akazie','Baum',6,'weiß',2500,6),(205,4.5,'Dotterblume','Wasser',6,'gelb',30,4),(207,2,'Rosmarin','Kraut',5,'blau',150,5),(209,19.5,'Maibaum','Baum',5,'rosa',700,5),(210,2.5,'Liguster','Strauch',7,'weiß',200,7),(212,3,'Rittersporn','Staude',7,'lila',150,6),(224,2,'Dill','Kraut',8,'gelb',90,7),(228,2,'Engelsgras','Staude',NULL,'rot',20,NULL),(234,3,'Kamille','Staude',7,'weiß',700,6),(242,3.5,'Sauerdorn','Strauch',6,'orange',300,5),(253,0.4,'Traubenhyazinthe','Zwiebel',6,'blau',20,2),(255,2,'Winterheide','Heide',4,'weiß',20,2),(257,25.5,'Birke','Baum',NULL,NULL,2000,NULL),(262,9.5,'Passionsblume','Ranke',6,'blau',0,6),(263,32,'Haselnuß','Strauch',2,'gelb',500,1),(266,1,'Kornblume','1-jährig',8,'gemischt',80,7),(281,12.5,'Buche','Baum',5,'grün',3000,4),(283,5,'Wasserhyazinthe','Wasser',9,'blau',0,6),(285,3,'Klatschmohn','Staude',6,'rot',70,5),(286,22.5,'Tulpenbaum','Baum',7,'gelb',2000,6),(296,2,'Petersilie','Kraut',NULL,NULL,25,NULL),(297,2,'Majoran','Kraut',8,'purpur',30,7),(300,9.5,'Pampasgras','Staude',10,'weiß',300,9),(311,2.5,'Wasserhanf','Staude',9,'purpur',175,8),(312,4.5,'Rohrkolben','Wasser',9,'gelb',200,8),(314,0.8,'Chrysantheme','1-jährig',8,'gelb',80,6),(316,3,'Nelkenwurz','Staude',8,'orange',50,7),(319,2,'Ampfer','Kraut',6,'rot',70,6),(320,12,'Wasserlilie','Wasser',NULL,'weiß',0,NULL),(323,2,'Besenheide','Heide',8,'gemischt',30,6),(332,2.5,'Wasserschlauch','Wasser',8,'gelb',0,7),(335,5.5,'Baumheide','Heide',9,'rosa',150,7),(351,2.5,'Thymian','Kraut',6,'purpur',10,6),(361,1,'Rittersporn','1-jährig',8,'gemischt',50,7),(362,21,'Fichte','Baum',NULL,NULL,3000,NULL),(363,9.5,'Gipskraut','Staude',8,'weiß',90,7),(364,5,'Ginster','Strauch',7,'gelb',150,4),(365,1.5,'Glockenheide','Heide',9,'rot',35,6),(372,2.5,'Wolfsmilch','Staude',4,'gelb',60,4),(380,1,'Klatschmohn','2-jährig',6,'gemischt',40,6),(383,1,'Dahlie','1-jährig',10,'gemischt',40,8),(384,3.5,'Feuerwerkpflanze','Staude',7,'rosa',150,6),(390,3.5,'Anemone','Staude',10,'rosa',50,8),(391,2,'Salbei','Kraut',7,'violett',100,6),(393,9.5,'Judasbaum','Baum',5,'rosa',800,5),(397,15,'Seidelbast','Strauch',3,'rose',125,2),(398,1,'Hundezunge','2-jährig',6,'blau',30,5),(408,22.5,'Stechpalme','Strauch',NULL,NULL,700,NULL),(420,22,'Goldregen','Baum',5,'gelb',600,5),(422,3.5,'Wollgras','Wasser',6,'weiß',30,5),(425,2,'Schnittlauch','Kraut',8,'purpur',20,7),(426,60,'Steinkraut','1-jährig',9,'purpur',10,6),(427,7.5,'Efeu','Ranke',NULL,NULL,0,NULL),(428,4.5,'Kalmus','Wasser',NULL,NULL,90,NULL),(434,0.8,'Petunie','1-jährig',10,'rosa',25,7),(436,3,'Nelke','Staude',8,'weiß',40,6),(437,2,'Minze','Kraut',8,'purpur',40,8),(455,2,'Schlüsselblume','2-jährig',5,'gemischt',25,4),(462,2,'Kerbel','Kraut',NULL,'weiß',30,NULL),(467,2,'Sonnenblume','Staude',9,'gelb',150,8),(468,0.8,'Löwenmäulchen','1-jährig',8,'gemischt',50,7),(469,0.4,'Tulpe','Zwiebel',6,'gelb',30,4),(470,1,'Gipskraut','1-jährig',7,'weiß',50,6),(471,10,'Ölweide','Strauch',10,'gelb',400,9),(478,1,'Klatschmohn','1-jährig',9,'gemischt',35,6),(486,3.5,'Feuerpfeil','Staude',9,'rot',120,6),(498,6.5,'Wachholder','Baum',NULL,NULL,250,NULL),(513,2.5,'Rose','Staude',10,'rot',45,5),(593,0.5,'Heidenröschen','Strauch',9,'lila',30,5);
/*!40000 ALTER TABLE `pflanzen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-09 18:04:52
