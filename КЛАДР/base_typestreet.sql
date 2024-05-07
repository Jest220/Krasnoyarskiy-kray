CREATE DATABASE  IF NOT EXISTS `base` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `base`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: base
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `typestreet`
--

DROP TABLE IF EXISTS `typestreet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typestreet` (
  `ID_TypeStreet` int NOT NULL AUTO_INCREMENT,
  `TypeStreet` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_TypeStreet`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typestreet`
--

LOCK TABLES `typestreet` WRITE;
/*!40000 ALTER TABLE `typestreet` DISABLE KEYS */;
INSERT INTO `typestreet` VALUES (1,'тер       '),(2,'км        '),(3,'зона      '),(4,'пл        '),(5,'снт       '),(6,'тер. ГСК  '),(7,'ул        '),(8,'тер. ТСН  '),(9,'проезд    '),(10,'пер       '),(11,'аллея     '),(12,'б-р       '),(13,'тер. СНТ  '),(14,'тер. ОНТ  '),(15,'остров    '),(16,'промзона  '),(17,'пл-ка     '),(18,'тер. ДНТ  '),(19,'р-н       '),(20,'тер. СПК  '),(21,'тер.СОСН  '),(22,'пр-кт     '),(23,'п/р       '),(24,'месторожд.'),(25,'кв-л      '),(26,'сквер     '),(27,'наб       '),(28,'парк      '),(29,'ш         '),(30,'тракт     '),(31,'мкр       '),(32,'ряд       '),(33,'гск       '),(34,'тер. ПК   '),(35,'тер. СНО  '),(36,'дор       '),(37,'рзд       '),(38,'туп       '),(39,'п         '),(40,'ст        '),(41,'городок   '),(42,'сад       '),(43,'кольцо    '),(44,'берег     '),(45,'ф/х       '),(46,'просек    '),(47,'платф     '),(48,'уч-к      '),(49,'мгстр.    '),(50,'спуск     '),(51,'тер. ДНП  '),(52,'днп       '),(53,'тер. ДПК  '),(54,'проулок   '),(55,'переезд   '),(56,'вал       '),(57,'д         '),(58,'тер.ф.х.  ');
/*!40000 ALTER TABLE `typestreet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 23:24:46
