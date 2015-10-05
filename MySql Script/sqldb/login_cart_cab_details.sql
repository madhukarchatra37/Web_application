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
-- Table structure for table `cart_cab_details`
--

DROP TABLE IF EXISTS `cart_cab_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_cab_details` (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `cab_id` int(10) NOT NULL,
  `cab_name` varchar(100) NOT NULL,
  `cab_type` varchar(50) NOT NULL,
  `price_per_mile` float(10,2) DEFAULT NULL,
  `pick_up_location` varchar(500) NOT NULL,
  `pick_up_time` datetime NOT NULL,
  `drop_off_location` varchar(500) NOT NULL,
  `booking_status` int(11) DEFAULT '1',
  PRIMARY KEY (`cart_id`),
  KEY `cc_user_id` (`user_id`),
  CONSTRAINT `cc_user_id` FOREIGN KEY (`user_id`) REFERENCES `account` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cab_details`
--

LOCK TABLES `cart_cab_details` WRITE;
/*!40000 ALTER TABLE `cart_cab_details` DISABLE KEYS */;
INSERT INTO `cart_cab_details` VALUES (1,2,1000,'Chicago_cab','Compact',40.00,'909 North Michigan Ave, chicago','2014-12-05 00:00:00','201 north tryon street,chicago',0),(2,2,1000,'Chicago_cab','Compact',40.00,'909 North Michigan Ave, chicago','2014-12-05 00:00:00','201 north tryon street,chicago',0),(4,4,1000,'Chicago_cab','Compact',40.00,'909 North Michigan Ave, chicago','2014-12-05 00:00:00','201 north tryon street,chicago',1);
/*!40000 ALTER TABLE `cart_cab_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-30 14:38:31
