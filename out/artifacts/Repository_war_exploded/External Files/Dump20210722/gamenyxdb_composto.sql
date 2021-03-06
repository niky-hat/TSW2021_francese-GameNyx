-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: gamenyxdb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `composto`
--

DROP TABLE IF EXISTS `composto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composto` (
  `acquisto` int NOT NULL,
  `videogioco` int NOT NULL,
  `quantitaVideogioco` int DEFAULT '1',
  `ivaVideogioco` decimal(3,1) NOT NULL,
  `prezzoVideogioco` decimal(5,2) NOT NULL,
  PRIMARY KEY (`acquisto`,`videogioco`),
  KEY `FK_videogioco` (`videogioco`),
  CONSTRAINT `FK_acquisto` FOREIGN KEY (`acquisto`) REFERENCES `acquisto` (`numeroOrdine`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_videogioco` FOREIGN KEY (`videogioco`) REFERENCES `videogioco` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composto`
--

LOCK TABLES `composto` WRITE;
/*!40000 ALTER TABLE `composto` DISABLE KEYS */;
INSERT INTO `composto` VALUES (6,1,2,15.0,20.98),(7,2,1,15.0,28.99),(7,3,1,13.0,10.13),(9,1,4,19.0,45.00),(9,2,2,15.0,28.99),(10,1,2,19.0,45.00),(11,1,4,19.0,45.00),(11,2,2,15.0,28.99),(12,1,5,19.0,45.00),(12,2,1,15.0,28.99),(12,3,3,13.0,10.13),(13,1,50,19.0,45.00),(14,3,5,13.0,10.13),(15,1,3,19.0,45.00),(16,1,5,19.0,45.00),(16,2,2,15.0,28.99),(17,18,1,15.0,24.99);
/*!40000 ALTER TABLE `composto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-22 20:05:50
