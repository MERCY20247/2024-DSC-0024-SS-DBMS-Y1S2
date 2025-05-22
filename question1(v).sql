-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: student_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `tblfinance`
--

DROP TABLE IF EXISTS `tblfinance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfinance` (
  `StudentID` int DEFAULT NULL,
  `Tuition_Fee` int DEFAULT NULL,
  `Administration_Fee` int DEFAULT NULL,
  `Exams_Fee` int DEFAULT NULL,
  `Medical_Fee` int DEFAULT NULL,
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `tblfinance_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `tblstudent` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfinance`
--

LOCK TABLES `tblfinance` WRITE;
/*!40000 ALTER TABLE `tblfinance` DISABLE KEYS */;
INSERT INTO `tblfinance` VALUES (88,31000,5000,3000,4000);
/*!40000 ALTER TABLE `tblfinance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstudent` (
  `StudentName` varchar(50) DEFAULT NULL,
  `StudentID` int NOT NULL,
  `Birthdate` date DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent`
--
-- Question1(v)
UPDATE tblstudent
SET StudentName = "NELSON"
WHERE StudentID = 26;

LOCK TABLES `tblstudent` WRITE;
/*!40000 ALTER TABLE `tblstudent` DISABLE KEYS */;
INSERT INTO `tblstudent` VALUES ('Cyrus',1,'1989-06-15','Y2S1','0704231345'),('Neema',2,'2008-11-29','Y2S1','0733876987'),('Caroline',3,'2002-10-18','Y1S1','0732568448'),('Nicholas',26,'2002-07-22','Y1S1','0720458674'),('Judith',29,'2003-06-17','Y4S2','0711234567'),('Dan',88,'2001-04-20','Y1S2','0723456123'),('Grace',127,'2000-01-14','Y1S2','0733765987'),('Jane',235,'1987-01-12','Y1S2','0722245321');
/*!40000 ALTER TABLE `tblstudent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-22  8:44:34
