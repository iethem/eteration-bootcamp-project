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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artist` (
  `artist_id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `sites` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'https://www.bilalalkan.com/wp-content/uploads/2017/02/man%C3%A7o.jpg','Barış ','Turkish rock singer, song writer and tv host (b. 2 January 1943, Istanbul - d. 1 February 1999). His mother Rikkat Uyanık was a famous Turkish singer in the 40s.','diskotek.info, lightmillennium.org','Manço'),(2,'http://www.droneturk.com.tr/wp-content/uploads/2015/06/cem-karaca-2.jpg','Cem','Turkish rock musician, born 5 April 1945 in Antakya, Turkey, died 8 February 2004 in Istanbul, Turkey.','diskotek.info, lightmillennium.org','Karaca'),(3,'https://i.ytimg.com/vi/srP7zqhL1oI/hqdefault.jpg','Hayko ','Hayko Cepkin (born 11 March 1978, Istanbul) is a Turkish musician of Armenian descent.','lightmillennium.org','Cepkin'),(17,'http://www.medyatava.com/uploads/news/633d4bb8-a686-48e7-85b9-c8ad797aa37b.jpg','Tarkan','Tarkan Tevetoğlu; born on 17 October 1972, simply known as Tarkan, is a World Music award winning Turkish pop singer. He was born in Alzey, West Germany, and raised in Turkey. ','tarkan.com',' '),(18,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqdReSp87UZbbBXcOAssdMsXV7noQFUBPly44_3uPoU-QTp5Jl6w','Armin ','Dutch producer and DJ born 25 December 1976 in Leiden, Netherlands. ','arminvanbuuren.com','van Buuren'),(19,'https://foto.sondakika.com/haber/2017/03/03/neset-ertas-in-turkusu-isaret-diliyle-hayat-buldu-9326560_792_o.jpg','Neşet','Turkish singer, musician and composer, born 1938, died 25 September 2012 in Izmir, Turkey.','neserertas.com','Ertaş'),(20,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG46YKStpcCcXI0euUCRZIjHHnDw2yDdNQfjTvDtmYQWEk593Y5Q','Sting','Composer, singer-songwriter, actor, author, and activist Sting was born in Newcastle 2 October 1951, England before moving to London in 1977.','sting.com',''),(21,'https://lh5.googleusercontent.com/-GaDljyrTfRc/AAAAAAAAAAI/AAAAAAAAADw/8Lhs-OWSCjk/photo.jpg','Adam ','Design Technology Manager at Robert A.M. Stern Architects','adamlowenthal.com','Lowenthal'),(22,'https://i1.imgiz.com/data/artist3/Sezen-Aksu.jpg','Sezen','Turkey','sezenaksu.com','Aksu');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-24  1:55:01
