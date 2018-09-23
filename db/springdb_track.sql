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
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `track` (
  `track_id` bigint(20) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `length` varchar(255) DEFAULT NULL,
  `lyric` varchar(255) DEFAULT NULL,
  `album_id` bigint(20) DEFAULT NULL,
  `artist_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`track_id`),
  KEY `FKaxm9pbgk7ptorfyk3o6911q05` (`album_id`),
  KEY `FKi28jadqiuqk1dlxtl0me7hqh2` (`artist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES (5,'Yarası Saklı','4:27','Bir kırık gençlik hikâyesi Yok mudur sevdanın çaresi? Hasretin kızıl haresi Çileli başıma gelip taç oldu',4,3),(6,'Hüzünle Karışık','4:17','Bana yol ver bana iyi bak  Son vedadır  Sana son kez sana 1 söz son defadır  Bana yol ver bana iyi bak ',4,3),(7,'Son Kez','4:48','Son kez gölgemden gölgen koptu Hem de çok derinden dertliyim Sesin yok tenin yok Sessizlik son kez',4,3),(8,'Görmüyorsun','3:04','Yolum uzun ömrüm kısa  Ben vurgunum bir cımbıza  3 gün geçti göremedim  Arıyorum yana yana ',4,3),(9,'Eller Aldı','4:21','Eller aldı gözlerimi  Görmez oldum yüzlerini  Kim sorduysa duymam dedim  Susar gönlüm gör güzelim ',4,3),(11,'Dağlar Dağlar','3:08','Ellerimle büyüttüğüm, solar iken dirilttiğim Çiçeğimi kopardın sen, ellere verdin Çiçeğimi kopardın sen, ellere verdin',10,1),(12,'Kirpiklerin Ok Ok Eyle	','4:12','Kirpiklerin ok ok eyle  Vur sineme öldür beni  Bıktım dünyanın halından  Vur sineme öldür beni ',10,1),(13,'Kol Düğmeleri','4:48','Hatırlarım bugün gibi sessiz geçen son geceyi  Başın öne eğik bir suçlu gibi bana verdiğin hediyeyi  İki küçük kol düğmesi bütün bir aşk hikayesi  İki düğme iki ayrı kolda bizim gibi ayrı yolda ',10,1);
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
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
