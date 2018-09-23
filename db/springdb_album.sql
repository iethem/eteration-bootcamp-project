-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: springdb
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `album` (
  `album_id` bigint(20) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `release_year` varchar(255) DEFAULT NULL,
  `artist_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `FKmwc4fyyxb6tfi0qba26gcf8s1` (`artist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (4,'Turkey','Rock','https://1.bp.blogspot.com/-DW9lv2E9f-A/VaTv6b6dLZI/AAAAAAAACxI/4eLIZ4Md4Q4/s1600/Hayko%2BCepkin%2B-%2BSakin%2BOlmam%2BLaz%25C4%25B1m.jpg','EMI','Sakin Olmam Lazım',19.9,'2005',3),(10,'Turkey','Rock','https://cdn.shopify.com/s/files/1/0191/5006/products/baris_dunden_1024x1024.jpg','Sayan','Dünden Bugüne...',24.99,'1971',1),(15,'Turkey','Rock','https://data.opus3a.com/product_photo/62/62b57b070011fc5d2371533ee8513205/max/60fd7e2b2bcf041e4ca8b7e3a684e38a.jpg','Türküola','Hasret',19.99,'1980',2),(16,'Turkey','Rock','https://ymuse.com/uploads/visual/image/1eca/5d82/dd07/4555/9a42/2325/0371/870a/medium_Bekle+Beni+Beklebeni.jpg','Türküola','Bekle Beni',29.99,'1982',2);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-24  1:55:00
