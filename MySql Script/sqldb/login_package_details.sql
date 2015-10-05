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
-- Table structure for table `package_details`
--

DROP TABLE IF EXISTS `package_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_details` (
  `package_id` int(10) NOT NULL AUTO_INCREMENT,
  `flight_id` int(10) DEFAULT NULL,
  `hotel_id` int(10) DEFAULT NULL,
  `cab_id` int(10) DEFAULT NULL,
  `total_amt` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`package_id`),
  KEY `fk_flight_id` (`flight_id`),
  KEY `fk_hotel_id` (`hotel_id`),
  KEY `fk_cab_id` (`cab_id`),
  CONSTRAINT `fk_cab_id` FOREIGN KEY (`cab_id`) REFERENCES `cab_details` (`cab_id`),
  CONSTRAINT `fk_flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flight_details` (`flight_id`),
  CONSTRAINT `fk_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_details` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_details`
--

LOCK TABLES `package_details` WRITE;
/*!40000 ALTER TABLE `package_details` DISABLE KEYS */;
INSERT INTO `package_details` VALUES (1000,1000,1006,1000,NULL),(1001,1000,1006,1006,NULL),(1002,1002,1007,1007,NULL),(1003,1002,1007,1008,NULL),(1004,1003,1010,1009,NULL),(1005,1003,1010,1010,NULL),(1006,1004,1007,1007,NULL),(1007,1004,1007,1008,NULL);
/*!40000 ALTER TABLE `package_details` ENABLE KEYS */;
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
