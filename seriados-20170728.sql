CREATE DATABASE  IF NOT EXISTS `seriados` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `seriados`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: localhost    Database: seriados
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `atores`
--

DROP TABLE IF EXISTS `atores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `nascimento` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atores`
--

LOCK TABLES `atores` WRITE;
/*!40000 ALTER TABLE `atores` DISABLE KEYS */;
/*!40000 ALTER TABLE `atores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diretores`
--

DROP TABLE IF EXISTS `diretores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diretores` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `nascimento` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretores`
--

LOCK TABLES `diretores` WRITE;
/*!40000 ALTER TABLE `diretores` DISABLE KEYS */;
/*!40000 ALTER TABLE `diretores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodios`
--

DROP TABLE IF EXISTS `episodios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episodios` (
  `id` int(11) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `estreia` date DEFAULT NULL,
  `seriados_id` int(11) NOT NULL,
  `diretores_id` int(11) NOT NULL,
  `temporada` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`,`seriados_id`,`diretores_id`),
  KEY `fk_episodios_seriados_idx` (`seriados_id`),
  KEY `fk_episodios_diretores1_idx` (`diretores_id`),
  CONSTRAINT `fk_episodios_diretores1` FOREIGN KEY (`diretores_id`) REFERENCES `diretores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_episodios_seriados` FOREIGN KEY (`seriados_id`) REFERENCES `seriados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodios`
--

LOCK TABLES `episodios` WRITE;
/*!40000 ALTER TABLE `episodios` DISABLE KEYS */;
/*!40000 ALTER TABLE `episodios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodios_tem_personagens`
--

DROP TABLE IF EXISTS `episodios_tem_personagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episodios_tem_personagens` (
  `episodios_id` int(11) NOT NULL,
  `personagens_id` int(11) NOT NULL,
  PRIMARY KEY (`episodios_id`,`personagens_id`),
  KEY `fk_episodios_has_personagens_personagens1_idx` (`personagens_id`),
  KEY `fk_episodios_has_personagens_episodios1_idx` (`episodios_id`),
  CONSTRAINT `fk_episodios_has_personagens_episodios1` FOREIGN KEY (`episodios_id`) REFERENCES `episodios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_episodios_has_personagens_personagens1` FOREIGN KEY (`personagens_id`) REFERENCES `personagens` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodios_tem_personagens`
--

LOCK TABLES `episodios_tem_personagens` WRITE;
/*!40000 ALTER TABLE `episodios_tem_personagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `episodios_tem_personagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personagens`
--

DROP TABLE IF EXISTS `personagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personagens` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `atores_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`atores_id`),
  KEY `fk_personagens_atores1_idx` (`atores_id`),
  CONSTRAINT `fk_personagens_atores1` FOREIGN KEY (`atores_id`) REFERENCES `atores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personagens`
--

LOCK TABLES `personagens` WRITE;
/*!40000 ALTER TABLE `personagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seriados`
--

DROP TABLE IF EXISTS `seriados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seriados` (
  `id` int(11) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seriados`
--

LOCK TABLES `seriados` WRITE;
/*!40000 ALTER TABLE `seriados` DISABLE KEYS */;
/*!40000 ALTER TABLE `seriados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-28  0:40:12
