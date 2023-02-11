-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitaldb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `psychiatrist`
--

DROP TABLE IF EXISTS `psychiatrist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrist` (
  `PsychID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `PatientsCount` int DEFAULT NULL,
  `HID` int NOT NULL,
  PRIMARY KEY (`PsychID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrist`
--

LOCK TABLES `psychiatrist` WRITE;
/*!40000 ALTER TABLE `psychiatrist` DISABLE KEYS */;
INSERT INTO `psychiatrist` VALUES (9001,'David Phillips',5,7001),(9002,'Lisa Lewis',4,7002),(9003,'Amanda Howard',4,7003),(9004,'Joseph Henderson',5,7001),(9005,'Jesse Long',3,7001),(9006,'Martin Watson',6,7001),(9007,'Ernest James',5,7001),(9008,'Matthew Sanders',4,7002),(9009,'Kenneth Perez',5,7002),(9010,'Elizabeth Baker',3,7002),(9011,'Tyrese Barr',4,7002),(9012,'Libby Bryant',5,7003),(9013,'Landen Calderon',4,7003),(9014,'Tania Burke',6,7003),(9015,'Carson Adkins',4,7003),(9016,'Carlo Meadows',5,7004),(9017,'Micheal Holmes',4,7004),(9018,'Franco Taylor',6,7004),(9019,'Marley Cisneros',4,7004),(9020,'Alison Hester',5,7004);
/*!40000 ALTER TABLE `psychiatrist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09 15:33:51
