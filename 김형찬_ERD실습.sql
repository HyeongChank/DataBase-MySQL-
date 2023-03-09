-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: estimate
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
-- Table structure for table `견적서`
--

DROP TABLE IF EXISTS `견적서`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `견적서` (
  `견적번호` char(6) NOT NULL,
  `견적일` date DEFAULT NULL,
  `공급가액` int DEFAULT NULL,
  `부가세` int DEFAULT NULL,
  `공급총액` int DEFAULT NULL,
  `상품번호` char(9) DEFAULT NULL,
  PRIMARY KEY (`견적번호`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `견적서`
--

LOCK TABLES `견적서` WRITE;
/*!40000 ALTER TABLE `견적서` DISABLE KEYS */;
INSERT INTO `견적서` VALUES ('1','2023-03-01',40000,4000,44000,'1'),('2','2023-03-01',20000,2000,22000,'2');
/*!40000 ALTER TABLE `견적서` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `공급자`
--

DROP TABLE IF EXISTS `공급자`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `공급자` (
  `등록번호` int NOT NULL,
  `상호` varchar(45) DEFAULT NULL,
  `대표성명` varchar(45) DEFAULT NULL,
  `사업장주소` varchar(45) DEFAULT NULL,
  `업태` varchar(45) DEFAULT NULL,
  `종목` varchar(45) DEFAULT NULL,
  `전화번호` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`등록번호`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `공급자`
--

LOCK TABLES `공급자` WRITE;
/*!40000 ALTER TABLE `공급자` DISABLE KEYS */;
INSERT INTO `공급자` VALUES (1,'developC','김형찬','부산 해운대구','it','it','051-123-1234'),(2,'merchanC','jason','부산 해운대구','도소매','도소매','051-436-1234'),(3,'economyC','jack','서울 동대문구','it','it','02-5123-1234'),(4,'databaseC','hi','대전 한밭','it','it','02-1323-1234'),(5,'restC','eom','인천 운서동','it','it','02-3234-1234'),(6,'coworkC','jealo','대구 동서로','운수업','운수업','02-1123-1234');
/*!40000 ALTER TABLE `공급자` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `상품`
--

DROP TABLE IF EXISTS `상품`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `상품` (
  `상품번호` char(9) DEFAULT NULL,
  `품명` varchar(45) NOT NULL,
  `규격` varchar(45) DEFAULT NULL,
  `수량` varchar(45) DEFAULT NULL,
  `단가` varchar(45) DEFAULT NULL,
  `금액` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`품명`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `상품`
--

LOCK TABLES `상품` WRITE;
/*!40000 ALTER TABLE `상품` DISABLE KEYS */;
INSERT INTO `상품` VALUES ('4','a1','300*600','10','10000','100000'),('5','a2','300*800','10','10000','100000'),('1','k1','200*200','20','10000','200000'),('2','k2','3300*200','10','20000','200000'),('3','k3','300*200','2','10000','20000');
/*!40000 ALTER TABLE `상품` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'estimate'
--

--
-- Dumping routines for database 'estimate'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 17:53:09
