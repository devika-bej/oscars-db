-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: phase_4
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `phase_4`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `phase_4` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `phase_4`;

--
-- Table structure for table `Actor`
--

DROP TABLE IF EXISTS `Actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Actor` (
  `Artist_Id` int NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Year_Of_Birth` year DEFAULT NULL,
  PRIMARY KEY (`Artist_Id`),
  CONSTRAINT `Actor_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Artist_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actor`
--

LOCK TABLES `Actor` WRITE;
/*!40000 ALTER TABLE `Actor` DISABLE KEYS */;
INSERT INTO `Actor` VALUES (1,'Female',2002),(2,'Male',1961),(3,'Male',1949),(4,'Male',1975),(5,'Male',1967),(6,'Male',1958),(7,'Male',1974),(8,'Male',1968),(9,'Female',1981),(10,'Female',1955),(11,'Male',1956),(12,'Male',1953),(13,'Male',1964),(14,'Female',1996),(15,'Female',1978),(16,'Male',1972),(17,'Female',1971),(18,'Female',1980),(19,'Female',1971);
/*!40000 ALTER TABLE `Actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artist`
--

DROP TABLE IF EXISTS `Artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artist` (
  `Artist_Id` int NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Country_Of_Origin` varchar(25) DEFAULT NULL,
  `Artist_Type` varchar(25) NOT NULL,
  PRIMARY KEY (`Artist_Id`),
  CONSTRAINT `Artist_chk_1` CHECK ((`Artist_Type` in (_utf8mb4'Director',_utf8mb4'Singer',_utf8mb4'Actor',_utf8mb4'Others',_utf8mb4'Mult')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` VALUES (1,'Emilia Annis I. Jones','England','Actor'),(2,'Eugenio González Derbez','Mexico','Actor'),(3,'David Russell Strathairn','USA','Actor'),(4,'Lee Sun-kyun','South Korea','Actor'),(5,'Song Kang-ho','South Korea','Actor'),(6,'Viggo Peter Mortensen Jr.','USA','Actor'),(7,'Leonardo DiCaprio','USA','Actor'),(8,'Willard Carroll Smith II','USA','Actor'),(9,'Stephanie Beatriz','USA','Actor'),(10,'María Cecilia Botero','Colombia','Actor'),(11,'Thomas Jeffrey Hanks','USA','Actor'),(12,'Timothy Alan','USA','Actor'),(13,'Keanu Reeves','Canada','Actor'),(14,'Hailee Steinfeld','USA','Actor'),(15,'Ginnifer Goodwin','USA','Actor'),(16,'Idris Elba','England','Actor'),(17,'Amy Poehler','USA','Actor'),(18,'Kristen Bell','USA','Actor'),(19,'Idina Menzel','USA','Actor'),(20,'Rahul Sipligunj','India','Singer'),(21,'Billie Eilish','USA','Singer'),(22,'Kendrick Lamar','USA','Singer'),(23,'Carlos Rivera','Mexico','Singer'),(24,'Ryan Gosling','Canada','Mult'),(25,'Solána Imani Rowe','USA','Singer'),(26,'Chloé Zhao','China','Director'),(27,'Jane Campion','New Zealand','Director'),(28,'Daniels (Duo)','USA','Director'),(29,'Bong Joon-ho','South Korea','Director'),(30,'Guillermo del Toro','Mexico','Director'),(31,'Barry Jenkins','USA','Director'),(32,'Tom McCarthy','USA','Director'),(33,'Jennifer Lee','USA','Director'),(34,'Peter Farrelly','USA','Director'),(35,'Sian Heder','USA','Director'),(36,'Peter Hans Docter','USA','Director'),(37,'Josh Cooley','USA','Director'),(38,'Peter Ramsey','USA','Director'),(39,'Rich Moore','USA','Director'),(40,'Jared Bush','USA','Director'),(41,'Chris Williams','Canada','Director'),(42,'Lee Edward Unkrich','USA','Director');
/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artist_Nomination`
--

DROP TABLE IF EXISTS `Artist_Nomination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artist_Nomination` (
  `Artist_Id` int NOT NULL,
  `Year` year NOT NULL,
  PRIMARY KEY (`Artist_Id`,`Year`),
  CONSTRAINT `Artist_Nomination_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Artist_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artist_Nomination`
--

LOCK TABLES `Artist_Nomination` WRITE;
/*!40000 ALTER TABLE `Artist_Nomination` DISABLE KEYS */;
INSERT INTO `Artist_Nomination` VALUES (11,1994),(11,1995),(21,2022),(22,2019),(25,2019),(26,2021),(27,2022),(28,2023),(29,2020),(30,2018),(31,2017),(32,2016);
/*!40000 ALTER TABLE `Artist_Nomination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Award_Category`
--

DROP TABLE IF EXISTS `Award_Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Award_Category` (
  `Name` varchar(50) DEFAULT NULL,
  `Awardee` varchar(25) DEFAULT NULL,
  `Award_Category_Id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Award_Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Award_Category`
--

LOCK TABLES `Award_Category` WRITE;
/*!40000 ALTER TABLE `Award_Category` DISABLE KEYS */;
INSERT INTO `Award_Category` VALUES ('Best Picture','Movie',1),('Best Director','Director',2),('Best Actor in a Leading Role','Actor',3),('Best Actress in a Leading Role','Actor',4),('Best Actor in a Supporting Role','Actor',5),('Best Actress in a Supporting Role','Actor',6),('Best Animated Feature Film','Movie',7),('Best International Feature Film','Movie',8),('Best Original Screenplay','Others',9),('Best Adapted Screenplay','Others',10),('Best Cinematography','Others',11),('Best Film Editing','Others',12),('Best Production Design','Others',13),('Best Costume Design','Others',14),('Best Makeup and Hairstyling','Others',15),('Best Visual Effects','Others',16),('Best Sound Editing','Others',17),('Best Sound Mixing','Others',18),('Best Original Score','Others',19),('Best Original Song','Singer',20);
/*!40000 ALTER TABLE `Award_Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ceremony`
--

DROP TABLE IF EXISTS `Ceremony`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ceremony` (
  `Year` year NOT NULL,
  `Venue` varchar(50) DEFAULT NULL,
  `Host_Id` int NOT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Year`,`Host_Id`),
  KEY `fk_ceremony_host` (`Host_Id`),
  CONSTRAINT `fk_ceremony_host` FOREIGN KEY (`Host_Id`) REFERENCES `Host` (`Host_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ceremony`
--

LOCK TABLES `Ceremony` WRITE;
/*!40000 ALTER TABLE `Ceremony` DISABLE KEYS */;
INSERT INTO `Ceremony` VALUES (2000,'Shine Auditorium',10,'2000-03-26'),(2001,'Shine Auditorium',5,'2001-03-25'),(2002,'Kodak Auditorium (Now Dolby Theatre)',16,'2002-03-24'),(2003,'Kodak Auditorium (Now Dolby Theatre)',5,'2003-03-23'),(2004,'Kodak Auditorium (Now Dolby Theatre)',10,'2004-02-29'),(2005,'Kodak Auditorium (Now Dolby Theatre)',6,'2005-02-27'),(2006,'Kodak Auditorium (Now Dolby Theatre)',11,'2006-03-05'),(2007,'Kodak Auditorium (Now Dolby Theatre)',8,'2007-02-25'),(2008,'Kodak Auditorium (Now Dolby Theatre)',11,'2008-02-24'),(2009,'Kodak Auditorium (Now Dolby Theatre)',15,'2009-02-22'),(2010,'Kodak Auditorium (Now Dolby Theatre)',13,'2010-03-07'),(2011,'Kodak Auditorium (Now Dolby Theatre)',12,'2011-02-27'),(2012,'Hollywood and Highland Centre (Now Dolby Theatre)',10,'2012-02-26'),(2013,'Dolby Theatre',9,'2013-02-24'),(2014,'Dolby Theatre',8,'2014-03-02'),(2015,'Dolby Theatre',7,'2015-02-22'),(2016,'Dolby Theatre',6,'2016-02-28'),(2017,'Dolby Theatre',1,'2017-02-26'),(2018,'Dolby Theatre',1,'2018-03-04'),(2019,'Dolby Theatre',14,'2019-02-24'),(2020,'Dolby Theatre',14,'2020-02-09'),(2021,'Union Station',14,'2021-04-25'),(2022,'Dolby Theatre',4,'2022-03-27'),(2023,'Dolby Theatre',1,'2023-03-12');
/*!40000 ALTER TABLE `Ceremony` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Character_Table`
--

DROP TABLE IF EXISTS `Character_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Character_Table` (
  `Character_Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`Character_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Character_Table`
--

LOCK TABLES `Character_Table` WRITE;
/*!40000 ALTER TABLE `Character_Table` DISABLE KEYS */;
INSERT INTO `Character_Table` VALUES (1,'Elsa','Female',NULL),(2,'Anna','Female',NULL),(3,'Joy','Female',NULL),(4,'Judy Hopps','Female',NULL),(5,'Chief Bogo','Male',NULL),(6,'Gwen Stacy','Female',NULL),(7,'Woody','Male',NULL),(8,'Buzz Lightyear','Male',NULL),(9,'Duke Caboom','Male',NULL),(10,'Mirabel Madrigal','Female',15),(11,'Abuela Alma Madrigal','Female',75),(12,'Ruby Rossi','Female',NULL),(13,'Bernardo Villalobos','Male',NULL),(14,'Kim Ki-taek','Male',NULL),(15,'Park Dong-ik','Male',NULL),(16,'Tony Lip','Male',NULL);
/*!40000 ALTER TABLE `Character_Table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director`
--

DROP TABLE IF EXISTS `Director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Director` (
  `Artist_Id` int NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Artist_Id`),
  CONSTRAINT `Director_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Artist_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director`
--

LOCK TABLES `Director` WRITE;
/*!40000 ALTER TABLE `Director` DISABLE KEYS */;
INSERT INTO `Director` VALUES (26,'Female'),(27,'Female'),(28,'Male'),(29,'Male'),(30,'Male'),(31,'Male'),(32,'Male'),(33,'Female'),(34,'Male'),(35,'Female'),(36,'Male'),(37,'Male'),(38,'Male'),(39,'Male'),(40,'Male'),(41,'Male'),(42,'Male');
/*!40000 ALTER TABLE `Director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Family_Member`
--

DROP TABLE IF EXISTS `Family_Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Family_Member` (
  `Member_Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Relation` varchar(25) NOT NULL,
  PRIMARY KEY (`Member_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Family_Member`
--

LOCK TABLES `Family_Member` WRITE;
/*!40000 ALTER TABLE `Family_Member` DISABLE KEYS */;
INSERT INTO `Family_Member` VALUES (1,'Jane Hajduk','Spouse'),(2,'Rita Wilson','Spouse'),(3,'Jim Hanks','Brother'),(4,'Alexandra Grant','Spouse'),(5,'Maggie Baird','Mother'),(6,'Nick Young','Cousin'),(7,'Baby Keem','Cousin');
/*!40000 ALTER TABLE `Family_Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Featured_In`
--

DROP TABLE IF EXISTS `Featured_In`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Featured_In` (
  `Song_Id` int NOT NULL,
  `Movie_Id` int NOT NULL,
  PRIMARY KEY (`Song_Id`,`Movie_Id`),
  KEY `Movie_Id` (`Movie_Id`),
  CONSTRAINT `Featured_In_ibfk_1` FOREIGN KEY (`Song_Id`) REFERENCES `Song` (`Song_Id`),
  CONSTRAINT `Featured_In_ibfk_2` FOREIGN KEY (`Movie_Id`) REFERENCES `Movie` (`Movie_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Featured_In`
--

LOCK TABLES `Featured_In` WRITE;
/*!40000 ALTER TABLE `Featured_In` DISABLE KEYS */;
INSERT INTO `Featured_In` VALUES (8,20143),(6,20183),(3,20203);
/*!40000 ALTER TABLE `Featured_In` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genre` (
  `Genre_Id` int NOT NULL,
  `Name` varchar(25) NOT NULL,
  PRIMARY KEY (`Genre_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'Pop'),(2,'Rock'),(3,'Hip-Hop'),(4,'Country'),(5,'Jazz'),(6,'Electronic'),(7,'R&B'),(8,'Classical'),(9,'Blues'),(10,'Reggae'),(11,'Desi'),(12,'Folk');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Host`
--

DROP TABLE IF EXISTS `Host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Host` (
  `Host_Id` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Host_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Host`
--

LOCK TABLES `Host` WRITE;
/*!40000 ALTER TABLE `Host` DISABLE KEYS */;
INSERT INTO `Host` VALUES (1,'Jimmy Kimmel'),(2,'Regina Hall'),(3,'Amy Schumer'),(4,'Wanda Sykes'),(5,'Steve Martin'),(6,'Chris Rock'),(7,'Neil Patrick Harris'),(8,'Ellen DeGeneres'),(9,'Seth MacFarlane'),(10,'Billy Crystal'),(11,'James Franco'),(12,'Anne Hathaway'),(13,'Alec Baldwin'),(14,'No Host'),(15,'Hugh Jackman'),(16,'Whoopi Goldberg'),(17,'David Letterman'),(18,'Chevy Chase');
/*!40000 ALTER TABLE `Host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie` (
  `Movie_Id` int NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Year` year NOT NULL,
  `Budget` int DEFAULT NULL,
  `Gross_Income` int DEFAULT NULL,
  `Genre` varchar(25) DEFAULT NULL,
  `Result` int NOT NULL,
  `Director_Id` int DEFAULT NULL,
  PRIMARY KEY (`Movie_Id`),
  KEY `Result` (`Result`),
  KEY `Movie_Director_FK` (`Director_Id`),
  CONSTRAINT `Movie_Director_FK` FOREIGN KEY (`Director_Id`) REFERENCES `Director` (`Artist_Id`),
  CONSTRAINT `Movie_ibfk_1` FOREIGN KEY (`Result`) REFERENCES `Result` (`Result_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (20143,'Frozen',2013,150000000,1280000000,'Musical-Fantasy',2014301,33),(20153,'Big Hero 6',2014,165000000,657800000,'Superhero',2015301,41),(20161,'Spotlight',2015,20000000,98700000,'Biographical Drama',2016101,32),(20163,'Inside Out',2015,175000000,858800000,'Coming-of-Age',2016301,36),(20171,'Moonlight',2016,1500000,65200000,'Coming-of-Age',2017101,31),(20173,'Zootopia',2016,150000000,1025000000,'Cop Action Comedy',2017301,39),(20181,'The Shape of Water',2017,20000000,195300000,'Romantic-Fantasy',2018101,30),(20183,'Coco',2017,175000000,814300000,'Fantasy',2018301,42),(20191,'Green Book',2018,23000000,321800000,'Biographical Comedy-Drama',2019101,34),(20193,'Spider-Man: Into the Spider-Verse',2018,90000000,384300000,'Superhero',2019301,38),(20201,'Parasite',2019,15500000,262700000,'Comedy-Thriller',2020101,29),(20203,'Toy Story 4',2019,200000000,1073000000,'Comedy-Drama',2020301,37),(20211,'Nomadland',2020,5000000,39500000,'Drama',2021101,26),(20213,'Soul',2020,150000000,121000000,'Fantasy Comedy-Drama',2021301,36),(20221,'CODA',2021,10000000,2200000,'Comedy-Drama',2022101,35),(20223,'Encanto',2021,120000000,256800000,'Musical-Fantasy',2022301,40),(20231,'Everything Everywhere All at Once',2022,15000000,141200000,'Comedy',2023101,28),(20233,'Guillermo del \'s Pinocchio',2022,35000000,109846,'Musical-Fantasy',2023301,30);
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Others`
--

DROP TABLE IF EXISTS `Others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Others` (
  `Artist_Id` int NOT NULL,
  PRIMARY KEY (`Artist_Id`),
  CONSTRAINT `Others_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Artist_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Others`
--

LOCK TABLES `Others` WRITE;
/*!40000 ALTER TABLE `Others` DISABLE KEYS */;
/*!40000 ALTER TABLE `Others` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Played`
--

DROP TABLE IF EXISTS `Played`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Played` (
  `Artist_Id` int NOT NULL,
  `Movie_Id` int NOT NULL,
  `Character_Id` int NOT NULL,
  PRIMARY KEY (`Artist_Id`,`Movie_Id`,`Character_Id`),
  KEY `Movie_Id` (`Movie_Id`),
  KEY `Character_Id` (`Character_Id`),
  CONSTRAINT `Played_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Artist_Id`),
  CONSTRAINT `Played_ibfk_2` FOREIGN KEY (`Movie_Id`) REFERENCES `Movie` (`Movie_Id`),
  CONSTRAINT `Played_ibfk_3` FOREIGN KEY (`Character_Id`) REFERENCES `Character_Table` (`Character_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Played`
--

LOCK TABLES `Played` WRITE;
/*!40000 ALTER TABLE `Played` DISABLE KEYS */;
INSERT INTO `Played` VALUES (18,20143,2),(19,20143,1),(17,20163,3),(15,20173,4),(16,20173,5),(6,20191,16),(14,20193,6),(4,20201,15),(5,20201,14),(11,20203,7),(12,20203,8),(13,20203,9),(1,20221,12),(2,20221,13),(9,20223,10),(10,20223,11);
/*!40000 ALTER TABLE `Played` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Related_To`
--

DROP TABLE IF EXISTS `Related_To`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Related_To` (
  `Artist_Id` int NOT NULL,
  `Member_Id` int NOT NULL,
  PRIMARY KEY (`Artist_Id`,`Member_Id`),
  KEY `Related_To_ibfk_2` (`Member_Id`),
  CONSTRAINT `Related_To_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Artist_Id`),
  CONSTRAINT `Related_To_ibfk_2` FOREIGN KEY (`Member_Id`) REFERENCES `Family_Member` (`Member_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Related_To`
--

LOCK TABLES `Related_To` WRITE;
/*!40000 ALTER TABLE `Related_To` DISABLE KEYS */;
INSERT INTO `Related_To` VALUES (12,1),(11,2),(11,3),(13,4),(21,5),(22,6),(23,7);
/*!40000 ALTER TABLE `Related_To` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Result`
--

DROP TABLE IF EXISTS `Result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Result` (
  `Result_Id` int NOT NULL,
  `Won` tinyint(1) DEFAULT NULL,
  `Place` varchar(25) DEFAULT NULL,
  `Year` year DEFAULT NULL,
  `Category` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Result_Id`),
  CONSTRAINT `check_place_if_won` CHECK ((((`Won` = 1) and (`Place` is not null)) or ((`Won` = 0) and (`Place` is null)))),
  CONSTRAINT `Result_chk_1` CHECK ((`Won` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Result`
--

LOCK TABLES `Result` WRITE;
/*!40000 ALTER TABLE `Result` DISABLE KEYS */;
INSERT INTO `Result` VALUES (2000101,1,'1',2000,'1'),(2000301,1,'1',2000,'3'),(2000401,1,'1',2000,'4'),(2000701,1,'1',2000,'7'),(2001101,1,'1',2001,'1'),(2001301,1,'1',2001,'3'),(2001401,1,'1',2001,'4'),(2001701,1,'1',2001,'7'),(2002101,1,'1',2002,'1'),(2002301,1,'1',2002,'3'),(2002401,1,'1',2002,'4'),(2002701,1,'1',2002,'7'),(2003101,1,'1',2003,'1'),(2003301,1,'1',2003,'3'),(2003401,1,'1',2003,'4'),(2003701,1,'1',2003,'7'),(2004101,1,'1',2004,'1'),(2004301,1,'1',2004,'3'),(2004401,1,'1',2004,'4'),(2004701,1,'1',2004,'7'),(2005101,1,'1',2005,'1'),(2005301,1,'1',2005,'3'),(2005401,1,'1',2005,'4'),(2005701,1,'1',2005,'7'),(2006101,1,'1',2006,'1'),(2006301,1,'1',2006,'3'),(2006401,1,'1',2006,'4'),(2006701,1,'1',2006,'7'),(2007101,1,'1',2007,'1'),(2007301,1,'1',2007,'3'),(2007401,1,'1',2007,'4'),(2007701,1,'1',2007,'7'),(2008101,1,'1',2008,'1'),(2008301,1,'1',2008,'3'),(2008401,1,'1',2008,'4'),(2008701,1,'1',2008,'7'),(2009101,1,'1',2009,'1'),(2009301,1,'1',2009,'3'),(2009401,1,'1',2009,'4'),(2009701,1,'1',2009,'7'),(2010101,1,'1',2010,'1'),(2010301,1,'1',2010,'3'),(2010401,1,'1',2010,'4'),(2010701,1,'1',2010,'7'),(2011101,1,'1',2011,'1'),(2011301,1,'1',2011,'3'),(2011401,1,'1',2011,'4'),(2011701,1,'1',2011,'7'),(2012101,1,'1',2012,'1'),(2012301,1,'1',2012,'3'),(2012401,1,'1',2012,'4'),(2012701,1,'1',2012,'7'),(2013101,1,'1',2013,'1'),(2013301,1,'1',2013,'3'),(2013401,1,'1',2013,'4'),(2013701,1,'1',2013,'7'),(2014101,1,'1',2014,'1'),(2014301,1,'1',2014,'3'),(2014401,1,'1',2014,'4'),(2014701,1,'1',2014,'7'),(2015101,1,'1',2015,'1'),(2015301,1,'1',2015,'3'),(2015401,1,'1',2015,'4'),(2015701,1,'1',2015,'7'),(2016101,1,'1',2016,'1'),(2016301,1,'1',2016,'3'),(2016401,1,'1',2016,'4'),(2016701,1,'1',2016,'7'),(2017101,1,'1',2017,'1'),(2017301,1,'1',2017,'3'),(2017401,1,'1',2017,'4'),(2017701,1,'1',2017,'7'),(2018101,1,'1',2018,'1'),(2018301,1,'1',2018,'3'),(2018401,1,'1',2018,'4'),(2018701,1,'1',2018,'7'),(2019101,1,'1',2019,'1'),(2019301,1,'1',2019,'3'),(2019401,1,'1',2019,'4'),(2019701,1,'1',2019,'7'),(2020101,1,'1',2020,'1'),(2020301,1,'1',2020,'3'),(2020401,1,'1',2020,'4'),(2020701,1,'1',2020,'7'),(2021101,1,'1',2021,'1'),(2021301,1,'1',2021,'3'),(2021401,1,'1',2021,'4'),(2021701,1,'1',2021,'7'),(2022101,1,'1',2022,'1'),(2022301,1,'1',2022,'3'),(2022401,1,'1',2022,'4'),(2022701,1,'1',2022,'7'),(2023101,1,'1',2023,'1'),(2023301,1,'1',2023,'3'),(2023401,1,'1',2023,'4'),(2023701,1,'1',2023,'7');
/*!40000 ALTER TABLE `Result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sang`
--

DROP TABLE IF EXISTS `Sang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sang` (
  `Artist_Id` int NOT NULL,
  `Song_Id` int NOT NULL,
  PRIMARY KEY (`Artist_Id`,`Song_Id`),
  KEY `Song_Id` (`Song_Id`),
  CONSTRAINT `Sang_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Artist_Id`),
  CONSTRAINT `Sang_ibfk_2` FOREIGN KEY (`Song_Id`) REFERENCES `Song` (`Song_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sang`
--

LOCK TABLES `Sang` WRITE;
/*!40000 ALTER TABLE `Sang` DISABLE KEYS */;
INSERT INTO `Sang` VALUES (20,1),(21,2),(23,4),(22,5),(25,5),(24,7),(19,8);
/*!40000 ALTER TABLE `Sang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Singer`
--

DROP TABLE IF EXISTS `Singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Singer` (
  `Artist_Id` int NOT NULL,
  PRIMARY KEY (`Artist_Id`),
  CONSTRAINT `Singer_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Artist_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Singer`
--

LOCK TABLES `Singer` WRITE;
/*!40000 ALTER TABLE `Singer` DISABLE KEYS */;
INSERT INTO `Singer` VALUES (19),(20),(21),(22),(23),(24),(25);
/*!40000 ALTER TABLE `Singer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Song`
--

DROP TABLE IF EXISTS `Song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Song` (
  `Song_Id` int NOT NULL,
  `Genre_Id` int NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Results` varchar(25) DEFAULT NULL,
  `Year_Of_Nomination` year DEFAULT NULL,
  `Language` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Song_Id`,`Genre_Id`),
  KEY `Genre_Id` (`Genre_Id`),
  CONSTRAINT `Song_ibfk_1` FOREIGN KEY (`Genre_Id`) REFERENCES `Genre` (`Genre_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Song`
--

LOCK TABLES `Song` WRITE;
/*!40000 ALTER TABLE `Song` DISABLE KEYS */;
INSERT INTO `Song` VALUES (1,11,'Naatu Naatu','Winner',2023,'Telugu'),(2,1,'No Time to Die','Winner',2022,'English'),(3,1,'I Can\'t Let You Throw Yourself Away','Nominated',2020,'English'),(4,12,'Dos Oruguitas','Nominated',2022,'Spanish'),(5,1,'All the Stars','Nominated',2019,'English'),(6,1,'Remember Me','Winner',2018,'English'),(7,5,'City of Stars','Winner',2017,'English'),(8,1,'Let It Go','Winner',2014,'English');
/*!40000 ALTER TABLE `Song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wins`
--

DROP TABLE IF EXISTS `Wins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Wins` (
  `Movie_Id` int NOT NULL,
  `Ceremony_Year` year NOT NULL,
  `Artist_Id` int DEFAULT NULL,
  `Award_Category_Id` int NOT NULL,
  PRIMARY KEY (`Movie_Id`,`Ceremony_Year`,`Award_Category_Id`),
  KEY `Artist_Id` (`Artist_Id`),
  KEY `Ceremony_Year` (`Ceremony_Year`),
  KEY `wins_category` (`Award_Category_Id`),
  CONSTRAINT `wins_category` FOREIGN KEY (`Award_Category_Id`) REFERENCES `Award_Category` (`Award_Category_Id`),
  CONSTRAINT `wins_movie` FOREIGN KEY (`Movie_Id`) REFERENCES `Movie` (`Movie_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wins`
--

LOCK TABLES `Wins` WRITE;
/*!40000 ALTER TABLE `Wins` DISABLE KEYS */;
INSERT INTO `Wins` VALUES (20143,2014,NULL,7),(20153,2014,NULL,7),(20161,2015,NULL,1),(20163,2015,NULL,7),(20171,2016,NULL,1),(20173,2016,NULL,7),(20181,2017,NULL,1),(20183,2017,NULL,7),(20191,2018,NULL,1),(20193,2018,NULL,7),(20201,2019,NULL,1),(20203,2019,NULL,7),(20211,2020,NULL,1),(20213,2020,NULL,7),(20221,2021,NULL,1),(20223,2021,NULL,7),(20231,2022,NULL,1),(20233,2022,NULL,7);
/*!40000 ALTER TABLE `Wins` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02  1:52:09
