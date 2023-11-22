-- MariaDB dump 10.19-11.3.0-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: board
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `address` varchar(50) DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`),
  KEY `index_ename` (`name`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES
(1,'kim','abc@naver.com','abc','user',NULL,66),
(2,'kum','bc@naver.com',NULL,'user',NULL,74),
(3,'iion','ccc@naver.com',NULL,'user',NULL,20),
(4,'lion','adbc@naver.com',NULL,'user',NULL,40),
(5,'kioun','agbc@naver.com',NULL,'user',NULL,22),
(6,'hahha','akkbc@naver.com','33','user',NULL,3),
(7,'oouu','dfes@dshfsf','dsfef','admin','sefsf',4),
(8,'hong',NULL,NULL,'admin',NULL,50);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `author_for_view`
--

DROP TABLE IF EXISTS `author_for_view`;
/*!50001 DROP VIEW IF EXISTS `author_for_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `author_for_view` AS SELECT
 1 AS `name`,
  1 AS `email` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `contents` varchar(3000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `post_author_fk1` (`author_id`),
  CONSTRAINT `post_author_fk1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES
(1,'hong',NULL,1,9900,'2023-11-17 17:07:14'),
(2,'hong',NULL,1,9888,'2023-11-17 17:07:14'),
(3,'kim',NULL,2,400,'2023-11-17 16:27:46'),
(4,'kim',NULL,3,200,'2023-11-17 16:27:46'),
(5,'ii',NULL,3,9000,'2023-11-17 16:29:43'),
(6,'kk',NULL,NULL,10,'2023-11-20 10:50:10'),
(8,'qqq',NULL,NULL,44,'2023-11-20 11:35:54'),
(11,'hihi','bibi',4,NULL,'2023-11-22 14:35:19'),
(12,'제목1','컨덴츠1',NULL,NULL,'2023-11-22 16:07:58'),
(13,'제목2','컨덴츠2',NULL,NULL,'2023-11-22 16:07:58'),
(14,'제목3','컨덴츠3',NULL,NULL,'2023-11-22 16:07:58'),
(15,'제목4','컨덴츠4',NULL,NULL,'2023-11-22 16:07:58'),
(16,'제목5','컨덴츠5',NULL,NULL,'2023-11-22 16:07:58'),
(17,'제목6','컨덴츠6',NULL,NULL,'2023-11-22 16:07:58'),
(18,'제목7','컨덴츠7',NULL,NULL,'2023-11-22 16:07:58'),
(19,'제목8','컨덴츠8',NULL,NULL,'2023-11-22 16:07:58'),
(20,'제목9','컨덴츠9',NULL,NULL,'2023-11-22 16:07:58'),
(21,'제목10','컨덴츠10',NULL,NULL,'2023-11-22 16:07:58'),
(22,'제목11','컨덴츠11',NULL,NULL,'2023-11-22 16:07:58'),
(23,'제목12','컨덴츠12',NULL,NULL,'2023-11-22 16:07:58'),
(24,'제목13','컨덴츠13',NULL,NULL,'2023-11-22 16:07:58'),
(25,'제목14','컨덴츠14',NULL,NULL,'2023-11-22 16:07:58'),
(26,'제목15','컨덴츠15',NULL,NULL,'2023-11-22 16:07:58'),
(27,'제목16','컨덴츠16',NULL,NULL,'2023-11-22 16:07:58'),
(28,'제목17','컨덴츠17',NULL,NULL,'2023-11-22 16:07:58'),
(29,'제목18','컨덴츠18',NULL,NULL,'2023-11-22 16:07:58'),
(30,'제목19','컨덴츠19',NULL,NULL,'2023-11-22 16:07:58'),
(31,'제목20','컨덴츠20',NULL,NULL,'2023-11-22 16:07:58'),
(32,'제목21','컨덴츠21',NULL,NULL,'2023-11-22 16:07:58'),
(33,'제목22','컨덴츠22',NULL,NULL,'2023-11-22 16:07:58'),
(34,'제목23','컨덴츠23',NULL,NULL,'2023-11-22 16:07:58'),
(35,'제목24','컨덴츠24',NULL,NULL,'2023-11-22 16:07:58'),
(36,'제목25','컨덴츠25',NULL,NULL,'2023-11-22 16:07:58'),
(37,'제목26','컨덴츠26',NULL,NULL,'2023-11-22 16:07:58'),
(38,'제목27','컨덴츠27',NULL,NULL,'2023-11-22 16:07:58'),
(39,'제목28','컨덴츠28',NULL,NULL,'2023-11-22 16:07:58'),
(40,'제목29','컨덴츠29',NULL,NULL,'2023-11-22 16:07:58'),
(41,'제목30','컨덴츠30',NULL,NULL,'2023-11-22 16:07:58'),
(42,'제목31','컨덴츠31',NULL,NULL,'2023-11-22 16:07:58'),
(43,'제목32','컨덴츠32',NULL,NULL,'2023-11-22 16:07:58'),
(44,'제목33','컨덴츠33',NULL,NULL,'2023-11-22 16:07:58'),
(45,'제목34','컨덴츠34',NULL,NULL,'2023-11-22 16:07:58'),
(46,'제목35','컨덴츠35',NULL,NULL,'2023-11-22 16:07:58'),
(47,'제목36','컨덴츠36',NULL,NULL,'2023-11-22 16:07:58'),
(48,'제목37','컨덴츠37',NULL,NULL,'2023-11-22 16:07:58'),
(49,'제목38','컨덴츠38',NULL,NULL,'2023-11-22 16:07:58'),
(50,'제목39','컨덴츠39',NULL,NULL,'2023-11-22 16:07:58'),
(51,'제목40','컨덴츠40',NULL,NULL,'2023-11-22 16:07:58'),
(52,'제목41','컨덴츠41',NULL,NULL,'2023-11-22 16:07:58'),
(53,'제목42','컨덴츠42',NULL,NULL,'2023-11-22 16:07:58'),
(54,'제목43','컨덴츠43',NULL,NULL,'2023-11-22 16:07:58'),
(55,'제목44','컨덴츠44',NULL,NULL,'2023-11-22 16:07:58'),
(56,'제목45','컨덴츠45',NULL,NULL,'2023-11-22 16:07:58'),
(57,'제목46','컨덴츠46',NULL,NULL,'2023-11-22 16:07:58'),
(58,'제목47','컨덴츠47',NULL,NULL,'2023-11-22 16:07:58'),
(59,'제목48','컨덴츠48',NULL,NULL,'2023-11-22 16:07:58'),
(60,'제목49','컨덴츠49',NULL,NULL,'2023-11-22 16:07:58'),
(61,'제목50','컨덴츠50',NULL,NULL,'2023-11-22 16:07:58'),
(62,'제목51','컨덴츠51',NULL,NULL,'2023-11-22 16:07:58'),
(63,'제목52','컨덴츠52',NULL,NULL,'2023-11-22 16:07:58'),
(64,'제목53','컨덴츠53',NULL,NULL,'2023-11-22 16:07:58'),
(65,'제목54','컨덴츠54',NULL,NULL,'2023-11-22 16:07:58'),
(66,'제목55','컨덴츠55',NULL,NULL,'2023-11-22 16:07:58'),
(67,'제목56','컨덴츠56',NULL,NULL,'2023-11-22 16:07:58'),
(68,'제목57','컨덴츠57',NULL,NULL,'2023-11-22 16:07:58'),
(69,'제목58','컨덴츠58',NULL,NULL,'2023-11-22 16:07:58'),
(70,'제목59','컨덴츠59',NULL,NULL,'2023-11-22 16:07:58'),
(71,'제목60','컨덴츠60',NULL,NULL,'2023-11-22 16:07:58'),
(72,'제목61','컨덴츠61',NULL,NULL,'2023-11-22 16:07:58'),
(73,'제목62','컨덴츠62',NULL,NULL,'2023-11-22 16:07:58'),
(74,'제목63','컨덴츠63',NULL,NULL,'2023-11-22 16:07:58'),
(75,'제목64','컨덴츠64',NULL,NULL,'2023-11-22 16:07:58'),
(76,'제목65','컨덴츠65',NULL,NULL,'2023-11-22 16:07:58'),
(77,'제목66','컨덴츠66',NULL,NULL,'2023-11-22 16:07:58'),
(78,'제목67','컨덴츠67',NULL,NULL,'2023-11-22 16:07:58'),
(79,'제목68','컨덴츠68',NULL,NULL,'2023-11-22 16:07:58'),
(80,'제목69','컨덴츠69',NULL,NULL,'2023-11-22 16:07:58'),
(81,'제목70','컨덴츠70',NULL,NULL,'2023-11-22 16:07:58'),
(82,'제목71','컨덴츠71',NULL,NULL,'2023-11-22 16:07:58'),
(83,'제목72','컨덴츠72',NULL,NULL,'2023-11-22 16:07:58'),
(84,'제목73','컨덴츠73',NULL,NULL,'2023-11-22 16:07:58'),
(85,'제목74','컨덴츠74',NULL,NULL,'2023-11-22 16:07:58'),
(86,'제목75','컨덴츠75',NULL,NULL,'2023-11-22 16:07:58'),
(87,'제목76','컨덴츠76',NULL,NULL,'2023-11-22 16:07:58'),
(88,'제목77','컨덴츠77',NULL,NULL,'2023-11-22 16:07:58'),
(89,'제목78','컨덴츠78',NULL,NULL,'2023-11-22 16:07:58'),
(90,'제목79','컨덴츠79',NULL,NULL,'2023-11-22 16:07:58'),
(91,'제목80','컨덴츠80',NULL,NULL,'2023-11-22 16:07:58'),
(92,'제목81','컨덴츠81',NULL,NULL,'2023-11-22 16:07:58'),
(93,'제목82','컨덴츠82',NULL,NULL,'2023-11-22 16:07:58'),
(94,'제목83','컨덴츠83',NULL,NULL,'2023-11-22 16:07:58'),
(95,'제목84','컨덴츠84',NULL,NULL,'2023-11-22 16:07:58'),
(96,'제목85','컨덴츠85',NULL,NULL,'2023-11-22 16:07:58'),
(97,'제목86','컨덴츠86',NULL,NULL,'2023-11-22 16:07:58'),
(98,'제목87','컨덴츠87',NULL,NULL,'2023-11-22 16:07:58'),
(99,'제목88','컨덴츠88',NULL,NULL,'2023-11-22 16:07:58'),
(100,'제목89','컨덴츠89',NULL,NULL,'2023-11-22 16:07:58'),
(101,'제목90','컨덴츠90',NULL,NULL,'2023-11-22 16:07:58'),
(102,'제목91','컨덴츠91',NULL,NULL,'2023-11-22 16:07:58'),
(103,'제목92','컨덴츠92',NULL,NULL,'2023-11-22 16:07:58'),
(104,'제목93','컨덴츠93',NULL,NULL,'2023-11-22 16:07:58'),
(105,'제목94','컨덴츠94',NULL,NULL,'2023-11-22 16:07:58'),
(106,'제목95','컨덴츠95',NULL,NULL,'2023-11-22 16:07:58'),
(107,'제목96','컨덴츠96',NULL,NULL,'2023-11-22 16:07:58'),
(108,'제목97','컨덴츠97',NULL,NULL,'2023-11-22 16:07:58'),
(109,'제목98','컨덴츠98',NULL,NULL,'2023-11-22 16:07:58'),
(110,'제목99','컨덴츠99',NULL,NULL,'2023-11-22 16:07:58'),
(111,'제목100','컨덴츠100',NULL,NULL,'2023-11-22 16:07:58');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_blob`
--

DROP TABLE IF EXISTS `table_blob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_blob` (
  `id` int(11) DEFAULT NULL,
  `myimg` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_blob`
--

LOCK TABLES `table_blob` WRITE;
/*!40000 ALTER TABLE `table_blob` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_blob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `author_for_view`
--

/*!50001 DROP VIEW IF EXISTS `author_for_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `author_for_view` AS select `author`.`name` AS `name`,`author`.`email` AS `email` from `author` */;
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

-- Dump completed on 2023-11-22 17:09:40
