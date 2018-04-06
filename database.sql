-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: joels
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `Actor_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `LastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`Actor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Arnold','Schwarznegger'),(2,'Tom','Hanks'),(3,'Leonardo','DiCaprio'),(4,'Keanu','Reeves'),(5,'Danny','DeVito'),(6,'Brad','Pitt'),(7,'Mel','Gibson'),(8,'Danny','Glover'),(9,'Natalie','Portman'),(10,'Gary','Oldman'),(11,'Jean','Reno');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Cusomer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `LastName` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Email` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `StreetName` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `HouseNumber` int(11) NOT NULL,
  `ZipCode` int(11) NOT NULL,
  `City` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`Cusomer_ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Phone_UNIQUE` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Mats','Persson','matsp@gmail.com',733639876,'Strandvägen',7,78723,'Uddevalla'),(2,'Lars','Kongo','lassek@hotmail.com',708725441,'Drottninggatan',18,34993,'Överum'),(3,'Bengt','Hansson','bengha@gmail.com',733999883,'Storgatan',45,32345,'Stockholm'),(4,'Svante','Grundberg','svante@grundberg.se',733454545,'Nygatan',3,44877,'Göteborg'),(5,'Tomas','Brolin','tombro@hotmail.com',755984377,'Torggatan',1,89887,'Norrköping'),(6,'Samuel','Forsman','samuel.forsman@hotmail.com',706885904,'Risbrinksvägen',12,58766,'Linköping'),(7,'Linda','Svensson','linn@gmail.com',738998711,'Hamngatan',4,22384,'Luleå'),(8,'Elin','Ekberg','elek@hotmail.com',754778866,'Föreningsgatan',77,58644,'Linköping'),(9,'Sara','Andersson','sara@hotmail.com',706338769,'Klostergatan',6,58223,'Linköping'),(10,'Mats','Andersson','matsand@hotmail.com',708382051,'Klostergatan',6,58223,'Linköping'),(11,'Gunvor','Svanberg','gunvorsvan@hotmail.com',723897355,'Toppstigen',3,88763,'Piteå');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `Director_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `LastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`Director_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Luc','Besson'),(2,'John','McTierman'),(3,'Ivan','Reitman'),(4,'Lana','Wachowski'),(5,'Lilly','Wachowski'),(6,'Joe','Dante'),(7,'David','Fincher'),(8,'Richard','Donner'),(9,'James','Cameron'),(10,'Robert','Zemeckis');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvds`
--

DROP TABLE IF EXISTS `dvds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dvds` (
  `Dvds_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Movies_ID` int(11) DEFAULT NULL,
  `movie_Movie_ID` int(11) NOT NULL,
  PRIMARY KEY (`Dvds_ID`),
  KEY `fk_dvds_movie1_idx` (`movie_Movie_ID`),
  CONSTRAINT `fk_dvds_movie1` FOREIGN KEY (`movie_Movie_ID`) REFERENCES `movie` (`Movie_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvds`
--

LOCK TABLES `dvds` WRITE;
/*!40000 ALTER TABLE `dvds` DISABLE KEYS */;
/*!40000 ALTER TABLE `dvds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `Employee_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `LastName` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Email` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `OrderCount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Phone_UNIQUE` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Lars','Ulrich','lasseu@maxdvd.se',70666666,4),(2,'Felicia','Eriksson','felic@maxdvd.se',722394877,10),(3,'Rutger','Sten','rutger@maxdvd.se',789444433,1),(4,'Louise','Thor','louise@maxdvd.se',723918277,7),(5,'Torbjörn','Gärd','torbjorn@maxdvd.se',745887693,0),(6,'Zandra','Zvenzzon','zandra@maxdvd.se',755627899,2),(7,'Daniel','Fredriksson','danne@maxdvd.se',737889763,0),(8,'Juan','Martinez','juan@maxdvd.se',781929383,6),(9,'Audrey','Horne','audrey@maxdvd.se',722647488,3),(10,'Sven','Sjökvist','sven@maxdvd.se',788131324,5);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `Genre_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`Genre_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Action'),(2,'Adventure'),(3,'Comedy'),(4,'Thriller'),(5,'Horror'),(6,'Drama'),(7,'SciFi'),(8,'Fantasy'),(9,'Crime');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `Movie_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Year` year(4) NOT NULL,
  `Description` text COLLATE utf8mb4_swedish_ci,
  PRIMARY KEY (`Movie_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Leon',1994,'Spännande film om en hitman.'),(2,'The predator',1987,'Intensiv jakt av nästan osynligt monster i djungeln.'),(3,'Twins',1988,'Skojfrisk kriminalkomedi, handlar om ett par väldigt olika tvillingar.'),(4,'The burbs',1989,'En film som visar hur spännande det kan vara i förorten.'),(5,'Matrix',1999,'Surealistisk historia som gör att man ifrågasätter sin verklighet.'),(6,'Fight club',1999,'Män som slåss i källare tillsammans.'),(7,'Lethal weapon',1987,'Polisfilm med mycket action och humor.'),(8,'Titanic',1997,'Spännande och romantisk film om en sjunkande båt.'),(9,'Terminator 2',1991,'Actionspäckad framtidsfilm.'),(10,'Forrest Gump',1994,'Fascinerande berättelse om en ung mans väg genom livet. Tårar utlovas');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_has_actor`
--

DROP TABLE IF EXISTS `movie_has_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_has_actor` (
  `movie_Movie_ID` int(11) NOT NULL,
  `actor_Actor_ID` int(11) NOT NULL,
  PRIMARY KEY (`movie_Movie_ID`,`actor_Actor_ID`),
  KEY `fk_movie_has_actor_actor1_idx` (`actor_Actor_ID`),
  KEY `fk_movie_has_actor_movie1_idx` (`movie_Movie_ID`),
  CONSTRAINT `fk_movie_has_actor_actor1` FOREIGN KEY (`actor_Actor_ID`) REFERENCES `actor` (`Actor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_movie_has_actor_movie1` FOREIGN KEY (`movie_Movie_ID`) REFERENCES `movie` (`Movie_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_has_actor`
--

LOCK TABLES `movie_has_actor` WRITE;
/*!40000 ALTER TABLE `movie_has_actor` DISABLE KEYS */;
INSERT INTO `movie_has_actor` VALUES (2,1),(3,1),(9,1),(4,2),(10,2),(8,3),(5,4),(3,5),(6,6),(7,7),(7,8),(1,9),(1,11);
/*!40000 ALTER TABLE `movie_has_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_has_director`
--

DROP TABLE IF EXISTS `movie_has_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_has_director` (
  `movie_Movie_ID` int(11) NOT NULL,
  `director_Director_ID` int(11) NOT NULL,
  PRIMARY KEY (`movie_Movie_ID`,`director_Director_ID`),
  KEY `fk_movie_has_director_director1_idx` (`director_Director_ID`),
  KEY `fk_movie_has_director_movie1_idx` (`movie_Movie_ID`),
  CONSTRAINT `fk_movie_has_director_director1` FOREIGN KEY (`director_Director_ID`) REFERENCES `director` (`Director_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_movie_has_director_movie1` FOREIGN KEY (`movie_Movie_ID`) REFERENCES `movie` (`Movie_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_has_director`
--

LOCK TABLES `movie_has_director` WRITE;
/*!40000 ALTER TABLE `movie_has_director` DISABLE KEYS */;
INSERT INTO `movie_has_director` VALUES (1,1),(2,2),(3,3),(5,3),(5,4),(4,6),(6,7),(7,8),(8,9),(9,9),(10,10);
/*!40000 ALTER TABLE `movie_has_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_has_genre`
--

DROP TABLE IF EXISTS `movie_has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_has_genre` (
  `movie_Movie_ID` int(11) NOT NULL,
  `genre_Genre_ID` int(11) NOT NULL,
  PRIMARY KEY (`movie_Movie_ID`,`genre_Genre_ID`),
  KEY `fk_movie_has_genre_genre1_idx` (`genre_Genre_ID`),
  KEY `fk_movie_has_genre_movie1_idx` (`movie_Movie_ID`),
  CONSTRAINT `fk_movie_has_genre_genre1` FOREIGN KEY (`genre_Genre_ID`) REFERENCES `genre` (`Genre_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_movie_has_genre_movie1` FOREIGN KEY (`movie_Movie_ID`) REFERENCES `movie` (`Movie_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_has_genre`
--

LOCK TABLES `movie_has_genre` WRITE;
/*!40000 ALTER TABLE `movie_has_genre` DISABLE KEYS */;
INSERT INTO `movie_has_genre` VALUES (1,1),(2,1),(5,1),(6,1),(7,1),(9,1),(5,2),(8,2),(3,3),(4,3),(7,3),(10,3),(4,4),(5,4),(6,4),(8,4),(1,6),(6,6),(8,6),(10,6),(2,7),(5,7),(9,7),(1,9),(3,9);
/*!40000 ALTER TABLE `movie_has_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `Order_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RentDate` date NOT NULL,
  `ReturnDate` date DEFAULT NULL,
  `employee_Employee_ID` int(11) NOT NULL,
  `cusomer_Cusomer_ID` int(11) NOT NULL,
  `movie_Movie_ID` int(11) NOT NULL,
  `rental_objects_rental_objects_ID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Order_ID`),
  KEY `fk_order_employee1_idx` (`employee_Employee_ID`),
  KEY `fk_order_cusomer1_idx` (`cusomer_Cusomer_ID`),
  KEY `fk_order_movie1_idx` (`movie_Movie_ID`),
  KEY `fk_order_rental_objects1_idx` (`rental_objects_rental_objects_ID`),
  CONSTRAINT `fk_order_cusomer1` FOREIGN KEY (`cusomer_Cusomer_ID`) REFERENCES `customer` (`Cusomer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_employee1` FOREIGN KEY (`employee_Employee_ID`) REFERENCES `employee` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_movie1` FOREIGN KEY (`movie_Movie_ID`) REFERENCES `movie` (`Movie_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_rental_objects1` FOREIGN KEY (`rental_objects_rental_objects_ID`) REFERENCES `rental_objects` (`rental_objects_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2018-01-01','2018-01-02',1,1,1,1),(3,'2018-01-02','2018-01-03',2,3,4,4),(4,'2018-01-02','2018-01-07',2,4,6,6),(5,'2018-01-06','2018-01-09',3,5,5,5),(6,'2018-01-06','2018-01-12',2,2,2,11),(7,'2018-01-07','2018-01-13',2,3,10,10),(8,'2018-01-13','2018-01-14',2,4,9,9),(9,'2018-01-14','2018-01-17',2,8,7,7),(10,'2018-01-15','2018-01-18',2,7,6,6),(11,'2018-01-17','2018-01-22',1,9,5,5),(12,'2018-01-20','2018-01-27',1,10,8,8),(13,'2018-01-21','2018-01-23',2,3,3,3),(14,'2018-01-25','2018-01-30',1,1,1,1),(15,'2018-02-01','2018-02-04',2,2,1,1),(16,'2018-02-03','2018-02-05',2,8,7,7),(17,'2018-02-04','2018-02-08',4,4,4,4),(18,'2018-02-05','2018-02-08',4,2,10,10),(19,'2018-02-06','2018-02-11',4,10,1,1),(20,'2018-02-07','2018-02-09',4,1,2,2),(21,'2018-02-09','2018-02-09',4,5,5,5),(22,'2018-02-10','2018-02-11',4,4,6,6),(23,'2018-02-12','2018-02-13',4,6,9,9),(24,'2018-02-13','2018-02-19',6,1,4,4),(25,'2018-02-12','2018-02-13',6,7,6,6),(26,'2018-02-13','2018-02-16',8,11,2,2),(27,'2018-02-15','2018-02-18',8,8,8,8),(28,'2018-02-20','2018-02-26',8,2,5,5),(29,'2018-02-25','2018-02-27',8,1,3,3),(30,'2018-02-28','2018-03-02',8,7,7,7),(31,'2018-03-02','2018-03-02',8,5,2,11),(32,'2018-03-03','2018-03-04',9,2,8,8),(33,'2018-03-05','2018-03-07',9,10,2,2),(34,'2018-03-08','2018-03-14',9,11,1,1),(35,'2018-03-14','2018-03-16',10,1,3,3),(36,'2018-03-17','2018-03-20',10,6,5,5),(37,'2018-03-18','2018-03-21',10,9,9,9),(38,'2018-03-23','2018-03-28',10,10,1,1),(39,'2018-04-01','2018-04-03',10,2,7,7);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_objects`
--

DROP TABLE IF EXISTS `rental_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental_objects` (
  `rental_objects_ID` int(11) NOT NULL AUTO_INCREMENT,
  `rented` tinyint(4) NOT NULL DEFAULT '0',
  `movie_Movie_ID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rental_objects_ID`),
  KEY `fk_rental_objects_movie1_idx` (`movie_Movie_ID`),
  CONSTRAINT `fk_rental_objects_movie1` FOREIGN KEY (`movie_Movie_ID`) REFERENCES `movie` (`Movie_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_objects`
--

LOCK TABLES `rental_objects` WRITE;
/*!40000 ALTER TABLE `rental_objects` DISABLE KEYS */;
INSERT INTO `rental_objects` VALUES (1,0,1),(2,0,2),(3,0,3),(4,0,4),(5,0,5),(6,0,6),(7,0,7),(8,0,8),(9,0,9),(10,0,10),(11,0,2),(12,0,2),(13,0,6);
/*!40000 ALTER TABLE `rental_objects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-06  8:50:16
