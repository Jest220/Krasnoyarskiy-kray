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
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `ID_District` int NOT NULL AUTO_INCREMENT,
  `District` varchar(45) DEFAULT NULL,
  `ID_Type_Dist` int DEFAULT NULL,
  `CODE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_District`),
  KEY `ID_Type_Dist` (`ID_Type_Dist`),
  CONSTRAINT `district_ibfk_1` FOREIGN KEY (`ID_Type_Dist`) REFERENCES `typedist` (`ID_Type_Dist`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Абанский                                ',1,'2400200000000'),(2,'Ачинский                                ',1,'2400300000000'),(3,'Балахтинский                            ',1,'2400400000000'),(4,'Березовский                             ',1,'2400500000000'),(5,'Бирилюсский                             ',1,'2400600000000'),(6,'Боготольский                            ',1,'2400700000000'),(7,'Богучанский                             ',1,'2400800000000'),(8,'Большемуртинский                        ',1,'2400900000000'),(9,'Большеулуйский                          ',1,'2401000000000'),(10,'Дзержинский                             ',1,'2401100000000'),(11,'Емельяновский                           ',1,'2401200000000'),(12,'Енисейский                              ',1,'2401300000000'),(13,'Ермаковский                             ',1,'2401400000000'),(14,'Идринский                               ',1,'2401500000000'),(15,'Иланский                                ',1,'2401600000000'),(16,'Ирбейский                               ',1,'2401700000000'),(17,'Казачинский                             ',1,'2401800000000'),(18,'Канский                                 ',1,'2401900000000'),(19,'Каратузский                             ',1,'2402000000000'),(20,'Кежемский                               ',1,'2402100000000'),(21,'Козульский                              ',1,'2402200000000'),(22,'Краснотуранский                         ',1,'2402300000000'),(23,'Курагинский                             ',1,'2402400000000'),(24,'Манский                                 ',1,'2402500000000'),(25,'Минусинский                             ',1,'2402600000000'),(26,'Мотыгинский                             ',1,'2402700000000'),(27,'Назаровский                             ',1,'2402800000000'),(28,'Нижнеингашский                          ',1,'2402900000000'),(29,'Новоселовский                           ',1,'2403000000000'),(30,'Партизанский                            ',1,'2403100000000'),(31,'Пировский                               ',1,'2403200000000'),(32,'Рыбинский                               ',1,'2403300000000'),(33,'Саянский                                ',1,'2403400000000'),(34,'Северо-Енисейский                       ',1,'2403500000000'),(35,'Сухобузимский                           ',1,'2403600000000'),(36,'Тасеевский                              ',1,'2403700000000'),(37,'Туруханский                             ',1,'2403800000000'),(38,'Тюхтетский                              ',1,'2403900000000'),(39,'Ужурский                                ',1,'2404000000000'),(40,'Уярский                                 ',1,'2404100000000'),(41,'Шарыповский                             ',1,'2404200000000'),(42,'Шушенский                               ',1,'2404300000000'),(43,'Эвенкийский                             ',1,'2404400000000'),(44,'Таймырский Долгано-Ненецкий             ',1,'2404800000000'),(45,'Красноярск                              ',2,'2400000100000'),(46,'Бородино                                ',2,'2400000200000'),(47,'Дивногорск                              ',2,'2400000300000'),(48,'Железногорск                            ',2,'2400000400000'),(49,'Зеленогорск                             ',2,'2400000500000'),(50,'Лесосибирск                             ',2,'2400000800000'),(51,'Норильск                                ',2,'2400000900000'),(52,'Сосновоборск                            ',2,'2400001000000'),(53,'Ачинск                                  ',2,'2400001200000'),(54,'Боготол                                 ',2,'2400001300000'),(55,'Енисейск                                ',2,'2400001400000'),(56,'Канск                                   ',2,'2400001600000'),(57,'Минусинск                               ',2,'2400001700000'),(58,'Назарово                                ',2,'2400001800000'),(59,'Шарыпово                                ',2,'2400001900000'),(60,'Солнечный                               ',3,'2400002000000'),(61,'Кедровый                                ',4,'2400002100000'),(62,'Подгорный                               ',3,'2400002200000');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
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
