CREATE DATABASE  IF NOT EXISTS `login` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `login`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: login
-- ------------------------------------------------------
-- Server version	5.6.21-enterprise-commercial-advanced-log

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
-- Table structure for table `cab_details`
--

DROP TABLE IF EXISTS `cab_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cab_details` (
  `cab_id` int(11) NOT NULL AUTO_INCREMENT,
  `cab_name` varchar(100) NOT NULL,
  `cab_type` varchar(50) NOT NULL,
  `price_per_mile` int(11) NOT NULL,
  `pick_up_location` varchar(500) NOT NULL,
  `pick_up_time` varchar(50) NOT NULL,
  `drop_off_location` varchar(500) NOT NULL,
  PRIMARY KEY (`cab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cab_details`
--

LOCK TABLES `cab_details` WRITE;
/*!40000 ALTER TABLE `cab_details` DISABLE KEYS */;
INSERT INTO `cab_details` VALUES (1000,'Chicago_cab','Compact',40,'909 North Michigan Ave, chicago','2014-12-05 00:00:00','201 north tryon street,chicago'),(1006,'Chicago_cab','Luxury',40,'909 North Michigan Ave,chicago','2014-12-05 15:00:00','201 north tryon street,chicago'),(1007,'Charlotte yellow_cab','Compact',40,'101 North Tryon Street','2014-12-04 00:00:00','9421 Grove crest lane'),(1008,'Charlotte yellow_cab ','Luxury',40,'101 North Tryon Street','2014-12-04 00:00:00','9421 Grove crest lane'),(1009,'Atlanta Taxi','Compact',40,'901 Berkeleys Drive','2014-12-06 00:00:00','651 springwood drive'),(1010,'Atlanta Taxi','Luxury',40,'901 Berkeleys Drive','2014-12-06 00:00:00','651 springwood drive');
/*!40000 ALTER TABLE `cab_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-30 14:38:32
