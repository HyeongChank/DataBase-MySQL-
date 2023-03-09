-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: member
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
use db0309;
--
-- Table structure for table `goodsinfo`
--

DROP TABLE IF EXISTS `goodsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goodsinfo` (
  `goodscd` char(5) NOT NULL,
  `goodsname` varchar(20) NOT NULL,
  `unitcd` char(2) DEFAULT NULL,
  `unitprice` decimal(5,0) DEFAULT NULL,
  `stat` enum('Y','N') DEFAULT 'Y',
  `insdtm` datetime DEFAULT NULL,
  `moddtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodsinfo`
--

LOCK TABLES `goodsinfo` WRITE;
/*!40000 ALTER TABLE `goodsinfo` DISABLE KEYS */;
INSERT INTO `goodsinfo` VALUES ('GDS01','노트','01',2000,'Y','2022-03-01 14:42:44',NULL),('GDS02','연필','02',100,'Y','2022-03-01 14:43:17',NULL),('GDS03','복사지','03',5000,'Y','2022-03-01 14:43:47',NULL),('GDS04','볼펜','02',500,'Y','2022-03-01 14:44:13',NULL),('GDS05','네임펜','02',1000,'Y','2022-03-01 14:44:30',NULL),('GDS06','크레파스','02',1500,'Y','2022-03-01 14:45:30',NULL);
/*!40000 ALTER TABLE `goodsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `memid` varchar(10) NOT NULL,
  `memname` varchar(20) NOT NULL,
  `passwd` varchar(128) DEFAULT NULL,
  `passwdmdt` varchar(8) DEFAULT NULL,
  `jumin` varchar(64) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `jobcd` char(1) DEFAULT NULL,
  `mileage` decimal(7,0) unsigned DEFAULT '0',
  `stat` enum('Y','N') DEFAULT 'Y',
  `enterdtm` datetime DEFAULT CURRENT_TIMESTAMP,
  `leavedtm` datetime DEFAULT NULL,
  PRIMARY KEY (`memid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('hong1','홍길동',NULL,NULL,NULL,'인천 동구 송림동','2000-05-08','2',500,'Y','2022-03-01 14:10:27',NULL),('hong2','홍길동',NULL,NULL,NULL,'서울 강남구 신사동','1990-01-05','9',1000,'Y','2022-03-01 14:11:50',NULL),('kim1','김갑수',NULL,NULL,NULL,'인천 연수구 연수동','2003-07-01','1',0,'Y','2022-03-01 14:12:39',NULL),('park','박기자',NULL,NULL,NULL,'경기 부천시','2002-09-30','3',0,'Y','2022-03-01 14:13:16',NULL),('seo','서갑돌',NULL,NULL,NULL,'인천 동구','1998-03-10','1',0,'Y','2022-03-01 14:08:41',NULL),('Taeh','태현',NULL,NULL,NULL,'경기 수원시','2002-10-15','4',0,'Y','2022-03-01 14:15:10',NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_table` (
  `goodscd` varchar(5) NOT NULL,
  `goodsname` varchar(20) NOT NULL,
  `united` char(2) DEFAULT NULL,
  `unitprice` decimal(5,0) DEFAULT NULL,
  `stat` enum('y','n') DEFAULT NULL,
  `insdtm` datetime(6) DEFAULT NULL,
  `moddtm` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`goodscd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_d`
--

DROP TABLE IF EXISTS `order_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_d` (
  `orderno` char(9) NOT NULL,
  `goodscd` char(5) NOT NULL,
  `unitcd` char(2) DEFAULT NULL,
  `unitprice` decimal(5,0) NOT NULL,
  `qty` decimal(3,0) NOT NULL,
  `amt` decimal(7,0) NOT NULL,
  `insdtm` datetime DEFAULT NULL,
  `moddtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_d`
--

LOCK TABLES `order_d` WRITE;
/*!40000 ALTER TABLE `order_d` DISABLE KEYS */;
INSERT INTO `order_d` VALUES ('202201001','GDS01','01',2000,10,20000,'2022-03-01 15:10:39',NULL),('202201001','GDS02','02',100,50,5000,'2022-03-01 15:11:39',NULL),('202201001','GDS03','03',5000,1,5000,'2022-03-01 15:12:23',NULL),('202201002','GDS01','01',1000,5,5000,'2022-03-01 15:13:28',NULL),('202201002','GDS03','03',5000,10,50000,'2022-03-01 15:14:26',NULL),('202201003','GDS04','02',500,50,25000,'2022-03-01 15:15:12',NULL),('202201004','GDS05','02',1000,10,10000,'2022-03-01 15:15:59',NULL),('202201005','GDS02','02',100,50,5000,'2022-03-01 15:16:45',NULL),('202201005','GDS03','03',5000,4,20000,'2022-03-01 15:17:30',NULL),('202201006','GDS01','01',2000,1,2000,'2022-03-01 15:18:08',NULL),('202202001','GDS01','01',2000,10,20000,'2022-03-01 15:18:59',NULL),('202202001','GDS03','03',5000,1,5000,'2022-03-01 15:19:10',NULL),('202202001','GDS05','02',1000,20,20000,'2022-03-01 15:19:20',NULL),('202202003','GDS01','01',2000,10,20000,'2022-03-01 15:19:30',NULL),('202202003','GDS07','03',2000,20,40000,'2022-03-01 15:20:30',NULL),('202202004','GDS01','01',2000,10,20000,'2022-03-01 15:21:18',NULL);
/*!40000 ALTER TABLE `order_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_h`
--

DROP TABLE IF EXISTS `order_h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_h` (
  `orderno` char(9) DEFAULT NULL,
  `orddt` date DEFAULT NULL,
  `memid` varchar(10) DEFAULT NULL,
  `ordamt` decimal(7,0) DEFAULT NULL,
  `cancelyn` char(1) DEFAULT NULL,
  `canceldtm` datetime DEFAULT NULL,
  `insdtm` datetime DEFAULT NULL,
  `moddtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_h`
--

LOCK TABLES `order_h` WRITE;
/*!40000 ALTER TABLE `order_h` DISABLE KEYS */;
INSERT INTO `order_h` VALUES ('202201001','2022-01-24','seo',10000,NULL,NULL,'2022-03-01 14:49:07',NULL),('202201002','2022-01-24','hong2',15000,NULL,NULL,'2022-03-01 14:50:35',NULL),('202201003','2022-01-25','hong1',20000,NULL,NULL,'2022-03-01 14:51:19',NULL),('202201004','2022-01-25','kim1',10000,NULL,NULL,'2022-03-01 14:51:58',NULL),('202201005','2022-01-25','park',5000,'Y','2022-01-25 00:00:00','2022-03-01 14:53:12',NULL),('202202001','2022-02-01','hong1',30000,NULL,NULL,'2022-03-01 14:54:09',NULL),('202202002','2022-02-01','hong1',1000,NULL,NULL,'2022-03-01 14:54:40',NULL),('202202003','2022-02-02','park',10000,NULL,NULL,'2022-03-01 14:55:28',NULL),('202202004','2022-02-02','abcd',500,NULL,NULL,'2022-03-01 14:56:03',NULL);
/*!40000 ALTER TABLE `order_h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `ID` int NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'길동','김',200),(2,'동','김',100),(3,'길','김',50);
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'member'
--

--
-- Dumping routines for database 'member'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 14:25:20
