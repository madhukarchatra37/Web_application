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
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `Email_id` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Start date` date NOT NULL,
  `Return date` date DEFAULT NULL,
  `no_of_passengers` int(11) DEFAULT NULL,
  `Type` int(11) NOT NULL,
  PRIMARY KEY (`Email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('','Charlotte','Chicago','2014-12-04','2014-12-12',2,2),('adadsadsad','xZXZ','adsa','2014-01-11','2014-01-11',7,1),('asas','asas','asas','2014-01-11','2014-01-11',8,2),('dfdsd','sdfsdfd','dsfsf','2014-01-11','2014-01-11',8,1),('dfdsdfsd','sdfsdfd','dsfsf','2014-01-11','2014-01-11',8,1),('ds','sdsd','ewewe','2014-01-11','2014-01-11',3,2),('m@uncc.edu','Charlotte','Chicago','2014-01-11','2014-01-11',8,2),('maddy@uncc.edu','Charlotte','Chicago','2014-12-04','2014-11-24',3,2),('mchatra1@uncc.edu','Charlotte','Chicago','2014-01-11','2014-01-11',8,2),('mchatra2@uncc.edu','Charlotte','Chicago','2014-01-11','2014-01-11',8,2),('mchatra3@uncc.edu','Charlotte','Chicago','2014-01-11','2014-01-11',8,2),('mchatra4@uncc.edu','Charlotte','Chicago','2014-01-11','2014-01-11',1,2),('mchatra@uncc.edu','Charlotte','Chicago','2014-01-11','2014-01-11',8,2),('mddy12@uncc.edu','Charlotte','Chicago','2014-12-09','2014-11-24',3,2),('mddy17@uncc.edu','Charlotte','Chicago','2014-12-04','2014-12-06',3,2),('mddy7051@uncc.edu','Charlotte','Atlanta','2014-12-05','2014-12-09',3,1),('mddy705@uncc.edu','Charlotte','Atlanta','2014-12-05','2014-12-09',3,1),('mddy75@uncc.edu','Charlotte','Chicago','2014-12-04','2014-12-06',3,1),('mddy7@uncc.edu','Charlotte','Chicago','2014-12-04','2014-12-06',3,2),('mddy@uncc.edu','Charlotte','Chicago','2014-12-09','2014-11-24',3,2),('r10','Charlotte','Chicago','2014-01-17','2014-01-24',1,2),('r11','Charlotte','Chicago','2014-11-17','2014-11-24',1,2),('r1@uncc.edu','Charlotte','Chicago','2014-01-11','2014-01-27',2,2),('r2@uncc.edu','Charlotte','Chicago','0016-07-06','0016-07-06',2,2),('r3@uncc.edu','Charlotte','Chicago','2014-01-11','2014-01-11',2,2),('r4@uncc.edu','Charlotte','Chicago','2014-01-11','2014-01-11',2,2),('r6','Charlotte','Chicago','0016-07-06','0016-07-06',1,2),('r7','Charlotte','Chicago','2014-01-17','2014-01-24',1,2),('r8','Charlotte','Chicago','2014-01-17','2014-01-24',1,2),('r9','Charlotte','Chicago','0016-07-06','0016-07-06',1,2),('r@uncc.edu','Charlotte','Chicago','2014-01-10','2014-01-25',2,2),('rakshit@uncc.edu','Charlotte','Chicago','2014-01-12','2015-01-01',1,2),('we44','weweweewew','ewe','2014-01-11','2014-01-11',5,1),('wewewewe','we','we','2014-01-11','2014-01-11',9,2);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
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
