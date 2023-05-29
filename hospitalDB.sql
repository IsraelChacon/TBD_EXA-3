CREATE DATABASE  IF NOT EXISTS `hospitaldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospitaldb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitaldb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `consecutivos`
--

DROP TABLE IF EXISTS `consecutivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consecutivos` (
  `consecutivo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consecutivos`
--

LOCK TABLES `consecutivos` WRITE;
/*!40000 ALTER TABLE `consecutivos` DISABLE KEYS */;
INSERT INTO `consecutivos` VALUES (1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000),(1000);
/*!40000 ALTER TABLE `consecutivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuartos`
--

DROP TABLE IF EXISTS `cuartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuartos` (
  `cuarto_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `numero_cuarto` int NOT NULL,
  `inicio_estadia` date NOT NULL,
  `fin_estadia` date DEFAULT NULL,
  PRIMARY KEY (`cuarto_id`),
  KEY `paciente_id` (`paciente_id`),
  CONSTRAINT `cuartos_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuartos`
--

LOCK TABLES `cuartos` WRITE;
/*!40000 ALTER TABLE `cuartos` DISABLE KEYS */;
INSERT INTO `cuartos` VALUES (1,1,121,'2017-04-10','2017-04-17'),(2,2,190,'2017-04-11','2017-04-13'),(3,3,108,'2017-04-12','2017-04-17'),(4,4,179,'2017-04-13','2017-04-18'),(5,5,158,'2017-04-14','2017-04-17'),(6,6,183,'2017-04-15','2017-04-16'),(7,7,142,'2017-04-16','2017-04-23'),(8,8,108,'2017-04-17','2017-04-24'),(9,9,100,'2017-04-18','2017-04-23'),(10,10,109,'2017-04-19','2017-04-24'),(11,11,116,'2017-04-20','2017-04-23'),(12,12,182,'2017-04-21','2017-04-24'),(13,13,180,'2017-04-22','2017-04-28'),(14,14,188,'2017-04-23','2017-04-25'),(15,15,173,'2017-04-24','2017-05-01'),(16,16,176,'2017-04-25','2017-04-30'),(17,17,122,'2017-04-26','2017-04-27'),(18,18,155,'2017-04-27','2017-05-07'),(19,19,181,'2017-04-28','2017-04-30'),(20,20,178,'2017-04-29','2017-05-05'),(21,21,139,'2017-04-30','2017-05-07'),(22,22,119,'2017-05-01','2017-05-10'),(23,23,193,'2017-05-02','2017-05-09'),(24,24,153,'2017-05-03','2017-05-04'),(25,25,168,'2017-05-04','2017-05-14'),(26,26,115,'2017-05-05','2017-05-12'),(27,27,140,'2017-05-06','2017-05-09'),(28,28,170,'2017-05-07','2017-05-14'),(29,29,153,'2017-05-08','2017-05-10'),(30,30,177,'2017-05-09','2017-05-14'),(31,31,101,'2017-05-10','2017-05-17'),(32,32,118,'2017-05-11','2017-05-21'),(33,33,120,'2017-05-12','2017-05-19'),(34,34,156,'2017-05-13','2017-05-19'),(35,35,174,'2017-05-14','2017-05-15'),(36,36,156,'2017-05-15','2017-05-19'),(37,37,397,'2017-05-16','2017-05-26'),(38,38,314,'2017-05-17','2017-05-18'),(39,39,385,'2017-05-18','2017-05-24'),(40,40,356,'2017-05-19','2017-05-26'),(41,41,317,'2017-05-20','2017-05-28'),(42,42,305,'2017-05-21','2017-05-29'),(43,43,363,'2017-05-22','2017-05-26'),(44,44,346,'2017-05-23','2017-06-02'),(45,45,396,'2017-05-24','2017-05-31'),(46,46,376,'2017-05-25','2017-06-03'),(47,47,353,'2017-05-26','2017-05-27'),(48,48,342,'2017-05-27','2017-06-06'),(49,49,382,'2017-05-28','2017-05-29'),(50,50,346,'2017-05-29','2017-05-30'),(51,51,349,'2017-05-30','2017-06-02'),(52,52,381,'2017-05-31','2017-06-08'),(53,53,383,'2017-06-01','2017-06-11'),(54,54,339,'2017-06-02','2017-06-07'),(55,55,326,'2017-06-03','2017-06-09'),(56,56,391,'2017-06-04','2017-06-12'),(57,57,377,'2017-06-05','2017-06-13'),(58,58,323,'2017-06-06','2017-06-13');
/*!40000 ALTER TABLE `cuartos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cuartos_update` AFTER UPDATE ON `cuartos` FOR EACH ROW BEGIN
    UPDATE Pacientes
    SET paciente_id = NEW.paciente_id
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cuartos_delete` BEFORE DELETE ON `cuartos` FOR EACH ROW BEGIN
    DELETE FROM Pacientes
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuentas_pacientes`
--

DROP TABLE IF EXISTS `cuentas_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes` (
  `cuentas_pacientes_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `forma_pago_pac_id` int DEFAULT NULL,
  `fecha_emision` date NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cuentas_pacientes_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_pac_id` (`forma_pago_pac_id`),
  CONSTRAINT `cuentas_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cuentas_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_pac_id`) REFERENCES `formas_pago_pacientes` (`forma_pago_pac_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes`
--

LOCK TABLES `cuentas_pacientes` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes` VALUES (1,1,1,'2017-04-20',''),(2,2,2,'2017-04-17',''),(3,3,3,'2017-04-20',''),(4,4,4,'2017-04-22',''),(5,5,5,'2017-04-21',''),(6,6,6,'2017-04-18',''),(7,7,7,'2017-04-24',''),(8,8,8,'2017-04-27',''),(9,9,9,'2017-04-28',''),(10,10,10,'2017-04-27',''),(11,11,11,'2017-04-28',''),(12,12,12,'2017-04-28',''),(13,13,13,'2017-04-29',''),(14,14,14,'2017-04-26',''),(15,15,15,'2017-05-05',''),(16,16,16,'2017-05-02',''),(17,17,17,'2017-05-01',''),(18,18,18,'2017-05-12',''),(19,19,19,'2017-05-03',''),(20,20,20,'2017-05-09',''),(21,21,21,'2017-05-08',''),(22,22,22,'2017-05-14',''),(23,23,23,'2017-05-12',''),(24,24,24,'2017-05-05',''),(25,25,25,'2017-05-19',''),(26,26,26,'2017-05-14',''),(27,27,27,'2017-05-12',''),(28,28,28,'2017-05-15',''),(29,29,29,'2017-05-13',''),(30,30,30,'2017-05-18',''),(31,31,31,'2017-05-20',''),(32,32,32,'2017-05-26',''),(33,33,33,'2017-05-22',''),(34,34,34,'2017-05-21',''),(35,35,35,'2017-05-16',''),(36,36,36,'2017-05-20',''),(37,37,37,'2017-05-27',''),(38,38,38,'2017-05-21',''),(39,39,39,'2017-05-26',''),(40,40,40,'2017-05-31',''),(41,41,41,'2017-05-31',''),(42,42,42,'2017-06-01',''),(43,43,43,'2017-05-27',''),(44,44,44,'2017-06-07',''),(45,45,45,'2017-06-04',''),(46,46,46,'2017-06-07',''),(47,47,47,'2017-05-31',''),(48,48,48,'2017-06-07',''),(49,49,49,'2017-05-31',''),(50,50,50,'2017-06-03',''),(51,51,51,'2017-06-03',''),(52,52,52,'2017-06-10',''),(53,53,53,'2017-06-14',''),(54,54,54,'2017-06-09',''),(55,55,55,'2017-06-14',''),(56,56,56,'2017-06-17',''),(57,57,57,'2017-06-16',''),(58,58,58,'2017-06-15','');
/*!40000 ALTER TABLE `cuentas_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cuentas_pacientes_update` AFTER UPDATE ON `cuentas_pacientes` FOR EACH ROW BEGIN
    UPDATE Pacientes
    SET paciente_id = NEW.paciente_id
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cuentas_pacientes_update_2` AFTER UPDATE ON `cuentas_pacientes` FOR EACH ROW BEGIN
    UPDATE Formas_pagos_pacientes
    SET forma_pago_pac_id = NEW.forma_pago_pac_id
    WHERE forma_pago_pac_id = OLD.forma_pago_pac_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cuentas_pacientes_delete` BEFORE DELETE ON `cuentas_pacientes` FOR EACH ROW BEGIN
    DELETE FROM Pacientes
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cuentas_pacientes_delete_2` BEFORE DELETE ON `cuentas_pacientes` FOR EACH ROW BEGIN
    DELETE FROM Formas_pago_pacientes
    WHERE forma_pago_pac_id = OLD.forma_pago_pac_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuentas_pacientes_detalles`
--

DROP TABLE IF EXISTS `cuentas_pacientes_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes_detalles` (
  `cuentas_pacientes_det_id` int NOT NULL AUTO_INCREMENT,
  `cuentas_pacientes_id` int DEFAULT NULL,
  `detalle` varchar(50) DEFAULT 'Diagnóstico',
  `cantidad` double NOT NULL,
  `costo_total` double NOT NULL,
  PRIMARY KEY (`cuentas_pacientes_det_id`),
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`),
  CONSTRAINT `cuentas_pacientes_detalles_ibfk_1` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes_detalles`
--

LOCK TABLES `cuentas_pacientes_detalles` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes_detalles` VALUES (1,1,'Tratamiento',3,151347),(2,2,'Tratamiento',3,50299),(3,3,'Tratamiento',2,335363),(4,4,'Tratamiento',3,336904),(5,5,'Tratamiento',1,284730),(6,6,'Tratamiento',1,692302),(7,7,'Tratamiento',1,191741),(8,8,'Tratamiento',1,744675),(9,9,'Tratamiento',1,859558),(10,10,'Tratamiento',1,507315),(11,11,'Tratamiento',2,189576),(12,12,'Tratamiento',3,615740),(13,13,'Tratamiento',2,251751),(14,14,'Tratamiento',3,289314),(15,15,'Tratamiento',2,346244),(16,16,'Tratamiento',1,321521),(17,17,'Tratamiento',3,729192),(18,18,'Tratamiento',2,654777),(19,19,'Tratamiento',2,141906),(20,20,'Tratamiento',1,749107),(21,21,'Tratamiento',1,347804),(22,22,'Tratamiento',2,824953),(23,23,'Tratamiento',3,966042),(24,24,'Tratamiento',1,376164),(25,25,'Tratamiento',3,376236),(26,26,'Tratamiento',1,255123),(27,27,'Tratamiento',3,317412),(28,28,'Tratamiento',3,766565),(29,29,'Tratamiento',3,230187),(30,30,'Tratamiento',2,973681),(31,31,'Tratamiento',3,556224),(32,32,'Tratamiento',1,789826),(33,33,'Tratamiento',3,797003),(34,34,'Tratamiento',3,896987),(35,35,'Tratamiento',1,645401),(36,36,'Tratamiento',3,732868),(37,37,'Tratamiento',1,707681),(38,38,'Tratamiento',3,110331),(39,39,'Tratamiento',3,158256),(40,40,'Tratamiento',2,81944),(41,41,'Tratamiento',2,881690),(42,42,'Tratamiento',2,602980),(43,43,'Tratamiento',1,268138),(44,44,'Tratamiento',3,379874),(45,45,'Tratamiento',1,153311),(46,46,'Tratamiento',3,863400),(47,47,'Tratamiento',2,860995),(48,48,'Tratamiento',3,149290),(49,49,'Tratamiento',1,267026),(50,50,'Tratamiento',1,834540),(51,51,'Tratamiento',3,153439),(52,52,'Tratamiento',3,236628),(53,53,'Tratamiento',3,871864),(54,54,'Tratamiento',3,680413),(55,55,'Tratamiento',3,343354),(56,56,'Tratamiento',3,57805),(57,57,'Tratamiento',3,308184),(58,58,'Tratamiento',2,453174),(59,1,'Tratamiento',3,286210),(60,2,'Tratamiento',2,370053),(61,3,'Tratamiento',2,468092),(62,4,'Tratamiento',3,526929),(63,5,'Tratamiento',1,550774),(64,6,'Tratamiento',3,152954),(65,7,'Tratamiento',2,361733),(66,8,'Tratamiento',2,554900),(67,9,'Tratamiento',1,285060),(68,10,'Tratamiento',1,525974),(69,11,'Tratamiento',3,585548),(70,12,'Tratamiento',2,50663),(71,13,'Tratamiento',2,275709),(72,14,'Tratamiento',3,239682),(73,15,'Tratamiento',1,563209),(74,16,'Tratamiento',2,234213),(75,17,'Tratamiento',1,589304),(76,18,'Tratamiento',3,248645),(77,19,'Tratamiento',1,443071),(78,20,'Tratamiento',3,219624),(79,21,'Tratamiento',1,584960),(80,22,'Tratamiento',3,429701),(81,23,'Tratamiento',3,570861),(82,24,'Tratamiento',2,46589),(83,25,'Tratamiento',1,566074),(84,26,'Tratamiento',2,549895),(85,27,'Tratamiento',3,88233),(86,28,'Tratamiento',3,184519),(87,29,'Tratamiento',3,34939),(88,30,'Tratamiento',1,140167),(89,31,'Tratamiento',1,268348),(90,32,'Tratamiento',3,54824),(91,33,'Tratamiento',1,343220),(92,34,'Tratamiento',1,141859),(93,35,'Tratamiento',1,187645),(94,36,'Tratamiento',3,176937),(95,37,'Tratamiento',2,292454),(96,38,'Tratamiento',1,320878),(97,39,'Tratamiento',3,354925),(98,40,'Tratamiento',3,511089),(99,41,'Tratamiento',2,59643),(100,42,'Tratamiento',2,583011),(101,43,'Tratamiento',3,124520),(102,44,'Tratamiento',2,61608),(103,45,'Tratamiento',2,452630),(104,46,'Tratamiento',1,541120),(105,47,'Tratamiento',3,68985),(106,48,'Tratamiento',1,79515),(107,49,'Tratamiento',1,596734),(108,50,'Tratamiento',1,335679),(109,51,'Tratamiento',1,71023),(110,52,'Tratamiento',1,443391),(111,53,'Tratamiento',2,479401),(112,54,'Tratamiento',1,132635),(113,55,'Tratamiento',3,352489),(114,56,'Tratamiento',1,373220),(115,57,'Tratamiento',3,597900),(116,58,'Tratamiento',3,378332);
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cuentas_pacientes_detalles_update` AFTER UPDATE ON `cuentas_pacientes_detalles` FOR EACH ROW BEGIN
    UPDATE Pacientes
    SET cuentas_pacientes_id = NEW.cuentas_pacientes_id
    WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cuentas_pacientes_detalles_delete` BEFORE DELETE ON `cuentas_pacientes_detalles` FOR EACH ROW BEGIN
    DELETE FROM pacientes
    WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `direccion_id` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(50) NOT NULL,
  `numero_exterior` int NOT NULL,
  `numero_interior` int DEFAULT NULL,
  `colonia` varchar(50) NOT NULL,
  `codigo_postal` varchar(5) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`direccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (92,'1 rue Alsace-Lorraine',1,NULL,'No especifica','40620','Toulouse','No especifica','France',''),(93,'12 Orchestra Terrace',12,NULL,'No especifica','72299','Walla Walla','WA','USA',''),(94,'12, rue des Bouchers',12,NULL,'No especifica','10368','Marseille','No especifica','France',''),(95,'120 Hanover Sq.',120,NULL,'No especifica','60155','London','No especifica','UK',''),(96,'184, chausse de Tournai',184,NULL,'No especifica','55769','Lille','No especifica','France',''),(97,'187 Suffolk Ln.',187,NULL,'No especifica','78271','Boise','ID','USA',''),(98,'1900 Oak St.',1900,NULL,'No especifica','85240','Vancouver','BC','Canada',''),(99,'2, rue du Commerce',2,NULL,'No especifica','46913','Helsinki','No especifica','',''),(100,'23 Tsawassen Blvd.',23,NULL,'No especifica','31994','Tsawassen','BC','Canada',''),(101,'24, place Klber',24,NULL,'No especifica','72584','Strasbourg','No especifica','France',''),(102,'25, rue Lauriston',25,NULL,'No especifica','43635','Paris','No especifica','France',''),(103,'265, boulevard Charonne',265,NULL,'No especifica','26346','Paris','No especifica','France',''),(104,'2732 Baker Blvd.',2732,NULL,'No especifica','87535','Eugene','OR','USA',''),(105,'2743 Bering St.',2743,NULL,'No especifica','79901','Anchorage','AK','USA',''),(106,'2817 Milton Dr.',2817,NULL,'No especifica','85182','Albuquerque','NM','USA',''),(107,'305 - 14th Ave. S. Suite 3B',305,3,'No especifica','62245','Oulu','No especifica','Finland',''),(108,'35 King George',35,NULL,'No especifica','13216','London','No especifica','UK',''),(109,'43 rue St. Laurent',43,NULL,'No especifica','18465','Montral','Qubec','Canada',''),(110,'5 Ave. Los Palos Grandes',5,NULL,'No especifica','68441','Caracas','DF','Venezuela',''),(111,'54, rue Royale',54,NULL,'No especifica','63117','Nantes','No especifica','France',''),(112,'55 Grizzly Peak Rd.',55,NULL,'No especifica','39549','Butte','MT','USA',''),(113,'59 rue de lAbbaye',59,NULL,'No especifica','21955','Warszawa','No especifica','',''),(114,'67, avenue de lEurope',67,NULL,'No especifica','42768','Versailles','No especifica','France',''),(115,'67, rue des Cinquante Otages',67,NULL,'No especifica','56274','Nantes','No especifica','France',''),(116,'722 DaVinci Blvd.',722,NULL,'No especifica','13113','Kirkland','WA','USA',''),(117,'8 Johnstown Road',8,NULL,'No especifica','47847','Cork','Co. Cork','Ireland',''),(118,'87 Polk St. Suite 5',87,NULL,'No especifica','11981','San Francisco','CA','USA',''),(119,'89 Chiaroscuro Rd.',89,NULL,'No especifica','29410','Portland','OR','USA',''),(120,'89 Jefferson Way Suite 2',89,NULL,'No especifica','44919','Portland','OR','USA',''),(121,'90 Wadhurst Rd.',90,NULL,'No especifica','43827','London','No especifica','UK',''),(122,'Adenauerallee 900',900,NULL,'No especifica','86925','Lyon','No especifica','France',''),(123,'Alameda dos Canrios, 891',891,NULL,'No especifica','36965','Sao Paulo','SP','Brazil',''),(124,'Av. Brasil, 442',442,NULL,'No especifica','68328','Campinas','SP','Brazil',''),(125,'Av. Copacabana, 267',267,NULL,'No especifica','34941','Rio de Janeiro','RJ','Brazil',''),(126,'Av. del Libertador 900',900,NULL,'No especifica','71252','Buenos Aires','No especifica','Argentina',''),(127,'Av. dos Lusadas, 23',23,NULL,'No especifica','84473','Sao Paulo','SP','Brazil',''),(128,'Av. Ins de Castro, 414',414,NULL,'No especifica','14942','Sao Paulo','SP','Brazil',''),(129,'Avda. Azteca 123',123,NULL,'No especifica','78040','Mxico D.F.','Mxico D.F.','Mexico',''),(130,'Avda. de la Constitucin 2222',2222,NULL,'No especifica','71760','Mxico D.F.','Mxico D.F.','Mexico',''),(131,'Ave. 5 de Mayo Porlamar',5,NULL,'No especifica','20768','I. de Margarita','Nueva Esparta','Venezuela',''),(132,'Berguvsvgen  8',8,NULL,'No especifica','26468','Lule','No especifica','Sweden',''),(133,'Berkeley Gardens 12  Brewery',12,NULL,'No especifica','61775','London','No especifica','UK',''),(134,'Berliner Platz 43',43,NULL,'No especifica','21914','Mnchen','No especifica','Germany',''),(135,'Boulevard Tirou, 255',255,NULL,'No especifica','86215','Charleroi','No especifica','Belgium',''),(136,'C/ Araquil, 67',67,NULL,'No especifica','11697','Madrid','No especifica','Spain',''),(137,'C/ Moralzarzal, 86',86,NULL,'No especifica','77528','Madrid','No especifica','Spain',''),(138,'C/ Romero, 33',33,NULL,'No especifica','18057','Sevilla','No especifica','Spain',''),(139,'Calle Dr. Jorge Cash 321',321,NULL,'No especifica','19460','Mxico D.F.','Mxico D.F.','Mexico',''),(140,'Carrera 22 con Ave. Carlos Soublette #8-35',22,8,'No especifica','50156','San Cristbal','Tchira','Venezuela',''),(141,'Carrera 52 con Ave. Bolvar #65-98 Llano Largo',52,NULL,'No especifica','76914','Barquisimeto','Lara','Venezuela',''),(142,'Cerrito 333',333,NULL,'No especifica','41756','Buenos Aires','No especifica','Argentina',''),(143,'City Center Plaza 516 Main St.',516,NULL,'No especifica','47913','Elgin','OR','USA',''),(144,'Erling Skakkes gate 78',78,NULL,'No especifica','68136','Stavern','No especifica','Norway',''),(145,'Estrada da sade n. 58',58,NULL,'No especifica','11380','Lisboa','No especifica','Portugal',''),(146,'Fauntleroy Circus',100,NULL,'No especifica','12425','London','No especifica','UK',''),(147,'Forsterstr. 57',57,NULL,'No especifica','29719','Mannheim','No especifica','Germany',''),(148,'Garden House Crowther Way',5,NULL,'No especifica','52697','Cowes','Isle of Wight','UK',''),(149,'Geislweg 14',14,NULL,'No especifica','34435','Salzburg','No especifica','Austria',''),(150,'Gran Va, 1',1,NULL,'No especifica','61601','Madrid','No especifica','Spain',''),(151,'Grenzacherweg 237',237,NULL,'No especifica','83335','Genve','No especifica','Switzerland',''),(152,'Hauptstr. 29',29,NULL,'No especifica','23662','Bern','No especifica','Switzerland',''),(153,'Heerstr. 22',22,NULL,'No especifica','73900','Leipzig','No especifica','Germany',''),(154,'Ing. Gustavo Moncada 8585 Piso 20-A',8585,20,'No especifica','83428','Buenos Aires','No especifica','Argentina',''),(155,'Jardim das rosas n. 32',32,NULL,'No especifica','87099','Lisboa','No especifica','Portugal',''),(156,'kergatan 24',24,NULL,'No especifica','83154','Brcke','No especifica','Sweden',''),(157,'Keskuskatu 45',45,NULL,'No especifica','25873','Resende','SP','Brazil',''),(158,'Kirchgasse 6',6,NULL,'No especifica','59319','Graz','No especifica','Austria',''),(159,'Luisenstr. 48',78,NULL,'No especifica','32205','Mnster','No especifica','Germany',''),(160,'Magazinweg 7',7,NULL,'No especifica','69129','Frankfurt a.M.','','Germany',''),(161,'Mataderos  2312',2312,NULL,'No especifica','37179','Mxico D.F.','Mxico D.F.','Mexico',''),(162,'Maubelstr. 90',90,NULL,'No especifica','73705','Brandenburg','No especifica','Germany',''),(163,'Mehrheimerstr. 369',369,NULL,'No especifica','46012','Kln','No especifica','Germany',''),(164,'Obere Str. 57',57,NULL,'No especifica','30071','Berlin','No especifica','Germany',''),(165,'P.O. Box 555',555,NULL,'No especifica','26230','Lander','WY','USA',''),(166,'Rambla de Catalua, 23',23,NULL,'No especifica','38184','Barcelona','No especifica','Spain',''),(167,'Rua da Panificadora, 12',12,NULL,'No especifica','37964','Rio de Janeiro','RJ','Brazil',''),(168,'Rua do Mercado, 12',12,NULL,'No especifica','10549','Stuttgart','No especifica','Germany',''),(169,'Rua do Pao, 67',67,NULL,'No especifica','22071','Rio de Janeiro','RJ','Brazil',''),(170,'Rua Ors, 92',92,NULL,'No especifica','16799','Sao Paulo','SP','Brazil',''),(171,'Rue Joseph-Bens 532',532,NULL,'No especifica','32742','Bruxelles','No especifica','Belgium',''),(172,'Sierras de Granada 9993',9993,NULL,'No especifica','45792','Mxico D.F.','No especifica','Mexico',''),(173,'Smagsloget 45',45,NULL,'No especifica','88442','rhus','No especifica','Denmark',''),(174,'South House 300 Queensbridge',300,NULL,'No especifica','77552','London','No especifica','UK',''),(175,'Strada Provinciale 124',124,NULL,'No especifica','47511','Reggio Emilia','No especifica','Italy',''),(176,'Taucherstrae 10',10,NULL,'No especifica','86041','Cunewalde','No especifica','Germany',''),(177,'Torikatu 38',38,NULL,'No especifica','18047','Reims','No especifica','France',''),(178,'ul. Filtrowa 6+B7:B928',68,NULL,'No especifica','33192','Seattle','WA','USA',''),(179,'Via Ludovico il Moro 22',22,NULL,'No especifica','82459','Bergamo','No especifica','Italy',''),(180,'Via Monte Bianco 34',34,NULL,'No especifica','87116','Torino','No especifica','Italy',''),(181,'Vinbltet 34',34,NULL,'No especifica','59536','Kobenhavn','No especifica','Denmark',''),(182,'Walserweg 21',21,NULL,'No especifica','20796','Aachen','No especifica','Germany','');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_empleados`
--

DROP TABLE IF EXISTS `direcciones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_empleados` (
  `direccion_empleado_id` int NOT NULL AUTO_INCREMENT,
  `empleado_id` int DEFAULT NULL,
  `direccion_id` int DEFAULT NULL,
  PRIMARY KEY (`direccion_empleado_id`),
  KEY `empleado_id` (`empleado_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `direcciones_empleados_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleados_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `direcciones_empleados_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_empleados`
--

LOCK TABLES `direcciones_empleados` WRITE;
/*!40000 ALTER TABLE `direcciones_empleados` DISABLE KEYS */;
INSERT INTO `direcciones_empleados` VALUES (32,2,149),(33,3,145),(34,4,167),(35,5,123),(36,6,176),(37,7,126),(38,8,106),(39,9,175),(40,10,125),(41,11,151),(42,12,150),(43,13,144),(44,14,97),(45,15,121),(46,16,181),(47,17,102),(48,18,165),(49,19,135),(50,20,120),(51,21,112),(52,22,159),(53,23,129),(54,24,128),(55,25,116),(56,26,173),(57,27,99),(58,28,113),(59,29,122),(60,30,177),(61,31,168);
/*!40000 ALTER TABLE `direcciones_empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_direcciones_empleados_update` AFTER UPDATE ON `direcciones_empleados` FOR EACH ROW BEGIN
    UPDATE Empleados
    SET empleado_id = NEW.empleado_id
    WHERE empleado_id = OLD.empleado_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_direcciones_empleados_update_2` AFTER UPDATE ON `direcciones_empleados` FOR EACH ROW BEGIN
    UPDATE Direcciones
    SET direccion_id = NEW.direccion_id
    WHERE direccion_id = OLD.direccion_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_direcciones_empleados_delete` BEFORE DELETE ON `direcciones_empleados` FOR EACH ROW BEGIN
    DELETE FROM Empleados
    WHERE empleado_id = OLD.empleado_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_direcciones_empleados_delete_2` BEFORE DELETE ON `direcciones_empleados` FOR EACH ROW BEGIN
    DELETE FROM Direcciones
    WHERE direccion_id = OLD.direccion_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `direcciones_pacientes`
--

DROP TABLE IF EXISTS `direcciones_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_pacientes` (
  `direccion_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `direccion_id` int DEFAULT NULL,
  PRIMARY KEY (`direccion_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `direcciones_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `direcciones_pacientes_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_pacientes`
--

LOCK TABLES `direcciones_pacientes` WRITE;
/*!40000 ALTER TABLE `direcciones_pacientes` DISABLE KEYS */;
INSERT INTO `direcciones_pacientes` VALUES (61,3,NULL),(62,1,107),(63,2,157),(64,3,NULL),(65,4,NULL),(66,5,NULL),(67,6,147),(68,7,101),(69,8,136),(70,9,94),(71,10,100),(72,11,146),(73,12,142),(74,13,172),(75,14,152),(76,15,127),(77,16,133),(78,17,182),(79,18,115),(80,19,108),(81,20,158),(82,21,170),(83,22,137),(84,23,96),(85,24,156),(86,25,134),(87,26,111),(88,27,180),(89,28,155),(90,29,166),(91,30,138),(92,31,124),(93,32,104),(94,33,110),(95,34,169),(96,35,140),(97,36,143),(98,37,117),(99,38,148),(100,39,162),(101,40,114),(102,41,92),(103,42,98),(104,43,93),(105,44,160),(106,45,118),(107,46,141),(108,47,131),(109,48,119),(110,49,179),(111,50,171),(112,51,109),(113,52,153),(114,53,174),(115,54,154),(116,55,105),(117,56,163),(118,57,103),(119,58,139),(120,1,164),(121,2,130),(122,3,161),(123,4,95),(124,5,132);
/*!40000 ALTER TABLE `direcciones_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_direcciones_pacientes_update` AFTER UPDATE ON `direcciones_pacientes` FOR EACH ROW BEGIN
    UPDATE Pacientes
    SET paciente_id = NEW.paciente_id
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_direcciones_pacientes_update_2` AFTER UPDATE ON `direcciones_pacientes` FOR EACH ROW BEGIN
    UPDATE Direcciones
    SET direccion_id = NEW.direccion_id
    WHERE direccion_id = OLD.direccion_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_direcciones_pacientes_delete` BEFORE DELETE ON `direcciones_pacientes` FOR EACH ROW BEGIN
    DELETE FROM Pacientes
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_direcciones_pacientes_delete_2` BEFORE DELETE ON `direcciones_pacientes` FOR EACH ROW BEGIN
    DELETE FROM Direcciones
    WHERE direccion_id = OLD.direccion_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `empleados_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pat` varchar(50) NOT NULL,
  `apellido_mat` varchar(50) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`empleados_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (2,'Alejandro','McAlpine','McAlpine','Senior Engineer','1953-09-19',''),(3,'Breannda','Billingsley','Billingsley','Staff','1961-10-15',''),(4,'Tse','Herber','Herber','Senior Engineer','1962-10-19',''),(5,'Anoosh','Peyn','Peyn','Engineer','1961-11-02',''),(6,'Gino','Leonhardt','Leonhardt','Senior Engineer','1952-08-06',''),(7,'Udi','Jansch','Jansch','Senior Staff','1959-04-07',''),(8,'Satosi','Awdeh','Awdeh','Staff','1963-04-14',''),(9,'Kwee','Schusler','Schusler','Senior Engineer','1952-11-13',''),(10,'Claudi','Stavenow','Stavenow','Senior Staff','1953-01-07',''),(11,'Charlene','Brattka','Brattka','Staff','1962-11-26',''),(12,'Margareta','Bierman','Bierman','Assistant Engineer','1960-09-06',''),(13,'Reuven','Garigliano','Garigliano','Assistant Engineer','1955-08-20',''),(14,'Hisao','Lipner','Lipner','Engineer','1958-01-21',''),(15,'Hironoby','Sidou','Sidou','Senior Engineer','1952-05-15',''),(16,'Shir','McClurg','McClurg','Engineer','1954-02-23',''),(17,'Mokhtar','Bernatsky','Bernatsky','Staff','1955-08-28',''),(18,'Gao','Dolinsky','Dolinsky','Engineer','1960-03-09',''),(19,'Erez','Ritzmann','Ritzmann','Senior Engineer','1952-06-13',''),(20,'Mona','Azuma','Azuma','Senior Staff','1964-04-18',''),(21,'Danel','Mondadori','Mondadori','Engineer','1959-12-25',''),(22,'Kshitij','Gils','Gils','Senior Staff','1961-10-05',''),(23,'Premal','Baek','Baek','Staff','1957-12-03',''),(24,'Zhongwei','Rosen','Rosen','Senior Staff','1960-12-17',''),(25,'Parviz','Lortz','Lortz','Staff','1963-09-09',''),(26,'Vishv','Zockler','Zockler','Engineer','1959-07-23',''),(27,'Tuval','Kalloufi','Kalloufi','Senior Engineer','1960-05-25',''),(28,'Kenroku','Malabarba','Malabarba','Staff','1962-11-07',''),(29,'Somnath','Foote','Foote','Engineer','1962-11-19',''),(30,'Xinglin','Eugenio','Eugenio','Technique Leader','1959-07-23',''),(31,'Jungsoon','Syrzycki','Syrzycki','Engineer','1954-02-25','');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago` (
  `forma_pago_id` int NOT NULL AUTO_INCREMENT,
  `forma_pago` varchar(50) NOT NULL,
  PRIMARY KEY (`forma_pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
INSERT INTO `formas_pago` VALUES (1,'EFECTIVO'),(2,'TARJETA CREDITO'),(3,'TARJETA DEBITO'),(4,'SEGURO'),(5,'CHEQUE');
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago_pacientes`
--

DROP TABLE IF EXISTS `formas_pago_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago_pacientes` (
  `forma_pago_pac_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `forma_pago_id` int DEFAULT NULL,
  `detalles` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`forma_pago_pac_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_id` (`forma_pago_id`),
  CONSTRAINT `formas_pago_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `formas_pago_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_id`) REFERENCES `formas_pago` (`forma_pago_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago_pacientes`
--

LOCK TABLES `formas_pago_pacientes` WRITE;
/*!40000 ALTER TABLE `formas_pago_pacientes` DISABLE KEYS */;
INSERT INTO `formas_pago_pacientes` VALUES (1,1,NULL,''),(2,2,NULL,''),(3,3,1,''),(4,4,2,''),(5,5,3,''),(6,6,4,''),(7,7,5,''),(8,8,1,''),(9,9,2,''),(10,10,3,''),(11,11,4,''),(12,12,5,''),(13,13,NULL,''),(14,14,NULL,''),(15,15,NULL,''),(16,16,NULL,''),(17,17,1,''),(18,18,2,''),(19,19,3,''),(20,20,4,''),(21,21,5,''),(22,22,NULL,''),(23,23,NULL,''),(24,24,NULL,''),(25,25,NULL,''),(26,26,1,''),(27,27,2,''),(28,28,3,''),(29,29,4,''),(30,30,5,''),(31,31,NULL,''),(32,32,NULL,''),(33,33,NULL,''),(34,34,NULL,''),(35,35,NULL,''),(36,36,NULL,''),(37,37,1,''),(38,38,2,''),(39,39,3,''),(40,40,4,''),(41,41,5,''),(42,42,NULL,''),(43,43,NULL,''),(44,44,NULL,''),(45,45,NULL,''),(46,46,1,''),(47,47,2,''),(48,48,3,''),(49,49,4,''),(50,50,5,''),(51,51,NULL,''),(52,52,NULL,''),(53,53,1,''),(54,54,2,''),(55,55,3,''),(56,56,4,''),(57,57,5,''),(58,58,NULL,'');
/*!40000 ALTER TABLE `formas_pago_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_formas_pago_pacientes_update` AFTER UPDATE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
    UPDATE Pacientes
    SET paciente_id = NEW.paciente_id
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_formas_pago_pacientes_update_2` AFTER UPDATE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
    UPDATE Formas_pagos
    SET forma_pago_id = NEW.forma_pago_id
    WHERE forma_pago_id = OLD.forma_pago_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_formas_pago_pacientes_delete` BEFORE DELETE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
    DELETE FROM Pacientes
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_formas_pago_pacientes_delete_2` BEFORE DELETE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
    DELETE FROM Formas_pagos
    WHERE forma_pago_id = OLD.forma_pago_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `paciente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pat` varchar(50) NOT NULL,
  `apellido_mat` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  `numero_seguro_social` varchar(11) NOT NULL,
  `genero` enum('Masculino','Femenino') DEFAULT NULL,
  `telefono_casa` varchar(10) DEFAULT NULL,
  `telefono_trabajo` varchar(10) DEFAULT NULL,
  `telefono_movil` varchar(10) DEFAULT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Georgi','Facello','Facello','1960-02-20',93,1.99,'10001','Masculino','','','',''),(2,'Bezalel','Simmel','Simmel','1952-07-08',88,1.69,'10002','Femenino','','','',''),(3,'Parto','Bamford','Bamford','1953-09-29',62,1.88,'10003','Masculino','','','',''),(4,'Chirstian','Koblick','Koblick','1958-09-05',93,1.84,'10004','Masculino','','','',''),(5,'Kyoichi','Maliniak','Maliniak','1958-10-31',86,1.89,'10005','Masculino','','','',''),(6,'Anneke','Preusig','Preusig','1953-04-03',86,1.54,'10006','Femenino','','','',''),(7,'Tzvetan','Zielinski','Zielinski','1962-07-10',56,1.77,'10007','Femenino','','','',''),(8,'Saniya','Kalloufi','Kalloufi','1963-11-26',78,1.82,'10008','Masculino','','','',''),(9,'Sumant','Peac','Peac','1956-12-13',85,1.64,'10009','Femenino','','','',''),(10,'Duangkaew','Piveteau','Piveteau','1958-07-14',92,1.71,'10010','Femenino','','','',''),(11,'Mary','Sluis','Sluis','1959-01-27',96,1.96,'10011','Femenino','','','',''),(12,'Patricio','Bridgland','Bridgland','1960-08-09',63,1.9,'10012','Masculino','','','',''),(13,'Eberhardt','Terkki','Terkki','1956-11-14',81,1.64,'10013','Masculino','','','',''),(14,'Berni','Genin','Genin','1962-12-29',67,1.74,'10014','Masculino','','','',''),(15,'Guoxiang','Nooteboom','Nooteboom','1953-02-08',60,1.55,'10015','Masculino','','','',''),(16,'Kazuhito','Cappelletti','Cappelletti','1959-08-10',97,1.71,'10016','Masculino','','','',''),(17,'Cristinel','Bouloucos','Bouloucos','1963-07-22',66,1.91,'10017','Femenino','','','',''),(18,'Kazuhide','Peha','Peha','1960-07-20',88,1.51,'10018','Femenino','','','',''),(19,'Lillian','Haddadi','Haddadi','1959-10-01',85,1.61,'10019','Masculino','','','',''),(20,'Mayuko','Warwick','Warwick','1959-09-13',96,1.78,'10020','Masculino','','','',''),(21,'Ramzi','Erde','Erde','1959-08-27',91,1.61,'10021','Masculino','','','',''),(22,'Shahaf','Famili','Famili','1956-02-26',70,1.81,'10022','Masculino','','','',''),(23,'Bojan','Montemayor','Montemayor','1960-09-19',86,1.8,'10023','Femenino','','','',''),(24,'Suzette','Pettey','Pettey','1961-09-21',79,1.74,'10024','Femenino','','','',''),(25,'Prasadram','Heyers','Heyers','1957-08-14',91,1.95,'10025','Masculino','','','',''),(26,'Yongqiao','Berztiss','Berztiss','1960-07-23',75,1.91,'10026','Masculino','','','',''),(27,'Divier','Reistad','Reistad','1952-06-29',57,1.6,'10027','Femenino','','','',''),(28,'Domenick','Tempesti','Tempesti','1963-07-11',62,1.72,'10028','Masculino','','','',''),(29,'Otmar','Herbst','Herbst','1961-04-24',77,1.6,'10029','Masculino','','','',''),(30,'Elvis','Demeyer','Demeyer','1958-05-21',93,1.64,'10030','Masculino','','','',''),(31,'Karsten','Joslin','Joslin','1953-07-28',95,1.52,'10031','Masculino','','','',''),(32,'Jeong','Reistad','Reistad','1961-02-26',84,1.6,'10032','Femenino','','','',''),(33,'Arif','Merlo','Merlo','1954-09-13',92,1.77,'10033','Masculino','','','',''),(34,'Bader','Swan','Swan','1957-04-04',69,1.56,'10034','Masculino','','','',''),(35,'Alain','Chappelet','Chappelet','1956-06-06',57,1.55,'10035','Masculino','','','',''),(36,'Adamantios','Portugali','Portugali','1961-09-01',62,1.99,'10036','Masculino','','','',''),(37,'Pradeep','Makrucki','Makrucki','1954-05-30',60,1.75,'10037','Masculino','','','',''),(38,'Huan','Lortz','Lortz','1954-10-01',97,1.88,'10038','Masculino','','','',''),(39,'Alejandro','Brender','Brender','1959-10-01',92,1.78,'10039','Masculino','','','',''),(40,'Weiyi','Meriste','Meriste','1959-09-13',97,1.84,'10040','Femenino','','','',''),(41,'Uri','Lenart','Lenart','1959-08-27',80,1.9,'10041','Femenino','','','',''),(42,'Magy','Stamatiou','Stamatiou','1956-02-26',69,1.91,'10042','Femenino','','','',''),(43,'Yishay','Tzvieli','Tzvieli','1960-09-19',65,1.95,'10043','Masculino','','','',''),(44,'Mingsen','Casley','Casley','1961-09-21',90,1.8,'10044','Femenino','','','',''),(45,'Moss','Shanbhogue','Shanbhogue','1957-08-14',90,1.97,'10045','Masculino','','','',''),(46,'Lucien','Rosenbaum','Rosenbaum','1960-07-23',85,1.53,'10046','Masculino','','','',''),(47,'Zvonko','Nyanchama','Nyanchama','1952-06-29',78,1.65,'10047','Masculino','','','',''),(48,'Florian','Syrotiuk','Syrotiuk','1963-07-11',76,1.58,'10048','Masculino','','','',''),(49,'Basil','Tramer','Tramer','1961-04-24',99,1.55,'10049','Femenino','','','',''),(50,'Yinghua','Dredge','Dredge','1958-05-21',78,1.54,'10050','Masculino','','','',''),(51,'Hidefumi','Caine','Caine','1953-07-28',54,1.84,'10051','Masculino','','','',''),(52,'Heping','Nitsch','Nitsch','1961-02-26',85,1.59,'10052','Masculino','','','',''),(53,'Sanjiv','Zschoche','Zschoche','1954-09-13',52,1.53,'10053','Femenino','','','',''),(54,'Mayumi','Schueller','Schueller','1957-04-04',75,1.72,'10054','Masculino','','','',''),(55,'Georgy','Dredge','Dredge','1956-06-06',97,1.61,'10055','Masculino','','','',''),(56,'Brendon','Bernini','Bernini','1961-09-01',91,1.63,'10056','Femenino','','','',''),(57,'Ebbe','Callaway','Callaway','1954-05-30',91,1.96,'10057','Femenino','','','',''),(58,'Berhard','McFarlin','McFarlin','1954-10-01',99,1.96,'10058','Masculino','','','','');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pacientes`
--

DROP TABLE IF EXISTS `registro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_pacientes` (
  `registro_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `cuentas_pacientes_id` int DEFAULT NULL,
  `registro_por_empleado_id` int DEFAULT NULL,
  `fecha_admision` date NOT NULL,
  `condicion_medica` varchar(100) DEFAULT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`registro_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`),
  KEY `registro_por_empleado_id` (`registro_por_empleado_id`),
  CONSTRAINT `registro_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `registro_pacientes_ibfk_2` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `registro_pacientes_ibfk_3` FOREIGN KEY (`registro_por_empleado_id`) REFERENCES `empleados` (`empleados_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pacientes`
--

LOCK TABLES `registro_pacientes` WRITE;
/*!40000 ALTER TABLE `registro_pacientes` DISABLE KEYS */;
INSERT INTO `registro_pacientes` VALUES (1,1,1,2,'2017-04-08','Abdominal Aortic Aneurysm',''),(2,2,2,3,'2017-04-09','Abdominal Cramps (Heat Cramps)',''),(3,3,3,4,'2017-04-10','Abdominal Hernia (Hernia Overview)',''),(4,4,4,5,'2017-04-12','Bacterial Vaginosis (Causes, Symptoms, Treatment)',''),(5,5,5,6,'2017-04-12','Bad Breath',''),(6,6,6,7,'2017-04-14','Bad Cholesterol Test (Cholesterol Test)',''),(7,7,7,8,'2017-04-15','Baker Cyst',''),(8,8,8,9,'2017-04-15','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',''),(9,9,9,10,'2017-04-16','Fast Heart Beat (Palpitations Overview)',''),(10,10,10,11,'2017-04-17','Fatigue',''),(11,11,11,12,'2017-04-18','Fatigue From Cancer (Cancer Fatigue',''),(12,12,12,13,'2017-04-19','Lambliasis (Giardia Lamblia)',''),(13,13,13,14,'2017-04-20','Lambliosis (Giardia Lamblia)',''),(14,14,14,15,'2017-04-22','Landau-Kleffner Syndrome',''),(15,15,15,16,'2017-04-22','Lap Band Surgery (Gastric Banding)',''),(16,16,16,17,'2017-04-24','Laparoscopic Liver Biopsy (Liver Biopsy)',''),(17,17,17,18,'2017-04-24','Omega-3 Fatty Acids',''),(18,18,18,19,'2017-04-25','Onchocerciasis',''),(19,19,19,20,'2017-04-27','Onychocryptosis (Ingrown Toenail)',''),(20,20,20,21,'2017-04-28','Scarlatina)',''),(21,21,21,22,'2017-04-28','Scars',''),(22,22,22,23,'2017-04-30','Schatzki Ring',''),(23,23,23,24,'2017-05-01','Scheuermanns Kyphosis (Kyphosis)',''),(24,24,24,25,'2017-05-01','Schistosoma guineensis (Schistosomiasis)',''),(25,25,25,26,'2017-05-02','Schistosoma haematobium (Schistosomiasis)',''),(26,26,26,27,'2017-05-04','Schistosoma japonicum (Schistosomiasis)',''),(27,27,27,28,'2017-05-04','Tachycardia (Heart Rhythm Disorders)',''),(28,28,28,29,'2017-05-06','Tachycardia, Paroxysmal Atrial (Paroxysmal Supraventricular Tachycardia (PSVT))',''),(29,29,29,30,'2017-05-07','Tachycardia, Paroxysmal Supraventricular (Paroxysmal Supraventricular Tachycardia (PSVT))',''),(30,30,30,31,'2017-05-07','Tailbone Pain (Coccydynia)',''),(31,31,31,2,'2017-05-09','Tailors Bunion (Bunions)',''),(32,32,32,3,'2017-05-10','Takayasu Arteritis (Takayasu Disease)',''),(33,33,33,4,'2017-05-10','Takayasu Disease',''),(34,34,34,5,'2017-05-11','Taking Dental Medications',''),(35,35,35,6,'2017-05-13','Tarry Stools (Stool Color Changes)',''),(36,36,36,7,'2017-05-14','Abdominal Aortic Aneurysm',''),(37,37,37,8,'2017-05-14','Abdominal Cramps (Heat Cramps)',''),(38,38,38,9,'2017-05-15','Abdominal Hernia (Hernia Overview)',''),(39,39,39,10,'2017-05-16','Bacterial Vaginosis (Causes, Symptoms, Treatment)',''),(40,40,40,11,'2017-05-18','Bad Breath',''),(41,41,41,12,'2017-05-18','Bad Cholesterol Test (Cholesterol Test)',''),(42,42,42,13,'2017-05-20','Baker Cyst',''),(43,43,43,14,'2017-05-21','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',''),(44,44,44,15,'2017-05-22','Fast Heart Beat (Palpitations Overview)',''),(45,45,45,16,'2017-05-23','Fatigue',''),(46,46,46,17,'2017-05-23','Fatigue From Cancer (Cancer Fatigue',''),(47,47,47,18,'2017-05-25','Lambliasis (Giardia Lamblia)',''),(48,48,48,19,'2017-05-25','Lambliosis (Giardia Lamblia)',''),(49,49,49,20,'2017-05-27','Landau-Kleffner Syndrome',''),(50,50,50,21,'2017-05-28','Lap Band Surgery (Gastric Banding)',''),(51,51,51,22,'2017-05-29','Laparoscopic Liver Biopsy (Liver Biopsy)',''),(52,52,52,23,'2017-05-29','Omega-3 Fatty Acids',''),(53,53,53,24,'2017-05-31','Onchocerciasis',''),(54,54,54,25,'2017-05-31','Onychocryptosis (Ingrown Toenail)',''),(55,55,55,26,'2017-06-01','Scarlatina)',''),(56,56,56,27,'2017-06-02','Scars',''),(57,57,57,28,'2017-06-04','Schatzki Ring',''),(58,58,58,29,'2017-06-05','Scheuermanns Kyphosis (Kyphosis)','');
/*!40000 ALTER TABLE `registro_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_registro_pacientes_update` AFTER UPDATE ON `registro_pacientes` FOR EACH ROW BEGIN
    UPDATE Pacientes
    SET paciente_id = NEW.paciente_id
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_registro_pacientes_update_2` AFTER UPDATE ON `registro_pacientes` FOR EACH ROW BEGIN
    UPDATE Empleados
    SET registro_por_empleado_id = NEW.registro_por_empleado_id
    WHERE registro_por_empleado_id = OLD.registro_paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_registro_pacientes_update_3` AFTER UPDATE ON `registro_pacientes` FOR EACH ROW BEGIN
    UPDATE Cuentas_pacientes
    SET cuentas_pacientes_id = NEW.cuentas_pacientes_id
    WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_registro_pacientes_delete` BEFORE DELETE ON `registro_pacientes` FOR EACH ROW BEGIN
    DELETE FROM Pacientes
    WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_registro_pacientes_delete_2` BEFORE DELETE ON `registro_pacientes` FOR EACH ROW BEGIN
    DELETE FROM Empleados
    WHERE registro_por_empleado_id = OLD.registro_paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_registro_pacientes_delete_3` BEFORE DELETE ON `registro_pacientes` FOR EACH ROW BEGIN
    DELETE FROM Cuentas_pacientes
    WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'hospitaldb'
--

--
-- Dumping routines for database 'hospitaldb'
--
/*!50003 DROP FUNCTION IF EXISTS `generar_nss` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `generar_nss`(fecha_nacimiento DATE) RETURNS varchar(11) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE nss VARCHAR(11);
    DECLARE office_num VARCHAR(2);
    DECLARE registration_year VARCHAR(2);
    DECLARE birth_year VARCHAR(2);
    DECLARE assigned_num VARCHAR(4);
    DECLARE verifier_digit VARCHAR(1);

    -- Generar número de oficina (92)
    SET office_num = LPAD(FLOOR(RAND() * 100), 2, '0');
    
        -- Generar año de nacimiento (80)
    SET birth_year = RIGHT(year(fecha_nacimiento), 2);

    -- Generar año de inscripción (98)
	SET registration_year = LPAD(FLOOR(YEAR(fecha_nacimiento) + 15 + RAND() * (YEAR(CURDATE()) - (YEAR(fecha_nacimiento) + 15))), 2, '0');
    

    -- Generar número asignado por el IMSS (8449)
    INSERT INTO consecutivos (consecutivo) VALUES (1000) ON DUPLICATE KEY UPDATE consecutivo = LAST_INSERT_ID(consecutivo + 1);
    SET assigned_num = LPAD(LAST_INSERT_ID(), 4, '0');

    -- Calcular dígito verificador
    SET verifier_digit = CAST((
        SUBSTRING(office_num, 1, 1) +
        SUBSTRING(office_num, 2, 1) +
        SUBSTRING(registration_year, 1, 1) +
        SUBSTRING(registration_year, 2, 1) +
        SUBSTRING(birth_year, 1, 1) +
        SUBSTRING(birth_year, 2, 1) +
        SUBSTRING(assigned_num, 1, 1) +
        SUBSTRING(assigned_num, 2, 1) +
        SUBSTRING(assigned_num, 3, 1) +
        SUBSTRING(assigned_num, 4, 1)
    ) % 10 AS UNSIGNED);

    -- Construir el número de seguro social (NSS)
    SET nss = CONCAT(office_num, registration_year, birth_year, assigned_num, verifier_digit);

    RETURN nss;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACTUALIZAR_PAGOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACTUALIZAR_PAGOS`(in pacid int)
begin
	declare done int default false;
    

	declare v_ef int;
    declare v_tc int;
    declare v_td int;
    declare v_s int;
    declare v_ch int;
    declare v_n int;
    
	drop temporary table if exists probado;
    
	create temporary table probado (
	p_id int key auto_increment,
	modopago varchar (15),
	monto_p int);

	insert into probado(modopago)
	select forma_pago from formas_pago;
    insert into probado(modopago)
    values ('SIN PAGO');
    
    set v_ef = 0 + (
		select sum(costo_total) from formas_pago a
		right join formas_pago_pacientes b
		on (a.forma_pago_id = b.forma_pago_id) or (b.forma_pago_id is null and a.forma_pago_id = b.forma_pago_id)
		inner join cuentas_pacientes c
		on b.paciente_id = c.paciente_id
		inner join cuentas_pacientes_detalles d
		on c.cuentas_pacientes_id = d.cuentas_pacientes_id
		inner join pacientes e 
		on c.paciente_id = e.paciente_id

		where e.paciente_id = pacid and b.forma_pago_id = 1);
		
    set v_tc = 0 + (
		select sum(costo_total) from formas_pago a
		right join formas_pago_pacientes b
		on (a.forma_pago_id = b.forma_pago_id) or (b.forma_pago_id is null and a.forma_pago_id = b.forma_pago_id)
		inner join cuentas_pacientes c
		on b.paciente_id = c.paciente_id
		inner join cuentas_pacientes_detalles d
		on c.cuentas_pacientes_id = d.cuentas_pacientes_id
		inner join pacientes e 
		on c.paciente_id = e.paciente_id

		where e.paciente_id = pacid and b.forma_pago_id = 2);
    set v_td = 0 + (
		select sum(costo_total) from formas_pago a
		right join formas_pago_pacientes b
		on (a.forma_pago_id = b.forma_pago_id) or (b.forma_pago_id is null and a.forma_pago_id = b.forma_pago_id)
		inner join cuentas_pacientes c
		on b.paciente_id = c.paciente_id
		inner join cuentas_pacientes_detalles d
		on c.cuentas_pacientes_id = d.cuentas_pacientes_id
		inner join pacientes e 
		on c.paciente_id = e.paciente_id

		where e.paciente_id = pacid and b.forma_pago_id = 3);
    set v_s  = 0 + (
		select sum(costo_total) from formas_pago a
		right join formas_pago_pacientes b
		on (a.forma_pago_id = b.forma_pago_id) or (b.forma_pago_id is null and a.forma_pago_id = b.forma_pago_id)
		inner join cuentas_pacientes c
		on b.paciente_id = c.paciente_id
		inner join cuentas_pacientes_detalles d
		on c.cuentas_pacientes_id = d.cuentas_pacientes_id
		inner join pacientes e 
		on c.paciente_id = e.paciente_id

		where e.paciente_id = pacid and b.forma_pago_id = 4);
    set v_ch = 0 + (
		select sum(costo_total) from formas_pago a
		right join formas_pago_pacientes b
		on (a.forma_pago_id = b.forma_pago_id) or (b.forma_pago_id is null and a.forma_pago_id = b.forma_pago_id)
		inner join cuentas_pacientes c
		on b.paciente_id = c.paciente_id
		inner join cuentas_pacientes_detalles d
		on c.cuentas_pacientes_id = d.cuentas_pacientes_id
		inner join pacientes e 
		on c.paciente_id = e.paciente_id

		where e.paciente_id = pacid and b.forma_pago_id = 5);
    set v_n  = 0 + (
		select sum(costo_total) from formas_pago a
		right join formas_pago_pacientes b
		on (a.forma_pago_id = b.forma_pago_id) or (b.forma_pago_id is null and a.forma_pago_id = b.forma_pago_id)
		inner join cuentas_pacientes c
		on b.paciente_id = c.paciente_id
		inner join cuentas_pacientes_detalles d
		on c.cuentas_pacientes_id = d.cuentas_pacientes_id
		inner join pacientes e 
		on c.paciente_id = e.paciente_id

		where e.paciente_id = pacid and b.forma_pago_id is null);
        
    update probado
    set monto_p = v_ef
    where p_id = 1;
    
    update probado
    set monto_p = v_tc
    where p_id = 2;
    
    update probado
    set monto_p = v_td
    where p_id = 3;
    
    update probado
    set monto_p = v_s
    where p_id = 4;
    
    update probado
    set monto_p = v_ch
    where p_id = 5;
    
    update probado
    set monto_p = v_n
    where p_id = 8;
    
    select modopago as 'MODO DE PAGO', monto_p as MONTO from probado;
	end ;;
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

-- Dump completed on 2023-05-28 23:11:07
