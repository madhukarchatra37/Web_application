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
-- Table structure for table `cart_flight_details`
--

DROP TABLE IF EXISTS `cart_flight_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_flight_details` (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `flight_id` int(10) NOT NULL,
  `flight_name` varchar(100) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `departure_date` datetime NOT NULL,
  `returning_date` datetime DEFAULT NULL,
  `no_of_passengers` int(20) NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `total_amt` float(10,2) DEFAULT NULL,
  `booking_status` int(11) DEFAULT '1',
  PRIMARY KEY (`cart_id`),
  KEY `fc_user_id` (`user_id`),
  KEY `fc_flight_id` (`flight_id`),
  CONSTRAINT `fc_flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flight_details` (`flight_id`),
  CONSTRAINT `fc_user_id` FOREIGN KEY (`user_id`) REFERENCES `account` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_flight_details`
--

LOCK TABLES `cart_flight_details` WRITE;
/*!40000 ALTER TABLE `cart_flight_details` DISABLE KEYS */;
INSERT INTO `cart_flight_details` VALUES (1,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,0.00,0),(2,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,0.00,0),(3,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,0.00,0),(4,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,1200.00,0),(5,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,0),(6,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,0),(7,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,0),(8,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,0),(9,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,0),(10,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,0),(11,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,1350.00,0),(12,2,1000,'Delta Airlines','Chicago','Charlotte','2014-12-06 00:00:00',NULL,60,150.00,1350.00,0),(13,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,1350.00,0),(14,2,1000,'Delta Airlines','Chicago','Charlotte','2014-12-06 00:00:00',NULL,60,150.00,1350.00,0),(15,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,1350.00,0),(16,2,1000,'Delta Airlines','Chicago','Charlotte','2014-12-06 00:00:00',NULL,60,150.00,1350.00,0),(17,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,1350.00,0),(18,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,1350.00,0),(19,2,1000,'Delta Airlines','Chicago','Charlotte','2014-12-06 00:00:00',NULL,60,150.00,1350.00,0),(22,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,1350.00,0),(27,2,1002,'Delta Airlines','Chicago','Charlotte','2014-12-06 00:00:00',NULL,60,150.00,450.00,0),(28,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,0),(29,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,0),(30,2,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,0),(32,4,1000,'Delta Airlines','Charlotte','Chicago','2014-12-04 00:00:00',NULL,60,150.00,300.00,1);
/*!40000 ALTER TABLE `cart_flight_details` ENABLE KEYS */;
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
