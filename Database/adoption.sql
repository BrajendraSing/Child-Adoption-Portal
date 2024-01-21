-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: adoption
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `available_child`
--

DROP TABLE IF EXISTS `available_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `available_child` (
  `childid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(45) NOT NULL,
  `image` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'available',
  PRIMARY KEY (`childid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_child`
--

LOCK TABLES `available_child` WRITE;
/*!40000 ALTER TABLE `available_child` DISABLE KEYS */;
INSERT INTO `available_child` VALUES (1,'Dhanush',2,'male','dhanush.jpg','adopted'),(2,'Ashish',1,'male','ashish.jpg','available'),(3,'Rohit',3,'male','rohit.jpg','available'),(4,'Roshini',3,'female','roshini.jpg','available'),(5,'Yash',1,'male','yash.jpeg','available');
/*!40000 ALTER TABLE `available_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `available_child2`
--

DROP TABLE IF EXISTS `available_child2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `available_child2` (
  `chilid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(45) NOT NULL,
  `image` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT (_utf8mb4'available'),
  PRIMARY KEY (`chilid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_child2`
--

LOCK TABLES `available_child2` WRITE;
/*!40000 ALTER TABLE `available_child2` DISABLE KEYS */;
/*!40000 ALTER TABLE `available_child2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_details`
--

DROP TABLE IF EXISTS `registration_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_details` (
  `registrationid` int NOT NULL AUTO_INCREMENT,
  `m_name` varchar(45) NOT NULL,
  `m_dob` varchar(45) NOT NULL,
  `m_nationality` varchar(45) NOT NULL,
  `m_income` varchar(45) NOT NULL,
  `m_aadhar` varchar(45) NOT NULL,
  `f_name` varchar(45) NOT NULL,
  `f_dob` varchar(45) NOT NULL,
  `f_nationality` varchar(45) NOT NULL,
  `f_income` varchar(45) NOT NULL,
  `f_aadhar` varchar(45) NOT NULL,
  `userid` varchar(45) NOT NULL,
  `childid` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`registrationid`),
  UNIQUE KEY `m_addhar_UNIQUE` (`m_aadhar`),
  UNIQUE KEY `f_aadhar_UNIQUE` (`f_aadhar`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_details`
--

LOCK TABLES `registration_details` WRITE;
/*!40000 ALTER TABLE `registration_details` DISABLE KEYS */;
INSERT INTO `registration_details` VALUES (1,'Aman',' 2002-08-04',' Indian',' 0-50000','352523542345','female','2023-11-16','Indian','0-50000','352523542545','1','1','pending'),(2,'Yash',' 2023-11-11',' Indian',' 0-50000','345252345245','female','2023-11-15','Indian','0-50000','345252345265','1','2','pending'),(3,'Neelesh',' 2023-11-17',' Indian',' 0-50000','345255445245','female','2023-11-23','Indian','0-50000','349852345265','2','3','pending'),(4,'xyz',' 2023-11-15',' Indian',' 0-50000','658765887454','Deepa','2023-11-24','Indian','0-50000','658765887459','3','1','approved'),(5,'Neelesh',' 2023-11-16',' Indian',' 0-50000','345255445655','female','2023-11-16','Indian','0-50000','349852225265','1','2','pending');
/*!40000 ALTER TABLE `registration_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Amit Kumar','amit@gmail.com','7665544332','xyz katpadi vellore tamilnadu','amitkumar'),(2,'Neelesh','neelesh@gmail.com','9877658698','kanpur','neelesh'),(3,'Deepa','deepa@gmail.com','7854785878','vellore','deepa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user2`
--

DROP TABLE IF EXISTS `user2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user2` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user2`
--

LOCK TABLES `user2` WRITE;
/*!40000 ALTER TABLE `user2` DISABLE KEYS */;
/*!40000 ALTER TABLE `user2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-21 12:07:02
