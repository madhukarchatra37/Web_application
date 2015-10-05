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
-- Table structure for table `cart_hotel_details`
--

DROP TABLE IF EXISTS `cart_hotel_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_hotel_details` (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `hotel_id` int(10) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `check_in_date` datetime NOT NULL,
  `check_out_date` datetime NOT NULL,
  `no_of_passengers` int(20) NOT NULL,
  `no_of_rooms` int(20) DEFAULT NULL,
  `price_per_room` float(10,2) DEFAULT NULL,
  `total_amt` float(10,2) DEFAULT NULL,
  `booking_status` int(11) DEFAULT '1',
  PRIMARY KEY (`cart_id`),
  KEY `hc_user_id` (`user_id`),
  KEY `hc_hotel_id` (`hotel_id`),
  CONSTRAINT `hc_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_details` (`hotel_id`),
  CONSTRAINT `hc_user_id` FOREIGN KEY (`user_id`) REFERENCES `account` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_hotel_details`
--

LOCK TABLES `cart_hotel_details` WRITE;
/*!40000 ALTER TABLE `cart_hotel_details` DISABLE KEYS */;
INSERT INTO `cart_hotel_details` VALUES (1,2,1007,'Hyatt','101 North Tryon','Charlotte','North Carolina','28262','2014-12-01 00:00:00','2014-12-10 00:00:00',100,100,150.00,0.00,0),(2,2,1006,'The Westin','909 North Michigan Ave','Chicago','Illinois','60611','2014-12-01 00:00:00','2014-12-10 00:00:00',100,100,150.00,0.00,0),(3,2,1007,'Hyatt','101 North Tryon','Charlotte','North Carolina','28262','2014-12-01 00:00:00','2014-12-10 00:00:00',100,100,150.00,300.00,0),(4,2,1006,'The Westin','909 North Michigan Ave','Chicago','Illinois','60611','2014-12-01 00:00:00','2014-12-10 00:00:00',100,100,150.00,300.00,0),(5,2,1006,'The Westin','909 North Michigan Ave','Chicago','Illinois','60611','2014-12-01 00:00:00','2014-12-10 00:00:00',100,100,150.00,300.00,0),(6,2,1006,'The Westin','909 North Michigan Ave','Chicago','Illinois','60611','2014-12-01 00:00:00','2014-12-10 00:00:00',100,100,150.00,300.00,0);
/*!40000 ALTER TABLE `cart_hotel_details` ENABLE KEYS */;
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
