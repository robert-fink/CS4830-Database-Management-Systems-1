-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `Clothing`
--

DROP TABLE IF EXISTS `Clothing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clothing` (
  `pid` int(11) NOT NULL,
  `target_gender` varchar(15) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  CONSTRAINT `Clothing_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `Product` (`pid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clothing`
--

LOCK TABLES `Clothing` WRITE;
/*!40000 ALTER TABLE `Clothing` DISABLE KEYS */;
INSERT INTO `Clothing` VALUES (11889,'Men',3.20),(11984,'Women',4.60),(1000003,'Women',4.10);
/*!40000 ALTER TABLE `Clothing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Food`
--

DROP TABLE IF EXISTS `Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Food` (
  `pid` int(11) NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  CONSTRAINT `Food_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `Product` (`pid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food`
--

LOCK TABLES `Food` WRITE;
/*!40000 ALTER TABLE `Food` DISABLE KEYS */;
INSERT INTO `Food` VALUES (11887,'Breakfast Foods'),(12001,'Frozen Goods'),(12137,'Snacks'),(1000002,'Quick Meals');
/*!40000 ALTER TABLE `Food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `pid` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (11887,'Corn Flakes','Kellogg\'s'),(11889,'Basketball Shoes','Nike'),(11984,'Heels','Steve Madden'),(12001,'Ice Cream','Blue Bunny'),(12035,'Dishwasher','Whirlpool'),(12137,'Electric Drill','Black & Decker'),(1000001,'Epi Leather Purse','Louis Vuitton'),(1000002,'Mac & Cheese','Kraft'),(1000003,'Television','Sony');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `uid` int(11) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (567,'Eric','Smith'),(613,'Ken','Johnson'),(884,'Nicholas','Williams'),(932,'Joanna','Brown'),(1273,'Phill','Jones'),(1793,'Ina','Miller'),(2271,'jo','Davis'),(2401,'Shawn','Garcia'),(2470,'Samantha','Rodriguez'),(2552,'Phil','Wilson'),(2881,'Maya','Martinez'),(3211,'Bill','Taylor'),(3443,'Lori','Thomas'),(3469,'Sara','Hernandez'),(4000,'Shai','Moore'),(4281,'Matt','Martinez'),(4316,'Christine','Jackson'),(4497,'Tony','Thmopson'),(4527,'alli','White'),(86638,'Rodney','Lee');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Buys_Product`
--

DROP TABLE IF EXISTS `User_Buys_Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Buys_Product` (
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `unit_price` decimal(60,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`date_time`,`uid`,`pid`),
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  CONSTRAINT `User_Buys_Product_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `User` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `User_Buys_Product_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `Product` (`pid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Buys_Product`
--

LOCK TABLES `User_Buys_Product` WRITE;
/*!40000 ALTER TABLE `User_Buys_Product` DISABLE KEYS */;
INSERT INTO `User_Buys_Product` VALUES (11887,613,'2016-01-24 00:58:16',4.49,1),(11887,884,'2016-01-24 02:41:45',3.29,4),(11887,932,'2016-01-24 09:07:35',3.50,3),(11887,1273,'2016-01-24 09:35:16',3.20,3),(11887,1793,'2016-01-24 15:02:41',3.88,1),(11887,2271,'2016-01-24 16:14:33',3.80,3),(11887,2401,'2016-01-24 16:14:33',3.96,2),(11887,2470,'2016-01-24 19:09:54',3.09,2),(11887,2552,'2016-01-24 21:38:30',3.67,5),(11887,2881,'2016-01-25 00:10:26',3.93,2),(11887,3211,'2016-01-25 01:41:21',3.93,2),(11887,3443,'2016-01-25 03:59:10',3.48,2),(11887,3469,'2016-01-25 04:54:26',3.33,5),(11887,4000,'2016-01-25 06:20:25',3.59,3),(11887,4281,'2016-01-25 12:23:12',3.68,2),(11887,4316,'2016-01-25 13:48:46',3.11,1),(11887,4497,'2016-01-25 13:48:46',3.54,2),(11887,4527,'2016-01-25 15:00:33',3.03,1),(11887,86638,'2016-01-25 19:10:53',3.94,4),(11889,932,'2016-01-25 19:18:40',99.87,1),(11984,2470,'2016-01-25 19:33:56',111.07,1),(11889,86638,'2016-01-25 19:33:56',75.21,2),(11984,4316,'2016-01-25 20:42:18',83.20,1),(11984,86638,'2016-01-26 05:22:34',92.40,1),(11984,86638,'2016-01-26 06:27:42',88.72,1),(11984,4281,'2016-01-26 08:03:39',78.52,1),(11984,86638,'2016-01-26 08:03:39',104.09,1),(11984,86638,'2016-01-26 18:54:36',120.79,1),(11984,86638,'2016-01-27 02:18:34',70.82,1),(11984,86638,'2016-01-27 02:32:11',72.39,1),(11984,86638,'2016-01-27 03:09:13',103.83,1),(12001,86638,'2016-01-27 07:17:54',3.26,2),(12001,86638,'2016-01-27 07:22:50',2.96,5),(12001,1273,'2016-01-27 07:44:35',3.72,1),(12001,86638,'2016-01-27 07:44:35',3.22,4),(12001,86638,'2016-01-27 13:00:34',2.23,4),(12001,86638,'2016-01-27 15:07:57',4.02,3),(12035,86638,'2016-01-27 19:44:13',784.45,1),(12137,932,'2016-01-27 20:33:28',47.58,1),(12137,86638,'2016-01-27 22:19:20',62.78,1),(12137,86638,'2016-01-27 22:32:30',54.18,2),(1000001,1273,'2016-01-28 00:31:39',1853.88,1),(1000001,2470,'2016-01-28 15:33:13',1023.87,1),(1000001,86638,'2016-01-28 16:48:54',1799.22,1),(1000002,1273,'2016-01-28 18:51:30',2.62,3),(1000002,86638,'2016-01-29 07:25:24',1.99,8),(1000003,932,'2016-01-29 10:12:53',978.03,1),(1000003,2552,'2016-01-29 19:25:29',1093.22,1),(1000003,86638,'2016-01-29 23:19:22',989.02,1);
/*!40000 ALTER TABLE `User_Buys_Product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-08 18:00:10
