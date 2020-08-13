-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bigdata
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `userID` varchar(45) NOT NULL,
  `userPWD` varchar(45) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `userNick` varchar(45) NOT NULL,
  `userEmail` varchar(45) NOT NULL,
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES ('aaa','1234','홍길동','Hong','hong@bigdata.kr','2020-05-14 16:21:19'),('aaaa','1234','김원중','AAA','aaa@aa.aaa','2020-04-29 16:34:50'),('bbbb','1234','홍길동','BBBB','bbb@bbb.bb','2020-04-29 16:34:50'),('cccc','1234','고길동','CCCC','ccc@ccc.ccc','2020-04-29 16:34:50'),('dddd','1234','박주홍','park','dddd@dd.dd','2020-04-29 16:58:24'),('hong','1234','홍길동','Hong','hong@bigdata.kr','2020-05-14 16:18:19'),('kkkk','1234','김김김','KKK','kkk@kk.kk','2020-05-07 14:43:40');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardtable`
--

DROP TABLE IF EXISTS `boardtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boardtable` (
  `idx` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `homepage` varchar(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `hit` int NOT NULL DEFAULT '0',
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `group` int DEFAULT NULL,
  `step` int DEFAULT '0',
  `indent` int DEFAULT '0',
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardtable`
--

LOCK TABLES `boardtable` WRITE;
/*!40000 ALTER TABLE `boardtable` DISABLE KEYS */;
INSERT INTO `boardtable` VALUES (1,'홍길동','aaa@aa.aa','','Lorem','dddd','1234',102,'2020-05-07 15:20:15',1,0,0,NULL),(4,'김길동','aaa@aa.aa','','안녕','안녕하세요 ','1234',32,'2020-05-08 10:55:02',4,0,0,NULL),(6,'홍길동','','','└ 안녕','그래 ','1234',7,'2020-05-08 15:56:00',4,1,1,NULL),(14,'1234','','','└ 빅데이터?','\r\n ========== 원본 ==========\r\n빅데이터?','1234',19,'2020-05-11 10:42:29',13,1,1,NULL),(22,'3','','','파일','3','1234',21,'2020-05-11 16:59:07',22,0,0,'11.gif'),(23,'홍길동','','','222','123','1234',6,'2020-05-12 17:56:39',23,0,0,NULL),(24,'dd','','','dddddd','123 3333 wwww','1234',34,'2020-05-13 10:12:41',24,0,0,NULL),(25,'김원중','','','└ dddddd','???\r\n ========== 원본 ==========\r\n123 3333 wwww','1111',22,'2020-05-13 14:21:23',24,1,1,NULL),(26,'김원중','','','└ dddddd?','?\r\n ========== 원본 ==========\r\n123 3333 wwww','1234',164,'2020-05-13 14:22:50',24,1,1,NULL),(27,'홍길동','','','MVC test','aaa','1234',0,'2020-05-15 14:50:14',27,0,0,NULL),(28,'홍길동','','','MVC 2','qwe','123',0,'2020-05-15 14:54:31',28,0,0,NULL),(29,'홍길동','','','MVC3','123','123',3,'2020-05-15 14:55:15',29,0,0,NULL),(30,'홍길동','','','123','123','123',8,'2020-05-15 15:13:12',30,0,0,NULL),(31,'홍길동','','','123','123','123',1,'2020-05-15 15:14:19',31,0,0,NULL),(32,'홍길동','','','123','123','333',42,'2020-05-15 15:14:57',32,0,0,NULL),(33,'홍길동','','','└ 123','?					\r\n================================\r\n123','1111',15,'2020-05-15 16:39:05',32,1,1,NULL),(34,'ddd','','','└ 123','원본\r\n123','123',1,'2020-05-15 17:29:40',31,1,1,NULL),(35,'sss','','','└ └ 123','=====================\r\n?					\r\n================================\r\n123','123',2,'2020-05-15 17:32:46',32,2,2,NULL),(36,'1111','','','└ └ └ 123','adssa\r\nasda\r\nasdasd\r\n','1234',1,'2020-05-15 17:35:03',32,3,3,NULL),(37,'111','','','└ └ └ └ 123','?\r\n=====================\r\nadssa\r\nasda\r\nasdasd\r\n','1234',1,'2020-05-15 17:35:28',32,4,4,NULL);
/*!40000 ALTER TABLE `boardtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `did` int NOT NULL,
  `dname` varchar(50) NOT NULL,
  `dpwd` varchar(100) NOT NULL,
  `dtel` varchar(50) DEFAULT NULL,
  `demail` varchar(150) DEFAULT NULL,
  `ddate` date NOT NULL,
  PRIMARY KEY (`did`),
  KEY `dname_index` (`dname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nickname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('aa012','1234','홍길동','aaa@bbb.cc','서울시 구로구 구로동','2020-04-27 15:31:33',''),('bb013','2345','김길동','aba@bbb.cc','서울시 양천구 신월동','2020-04-27 15:34:25',''),('cc014','3456','이길동','aca@bbb.cc','서울시 강서구 화곡동','2020-04-27 15:34:23',''),('dd015','4567','박길동','ada@bbb.cc','서울시 마포구 공덕동','2020-04-27 15:34:21',''),('qwe','123','김원중','qwe@aws.sad','서울시','2020-04-27 16:20:22','');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberinfo`
--

DROP TABLE IF EXISTS `memberinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberinfo` (
  `id` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberinfo`
--

LOCK TABLES `memberinfo` WRITE;
/*!40000 ALTER TABLE `memberinfo` DISABLE KEYS */;
INSERT INTO `memberinfo` VALUES ('aaaa','1234','asd','aaa						size=						size=','aaa						size=						size=','2020-05-01 11:48:45'),('hong1','11111','홍길동','aaa@aa.aa','서울시 은평구','2020-04-29 14:31:20');
/*!40000 ALTER TABLE `memberinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'hong@gg.gg','1234'),(2,'hong2@gg.gg','1234'),(3,'hong3@gg.gg','1111'),(4,'hong3@gg.gg','1111');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_data`
--

DROP TABLE IF EXISTS `vw_data`;
/*!50001 DROP VIEW IF EXISTS `vw_data`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_data` AS SELECT 
 1 AS `dname`,
 1 AS `dtel`,
 1 AS `demail`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_data`
--

/*!50001 DROP VIEW IF EXISTS `vw_data`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_data` AS select `data`.`dname` AS `dname`,`data`.`dtel` AS `dtel`,`data`.`demail` AS `demail` from `data` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-13 16:07:20
