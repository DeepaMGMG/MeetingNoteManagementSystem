CREATE DATABASE  IF NOT EXISTS `database_deepa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `database_deepa`;
-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: database_deepa
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `role` varchar(150) DEFAULT NULL,
  `department` varchar(150) DEFAULT NULL,
  `employee_type` tinyint(5) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (6,'gdfg','dfgdfg','1a1dc91c907325c69271ddf0c944bc72','deepamg996@gmail.com','se','rtttttttttttt',1),(7,'Admin','Aissel','fd127d6e6fe8b78fa4a7bb0513accbed','testmgr@test.com','Manager','HR',2),(8,'test','User','7bca2711870ff3da577e74448139e796','testusr@test.com','Developer','SE',1),(9,'Deepamg','MGMG','973294a175310db957b6e00d97c5a076','deepa.tech@gmail.com','Developer','Management',1),(10,'Deepamg','MGMG','973294a175310db957b6e00d97c5a076','deepa.tech@gmail.com','Developer','Management',1),(14,'dere','dfrrf','ea1efdf084685f4d4aef8ff6c85957c3','frgrfgfg@gmail.com','sdfdf','dfsdfdsf',1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_notes`
--

DROP TABLE IF EXISTS `meeting_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_notes` (
  `M_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Subject` varchar(250) DEFAULT NULL,
  `Project_Id` varchar(250) DEFAULT NULL,
  `Note_details` longtext,
  `Meeting_Date` date DEFAULT NULL,
  `Documents` varchar(1000) DEFAULT NULL,
  `Tags` varchar(500) DEFAULT NULL,
  `Privilage` varchar(45) DEFAULT NULL,
  `Atendies` varchar(150) DEFAULT NULL,
  `Meeting_Hours` int(11) DEFAULT NULL,
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` date DEFAULT NULL,
  PRIMARY KEY (`M_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_notes`
--

LOCK TABLES `meeting_notes` WRITE;
/*!40000 ALTER TABLE `meeting_notes` DISABLE KEYS */;
INSERT INTO `meeting_notes` VALUES (16,'serialization testig','4','ererdf this is tesing unserialize the datawhen u fetch back','2110-08-10','48.jpg','s:18:\"deded,sdsds,sdsfds\";','public','s:1:\"7\";',2,8,'2017-05-27'),(17,'serialization testig','4','ererdf this is tesing unserialize the datawhen u fetch back','2110-08-10','48.jpg','s:18:\"deded,sdsds,sdsfds\";','public','s:1:\"7\";',2,8,'2017-05-27'),(18,'testing serialization','3','hsghgfg ,Hsgfdgf,Fyfsddfysfv...gthere are special chars%$%','2017-10-10','49.jpg','s:14:\"tags,test,note\";','public','s:1:\"8\";',5,8,'2017-05-27'),(19,'testing serialization','3','hsghgfg ,Hsgfdgf,Fyfsddfysfv...gthere are special chars%$%','2017-10-10','49.jpg','s:14:\"tags,test,note\";','public','s:1:\"8\";',5,8,'2017-05-27'),(20,'testing serialization','3','hsghgfg ,Hsgfdgf,Fyfsddfysfv...gthere are special chars%$%','2017-10-10','49.jpg','s:14:\"tags,test,note\";','public','s:1:\"8\";',5,8,'2017-05-27'),(21,'testing serialization','3','hsghgfg ,Hsgfdgf,Fyfsddfysfv...gthere are special chars%$%','2017-10-10','49.jpg','s:14:\"tags,test,note\";','public','s:1:\"8\";',5,8,'2017-05-27'),(22,'testing serialization','3','hsghgfg ,Hsgfdgf,Fyfsddfysfv...gthere are special chars%$%','2017-10-10','49.jpg','s:14:\"tags,test,note\";','public','s:1:\"8\";',5,8,'2017-05-27'),(24,'Subject By Today','5',' I am Admin and adding my first notes of meeting to application','2017-12-01','48.jpg','s:23:\"tag,mysql.board meeting\";','public','s:1:\"7\";',10,7,'2017-05-27');
/*!40000 ALTER TABLE `meeting_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `P_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Project_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`P_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Document Management System'),(2,'Evening Snacks Management'),(3,'To-Do List'),(4,'Split-Wise'),(5,'Meeting Notes Management System'),(6,'Leave Management System');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'database_deepa'
--
/*!50003 DROP PROCEDURE IF EXISTS `Meeting_Get_All_Notes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Meeting_Get_All_Notes`()
BEGIN
SELECT MN.M_Id as M_Id,
 MN.Subject as Subject,
 MN.Note_details as Note_details,
 MN.Meeting_Date as Meeting_Date,
 MN.Documents as Documents, 
 MN.Tags as Tags, 
 MN.Privilage as Privilage, 
 MN.Atendies as Atendies,
 MN.Meeting_Hours as Meeting_Hours,
 MN.Created_On as Created_On,
 E.firstname as firstname,
 P.Project_Name as projectname
 FROM database_deepa.meeting_notes MN,
 database_deepa.employee E,
 database_deepa.projects P
 where MN.Project_Id=P.P_Id AND
 MN.Created_By=E.uid
 AND MN.Privilage="public"; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Meeting_Get_My_Notes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Meeting_Get_My_Notes`(
IN p_uid INT )
BEGIN
SELECT MN.M_Id as M_Id,
 MN.Subject as Subject,
 MN.Note_details as Note_details,
 MN.Meeting_Date as Meeting_Date,
 MN.Documents as Documents, 
 MN.Tags as Tags, 
 MN.Privilage as Privilage, 
 MN.Atendies as Atendies,
 MN.Meeting_Hours as Meeting_Hours,
 MN.Created_On as Created_On,
 E.firstname as firstname,
 P.Project_Name as projectname
 FROM database_deepa.meeting_notes MN,
 database_deepa.employee E,
 database_deepa.projects P
 where MN.Project_Id=P.P_Id 
 AND MN.Created_By=E.uid
 AND MN.Created_By=p_uid; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Meeting_Get_Notes_By_Id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Meeting_Get_Notes_By_Id`(
IN p_mid INT )
BEGIN
SELECT MN.M_Id as M_Id,
 MN.Subject as Subject,
 MN.Note_details as Note_details,
 MN.Meeting_Date as Meeting_Date,
 MN.Documents as Documents, 
 MN.Tags as Tags, 
 MN.Privilage as Privilage, 
 MN.Atendies as Atendies,
 MN.Meeting_Hours as Meeting_Hours,
 MN.Created_On as Created_On,
 E.firstname as firstname,
 P.Project_Name as projectname
 FROM database_deepa.meeting_notes MN,
 database_deepa.employee E,
 database_deepa.projects P
 where MN.Project_Id=P.P_Id 
 AND MN.Created_By=E.uid
 AND MN.M_Id=p_mid; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-27 13:10:47
