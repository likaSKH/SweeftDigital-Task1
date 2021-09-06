-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Course` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main` (
  `id` int NOT NULL AUTO_INCREMENT,
  `persons_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` int NOT NULL,
  `personalId` int NOT NULL,
  `phone_number` int NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `address_2` varchar(40) DEFAULT NULL,
  `number_of_apartment` varchar(30) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `sex` varchar(7) NOT NULL,
  `bank_acc_num` varchar(70) DEFAULT NULL,
  `classes_id` int DEFAULT NULL,
  `majors_courses_id` int DEFAULT NULL,
  `ranks_id` int DEFAULT NULL,
  `subjects_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classes_id` (`classes_id`),
  KEY `majors_courses_id` (`majors_courses_id`),
  KEY `ranks_id` (`ranks_id`),
  KEY `subjects_id` (`subjects_id`),
  KEY `persons_id` (`persons_id`),
  CONSTRAINT `main_ibfk_1` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `main_ibfk_2` FOREIGN KEY (`majors_courses_id`) REFERENCES `majors_courses` (`id`),
  CONSTRAINT `main_ibfk_3` FOREIGN KEY (`ranks_id`) REFERENCES `ranks` (`id`),
  CONSTRAINT `main_ibfk_4` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `main_ibfk_5` FOREIGN KEY (`persons_id`) REFERENCES `persons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_classes`
--

DROP TABLE IF EXISTS `main_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_classes` (
  `main_id` int DEFAULT NULL,
  `classes_id` int DEFAULT NULL,
  KEY `main_id` (`main_id`),
  KEY `classes_id` (`classes_id`),
  CONSTRAINT `main_classes_ibfk_1` FOREIGN KEY (`main_id`) REFERENCES `main` (`id`),
  CONSTRAINT `main_classes_ibfk_2` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_classes`
--

LOCK TABLES `main_classes` WRITE;
/*!40000 ALTER TABLE `main_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_subjects`
--

DROP TABLE IF EXISTS `main_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_subjects` (
  `main_id` int DEFAULT NULL,
  `subjects_id` int DEFAULT NULL,
  KEY `main_id` (`main_id`),
  KEY `subjects_id` (`subjects_id`),
  CONSTRAINT `main_subjects_ibfk_1` FOREIGN KEY (`main_id`) REFERENCES `main` (`id`),
  CONSTRAINT `main_subjects_ibfk_2` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_subjects`
--

LOCK TABLES `main_subjects` WRITE;
/*!40000 ALTER TABLE `main_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `majors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `major` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majors_courses`
--

DROP TABLE IF EXISTS `majors_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `majors_courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `courses_id` int DEFAULT NULL,
  `majors_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_id` (`courses_id`),
  KEY `majors_id` (`majors_id`),
  CONSTRAINT `majors_courses_ibfk_1` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `majors_courses_ibfk_2` FOREIGN KEY (`majors_id`) REFERENCES `majors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors_courses`
--

LOCK TABLES `majors_courses` WRITE;
/*!40000 ALTER TABLE `majors_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `majors_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-06 22:04:49
