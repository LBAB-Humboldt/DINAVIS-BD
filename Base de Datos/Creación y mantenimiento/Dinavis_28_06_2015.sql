/*
Author: Luis Hernan Cardenas Guerrero
Creation date: 01/06/2015
Query name: Creacion de ceros de Dinavis
*/
CREATE DATABASE  IF NOT EXISTS `dinavis` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dinavis`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: dinavis
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `are_Id` int(11) NOT NULL AUTO_INCREMENT,
  `are_Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`are_Id`),
  UNIQUE KEY `are_Id_UNIQUE` (`are_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Lab');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basin`
--

DROP TABLE IF EXISTS `basin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basin` (
  `bas_Id` int(11) NOT NULL AUTO_INCREMENT,
  `bas_Value` varchar(100) DEFAULT NULL,
  `bas_Source` varchar(100) DEFAULT NULL,
  `bas_Layer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bas_Id`),
  UNIQUE KEY `bas_Id_UNIQUE` (`bas_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basin`
--

LOCK TABLES `basin` WRITE;
/*!40000 ALTER TABLE `basin` DISABLE KEYS */;
/*!40000 ALTER TABLE `basin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biome`
--

DROP TABLE IF EXISTS `biome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biome` (
  `bio_Id` int(11) NOT NULL AUTO_INCREMENT,
  `bio_Value` varchar(100) DEFAULT NULL,
  `bio_Source` varchar(100) DEFAULT NULL,
  `bio_Layer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bio_Id`),
  UNIQUE KEY `bio_Id_UNIQUE` (`bio_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biome`
--

LOCK TABLES `biome` WRITE;
/*!40000 ALTER TABLE `biome` DISABLE KEYS */;
/*!40000 ALTER TABLE `biome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `cat_Id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_Number` varchar(100) DEFAULT NULL,
  `cat_Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cat_Id`),
  UNIQUE KEY `cat_Id_UNIQUE` (`cat_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'1','catalogo1'),(2,'10','catalogo10'),(3,'2','catalogo2'),(4,'3','catalogo3'),(5,'4','catalogo4'),(6,'5','catalogo5'),(7,'6','catalogo6'),(8,'7','catalogo7'),(9,'8','catalogo8'),(10,'9','catalogo9');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cites`
--

DROP TABLE IF EXISTS `cites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cites` (
  `cit_Id` int(11) NOT NULL AUTO_INCREMENT,
  `cit_Subspecies` varchar(100) DEFAULT NULL,
  `cit_Author` varchar(100) DEFAULT NULL,
  `cit_Rank` varchar(100) DEFAULT NULL,
  `cit_Party` varchar(100) DEFAULT NULL,
  `cit_ListedUnder` varchar(100) DEFAULT NULL,
  `cit_FullNote` varchar(100) DEFAULT NULL,
  `cit_AllDistributionFullNames` varchar(100) DEFAULT NULL,
  `cit_AllDistributionISOCodes` varchar(100) DEFAULT NULL,
  `cit_NativeDistributionFullNames` varchar(100) DEFAULT NULL,
  `cit_IntroducedDistribution` varchar(100) DEFAULT NULL,
  `cit_ReintroducedDistribution` varchar(100) DEFAULT NULL,
  `cit_ExtinctDistribution` varchar(100) DEFAULT NULL,
  `cit_DistributionUncertain` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cit_Id`),
  UNIQUE KEY `cit_Id_UNIQUE` (`cit_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cites`
--

LOCK TABLES `cites` WRITE;
/*!40000 ALTER TABLE `cites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citesstatus`
--

DROP TABLE IF EXISTS `citesstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citesstatus` (
  `citSta_Id` int(11) NOT NULL AUTO_INCREMENT,
  `citSta_Cites` varchar(100) DEFAULT NULL,
  `citSta_DateCites` varchar(100) DEFAULT NULL,
  `citSta_SourceCites` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`citSta_Id`),
  UNIQUE KEY `citSta_Id_UNIQUE` (`citSta_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citesstatus`
--

LOCK TABLES `citesstatus` WRITE;
/*!40000 ALTER TABLE `citesstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `citesstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `cla_Id` int(11) NOT NULL AUTO_INCREMENT,
  `cla_Description` varchar(100) DEFAULT NULL,
  `cla_LSID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cla_Id`),
  UNIQUE KEY `cla_Id_UNIQUE` (`cla_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `col_Id` int(11) NOT NULL AUTO_INCREMENT,
  `col_Code` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`col_Id`),
  UNIQUE KEY `col_Id_UNIQUE` (`col_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `com_Id` int(11) NOT NULL AUTO_INCREMENT,
  `com_Body` varchar(100) DEFAULT NULL,
  `com_Parent_Id` varchar(100) DEFAULT NULL,
  `com_Created_At` datetime DEFAULT NULL,
  PRIMARY KEY (`com_Id`),
  UNIQUE KEY `com_Id_UNIQUE` (`com_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `continent`
--

DROP TABLE IF EXISTS `continent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `continent` (
  `con_Id` int(11) NOT NULL AUTO_INCREMENT,
  `con_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`con_Id`),
  UNIQUE KEY `con_Id_UNIQUE` (`con_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `continent`
--

LOCK TABLES `continent` WRITE;
/*!40000 ALTER TABLE `continent` DISABLE KEYS */;
/*!40000 ALTER TABLE `continent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `cou_Id` int(11) NOT NULL AUTO_INCREMENT,
  `cou_Description` varchar(100) DEFAULT NULL,
  `cou_CodInternational` varchar(100) DEFAULT NULL,
  `cou_CodGadm` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`cou_Id`),
  UNIQUE KEY `cou_Id_UNIQUE` (`cou_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatest`
--

DROP TABLE IF EXISTS `datatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatest`
--

LOCK TABLES `datatest` WRITE;
/*!40000 ALTER TABLE `datatest` DISABLE KEYS */;
/*!40000 ALTER TABLE `datatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `dep_Id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_Description` varchar(100) DEFAULT NULL,
  `dep_CodDivipola` varchar(100) DEFAULT NULL,
  `dep_CodGadm` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dep_Id`),
  UNIQUE KEY `dep_Id_UNIQUE` (`dep_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dinavismaster`
--

DROP TABLE IF EXISTS `dinavismaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dinavismaster` (
  `dima_Id` int(11) NOT NULL AUTO_INCREMENT,
  `cit_Id` int(11) DEFAULT NULL,
  `citSta_Id` int(11) DEFAULT NULL,
  `cla_Id` int(11) DEFAULT NULL,
  `col_Id` int(11) DEFAULT NULL,
  `con_Id` int(11) DEFAULT NULL,
  `cou_Id` int(11) DEFAULT NULL,
  `endSta_Id` int(11) DEFAULT NULL,
  `dep_Id` int(11) DEFAULT NULL,
  `fam_Id` int(11) DEFAULT NULL,
  `infSpeEpi_Id` int(11) DEFAULT NULL,
  `invSta_Id` int(11) DEFAULT NULL,
  `mun_Id` int(11) DEFAULT NULL,
  `ord_Id` int(11) DEFAULT NULL,
  `layVal_Id` int(11) DEFAULT NULL,
  `gen_Id` int(11) DEFAULT NULL,
  `hab_Id` int(11) DEFAULT NULL,
  `InsCod_Id` int(11) DEFAULT NULL,
  `kin_Id` int(11) DEFAULT NULL,
  `lay_Id` int(11) DEFAULT NULL,
  `map_Id` int(11) DEFAULT NULL,
  `mea_Id` int(11) DEFAULT NULL,
  `phy_Id` int(11) DEFAULT NULL,
  `reg_Id` int(11) DEFAULT NULL,
  `speEpi_Id` int(11) DEFAULT NULL,
  `subGen_Id` int(11) DEFAULT NULL,
  `uicn_Id` int(11) DEFAULT NULL,
  `useSta_Id` int(11) DEFAULT NULL,
  `sex_Id` int(11) DEFAULT NULL,
  `sou_Id` int(11) DEFAULT NULL,
  `spaRec_Id` int(11) DEFAULT NULL,
  `spe_Id` int(11) DEFAULT NULL,
  `sta_Id` int(11) DEFAULT NULL,
  `tax_Id` int(11) DEFAULT NULL,
  `thrSta_Id` int(11) DEFAULT NULL,
  `diMa_DateCreate` datetime DEFAULT NULL,
  PRIMARY KEY (`dima_Id`),
  UNIQUE KEY `dima_Id_UNIQUE` (`dima_Id`),
  KEY `cit_Id_idx` (`cit_Id`),
  KEY `citSta_Id_idx` (`citSta_Id`),
  KEY `cla_Id_idx` (`cla_Id`),
  KEY `col_Id_idx` (`col_Id`),
  KEY `con_Id_idx` (`con_Id`),
  KEY `cou_Id_idx` (`cou_Id`),
  KEY `endSta_Id_idx` (`endSta_Id`),
  KEY `dep_Id_idx` (`dep_Id`),
  KEY `fam_Id_idx` (`fam_Id`),
  KEY `infSpeEpi_Id_idx` (`infSpeEpi_Id`),
  KEY `invSta_Id_idx` (`invSta_Id`),
  KEY `mun_Id_idx` (`mun_Id`),
  KEY `ord_Id_idx` (`ord_Id`),
  KEY `layVal_Id_idx` (`layVal_Id`),
  KEY `gen_Id_idx` (`gen_Id`),
  KEY `hab_Id_idx` (`hab_Id`),
  KEY `InsCod_Id_idx` (`InsCod_Id`),
  KEY `kin_Id_idx` (`kin_Id`),
  KEY `lay_Id_idx` (`lay_Id`),
  KEY `map_Id_idx` (`map_Id`),
  KEY `mea_Id_idx` (`mea_Id`),
  KEY `phy_Id_idx` (`phy_Id`),
  KEY `reg_Id_idx` (`reg_Id`),
  KEY `speEpi_Id_idx` (`speEpi_Id`),
  KEY `subGen_Id_idx` (`subGen_Id`),
  KEY `uicn_Id_idx` (`uicn_Id`),
  KEY `useSta_Id_idx` (`useSta_Id`),
  KEY `sex_Id_idx` (`sex_Id`),
  KEY `sou_Id_idx` (`sou_Id`),
  KEY `spaRec_Id_idx` (`spaRec_Id`),
  KEY `spe_Id_idx` (`spe_Id`),
  KEY `sta_Id_idx` (`sta_Id`),
  KEY `tax_Id_idx` (`tax_Id`),
  KEY `thrSta_Id_idx` (`thrSta_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=78961 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinavismaster`
--

LOCK TABLES `dinavismaster` WRITE;
/*!40000 ALTER TABLE `dinavismaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `dinavismaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eco_variable`
--

DROP TABLE IF EXISTS `eco_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eco_variable` (
  `ecoVar_Id` int(11) NOT NULL AUTO_INCREMENT,
  `ecoVar_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ecoVar_Id`),
  UNIQUE KEY `ecoVar_Id_UNIQUE` (`ecoVar_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eco_variable`
--

LOCK TABLES `eco_variable` WRITE;
/*!40000 ALTER TABLE `eco_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `eco_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecovariablesspecies`
--

DROP TABLE IF EXISTS `ecovariablesspecies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecovariablesspecies` (
  `ecoVarSpe_Id` int(11) NOT NULL AUTO_INCREMENT,
  `ecoVarSpe_Min` float DEFAULT NULL,
  `ecoVarSpe_Max` float DEFAULT NULL,
  `ecoVarSpe_Mean` varchar(100) DEFAULT NULL,
  `ecoVarSpe_Certainty` varchar(100) DEFAULT NULL,
  `ecoVarSpe_Created_At` datetime DEFAULT NULL,
  PRIMARY KEY (`ecoVarSpe_Id`),
  UNIQUE KEY `EcoVarSpe_Id_UNIQUE` (`ecoVarSpe_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecovariablesspecies`
--

LOCK TABLES `ecovariablesspecies` WRITE;
/*!40000 ALTER TABLE `ecovariablesspecies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecovariablesspecies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endemicstatus`
--

DROP TABLE IF EXISTS `endemicstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endemicstatus` (
  `endSta_Id` int(11) NOT NULL AUTO_INCREMENT,
  `endSta_Endemic` varchar(100) DEFAULT NULL,
  `endSta_IsEndemicVerbatim` varchar(100) DEFAULT NULL,
  `endSta_DateEndemic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`endSta_Id`),
  UNIQUE KEY `endSta_Id_UNIQUE` (`endSta_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endemicstatus`
--

LOCK TABLES `endemicstatus` WRITE;
/*!40000 ALTER TABLE `endemicstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `endemicstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family` (
  `fam_Id` int(11) NOT NULL AUTO_INCREMENT,
  `fam_Description` varchar(100) DEFAULT NULL,
  `fam_LSID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fam_Id`),
  UNIQUE KEY `fam_Id_UNIQUE` (`fam_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genus`
--

DROP TABLE IF EXISTS `genus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genus` (
  `gen_Id` int(11) NOT NULL AUTO_INCREMENT,
  `gen_Description` varchar(100) DEFAULT NULL,
  `gen_LSID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`gen_Id`),
  UNIQUE KEY `gen_Id_UNIQUE` (`gen_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genus`
--

LOCK TABLES `genus` WRITE;
/*!40000 ALTER TABLE `genus` DISABLE KEYS */;
/*!40000 ALTER TABLE `genus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitat`
--

DROP TABLE IF EXISTS `habitat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitat` (
  `hab_Id` int(11) NOT NULL AUTO_INCREMENT,
  `hab_Description` varchar(100) DEFAULT NULL,
  `hab_Habitat` varchar(100) DEFAULT NULL,
  `hab_HabitatUICN` varchar(100) DEFAULT NULL,
  `hab_HabitatIGAC` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hab_Id`),
  UNIQUE KEY `hab_Id_UNIQUE` (`hab_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitat`
--

LOCK TABLES `habitat` WRITE;
/*!40000 ALTER TABLE `habitat` DISABLE KEYS */;
/*!40000 ALTER TABLE `habitat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infraspecificepithet`
--

DROP TABLE IF EXISTS `infraspecificepithet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infraspecificepithet` (
  `infSpeEpi_Id` int(11) NOT NULL AUTO_INCREMENT,
  `infSpeEpi_IdentificationQualifier` varchar(100) DEFAULT NULL,
  `infSpeEpi_InfraspecificEpithet` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`infSpeEpi_Id`),
  UNIQUE KEY `infSpeEpi_Id_UNIQUE` (`infSpeEpi_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infraspecificepithet`
--

LOCK TABLES `infraspecificepithet` WRITE;
/*!40000 ALTER TABLE `infraspecificepithet` DISABLE KEYS */;
/*!40000 ALTER TABLE `infraspecificepithet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutioncode`
--

DROP TABLE IF EXISTS `institutioncode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutioncode` (
  `InsCod_Id` int(11) NOT NULL AUTO_INCREMENT,
  `InsCod_Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`InsCod_Id`),
  UNIQUE KEY `InsCod_Id_UNIQUE` (`InsCod_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutioncode`
--

LOCK TABLES `institutioncode` WRITE;
/*!40000 ALTER TABLE `institutioncode` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutioncode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invasivestatus`
--

DROP TABLE IF EXISTS `invasivestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invasivestatus` (
  `invSta_Id` int(11) NOT NULL AUTO_INCREMENT,
  `invSta_Invasive` varchar(100) DEFAULT NULL,
  `invSta_IsInvasive` varchar(100) DEFAULT NULL,
  `invSta_DateInvasive` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`invSta_Id`),
  UNIQUE KEY `invSta_Id_UNIQUE` (`invSta_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invasivestatus`
--

LOCK TABLES `invasivestatus` WRITE;
/*!40000 ALTER TABLE `invasivestatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `invasivestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kingdom`
--

DROP TABLE IF EXISTS `kingdom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kingdom` (
  `kin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `kin_Description` varchar(100) DEFAULT NULL,
  `kin_LSID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kin_Id`),
  UNIQUE KEY `kin_Id_UNIQUE` (`kin_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kingdom`
--

LOCK TABLES `kingdom` WRITE;
/*!40000 ALTER TABLE `kingdom` DISABLE KEYS */;
/*!40000 ALTER TABLE `kingdom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landcover`
--

DROP TABLE IF EXISTS `landcover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landcover` (
  `lanCov_Id` int(11) NOT NULL,
  `lanCov_Value` varchar(100) DEFAULT NULL,
  `lanCov_Source` varchar(100) DEFAULT NULL,
  `lanCov_Layer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lanCov_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landcover`
--

LOCK TABLES `landcover` WRITE;
/*!40000 ALTER TABLE `landcover` DISABLE KEYS */;
/*!40000 ALTER TABLE `landcover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layer`
--

DROP TABLE IF EXISTS `layer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layer` (
  `lay_Id` int(11) NOT NULL AUTO_INCREMENT,
  `lay_Name` varchar(100) DEFAULT NULL,
  `lay_URLsource` varchar(100) DEFAULT NULL,
  `lay_Date` datetime DEFAULT NULL,
  `lay_TopicLayer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lay_Id`),
  UNIQUE KEY `lay_Id_UNIQUE` (`lay_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layer`
--

LOCK TABLES `layer` WRITE;
/*!40000 ALTER TABLE `layer` DISABLE KEYS */;
/*!40000 ALTER TABLE `layer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layersvalues`
--

DROP TABLE IF EXISTS `layersvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layersvalues` (
  `layVal_Id` int(11) NOT NULL AUTO_INCREMENT,
  `layVal_suggestedCountry` varchar(100) DEFAULT NULL,
  `layVal_suggestedDepartment` varchar(100) DEFAULT NULL,
  `layVal_suggestedMunicipality` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`layVal_Id`),
  UNIQUE KEY `layVal_Id_UNIQUE` (`layVal_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layersvalues`
--

LOCK TABLES `layersvalues` WRITE;
/*!40000 ALTER TABLE `layersvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `layersvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map`
--

DROP TABLE IF EXISTS `map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map` (
  `map_Id` int(11) NOT NULL AUTO_INCREMENT,
  `map_DateCreate` datetime DEFAULT NULL,
  `map_IDModel` varchar(100) DEFAULT NULL,
  `map_IDModelValid` varchar(100) DEFAULT NULL,
  `map_ModelName` varchar(100) DEFAULT NULL,
  `map_typeModel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`map_Id`),
  UNIQUE KEY `map_Id_UNIQUE` (`map_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map`
--

LOCK TABLES `map` WRITE;
/*!40000 ALTER TABLE `map` DISABLE KEYS */;
/*!40000 ALTER TABLE `map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurement`
--

DROP TABLE IF EXISTS `measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurement` (
  `mea_Id` int(11) NOT NULL AUTO_INCREMENT,
  `mea_MeasurementDeterminedBy` varchar(520) DEFAULT NULL,
  `mea_MeasurementRemarks` varchar(520) DEFAULT NULL,
  `mea_MeasurementType` varchar(520) DEFAULT NULL,
  `mea_MeasurementUnit` varchar(520) DEFAULT NULL,
  `mea_MeasurementValue` varchar(520) DEFAULT NULL,
  `mea_MeasurementAccuracy` varchar(520) DEFAULT NULL,
  `mea_MeasurementDeterminedDate` varchar(520) DEFAULT NULL,
  `mea_MeasurementMethod` varchar(520) DEFAULT NULL,
  `mea_MeasurementID` varchar(520) DEFAULT NULL,
  `mea_Standard` varchar(520) DEFAULT NULL,
  `mea_Topic` varchar(520) DEFAULT NULL,
  PRIMARY KEY (`mea_Id`),
  UNIQUE KEY `med_Id_UNIQUE` (`mea_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement`
--

LOCK TABLES `measurement` WRITE;
/*!40000 ALTER TABLE `measurement` DISABLE KEYS */;
/*!40000 ALTER TABLE `measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `mod_Id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ImageUrl` varchar(100) DEFAULT NULL,
  `mod_Date` datetime DEFAULT NULL,
  `mod_Author` varchar(100) DEFAULT NULL,
  `mod_Description` varchar(100) DEFAULT NULL,
  `mod_Current` varchar(100) DEFAULT NULL,
  `mod_Level` varchar(100) DEFAULT NULL,
  `mod_Created_At` datetime DEFAULT NULL,
  PRIMARY KEY (`mod_Id`),
  UNIQUE KEY `mod_Id_UNIQUE` (`mod_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipality`
--

DROP TABLE IF EXISTS `municipality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipality` (
  `mun_Id` int(11) NOT NULL AUTO_INCREMENT,
  `mun_Description` varchar(50) DEFAULT NULL,
  `mun_CodDivipola` varchar(50) DEFAULT NULL,
  `mun_CodGadm` varchar(5) DEFAULT NULL,
  `mun_Settlement` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mun_Id`),
  UNIQUE KEY `mun_Id_UNIQUE` (`mun_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipality`
--

LOCK TABLES `municipality` WRITE;
/*!40000 ALTER TABLE `municipality` DISABLE KEYS */;
/*!40000 ALTER TABLE `municipality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocurrence`
--

DROP TABLE IF EXISTS `ocurrence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocurrence` (
  `ocu_Id` int(11) NOT NULL AUTO_INCREMENT,
  `ocu_Ocurrence_Records` varchar(45) DEFAULT NULL,
  `ocu_Ocurrence_Records_Url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ocu_Id`),
  UNIQUE KEY `ocu_Id_UNIQUE` (`ocu_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocurrence`
--

LOCK TABLES `ocurrence` WRITE;
/*!40000 ALTER TABLE `ocurrence` DISABLE KEYS */;
/*!40000 ALTER TABLE `ocurrence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ord_Id` int(11) NOT NULL,
  `ord_Description` varchar(100) DEFAULT NULL,
  `ord_LSID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ord_Id`),
  UNIQUE KEY `ord_Id_UNIQUE` (`ord_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `park`
--

DROP TABLE IF EXISTS `park`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `park` (
  `par_Id` int(11) NOT NULL AUTO_INCREMENT,
  `par_Value` varchar(100) DEFAULT NULL,
  `par_Source` varchar(100) DEFAULT NULL,
  `par_Layer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`par_Id`),
  UNIQUE KEY `par_Id_UNIQUE` (`par_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `park`
--

LOCK TABLES `park` WRITE;
/*!40000 ALTER TABLE `park` DISABLE KEYS */;
/*!40000 ALTER TABLE `park` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phylum`
--

DROP TABLE IF EXISTS `phylum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phylum` (
  `phy_Id` int(11) NOT NULL AUTO_INCREMENT,
  `phy_Description` varchar(100) DEFAULT NULL,
  `phy_LSID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`phy_Id`),
  UNIQUE KEY `phy_Id_UNIQUE` (`phy_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phylum`
--

LOCK TABLES `phylum` WRITE;
/*!40000 ALTER TABLE `phylum` DISABLE KEYS */;
/*!40000 ALTER TABLE `phylum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_comments`
--

DROP TABLE IF EXISTS `point_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point_comments` (
  `poiCom_Id` int(11) NOT NULL AUTO_INCREMENT,
  `poiCom_Lat` varchar(100) DEFAULT NULL,
  `poiCom_Lon` varchar(100) DEFAULT NULL,
  `poiCom_Wrong_Id` varchar(100) DEFAULT NULL,
  `poiCom_Geo_Problem` varchar(100) DEFAULT NULL,
  `poiCom_Comment` varchar(100) DEFAULT NULL,
  `poiCom_Created_At` datetime DEFAULT NULL,
  `poiCom_Register_Id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`poiCom_Id`),
  UNIQUE KEY `PoiCom_Id_UNIQUE` (`poiCom_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_comments`
--

LOCK TABLES `point_comments` WRITE;
/*!40000 ALTER TABLE `point_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `point_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `rat_Id` int(11) NOT NULL AUTO_INCREMENT,
  `rat_Score` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rat_Id`),
  UNIQUE KEY `Rat_Id_UNIQUE` (`rat_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `reg_Id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reg_Id`),
  UNIQUE KEY `reg_Id_UNIQUE` (`reg_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `rev_Id` int(11) NOT NULL AUTO_INCREMENT,
  `rev_GeoJson` varchar(100) DEFAULT NULL,
  `rev_Created_At` datetime DEFAULT NULL,
  PRIMARY KEY (`rev_Id`),
  UNIQUE KEY `rev_Id_UNIQUE` (`rev_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segloaddata`
--

DROP TABLE IF EXISTS `segloaddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segloaddata` (
  `segLoDa_Id` int(11) NOT NULL AUTO_INCREMENT,
  `segLoDa_Date` datetime DEFAULT NULL,
  `segLoDa_NameFile` varchar(100) DEFAULT NULL,
  `segLoDa_ExtFile` varchar(45) DEFAULT NULL,
  `segLoDa_Description` varchar(100) DEFAULT NULL,
  `segLoDa_Ip` varchar(45) DEFAULT NULL,
  `segLoDa_NameMachine` varchar(45) DEFAULT NULL,
  `segLoDa_UserAccount` varchar(45) DEFAULT NULL,
  `segUse_Id` int(11) DEFAULT NULL,
  `sta_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`segLoDa_Id`),
  UNIQUE KEY `loDa_Id_UNIQUE` (`segLoDa_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segloaddata`
--

LOCK TABLES `segloaddata` WRITE;
/*!40000 ALTER TABLE `segloaddata` DISABLE KEYS */;
/*!40000 ALTER TABLE `segloaddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segprofile`
--

DROP TABLE IF EXISTS `segprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segprofile` (
  `segPro_Id` int(11) NOT NULL AUTO_INCREMENT,
  `segPro_Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`segPro_Id`),
  UNIQUE KEY `pro_Id_UNIQUE` (`segPro_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segprofile`
--

LOCK TABLES `segprofile` WRITE;
/*!40000 ALTER TABLE `segprofile` DISABLE KEYS */;
INSERT INTO `segprofile` VALUES (1,'Usuario');
/*!40000 ALTER TABLE `segprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguser`
--

DROP TABLE IF EXISTS `seguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguser` (
  `segUse_Id` int(11) NOT NULL AUTO_INCREMENT,
  `segUse_Name` varchar(100) DEFAULT NULL,
  `segUse_LastName` varchar(100) DEFAULT NULL,
  `segUse_Email` varchar(100) DEFAULT NULL,
  `segUse_Login` varchar(100) DEFAULT NULL,
  `segUse_Password` varchar(100) DEFAULT NULL,
  `pro_Id` int(11) DEFAULT NULL,
  `are_Id` int(11) DEFAULT NULL,
  `sta_Id` int(11) DEFAULT NULL,
  `segUse_DateCreate` datetime DEFAULT NULL,
  PRIMARY KEY (`segUse_Id`),
  UNIQUE KEY `user_Id_UNIQUE` (`segUse_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguser`
--

LOCK TABLES `seguser` WRITE;
/*!40000 ALTER TABLE `seguser` DISABLE KEYS */;
INSERT INTO `seguser` VALUES (1,'administrador','unico','correo@adm','admin','qazwsx',1,1,1,'2015-06-16 00:45:44');
/*!40000 ALTER TABLE `seguser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sex`
--

DROP TABLE IF EXISTS `sex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sex` (
  `sex_Id` int(11) NOT NULL AUTO_INCREMENT,
  `sex_Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sex_Id`),
  UNIQUE KEY `sex_Id_UNIQUE` (`sex_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sex`
--

LOCK TABLES `sex` WRITE;
/*!40000 ALTER TABLE `sex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source` (
  `sou_Id` int(11) NOT NULL AUTO_INCREMENT,
  `sou_Description` varchar(100) DEFAULT NULL,
  `sou_SourceP` varchar(100) DEFAULT NULL,
  `sou__AsocciatedReferences` varchar(100) DEFAULT NULL,
  `sou_Title` varchar(100) DEFAULT NULL,
  `sou_Author` varchar(100) DEFAULT NULL,
  `sou_Appointment` varchar(100) DEFAULT NULL,
  `sou_Year` int(11) DEFAULT NULL,
  `sou_DBSource` varchar(100) DEFAULT NULL,
  `sou_InternalID` varchar(100) DEFAULT NULL,
  `sou_InternalSource` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sou_Id`),
  UNIQUE KEY `sou_Id_UNIQUE` (`sou_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spatialrecord`
--

DROP TABLE IF EXISTS `spatialrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spatialrecord` (
  `spaRec_Id` int(11) NOT NULL,
  `spaRec_AccessRights` varchar(100) DEFAULT NULL,
  `spaRec_CoordinateUncertaintyInMeters` varchar(100) DEFAULT NULL,
  `spaRec_DecimalLatitude` float DEFAULT NULL,
  `spaRec_DecimalLongitude` float DEFAULT NULL,
  `spaRec_EventDate` datetime DEFAULT NULL,
  `spaRec_GeoreferenceRemarks` varchar(100) DEFAULT NULL,
  `spaRec_GeoReferenceSource` varchar(100) DEFAULT NULL,
  `spaRec_GeoreferenceVerificationStatus` varchar(100) DEFAULT NULL,
  `spaRec_GeoValidationLBAB` varchar(100) DEFAULT NULL,
  `spaRec_LBABUse` varchar(100) DEFAULT NULL,
  `spaRec_Locality` varchar(100) DEFAULT NULL,
  `spaRec_LocationRemarks` varchar(100) DEFAULT NULL,
  `spaRec_RecordBasis` varchar(100) DEFAULT NULL,
  `spaRec_RegisterDate` datetime DEFAULT NULL,
  `spaRec_RegisterInLBABModels` varchar(100) DEFAULT NULL,
  `spaRec_AssociatedMedia` varchar(100) DEFAULT NULL,
  `spaRec_VerbatimCoordinateSystem` varchar(100) DEFAULT NULL,
  `spaRec_VerbatimLatitude` varchar(100) DEFAULT NULL,
  `spaRec_VerbatimLocality` varchar(100) DEFAULT NULL,
  `spaRec_VerbatimLongitude` varchar(100) DEFAULT NULL,
  `spaRec_RecordedBy` varchar(100) DEFAULT NULL,
  `spaRec_IdentifiedBy` varchar(100) DEFAULT NULL,
  `spaRec_OccurrenceID` int(11) DEFAULT NULL,
  `spaRec_RightsHolder` varchar(100) DEFAULT NULL,
  `spaRec_Rights` varchar(100) DEFAULT NULL,
  `spaRec_GeodeticDatum` varchar(100) DEFAULT NULL,
  `spaRec_GeoreferencedBy` varchar(100) DEFAULT NULL,
  `spaRec_GeoreferencedDate` varchar(100) DEFAULT NULL,
  `spaRec_GeoreferenceProtocol` varchar(100) DEFAULT NULL,
  `spaRec_CatalogNumber` int(11) DEFAULT NULL,
  `spaRec_OccurrenceRemarks` varchar(100) DEFAULT NULL,
  `spaRec_VerbatimElevation` varchar(100) DEFAULT NULL,
  `spaRec_MaximumEleMeters` varchar(100) DEFAULT NULL,
  `spaRec_MinimumElevationInMeters` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`spaRec_Id`),
  UNIQUE KEY `spaRec_Id_UNIQUE` (`spaRec_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spatialrecord`
--

LOCK TABLES `spatialrecord` WRITE;
/*!40000 ALTER TABLE `spatialrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `spatialrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specie`
--

DROP TABLE IF EXISTS `specie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specie` (
  `spe_Id` int(11) NOT NULL AUTO_INCREMENT,
  `spe_Description` varchar(100) NOT NULL,
  `spe_speciesBlank` varchar(100) NOT NULL,
  `spe_Created_At` datetime DEFAULT NULL,
  `spe_Iucn_Id` varchar(100) DEFAULT NULL,
  `spe_SpeciesOriginal` varchar(100) NOT NULL,
  `spe_AcceptedNameUsage` varchar(100) DEFAULT NULL,
  `spe_IdOld` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`spe_Id`),
  UNIQUE KEY `spe_Id_UNIQUE` (`spe_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specie`
--

LOCK TABLES `specie` WRITE;
/*!40000 ALTER TABLE `specie` DISABLE KEYS */;
/*!40000 ALTER TABLE `specie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specificepithet`
--

DROP TABLE IF EXISTS `specificepithet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specificepithet` (
  `speEpi_Id` int(11) NOT NULL AUTO_INCREMENT,
  `speEpi_SpecificEpithet` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`speEpi_Id`),
  UNIQUE KEY `speEpi_Id_UNIQUE` (`speEpi_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specificepithet`
--

LOCK TABLES `specificepithet` WRITE;
/*!40000 ALTER TABLE `specificepithet` DISABLE KEYS */;
/*!40000 ALTER TABLE `specificepithet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `sta_Id` int(11) NOT NULL AUTO_INCREMENT,
  `sta_Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sta_Id`),
  UNIQUE KEY `est_Id_UNIQUE` (`sta_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgenus`
--

DROP TABLE IF EXISTS `subgenus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subgenus` (
  `subGen_Id` int(11) NOT NULL AUTO_INCREMENT,
  `subGen_Subgenus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`subGen_Id`),
  UNIQUE KEY `subGen_Id_UNIQUE` (`subGen_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgenus`
--

LOCK TABLES `subgenus` WRITE;
/*!40000 ALTER TABLE `subgenus` DISABLE KEYS */;
/*!40000 ALTER TABLE `subgenus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy`
--

DROP TABLE IF EXISTS `taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomy` (
  `tax_Id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_IdentificationQualifier` varchar(100) DEFAULT NULL,
  `tax_NamePublishedIn` varchar(100) DEFAULT NULL,
  `tax_ScientificName` varchar(100) DEFAULT NULL,
  `tax_ScientificNameAuthorship` varchar(100) DEFAULT NULL,
  `tax_ScientificNameID` varchar(100) DEFAULT NULL,
  `tax_TaxonConceptId` varchar(100) DEFAULT NULL,
  `tax_TaxonomicStatus` varchar(100) DEFAULT NULL,
  `tax_TaxonRank` varchar(100) DEFAULT NULL,
  `tax_TaxonRemarks` varchar(100) DEFAULT NULL,
  `tax_NameAccordingTo` varchar(100) DEFAULT NULL,
  `tax_VernacularName` varchar(100) DEFAULT NULL,
  `tax_originalNameUsage` varchar(100) DEFAULT NULL,
  `tax_taxValidationLBAB` varchar(100) DEFAULT NULL,
  `tax_Note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tax_Id`),
  UNIQUE KEY `tax_Id_UNIQUE` (`tax_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy`
--

LOCK TABLES `taxonomy` WRITE;
/*!40000 ALTER TABLE `taxonomy` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporal`
--

DROP TABLE IF EXISTS `temporal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporal` (
  `class` varchar(100) NOT NULL,
  `classLSID` varchar(100) DEFAULT NULL,
  `catNumber` varchar(100) DEFAULT NULL,
  `catalogo` varchar(100) DEFAULT NULL,
  `codeCollection` varchar(100) DEFAULT NULL,
  `continent` varchar(100) DEFAULT NULL,
  `countrty` varchar(100) DEFAULT NULL,
  `CodeInternational` varchar(100) DEFAULT NULL,
  `CodGam` varchar(100) DEFAULT NULL,
  `habDescription` varchar(100) DEFAULT NULL,
  `habitat` varchar(100) DEFAULT NULL,
  `habUICN` varchar(100) DEFAULT NULL,
  `habIGAC` varchar(100) DEFAULT NULL,
  `insCode` varchar(100) DEFAULT NULL,
  `Institution` varchar(100) DEFAULT NULL,
  `kingdom` varchar(100) DEFAULT NULL,
  `KinLSID` varchar(100) DEFAULT NULL,
  `reg_description` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `typeDescription` varchar(100) DEFAULT NULL,
  `basin` varchar(100) DEFAULT NULL,
  `basinSource` varchar(100) DEFAULT NULL,
  `basinLayer` varchar(100) DEFAULT NULL,
  `biome` varchar(100) DEFAULT NULL,
  `biomeSource` varchar(100) DEFAULT NULL,
  `biomeLayer` varchar(100) DEFAULT NULL,
  `family` varchar(100) DEFAULT NULL,
  `familyLDIS` varchar(100) DEFAULT NULL,
  `genus` varchar(100) DEFAULT NULL,
  `genusLSID` varchar(100) DEFAULT NULL,
  `LayerName` varchar(100) DEFAULT NULL,
  `layerURL` varchar(100) DEFAULT NULL,
  `layerTopic` varchar(100) DEFAULT NULL,
  `park` varchar(100) DEFAULT NULL,
  `parkSource` varchar(100) DEFAULT NULL,
  `parkLayer` varchar(100) DEFAULT NULL,
  `phylum` varchar(100) DEFAULT NULL,
  `phylumLSID` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporal`
--

LOCK TABLES `temporal` WRITE;
/*!40000 ALTER TABLE `temporal` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporalcites`
--

DROP TABLE IF EXISTS `temporalcites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporalcites` (
  `Kingdom` varchar(100) DEFAULT NULL,
  `Phylum` varchar(100) DEFAULT NULL,
  `Class` varchar(100) DEFAULT NULL,
  `Orders` varchar(100) DEFAULT NULL,
  `Family` varchar(100) DEFAULT NULL,
  `Genus` varchar(100) DEFAULT NULL,
  `Species` varchar(100) DEFAULT NULL,
  `Subspecies` varchar(100) DEFAULT NULL,
  `scientificName` varchar(100) DEFAULT NULL,
  `speciesBlank` varchar(100) DEFAULT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Rank` varchar(100) DEFAULT NULL,
  `Listing` varchar(100) DEFAULT NULL,
  `Party` varchar(100) DEFAULT NULL,
  `ListedUnder` varchar(100) DEFAULT NULL,
  `Fullnote` varchar(100) DEFAULT NULL,
  `AllDistributionFullNames` varchar(100) DEFAULT NULL,
  `AllDistributionISOCodes` varchar(100) DEFAULT NULL,
  `NativeDistributionFullNames` varchar(100) DEFAULT NULL,
  `IntroducedDistribution` varchar(100) DEFAULT NULL,
  `ReintroducedDistribution` varchar(100) DEFAULT NULL,
  `ExtinctDistribution` varchar(100) DEFAULT NULL,
  `DistributionUncertain` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporalcites`
--

LOCK TABLES `temporalcites` WRITE;
/*!40000 ALTER TABLE `temporalcites` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporalcites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporalgeo`
--

DROP TABLE IF EXISTS `temporalgeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporalgeo` (
  `spID` varchar(100) DEFAULT NULL,
  `registerDate` varchar(100) DEFAULT NULL,
  `sources` varchar(100) DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `scientificName` varchar(100) DEFAULT NULL,
  `collectionCode` varchar(100) DEFAULT NULL,
  `recordBasis` varchar(100) DEFAULT NULL,
  `originalNameUsage` varchar(100) DEFAULT NULL,
  `taxonRank` varchar(100) DEFAULT NULL,
  `scientificNameAuthorship` varchar(100) DEFAULT NULL,
  `recordedBy` varchar(100) DEFAULT NULL,
  `eventDate` varchar(100) DEFAULT NULL,
  `continent` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `stateProvince` varchar(100) DEFAULT NULL,
  `county` varchar(100) DEFAULT NULL,
  `municipality` varchar(100) DEFAULT NULL,
  `locality` varchar(100) DEFAULT NULL,
  `verbatimLocality` varchar(100) DEFAULT NULL,
  `verbatimCoordinateSystem` varchar(100) DEFAULT NULL,
  `decimalLatitude` varchar(100) DEFAULT NULL,
  `decimalLongitude` varchar(100) DEFAULT NULL,
  `coordinateUncertaintyInMeters` varchar(100) DEFAULT NULL,
  `georeferenceSources` varchar(100) DEFAULT NULL,
  `georeferenceVerificationStatus` varchar(100) DEFAULT NULL,
  `georeferenceRemarks` varchar(100) DEFAULT NULL,
  `locationRemarks` varchar(100) DEFAULT NULL,
  `geoValidationLBAB` varchar(100) DEFAULT NULL,
  `taxValidationLBAB` varchar(100) DEFAULT NULL,
  `registerInLBABModels` varchar(100) DEFAULT NULL,
  `accessRights` varchar(100) DEFAULT NULL,
  `restrictionType` varchar(100) DEFAULT NULL,
  `LBABuse` varchar(100) DEFAULT NULL,
  `IGAC` varchar(100) DEFAULT NULL,
  `biome` varchar(100) DEFAULT NULL,
  `biome_source` varchar(100) DEFAULT NULL,
  `verbatimHabitat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporalgeo`
--

LOCK TABLES `temporalgeo` WRITE;
/*!40000 ALTER TABLE `temporalgeo` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporalgeo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporalgeouser`
--

DROP TABLE IF EXISTS `temporalgeouser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporalgeouser` (
  `spe_Description` varchar(100) DEFAULT NULL,
  `spe_speciesBlank` varchar(100) DEFAULT NULL,
  `spe_Iucn_Id` varchar(100) DEFAULT NULL,
  `spe_SpeciesOriginal` varchar(100) DEFAULT NULL,
  `spe_AcceptedNameUsage` varchar(100) DEFAULT NULL,
  `spe_IdOld` varchar(100) DEFAULT NULL,
  `spaRec_OccurrenceID` int(11) DEFAULT NULL,
  `spaRec_AccessRights` varchar(100) DEFAULT NULL,
  `spaRec_RightsHolder` varchar(100) DEFAULT NULL,
  `spaRec_Rights` varchar(100) DEFAULT NULL,
  `spaRec_CoordinateUncertaintyInMeters` varchar(100) DEFAULT NULL,
  `spaRec_DecimalLatitude` float DEFAULT NULL,
  `spaRec_DecimalLongitude` float DEFAULT NULL,
  `spaRec_GeoreferenceRemarks` varchar(100) DEFAULT NULL,
  `spaRec_GeodeticDatum` varchar(100) DEFAULT NULL,
  `spaRec_GeoreferencedBy` varchar(100) DEFAULT NULL,
  `spaRec_GeoreferencedDate` varchar(100) DEFAULT NULL,
  `spaRec_GeoreferenceProtocol` varchar(100) DEFAULT NULL,
  `spaRec_GeoReferenceSource` varchar(100) DEFAULT NULL,
  `spaRec_GeoreferenceVerificationStatus` varchar(100) DEFAULT NULL,
  `spaRec_GeoValidationLBAB` varchar(100) DEFAULT NULL,
  `spaRec_CatalogNumber` int(11) DEFAULT NULL,
  `spaRec_LBABUse` varchar(100) DEFAULT NULL,
  `spaRec_Locality` varchar(100) DEFAULT NULL,
  `spaRec_LocationRemarks` varchar(100) DEFAULT NULL,
  `spaRec_RecordBasis` varchar(100) DEFAULT NULL,
  `spaRec_RegisterInLBABModels` varchar(100) DEFAULT NULL,
  `spaRec_AssociatedMedia` varchar(100) DEFAULT NULL,
  `spaRec_VerbatimCoordinateSystem` varchar(100) DEFAULT NULL,
  `spaRec_VerbatimLatitude` varchar(100) DEFAULT NULL,
  `spaRec_VerbatimLocality` varchar(100) DEFAULT NULL,
  `spaRec_VerbatimLongitude` varchar(100) DEFAULT NULL,
  `spaRec_RecordedBy` varchar(100) DEFAULT NULL,
  `spaRec_identifiedBy` varchar(100) DEFAULT NULL,
  `spaRec_OccurrenceRemarks` varchar(100) DEFAULT NULL,
  `verbatimElevation` varchar(100) DEFAULT NULL,
  `maximumElevationInMeters` varchar(100) DEFAULT NULL,
  `minimumElevationInMeters` varchar(100) DEFAULT NULL,
  `con_Name` varchar(50) DEFAULT NULL,
  `cou_Description` varchar(100) DEFAULT NULL,
  `cou_CodInternational` varchar(100) DEFAULT NULL,
  `cou_CodGadm` varchar(5) DEFAULT NULL,
  `mun_Description` varchar(50) DEFAULT NULL,
  `mun_Settlement` varchar(100) DEFAULT NULL,
  `mun_CodDivipola` varchar(50) DEFAULT NULL,
  `mun_CodGadm` varchar(5) DEFAULT NULL,
  `InsCod_Description` varchar(100) DEFAULT NULL,
  `col_Code` varchar(30) DEFAULT NULL,
  `hab_Description` varchar(100) DEFAULT NULL,
  `hab_Habitat` varchar(100) DEFAULT NULL,
  `hab_HabitatUICN` varchar(100) DEFAULT NULL,
  `hab_HabitatIGAC` varchar(100) DEFAULT NULL,
  `reg_Description` varchar(100) DEFAULT NULL,
  `lay_Name` varchar(100) DEFAULT NULL,
  `lay_URLsource` varchar(100) DEFAULT NULL,
  `lay_TopicLayer` varchar(100) DEFAULT NULL,
  `layVal_suggestedCountry` varchar(100) DEFAULT NULL,
  `layVal_suggestedDepartment` varchar(100) DEFAULT NULL,
  `layVal_suggestedMunicipality` varchar(100) DEFAULT NULL,
  `dep_Description` varchar(100) DEFAULT NULL,
  `dep_CodDivipola` varchar(100) DEFAULT NULL,
  `dep_CodGadm` varchar(100) DEFAULT NULL,
  `sou_Description` varchar(100) DEFAULT NULL,
  `sou_sourceText` varchar(100) DEFAULT NULL,
  `sou_AsocciatedReferences` varchar(100) DEFAULT NULL,
  `sou_Title` varchar(100) DEFAULT NULL,
  `sou_Author` varchar(100) DEFAULT NULL,
  `sou_Appointment` varchar(100) DEFAULT NULL,
  `sou_Year` int(11) DEFAULT NULL,
  `dbSource` varchar(100) DEFAULT NULL,
  `internalID` varchar(100) DEFAULT NULL,
  `internalSource` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporalgeouser`
--

LOCK TABLES `temporalgeouser` WRITE;
/*!40000 ALTER TABLE `temporalgeouser` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporalgeouser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporalmap`
--

DROP TABLE IF EXISTS `temporalmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporalmap` (
  `speciesBlank` varchar(100) DEFAULT NULL,
  `scientificName` varchar(100) DEFAULT NULL,
  `sources` varchar(100) DEFAULT NULL,
  `typeLBABModel` varchar(100) DEFAULT NULL,
  `IDModel` varchar(100) DEFAULT NULL,
  `IDModelValid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporalmap`
--

LOCK TABLES `temporalmap` WRITE;
/*!40000 ALTER TABLE `temporalmap` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporalmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporalmapuser`
--

DROP TABLE IF EXISTS `temporalmapuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporalmapuser` (
  `spe_Description` varchar(100) DEFAULT NULL,
  `spe_speciesBlank` varchar(100) DEFAULT NULL,
  `spe_Iucn_Id` varchar(100) DEFAULT NULL,
  `spe_SpeciesOriginal` varchar(100) DEFAULT NULL,
  `spe_AcceptedNameUsage` varchar(100) DEFAULT NULL,
  `spe_IdOld` varchar(100) DEFAULT NULL,
  `map_IDModel` varchar(100) DEFAULT NULL,
  `map_IDModelValid` varchar(100) DEFAULT NULL,
  `map_ModelName` varchar(100) DEFAULT NULL,
  `map_typeModel` varchar(100) DEFAULT NULL,
  `sou_Description` varchar(100) DEFAULT NULL,
  `sou_sourceText` varchar(100) DEFAULT NULL,
  `sou_AsocciatedReferences` varchar(100) DEFAULT NULL,
  `sou_Title` varchar(100) DEFAULT NULL,
  `sou_Author` varchar(100) DEFAULT NULL,
  `sou_Appointment` varchar(100) DEFAULT NULL,
  `sou_Year` int(11) DEFAULT NULL,
  `dbSource` varchar(100) DEFAULT NULL,
  `internalID` varchar(100) DEFAULT NULL,
  `internalSource` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporalmapuser`
--

LOCK TABLES `temporalmapuser` WRITE;
/*!40000 ALTER TABLE `temporalmapuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporalmapuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporalmeauser`
--

DROP TABLE IF EXISTS `temporalmeauser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporalmeauser` (
  `spe_Description` varchar(100) DEFAULT NULL,
  `spe_speciesBlank` varchar(100) DEFAULT NULL,
  `spe_Iucn_Id` varchar(100) DEFAULT NULL,
  `spe_SpeciesOriginal` varchar(100) DEFAULT NULL,
  `spe_AcceptedNameUsage` varchar(100) DEFAULT NULL,
  `spe_IdOld` varchar(100) DEFAULT NULL,
  `mea_MeasurementDeterminedBy` varchar(520) DEFAULT NULL,
  `mea_MeasurementRemarks` varchar(520) DEFAULT NULL,
  `mea_MeasurementType` varchar(520) DEFAULT NULL,
  `mea_MeasurementUnit` varchar(520) DEFAULT NULL,
  `mea_MeasurementValue` varchar(520) DEFAULT NULL,
  `mea_MeasurementAccuracy` varchar(520) DEFAULT NULL,
  `mea_MeasurementDeterminedDate` varchar(520) DEFAULT NULL,
  `mea_MeasurementMethod` varchar(520) DEFAULT NULL,
  `mea_MeasurementID` varchar(520) DEFAULT NULL,
  `mea_Standard` varchar(520) DEFAULT NULL,
  `mea_Topic` varchar(520) DEFAULT NULL,
  `citSta_Cites` varchar(100) DEFAULT NULL,
  `citSta_DateCites` varchar(100) DEFAULT NULL,
  `citSta_SourceCites` varchar(100) DEFAULT NULL,
  `invSta_Invasive` varchar(100) DEFAULT NULL,
  `isInvasive` varchar(100) DEFAULT NULL,
  `invSta_DateInvasive` varchar(100) DEFAULT NULL,
  `thrSta_Description` varchar(100) DEFAULT NULL,
  `thrSta_UicnNational` varchar(100) DEFAULT NULL,
  `thrSta_DateUicnNational` varchar(100) DEFAULT NULL,
  `thrSta_UicnInternational` varchar(100) DEFAULT NULL,
  `thrSta_DateUicnInternational` varchar(100) DEFAULT NULL,
  `endSta_Endemic` varchar(100) DEFAULT NULL,
  `isEndemicVerbatim` varchar(100) DEFAULT NULL,
  `endSta_DateEndemic` varchar(100) DEFAULT NULL,
  `useType` varchar(100) DEFAULT NULL,
  `useTypeVerbatim` varchar(100) DEFAULT NULL,
  `sou_Description` varchar(100) DEFAULT NULL,
  `sou_sourceText` varchar(100) DEFAULT NULL,
  `sou_AsocciatedReferences` varchar(100) DEFAULT NULL,
  `sou_Title` varchar(100) DEFAULT NULL,
  `sou_Author` varchar(100) DEFAULT NULL,
  `sou_Appointment` varchar(100) DEFAULT NULL,
  `sou_Year` int(11) DEFAULT NULL,
  `dbSource` varchar(100) DEFAULT NULL,
  `internalID` varchar(100) DEFAULT NULL,
  `internalSource` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporalmeauser`
--

LOCK TABLES `temporalmeauser` WRITE;
/*!40000 ALTER TABLE `temporalmeauser` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporalmeauser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporalmed`
--

DROP TABLE IF EXISTS `temporalmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporalmed` (
  `speciesBlank` varchar(100) DEFAULT NULL,
  `species` varchar(100) DEFAULT NULL,
  `measurementType` varchar(100) DEFAULT NULL,
  `measurementValue` varchar(100) DEFAULT NULL,
  `measurementUnit` varchar(100) DEFAULT NULL,
  `measurementDeterminedBy` varchar(100) DEFAULT NULL,
  `measurementRemarks` varchar(100) DEFAULT NULL,
  `sources` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporalmed`
--

LOCK TABLES `temporalmed` WRITE;
/*!40000 ALTER TABLE `temporalmed` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporalmed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporaltax`
--

DROP TABLE IF EXISTS `temporaltax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporaltax` (
  `source` varchar(100) DEFAULT NULL,
  `lsid` varchar(100) DEFAULT NULL,
  `scientificName` varchar(100) DEFAULT NULL,
  `scientificNameID` varchar(100) DEFAULT NULL,
  `scientificNameAuthorship` varchar(100) DEFAULT NULL,
  `kingdom` varchar(100) DEFAULT NULL,
  `phylum` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `orders` varchar(100) DEFAULT NULL,
  `family` varchar(100) DEFAULT NULL,
  `genus` varchar(100) DEFAULT NULL,
  `subgenus` varchar(100) DEFAULT NULL,
  `specificEpithet` varchar(100) DEFAULT NULL,
  `infraspecificEpithet` varchar(100) DEFAULT NULL,
  `taxonRank` varchar(100) DEFAULT NULL,
  `taxonRemarks` varchar(100) DEFAULT NULL,
  `taxonomicStatus` varchar(100) DEFAULT NULL,
  `acceptedNameUsage` varchar(100) DEFAULT NULL,
  `vernacularName` varchar(100) DEFAULT NULL,
  `locality` varchar(100) DEFAULT NULL,
  `institutionID` varchar(100) DEFAULT NULL,
  `collectionCode` varchar(100) DEFAULT NULL,
  `threatStatus` varchar(100) DEFAULT NULL,
  `establishmentMeans` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `taxonConceptId` varchar(100) DEFAULT NULL,
  `identificationQualifier` varchar(100) DEFAULT NULL,
  `measumentType` varchar(100) DEFAULT NULL,
  `measurementRemarks` varchar(100) DEFAULT NULL,
  `namePublishedIn` varchar(100) DEFAULT NULL,
  `verbatimLatitude` varchar(100) DEFAULT NULL,
  `verbatimLongitude` varchar(100) DEFAULT NULL,
  `recordedBy` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `asocciatedReferences` varchar(100) DEFAULT NULL,
  `speciesBlank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporaltax`
--

LOCK TABLES `temporaltax` WRITE;
/*!40000 ALTER TABLE `temporaltax` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporaltax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporaltaxuser`
--

DROP TABLE IF EXISTS `temporaltaxuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporaltaxuser` (
  `spe_Description` varchar(100) DEFAULT NULL,
  `spe_speciesBlank` varchar(100) DEFAULT NULL,
  `spe_Iucn_Id` varchar(100) DEFAULT NULL,
  `spe_SpeciesOriginal` varchar(100) DEFAULT NULL,
  `spe_AcceptedNameUsage` varchar(100) DEFAULT NULL,
  `spe_IdOld` varchar(100) DEFAULT NULL,
  `tax_IdentificationQualifier` varchar(100) DEFAULT NULL,
  `tax_NamePublishedIn` varchar(100) DEFAULT NULL,
  `tax_ScientificName` varchar(100) DEFAULT NULL,
  `tax_ScientificNameAuthorship` varchar(100) DEFAULT NULL,
  `tax_ScientificNameID` varchar(100) DEFAULT NULL,
  `tax_TaxonConceptId` varchar(100) DEFAULT NULL,
  `tax_TaxonomicStatus` varchar(100) DEFAULT NULL,
  `tax_TaxonRank` varchar(100) DEFAULT NULL,
  `tax_TaxonRemarks` varchar(100) DEFAULT NULL,
  `tax_nameAccordingTo` varchar(100) DEFAULT NULL,
  `tax_VernacularName` varchar(100) DEFAULT NULL,
  `tax_originalNameUsage` varchar(100) DEFAULT NULL,
  `tax_taxValidationLBAB` varchar(100) DEFAULT NULL,
  `tax_Note` varchar(100) DEFAULT NULL,
  `kin_Description` varchar(100) DEFAULT NULL,
  `kin_LSID` varchar(100) DEFAULT NULL,
  `phy_Description` varchar(100) DEFAULT NULL,
  `phy_LSID` varchar(100) DEFAULT NULL,
  `ord_Description` varchar(100) DEFAULT NULL,
  `ord_LSID` varchar(100) DEFAULT NULL,
  `cla_Description` varchar(100) DEFAULT NULL,
  `cla_LSID` varchar(20) DEFAULT NULL,
  `fam_Description` varchar(100) DEFAULT NULL,
  `fam_LSID` varchar(100) DEFAULT NULL,
  `gen_Description` varchar(100) DEFAULT NULL,
  `gen_LSID` varchar(100) DEFAULT NULL,
  `subGen_Subgenus` varchar(100) DEFAULT NULL,
  `speEpi_SpecificEpithet` varchar(100) DEFAULT NULL,
  `infSpeEpi_IdentificationQualifier` varchar(100) DEFAULT NULL,
  `infSpeEpi_InfraspecificEpithet` varchar(100) DEFAULT NULL,
  `sou_Description` varchar(100) DEFAULT NULL,
  `sou_sourceText` varchar(100) DEFAULT NULL,
  `sou_AsocciatedReferences` varchar(100) DEFAULT NULL,
  `sou_Title` varchar(100) DEFAULT NULL,
  `sou_Author` varchar(100) DEFAULT NULL,
  `sou_Appointment` varchar(100) DEFAULT NULL,
  `sou_Year` int(11) DEFAULT NULL,
  `dbSource` varchar(100) DEFAULT NULL,
  `internalID` varchar(100) DEFAULT NULL,
  `internalSource` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporaltaxuser`
--

LOCK TABLES `temporaltaxuser` WRITE;
/*!40000 ALTER TABLE `temporaltaxuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporaltaxuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporaluicn`
--

DROP TABLE IF EXISTS `temporaluicn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporaluicn` (
  `SpeciesOld` varchar(100) DEFAULT NULL,
  `Kingdom` varchar(100) DEFAULT NULL,
  `Phylum` varchar(100) DEFAULT NULL,
  `Class` varchar(100) DEFAULT NULL,
  `Orders` varchar(100) DEFAULT NULL,
  `Family` varchar(100) DEFAULT NULL,
  `Genus` varchar(100) DEFAULT NULL,
  `Species` varchar(100) DEFAULT NULL,
  `Authority` varchar(100) DEFAULT NULL,
  `Synonyms` varchar(100) DEFAULT NULL,
  `CommonNamesEng` varchar(100) DEFAULT NULL,
  `CommonNamesFre` varchar(100) DEFAULT NULL,
  `CommonNamesSpa` varchar(100) DEFAULT NULL,
  `RedListStatus` varchar(100) DEFAULT NULL,
  `RedListCriteria` varchar(100) DEFAULT NULL,
  `RedListCriteriaVersion` varchar(100) DEFAULT NULL,
  `YearAssessed` varchar(100) DEFAULT NULL,
  `PopulationTrend` varchar(100) DEFAULT NULL,
  `speciesBlank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporaluicn`
--

LOCK TABLES `temporaluicn` WRITE;
/*!40000 ALTER TABLE `temporaluicn` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporaluicn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testrrr`
--

DROP TABLE IF EXISTS `testrrr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testrrr` (
  `idtestRRR1` int(11) DEFAULT NULL,
  `idtestRRR2` int(11) DEFAULT NULL,
  `idtestRRR3` int(11) DEFAULT NULL,
  `idtestRRR4` int(11) DEFAULT NULL,
  `idtestRRR5` int(11) DEFAULT NULL,
  `idtestRRR6` int(11) DEFAULT NULL,
  `idtestRRR7` int(11) DEFAULT NULL,
  `idtestRRR8` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testrrr`
--

LOCK TABLES `testrrr` WRITE;
/*!40000 ALTER TABLE `testrrr` DISABLE KEYS */;
INSERT INTO `testrrr` VALUES (1,1,1,316,1,1,1,1),(2,1,1,316,1,1,1,1),(3,1,1,316,1,1,1,1);
/*!40000 ALTER TABLE `testrrr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threatstatus`
--

DROP TABLE IF EXISTS `threatstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `threatstatus` (
  `thrSta_Id` int(11) NOT NULL AUTO_INCREMENT,
  `thrSta_Description` varchar(100) DEFAULT NULL,
  `thrSta_UicnNational` varchar(100) DEFAULT NULL,
  `thrSta_DateUicnNational` varchar(100) DEFAULT NULL,
  `thrSta_UicnInternational` varchar(100) DEFAULT NULL,
  `thrSta_DateUicnInternational` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`thrSta_Id`),
  UNIQUE KEY `thrSta_Id_UNIQUE` (`thrSta_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT=' ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threatstatus`
--

LOCK TABLES `threatstatus` WRITE;
/*!40000 ALTER TABLE `threatstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `threatstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `typ_Id` int(11) NOT NULL AUTO_INCREMENT,
  `typ_Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`typ_Id`),
  UNIQUE KEY `typ_Id_UNIQUE` (`typ_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'uno'),(2,'cuatro'),(3,'dos'),(4,'tres');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uicn`
--

DROP TABLE IF EXISTS `uicn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uicn` (
  `uicn_Id` int(11) NOT NULL AUTO_INCREMENT,
  `uicn_Authority` varchar(100) DEFAULT NULL,
  `uicn_Synonyms` varchar(100) DEFAULT NULL,
  `uicn_CommonEng` varchar(100) DEFAULT NULL,
  `uicn_CommonFre` varchar(100) DEFAULT NULL,
  `uicn_CommonSpa` varchar(100) DEFAULT NULL,
  `uicn_RedListCriteria` varchar(100) DEFAULT NULL,
  `uicn_RedListCriteriaVersion` varchar(100) DEFAULT NULL,
  `uicn_YearAssessed` varchar(100) DEFAULT NULL,
  `uicn_PopulationTrend` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uicn_Id`),
  UNIQUE KEY `uicn_Id_UNIQUE` (`uicn_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uicn`
--

LOCK TABLES `uicn` WRITE;
/*!40000 ALTER TABLE `uicn` DISABLE KEYS */;
/*!40000 ALTER TABLE `uicn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usestatus`
--

DROP TABLE IF EXISTS `usestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usestatus` (
  `useSta_Id` int(11) NOT NULL AUTO_INCREMENT,
  `useSta_SourceType` varchar(100) DEFAULT NULL,
  `useSta_UseTypeVerbatim` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`useSta_Id`),
  UNIQUE KEY `useSta_Id_UNIQUE` (`useSta_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usestatus`
--

LOCK TABLES `usestatus` WRITE;
/*!40000 ALTER TABLE `usestatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `usestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dinavis'
--

--
-- Dumping routines for database 'dinavis'
--
/*!50003 DROP FUNCTION IF EXISTS `insert_DinavisMaster` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insert_DinavisMaster`(intOpInsert int) RETURNS int(11)
BEGIN
	declare intIdMax int;
	
    select COALESCE(MAX(dima_Id) + 1, 0) into intIdMax from dinavismaster;
    
    if intOpInsert = 1 then     
		insert into dinavismaster
		select NULL, 
		0, 0, IdClass, 0, 0, 0, 0, 0, IdFamily, 0, 0, 0, IdOrders, 0, IdGenius, 0, 0, IdKingdom, 0, 0, 0, IdPhylum, 0, 0, 0, IdUICN, 0, 0, 0, 0, IdSpecie, 0, 0, IdThreatstatus, now()
				from (
						select insert_Specie(Species, speciesBlank, '', '', '', SpeciesOld, 1) as IdSpecie,
								value_Kingdom(Kingdom, '') as IdKingdom,
								value_Phylum(Phylum, '') as IdPhylum,
								value_Class(class, '') as IdClass,
								value_Order(Orders, '') as IdOrders,
								value_Family(Family, '') as IdFamily,
								value_Genus(Genus, '') as IdGenius,
								insert_UICN(Authority, Synonyms, CommonNamesEng,  CommonNamesFre, CommonNamesSpa, RedListCriteria, RedListCriteriaVersion, YearAssessed, PopulationTrend) as IdUICN,
								value_Threatstatus('', '', '', RedListStatus, '') as IdThreatstatus 
						from temporaluicn
					) result;
	end if;
    
    
    if intOpInsert = 6 then     
		insert into dinavismaster
		select NULL, 
		IdCites, IdCitesStatus, IdClass, 0, 0, 0, 0, 0, IdFamily, 0, 0, 0, IdOrders, 0, IdGenius, 0, 0, IdKingdom, 0, 0, 0, IdPhylum, 0, 0, 0, 0, 0, 0, IdSource, 0, IdSpecie, 0, IdTaxonomy, 0, now()
		from (  
				select  value_Kingdom(Kingdom, '') as IdKingdom,
                value_Phylum(Phylum, '') as IdPhylum,
				value_Class(class, '') as IdClass,
                value_Order(Orders, '') as IdOrders,
                value_Family(Family, '') as IdFamily,				
				value_Genus(Genus, '') as IdGenius,
                insert_Specie(Species, speciesBlank, '', '', '', 0, 1) as IdSpecie,
                value_CITES(Subspecies, '', Rank, Party, ListedUnder, FullNote, AllDistributionFullNames, AllDistributionISOCodes, NativeDistributionFullNames, IntroducedDistribution, ReintroducedDistribution, ExtinctDistribution, DistributionUncertain) as IdCites,
				value_Taxonomy('', '', scientificName, '', '', '', '', '', '', '', '', '', '', '') as IdTaxonomy,
                value_Source('', '', '', '', Author, '', 0, '', '', '') as IdSource,
                value_CitesStatus(Listing, '', '') as IdCitesStatus
                from temporalcites
			 ) result;
	end if;
    
    
RETURN intOpInsert;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insert_DinavisMasteruser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insert_DinavisMasteruser`(intOpInsert int) RETURNS int(11)
BEGIN
	declare intIdMax int;
	
    select COALESCE(MAX(dima_Id) + 1, 0) into intIdMax from dinavismaster;
    
    
    if intOpInsert = 1 then     
		insert into dinavismaster
		select NULL, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, IdMap, 0, 0, 0, 0, 0, 0, 0, 0, IdSource, 0, IdSpecie, 0, 0, 0, now()
		from (  
				select insert_Specie(spe_Description, spe_speciesBlank, spe_Iucn_Id, spe_SpeciesOriginal, spe_AcceptedNameUsage, spe_IdOld, 1) as IdSpecie,
					value_MAP(map_IDModel, map_IDModelValid, map_ModelName, map_typeModel) as IdMap,
                    value_Source(sou_Description, sou_sourceText, sou_AsocciatedReferences, sou_Title, sou_Author, sou_Appointment, sou_Year, dbSource, internalID, internalSource) as IdSource
				from temporalmapuser
			 ) result;
	end if;
    
    if intOpInsert = 2 then     
		insert into dinavismaster
		select NULL, 
		0, IdCitesStatus, 0, 0, 0, 0, IdEndemicStatus, 0, 0, 0, IdInvasiveStatus, 0, 0, 0, 0, 0, 0, 0, 0, 0, IdMeasurement, 0, 0, 0, 0, 0, IdUseStatus, 0, IdSource, 0, IdSpecie, 0, 0, IdThreatstatus, now()
		from (  
				select insert_Specie(spe_Description, spe_speciesBlank, spe_Iucn_Id, spe_SpeciesOriginal, spe_AcceptedNameUsage, spe_IdOld, 1) as IdSpecie,
                value_CitesStatus(citSta_Cites, citSta_DateCites, citSta_SourceCites) as IdCitesStatus,
                value_invasiveStatus(invSta_Invasive, isInvasive, invSta_DateInvasive) as IdInvasiveStatus,
                value_Threatstatus(thrSta_Description, thrSta_UicnNational, thrSta_DateUicnNational, thrSta_UicnInternational, thrSta_DateUicnInternational) as IdThreatstatus,
                value_EndemicStatus(endSta_Endemic, isEndemicVerbatim, endSta_DateEndemic) as IdEndemicStatus,
                value_UseStatus(useType, useTypeVerbatim) as IdUseStatus,
                value_Source(sou_Description, sou_sourceText, sou_AsocciatedReferences, sou_Title, sou_Author, sou_Appointment, sou_Year, dbSource, internalID, internalSource) as IdSource,
                value_Measurement(mea_MeasurementDeterminedBy, mea_MeasurementRemarks, mea_MeasurementType, mea_MeasurementUnit, mea_MeasurementValue, mea_MeasurementAccuracy, mea_MeasurementDeterminedDate, mea_MeasurementMethod, mea_MeasurementID, mea_Standard, mea_Topic) as IdMeasurement
				from temporalmeauser
			 ) result;
	end if;
    
    if intOpInsert = 3 then     
		insert into dinavismaster
		select NULL, 
		0, 0, 0, IdCollection, IdContinent, IdCountry, 0, IdDepartament, 0, 0, 0, IdMunicipality, 0, IdLayersValues, 0, IdHabitat, IdInstituteCode, 0, IdLayer, 0, 0, 0, IdRegion, 0, 0, 0, 0, 0, IdSource, IdSpatialRecord, IdSpecie, 0, 0, 0, now()
		from (  
				select insert_Specie(spe_Description, spe_speciesBlank, spe_Iucn_Id, spe_SpeciesOriginal, spe_AcceptedNameUsage, spe_IdOld, 1) as IdSpecie,
                value_Source(sou_Description, sou_sourceText, sou_AsocciatedReferences, sou_Title, sou_Author, sou_Appointment, sou_Year, dbSource, internalID, internalSource) as IdSource,
                value_SpatialRecordSegunda(
                spaRec_OccurrenceID,
                spaRec_AccessRights, 
                spaRec_RightsHolder, 
                spaRec_Rights, 
                spaRec_CoordinateUncertaintyInMeters, 
                spaRec_DecimalLatitude, 
                spaRec_DecimalLongitude, 
                spaRec_GeoreferenceRemarks, 
                spaRec_GeodeticDatum, 
                spaRec_GeoreferencedBy, 
                spaRec_GeoreferencedDate, 
                spaRec_GeoreferenceProtocol, 
                spaRec_GeoreferenceSource, 
                spaRec_GeoreferenceVerificationStatus, 
                spaRec_GeoValidationLBAB, 
                spaRec_CatalogNumber, 
                spaRec_LBABuse, 
                spaRec_Locality, 
                spaRec_LocationRemarks, 
                spaRec_RecordBasis, 
                spaRec_RegisterInLBABModels,
				spaRec_AssociatedMedia, 
                spaRec_VerbatimCoordinateSystem, 
                spaRec_VerbatimLatitude, 
                spaRec_VerbatimLocality, 
                spaRec_VerbatimLongitude, 
                spaRec_RecordedBy, 
                spaRec_identifiedBy,
                spaRec_OccurrenceRemarks, 
                verbatimElevation, 
                maximumElevationInMeters, 
                minimumElevationInMeters
                ) as IdSpatialRecord,
                value_Continent(con_Name) as IdContinent,
                value_Country(cou_Description, cou_CodInternational, cou_CodGadm) as IdCountry,
                value_Municipality(mun_Description, mun_Settlement, mun_CodDivipola, mun_CodGadm) as IdMunicipality,
                value_institutioncode(InsCod_Description) as IdInstituteCode,
                value_Collection(col_Code) as IdCollection,
                value_Habitat(hab_Description, hab_Habitat, hab_HabitatUICN, hab_HabitatIGAC) as IdHabitat,
                value_Region(reg_Description) as IdRegion,
                value_Layer(lay_Name, lay_URLsource, lay_TopicLayer) as IdLayer,
                value_Deparment(dep_Description, dep_CodDivipola, dep_CodGadm) as IdDepartament,
                value_LayersValues(layVal_suggestedCountry, layVal_suggestedDepartment, layVal_suggestedMunicipality) as IdLayersValues
                  
                from temporalgeouser
			 ) result;
	end if;
    
    if intOpInsert = 4 then     
		insert into dinavismaster
		select NULL, 
		0, 0, IdClass, 0, 0, 0, 0, 0, IdFamily, IdInfraSpecificEpithet, 0, 0, IdOrders, 0, IdGenius, 0, 0, IdKingdom, 0, 0, 0, IdPhylum, 0, IdSpecificEpithet, IdSubGenus, 0, 0, 0, IdSource, 0, IdSpecie, 0, IdTaxonomy, 0, now()
		from (  
				select insert_Specie(spe_Description, spe_speciesBlank, spe_Iucn_Id, spe_SpeciesOriginal, spe_AcceptedNameUsage, spe_IdOld, 1) as IdSpecie,
                value_Source(sou_Description, sou_sourceText, sou_AsocciatedReferences, sou_Title, sou_Author, sou_Appointment, sou_Year, dbSource, internalID, internalSource) as IdSource,
                value_Taxonomy(tax_IdentificationQualifier, tax_NamePublishedIn, tax_ScientificName, tax_ScientificNameAuthorship, tax_ScientificNameID, tax_TaxonConceptId, tax_TaxonomicStatus, tax_TaxonRank, tax_TaxonRemarks, tax_nameAccordingTo, tax_VernacularName, tax_originalNameUsage, tax_taxValidationLBAB, tax_Note) as IdTaxonomy,
                value_Kingdom(kin_Description, kin_LSID) as IdKingdom,
                value_Phylum(phy_Description, phy_LSID) as IdPhylum,
                value_Order(ord_Description, ord_LSID) as IdOrders,
                value_Class(cla_Description, cla_LSID) as IdClass,
                value_Family(fam_Description, fam_LSID) as IdFamily,
                value_Genus(gen_Description, gen_LSID) as IdGenius,
                value_SubGenus(subGen_Subgenus) as IdSubGenus,
                value_Specificepithet(speEpi_SpecificEpithet) as IdSpecificEpithet,
                value_Infraspecificepithet(infSpeEpi_IdentificationQualifier, infSpeEpi_InfraspecificEpithet) as IdInfraSpecificEpithet
                from temporaltaxuser
			 ) result;
	end if;
    
RETURN intOpInsert;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insert_Habitat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insert_Habitat`(strDescription varchar(100), strHabitat varchar(100), strUICN varchar(100), strIGAC varchar(100),
								  strValue varchar(100), strSource varchar(100), strLayer varchar(100)) RETURNS int(11)
BEGIN

declare intIdHabitat int;
declare intIdMax int;

   select count(*) into intIdMax from habitat;
	if intIdMax = 0 then
		set intIdHabitat = 1;
	else
        select max(hab_Id) + 1 into intIdHabitat from habitat;
	end if;  
    
    insert into habitat values (intIdHabitat, strDescription, strHabitat, strUICN, strIGAC, strValue, strSource, strLayer);
	select hab_Id into intIdHabitat from habitat where hab_Description = strDescription and hab_habitat = strHabitat and hab_HabitatUICN = strUICN and hab_HabitatIGAC = strIGAC
												 and hab_value = strValue and hab_source = strSource and hab_layer = strLayer;

RETURN intIdHabitat;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insert_Specie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insert_Specie`(strSpeDescription varchar(100), strSpeciesBlank varchar(100),  
								strIucn_Id varchar(100), strSpeciesOriginal varchar(100),
								strAcceptedNameUsage varchar(100), strIdOld varchar(100), intOptionCreate int) RETURNS int(11)
BEGIN

declare intIdSpecie int;
declare intIdMax int;

if intOptionCreate = 1 then
	select spe_Id into intIdSpecie from specie where spe_IdOld = strIdOld AND spe_Description =  strSpeDescription AND spe_speciesBlank = strSpeciesBlank;
end if;

if intIdSpecie is null then
   select count(*) into intIdMax from specie;
	if intIdMax = 0 then
		set intIdSpecie = 1;
	else
        select max(spe_Id) + 1 into intIdSpecie from specie;
	end if;  
    
    insert into specie values (intIdSpecie, strSpeDescription, strSpeciesBlank, now(), strIucn_Id, strSpeciesOriginal, strAcceptedNameUsage, strIdOld);
	
	if intOptionCreate = 1 then
		select spe_Id into intIdSpecie from specie where spe_IdOld = strIdOld AND spe_Description =  strSpeDescription AND spe_speciesBlank = strSpeciesBlank;
	end if;
    
end if;

RETURN intIdSpecie;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insert_UICN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insert_UICN`(strAuthority varchar(100), strSynonyms varchar(100), strCommonEng varchar(100), strCommonFre varchar(100),
								strCommonSpa varchar(100), strRedListcriteria varchar(100), 
                                strRedListcriteriaVersion varchar(100), strYearAssessed varchar(100),
                                strPopulationTrend varchar(100)) RETURNS int(11)
BEGIN

declare intIdUICN int;
declare intIdMax int;

	select uicn_Id into intIdUICN from uicn where uicn_Authority = strAuthority AND uicn_Synonyms = strSynonyms AND uicn_CommonEng = strCommonEng
    AND uicn_CommonFre = strCommonFre AND uicn_CommonSpa = strCommonSpa AND uicn_RedListCriteria = strRedListcriteria
    AND uicn_YearAssessed = strYearAssessed AND uicn_PopulationTrend = strPopulationTrend;
    
if intIdUICN is null then
   select count(*) into intIdMax from uicn;
	if intIdMax = 0 then
		set intIdUICN = 1;
	else
        select max(uicn_Id) + 1 into intIdUICN from uicn;
	end if;  
    
    insert into uicn values (intIdUICN, strAuthority, strSynonyms, strCommonEng, strCommonFre, strCommonSpa, strRedListcriteria, strRedListcriteriaVersion, strYearAssessed, strPopulationTrend);
	
	select uicn_Id into intIdUICN from uicn where uicn_Authority = strAuthority AND uicn_Synonyms = strSynonyms AND uicn_CommonEng = strCommonEng
    AND uicn_CommonFre = strCommonFre AND uicn_CommonSpa = strCommonSpa AND uicn_RedListCriteria = strRedListcriteria
    AND uicn_YearAssessed = strYearAssessed AND uicn_PopulationTrend = strPopulationTrend;
    
end if;

RETURN intIdUICN;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Basin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Basin`(strBasin varchar(100), strSource varchar(100), strLayer varchar(100)) RETURNS int(11)
BEGIN

declare intIdBasin int;
declare intIdMax int;
select bas_Id into intIdBasin from basin where bas_Value = strBasin and bas_source = strSource and bas_Layer = strLayer;

if intIdBasin is null then
   select count(*) into intIdMax from basin;
	if intIdMax = 0 then
		set intIdBasin = 1;
	else
        select max(bas_Id) + 1 into intIdBasin from basin;
	end if;  
    
    insert into basin values (intIdBasin, strBasin, strSource, strLayer);
	select bas_Id into intIdBasin from basin where bas_Value = strBasin and bas_source = strSource and bas_Layer = strLayer;
end if;

RETURN intIdBasin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Biome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Biome`(strBiome varchar(100), strSource varchar(100), strLayer varchar(100)) RETURNS int(11)
BEGIN

declare intIdBiome int;
declare intIdMax int;
select bio_Id into intIdBiome from biome where bio_Value = strBiome and bio_source = strSource and bio_Layer = strLayer;

if intIdBiome is null then
   select count(*) into intIdMax from biome;
	if intIdMax = 0 then
		set intIdBiome = 1;
	else
        select max(bio_Id) + 1 into intIdBiome from biome;
	end if;  
    
    insert into biome values (intIdBiome, strBiome, strSource, strLayer);
	select bio_Id into intIdBiome from biome where bio_Value = strBiome and bio_source = strSource and bio_Layer = strLayer;
end if;

RETURN intIdBiome;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Catalogo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Catalogo`(strCatalogo varchar(100), strNumber varchar(100)) RETURNS int(11)
BEGIN

declare intIdCatalogo int;
declare intIdMax int;
select cat_id into intIdCatalogo from catalog where cat_Description = strCatalogo;

if intIdCatalogo is null then
   select count(*) into intIdMax from catalog;
	if intIdMax = 0 then
		set intIdCatalogo = 1;
	else
        select max(cat_id) + 1 into intIdCatalogo from catalog;
	end if;  
    
    insert into catalog values (intIdCatalogo, strNumber, strCatalogo);
    select cat_id into intIdCatalogo from catalog where cat_Description = strCatalogo;
end if;

RETURN intIdCatalogo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_CITES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_CITES`(strSubspecies varchar(100), strAuthor varchar(100), strRank varchar(100), strParty varchar(100),
								strListedUnder varchar(100), strFullNote varchar(100), strAllDistributionFullNames varchar(100), strAllDistributionISOCodes varchar(100), 
                                strNativeDistributionFullNames varchar(100), strIntroducedDistribution varchar(100),
                                strReintroducedDistribution varchar(100), strExtinctDistribution varchar(100), strDistributionUncertain varchar(100)) RETURNS int(11)
BEGIN

declare intIdCITES int;
declare intIdMax int;
select cit_Id into intIdCITES from cites where cit_Subspecies = strSubspecies AND cit_Author = strAuthor AND cit_Rank = strRank 
AND cit_Party = strParty AND cit_ListedUnder = strListedUnder AND cit_FullNote = strFullNote AND cit_AllDistributionFullNames = strAllDistributionFullNames 
AND cit_AllDistributionISOCodes = strAllDistributionISOCodes AND cit_NativeDistributionFullNames = strNativeDistributionFullNames 
AND cit_IntroducedDistribution = strIntroducedDistribution AND cit_ReintroducedDistribution = strReintroducedDistribution 
AND cit_ExtinctDistribution = strExtinctDistribution AND cit_DistributionUncertain = strDistributionUncertain;

if intIdCITES is null then
   select count(*) into intIdMax from cites;
	if intIdMax = 0 then
		set intIdCITES = 1;
	else
        select max(cit_Id) + 1 into intIdCITES from cites;
	end if;  
    
    insert into cites values (intIdCITES, strSubspecies, strAuthor, strRank, strParty, strListedUnder, strFullNote, 
							strAllDistributionFullNames, strAllDistributionISOCodes, strNativeDistributionFullNames, strIntroducedDistribution, 
                            strReintroducedDistribution, strExtinctDistribution, strDistributionUncertain);
    
	select cit_Id into intIdCITES from cites where cit_Subspecies = strSubspecies AND cit_Author = strAuthor AND cit_Rank = strRank 
AND cit_Party = strParty AND cit_ListedUnder = strListedUnder AND cit_FullNote = strFullNote AND cit_AllDistributionFullNames = strAllDistributionFullNames 
AND cit_AllDistributionISOCodes = strAllDistributionISOCodes AND cit_NativeDistributionFullNames = strNativeDistributionFullNames 
AND cit_IntroducedDistribution = strIntroducedDistribution AND cit_ReintroducedDistribution = strReintroducedDistribution 
AND cit_ExtinctDistribution = strExtinctDistribution AND cit_DistributionUncertain = strDistributionUncertain;

end if;

RETURN intIdCITES;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_CitesStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_CitesStatus`(strCites varchar(100), strDateCites varchar(100), strSourceCites varchar(100)) RETURNS int(11)
BEGIN


declare intIdCitesstatus int;
declare intIdMax int;
select citSta_Id into intIdCitesstatus from citesstatus where citSta_Cites = strCites AND citSta_DateCites = strDateCites AND citSta_SourceCites = strSourceCites;

if intIdCitesstatus is null then
   select count(*) into intIdMax from citesstatus;
	if intIdMax = 0 then
		set intIdCitesstatus = 1;
	else
        select max(citSta_Id) + 1 into intIdCitesstatus from citesstatus;
	end if;  
    
    insert into citesstatus values (intIdCitesstatus, strCites, strDateCites, strSourceCites);
    
	select citSta_Id into intIdCitesstatus from citesstatus where citSta_Cites = strCites AND citSta_DateCites = strDateCites AND citSta_SourceCites = strSourceCites;

end if;

RETURN intIdCitesstatus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Class` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Class`(strClass varchar(100), strLSID varchar(100)) RETURNS int(11)
BEGIN

declare intIdClass int;
declare intIdMax int;
select cla_Id into intIdClass from class where cla_description = strClass;

if intIdClass is null then
	select max(cla_Id) + 1 into intIdMax from class;
	insert into class values (intIdMax, strClass, strLSID);
    select cla_Id into intIdClass from class where cla_description = strClass;
end if;

RETURN intIdClass;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Collection` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Collection`(strCodeCollection varchar(100)) RETURNS int(11)
BEGIN

declare intIdCollection int;
declare intIdMax int;
select col_id into intIdCollection from collection where col_code = strCodeCollection;

if intIdCollection is null then
   select count(*) into intIdMax from collection;
	if intIdMax = 0 then
		set intIdCollection = 1;
	else
        select max(col_id) + 1 into intIdCollection from collection;
	end if;  
    
    insert into collection values (intIdCollection, strCodeCollection);
    select col_id into intIdCollection from collection where col_code = strCodeCollection;
end if;

RETURN intIdCollection;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Continent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Continent`(strContinent varchar(100)) RETURNS int(11)
BEGIN

declare intIdContinent int;
declare intIdMax int;
select con_id into intIdContinent from continent where con_name = strContinent;

if intIdContinent is null then
   select count(*) into intIdMax from continent;
	if intIdMax = 0 then
		set intIdContinent = 1;
	else
        select max(con_id) + 1 into intIdContinent from continent;
	end if;  
    
    insert into continent values (intIdContinent, strContinent);
    select con_id into intIdContinent from continent where con_name = strContinent;
end if;

RETURN intIdContinent;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Country` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Country`(strCountry varchar(100), strCodeInternational varchar(50), strCodGam varchar(100)) RETURNS int(11)
BEGIN

declare intIdCountry int;
declare intIdMax int;
select cou_id into intIdCountry from country where cou_Description = strCountry;

if intIdCountry is null then
   select count(*) into intIdMax from country;
	if intIdMax = 0 then
		set intIdCountry = 1;
	else
        select max(cou_id) + 1 into intIdCountry from country;
	end if;  
    
    insert into country values (intIdCountry, strCountry, strCodeInternational, strCodGam);
	select cou_id into intIdCountry from country where cou_Description = strCountry;
end if;

RETURN intIdCountry;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Deparment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Deparment`(strDescription varchar(100), strCodDivipola varchar(100), strCodGadm varchar(100)) RETURNS int(11)
BEGIN

declare intIdDeparment int;
declare intIdMax int;
select dep_id into intIdDeparment from department where dep_Description = strDescription AND dep_CodDivipola = strCodDivipola AND dep_CodGadm = strCodGadm;

if intIdDeparment is null then
   select count(*) into intIdMax from department;
	if intIdMax = 0 then
		set intIdDeparment = 1;
	else
        select max(dep_id) + 1 into intIdDeparment from department;
	end if;  
    
    insert into department values (intIdDeparment, strDescription, strCodDivipola, strCodGadm);
	
    select dep_id into intIdDeparment from department where dep_Description = strDescription AND dep_CodDivipola = strCodDivipola AND dep_CodGadm = strCodGadm;

end if;

RETURN intIdDeparment;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_EndemicStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_EndemicStatus`(strEndemic varchar(100), strIsEndemicVerbatim varchar(100), strDateEndemic varchar(100)) RETURNS int(11)
BEGIN

declare intIdEndemicStatus int;
declare intIdMax int;
select endSta_Id into intIdEndemicStatus from endemicstatus where endSta_Endemic = strEndemic AND endSta_IsEndemicVerbatim = strIsEndemicVerbatim AND endSta_DateEndemic = strDateEndemic;

if intIdEndemicStatus is null then
   select count(*) into intIdMax from endemicstatus;
	if intIdMax = 0 then
		set intIdEndemicStatus = 1;
	else
        select max(endSta_Id) + 1 into intIdEndemicStatus from endemicstatus;
	end if;  
    
    insert into endemicstatus values (intIdEndemicStatus, strEndemic, strIsEndemicVerbatim, strDateEndemic);
	select endSta_Id into intIdEndemicStatus from endemicstatus where endSta_Endemic = strEndemic AND endSta_IsEndemicVerbatim = strIsEndemicVerbatim AND endSta_DateEndemic = strDateEndemic;
end if;

RETURN intIdEndemicStatus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Family` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Family`(strFamily varchar(100), strLSID varchar(100)) RETURNS int(11)
BEGIN

declare intIdFamily int;
declare intIdMax int;
select fam_Id into intIdFamily from family where fam_Description = strFamily and fam_LSID = strLSID;

if intIdFamily is null then
   select count(*) into intIdMax from family;
	if intIdMax = 0 then
		set intIdFamily = 1;
	else
        select max(fam_Id) + 1 into intIdFamily from family;
	end if;  
    
    insert into family values (intIdFamily, strFamily, strLSID);
	select fam_Id into intIdFamily from family where fam_Description = strFamily and fam_LSID = strLSID;
end if;

RETURN intIdFamily;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Genus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Genus`(strGenus varchar(100), strLSID varchar(100)) RETURNS int(11)
BEGIN

declare intIdGenus int;
declare intIdMax int;
select gen_Id into intIdGenus from genus where gen_Description = strGenus and gen_LSID = strLSID;

if intIdGenus is null then
   select count(*) into intIdMax from genus;
	if intIdMax = 0 then
		set intIdGenus = 1;
	else
        select max(gen_Id) + 1 into intIdGenus from genus;
	end if;  
    
    insert into genus values (intIdGenus, strGenus, strLSID);
	select gen_Id into intIdGenus from genus where gen_Description = strGenus and gen_LSID = strLSID;
end if;

RETURN intIdGenus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Habitat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Habitat`(strDescription varchar(100), strHabitat varchar(100), strUICN varchar(100), strIGAC varchar(100)) RETURNS int(11)
BEGIN

declare intIdHabitat int;
declare intIdMax int;
select hab_Id into intIdHabitat from habitat where hab_Description = strDescription and hab_habitat = strHabitat and hab_HabitatUICN = strUICN and hab_HabitatIGAC = strIGAC;

if intIdHabitat is null then
   select count(*) into intIdMax from habitat;
	if intIdMax = 0 then
		set intIdHabitat = 1;
	else
        select max(hab_Id) + 1 into intIdHabitat from habitat;
	end if;  
    
    insert into habitat values (intIdHabitat, strDescription, strHabitat, strUICN, strIGAC);
	select hab_Id into intIdHabitat from habitat where hab_Description = strDescription and hab_habitat = strHabitat and hab_HabitatUICN = strUICN and hab_HabitatIGAC = strIGAC;

end if;

RETURN intIdHabitat;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Infraspecificepithet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Infraspecificepithet`(strIdentificationQualifier varchar(100), strInfraspecificEpithet varchar(100)) RETURNS int(11)
BEGIN

declare intIdInfraspecificepithet int;
declare intIdMax int;
select infSpeEpi_Id into intIdInfraspecificepithet from infraspecificepithet where infSpeEpi_IdentificationQualifier = strIdentificationQualifier AND infSpeEpi_InfraspecificEpithet = strInfraspecificEpithet;

if intIdInfraspecificepithet is null then
   select count(*) into intIdMax from infraspecificepithet;
	if intIdMax = 0 then
		set intIdInfraspecificepithet = 1;
	else
        select max(infSpeEpi_Id) + 1 into intIdInfraspecificepithet from infraspecificepithet;
	end if;  
    
    insert into infraspecificepithet values (intIdInfraspecificepithet, strIdentificationQualifier, strInfraspecificEpithet);
	select infSpeEpi_Id into intIdInfraspecificepithet from infraspecificepithet where infSpeEpi_IdentificationQualifier = strIdentificationQualifier AND infSpeEpi_InfraspecificEpithet = strInfraspecificEpithet;
end if;

RETURN intIdInfraspecificepithet;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_institutioncode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_institutioncode`(strDescription varchar(100)) RETURNS int(11)
BEGIN

declare intIdInstitution int;
declare intIdMax int;
select InsCod_Id into intIdInstitution from institutioncode where InsCod_description = strDescription;

if intIdInstitution is null then
   select count(*) into intIdMax from institutioncode;
	if intIdMax = 0 then
		set intIdInstitution = 1;
	else
        select max(InsCod_Id) + 1 into intIdInstitution from institutioncode;
	end if;  
    
    insert into institutioncode values (intIdInstitution, strDescription);
	select InsCod_Id into intIdInstitution from institutioncode where InsCod_description = strDescription;
end if;

RETURN intIdInstitution;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_invasiveStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_invasiveStatus`(strInvasive varchar(100), strIsInvasive varchar(100), strDateInvasive varchar(100)) RETURNS int(11)
BEGIN

declare intIdInvasiveStatus int;
declare intIdMax int;

select invSta_Id into intIdInvasiveStatus from invasivestatus where invSta_Invasive = strInvasive AND invSta_IsInvasive = strIsInvasive AND invSta_DateInvasive = strDateInvasive;

if intIdInvasiveStatus is null then
	select count(*) into intIdMax from invasivestatus;
 
	if intIdMax = 0 then
		set intIdInvasiveStatus = 1;
	else
        select max(invSta_Id) + 1 into intIdInvasiveStatus from invasivestatus;
	end if;  
    
    insert into invasiveStatus values (intIdInvasiveStatus, strInvasive, strIsInvasive, strDateInvasive);
    
	select invSta_Id into intIdInvasivestatus from invasivestatus where invSta_Invasive = strInvasive AND invSta_IsInvasive = strIsInvasive AND invSta_DateInvasive = strDateInvasive;
   
end if;

RETURN intIdInvasiveStatus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Kingdom` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Kingdom`(strKingdom varchar(100), strLSID varchar(100)) RETURNS int(11)
BEGIN

declare intIdKingdom int;
declare intIdMax int;
select kin_Id into intIdKingdom from kingdom where kin_Description = strKingdom;

if intIdKingdom is null then
   select count(*) into intIdMax from kingdom;
	if intIdMax = 0 then
		set intIdKingdom = 1;
	else
        select max(kin_Id) + 1 into intIdKingdom from kingdom;
	end if;  
    
    insert into kingdom values (intIdKingdom, strKingdom, strLSID);
	select kin_Id into intIdKingdom from kingdom where kin_Description = strKingdom;
end if;

RETURN intIdKingdom;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Layer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Layer`(strLayerName varchar(100), strUrl varchar(100), strTopicLayer varchar(100)) RETURNS int(11)
BEGIN

declare intIdLayer int;
declare intIdMax int;
select lay_Id into intIdLayer from layer where lay_Name = strLayerName and lay_URLsource = strUrl and lay_TopicLayer = strTopicLayer;

if intIdLayer is null then
   select count(*) into intIdMax from layer;
	if intIdMax = 0 then
		set intIdLayer = 1;
	else
        select max(lay_Id) + 1 into intIdLayer from layer;
	end if;  
    
    insert into layer values (intIdLayer, strLayerName, strUrl, now(), strTopicLayer);
    select lay_Id into intIdLayer from layer where lay_Name = strLayerName and lay_URLsource = strUrl and lay_TopicLayer = strTopicLayer;
end if;

RETURN intIdLayer;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_LayersValues` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_LayersValues`(strSuggestedCountry varchar(100), strSuggestedDepartment varchar(100), strSuggestedMunicipality varchar(100)) RETURNS int(11)
BEGIN

declare intIdLayersValues int;
declare intIdMax int;
select layVal_Id into intIdLayersValues from layersvalues where layVal_suggestedCountry = strSuggestedCountry AND layVal_suggestedDepartment = strSuggestedDepartment AND layVal_suggestedMunicipality = strSuggestedMunicipality;

if intIdLayersValues is null then
   select count(*) into intIdMax from layersvalues;
	if intIdMax = 0 then
		set intIdLayersValues = 1;
	else
        select max(layVal_Id) + 1 into intIdLayersValues from layersvalues;
	end if;  
    
    insert into layersvalues values (intIdLayersValues, strSuggestedCountry, strSuggestedDepartment, strSuggestedMunicipality);

    select layVal_Id into intIdLayersValues from layersvalues where layVal_suggestedCountry = strSuggestedCountry AND layVal_suggestedDepartment = strSuggestedDepartment AND layVal_suggestedMunicipality = strSuggestedMunicipality;

end if;

RETURN intIdLayersValues;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_MAP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_MAP`(strIDModel varchar(100), strIDModelValid varchar(100), strModelName varchar(100), strTypeModel varchar(100)) RETURNS int(11)
BEGIN

declare intIdMAP int;
declare intIdMax int;

select map_Id into intIdMAP from map where map_IDModel = strIDModel AND map_IDModelValid = strIDModelValid AND map_ModelName = strModelName AND map_typeModel = strTypeModel;

if intIdMAP is null then
   select count(*) into intIdMax from map;
	if intIdMax = 0 then
		set intIdMAP = 1;
	else
        select max(map_Id) + 1 into intIdMAP from map;
	end if;  
    
    insert into map values (intIdMAP, now(), strIDModel, strIDModelValid, strModelName, strTypeModel);
	select map_Id into intIdMAP from map where map_IDModel = strIDModel AND map_IDModelValid = strIDModelValid AND map_ModelName = strModelName AND map_typeModel = strTypeModel;
end if;

RETURN intIdMAP;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Measurement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Measurement`(strMeasurementDeterminedBy varchar(520), strMeasurementRemarks varchar(520), 
									strMeasurementType varchar(520), strMeasurementUnit varchar(520), strMeasurementValue varchar(520), strMeasurementAccuracy varchar(520), strMeasurementDeterminedDate varchar(520), strMeasurementMethod varchar(520), strMeasurementID varchar(520), strStandard varchar(520), strTopic varchar(520)) RETURNS int(11)
BEGIN

declare intIdmeasurement int;
declare intIdMax int;

select mea_Id into intIdmeasurement from measurement where mea_MeasurementDeterminedBy = strMeasurementDeterminedBy AND mea_MeasurementRemarks = strMeasurementRemarks
							AND mea_MeasurementType = strMeasurementType AND mea_MeasurementUnit = strMeasurementUnit AND mea_MeasurementValue = strMeasurementValue AND
                            mea_MeasurementAccuracy = strMeasurementAccuracy AND mea_MeasurementDeterminedDate = strMeasurementDeterminedDate AND mea_MeasurementMethod = strMeasurementMethod AND mea_MeasurementID = strMeasurementID
							AND mea_Standard = strStandard AND mea_Topic = strTopic;

if intIdmeasurement is null then
   select count(*) into intIdMax from measurement;
	if intIdMax = 0 then
		set intIdmeasurement = 1;
	else
        select max(mea_Id) + 1 into intIdmeasurement from measurement;
	end if;  
    
    insert into measurement values (intIdmeasurement, strMeasurementDeterminedBy, strMeasurementRemarks, strMeasurementType, strMeasurementUnit, strMeasurementValue, strMeasurementAccuracy, strMeasurementDeterminedDate, strMeasurementMethod, strMeasurementID, strStandard, strTopic);
    
	select mea_Id into intIdmeasurement from measurement where mea_MeasurementDeterminedBy = strMeasurementDeterminedBy AND mea_MeasurementRemarks = strMeasurementRemarks
							AND mea_MeasurementType = strMeasurementType AND mea_MeasurementUnit = strMeasurementUnit AND mea_MeasurementValue = strMeasurementValue AND
                            mea_MeasurementAccuracy = strMeasurementAccuracy AND mea_MeasurementDeterminedDate = strMeasurementDeterminedDate AND mea_MeasurementMethod = strMeasurementMethod AND mea_MeasurementID = strMeasurementID
							AND mea_Standard = strStandard AND mea_Topic = strTopic;
    
end if;

RETURN intIdmeasurement;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Municipality` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Municipality`(strDescription varchar(100), strCodDivipola varchar(100), strCodGadm varchar(100),
																strSettlement varchar(100)) RETURNS int(11)
BEGIN


declare intIdMunicipality int;
declare intIdMax int;
select mun_id into intIdMunicipality from municipality where mun_Description = strDescription AND mun_CodDivipola = strCodDivipola AND mun_CodGadm = strCodGadm AND mun_Settlement = strSettlement;

if intIdMunicipality is null then
   select count(*) into intIdMax from municipality;
	if intIdMax = 0 then
		set intIdMunicipality = 1;
	else
        select max(mun_id) + 1 into intIdMunicipality from municipality;
	end if;  
    
    insert into municipality values (intIdMunicipality, strDescription, strCodDivipola, strCodGadm, strSettlement);
	
	select mun_id into intIdMunicipality from municipality where mun_Description = strDescription AND mun_CodDivipola = strCodDivipola AND mun_CodGadm = strCodGadm AND mun_Settlement = strSettlement;

end if;

RETURN intIdMunicipality;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Order`(strOrder varchar(100), strLSID varchar(100)) RETURNS int(11)
BEGIN

declare intIdOrder int;
declare intIdMax int;

select ord_Id into intIdOrder from orders where ord_Description = strOrder and ord_LSID = strLSID;

if intIdOrder is null then
   select count(*) into intIdMax from orders;
	if intIdMax = 0 then
		set intIdOrder = 1;
	else
        select max(ord_Id) + 1 into intIdOrder from orders;
	end if;  
    
    insert into orders values (intIdOrder, strOrder, strLSID);
    select ord_Id into intIdOrder from orders where ord_Description = strOrder and ord_LSID = strLSID;
    
end if;

RETURN intIdOrder;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Park` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Park`(strPark varchar(100), strSource varchar(100), strLayer varchar(100)) RETURNS int(11)
BEGIN

declare intIdPar int;
declare intIdMax int;
select par_Id into intIdPar from park where par_Value = strPark and par_Source = strSource and par_Layer = strLayer;

if intIdPar is null then
   select count(*) into intIdMax from park;
	if intIdMax = 0 then
		set intIdPar = 1;
	else
        select max(par_Id) + 1 into intIdPar from park;
	end if;  
    
    insert into park values (intIdPar, strPark, strSource, strLayer);
	select par_Id into intIdPar from park where par_Value = strPark and par_Source = strSource and par_Layer = strLayer;
end if;

RETURN intIdPar;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Phylum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Phylum`(strPhylum varchar(100), strLSID varchar(100)) RETURNS int(11)
BEGIN

declare intIdPhylum int;
declare intIdMax int;
select phy_Id into intIdPhylum from phylum where phy_Description = strPhylum and phy_LSID = strLSID;

if intIdPhylum is null then
   select count(*) into intIdMax from phylum;
	if intIdMax = 0 then
		set intIdPhylum = 1;
	else
        select max(phy_Id) + 1 into intIdPhylum from phylum;
	end if;  
    
    insert into phylum values (intIdPhylum, strPhylum, strLSID);
	select phy_Id into intIdPhylum from phylum where phy_Description = strPhylum and phy_LSID = strLSID;
end if;

RETURN intIdPhylum;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Region` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Region`(strDescription varchar(100)) RETURNS int(11)
BEGIN

declare intIdRegion int;
declare intIdMax int;
declare intIdDepartament int;
select reg_Id into intIdRegion from region where reg_Description = strDescription;

if intIdRegion is null then
   select count(*) into intIdMax from region;
	if intIdMax = 0 then
		set intIdRegion = 1;
	else
        select max(reg_Id) + 1 into intIdRegion from region;
	end if;  
      
    insert into region values (intIdRegion, strDescription);
	select reg_Id into intIdRegion from region where reg_Description = strDescription;
    
end if;

RETURN intIdRegion;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Sex` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Sex`(strSex varchar(100)) RETURNS int(11)
BEGIN

declare intIdSex int;
declare intIdMax int;
select sex_Id into intIdSex from sex where sex_Description = strSex;

if intIdSex is null then
   select count(*) into intIdMax from sex;
	if intIdMax = 0 then
		set intIdSex = 1;
	else
        select max(sex_Id) + 1 into intIdSex from sex;
	end if;  
    
    insert into sex values (intIdSex, strSex);
	select sex_Id into intIdSex from sex where sex_Description = strSex;
end if;

RETURN intIdSex;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Source` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Source`(strSource varchar(100), strSourceP varchar(100), strAsocciate varchar(100), strTitle varchar(100), strAuthor varchar(100), strAppoinment varchar(100), intYear int, strDBSource varchar(100), strInternalID varchar(100), strInternalSource varchar(100)) RETURNS int(11)
BEGIN

declare intIdSource int;
declare intIdMax int;

select sou_Id into intIdSource from source where sou_Description = strSource AND sou_SourceP = strSourceP AND sou__AsocciatedReferences = strAsocciate AND sou_Title = strTitle 
AND sou_Author = strAuthor AND sou_Appointment = strAppoinment AND sou_Year = intYear AND sou_DBSource = strDBSource AND sou_InternalID = strInternalID AND sou_InternalSource = strInternalSource;

if intIdSource is null then
   select count(*) into intIdMax from source;
	if intIdMax = 0 then
		set intIdSource = 1;
	else
        select max(sou_Id) + 1 into intIdSource from source;
	end if;  
    
    insert into source values (intIdSource, strSource, strSourceP, strAsocciate, strTitle, strAuthor, strAppoinment, intYear, strDBSource, strInternalID, strInternalSource);
    select sou_Id into intIdSource from source where sou_Description = strSource AND sou_SourceP = strSourceP AND sou__AsocciatedReferences = strAsocciate AND sou_Title = strTitle 
    AND sou_Author = strAuthor AND sou_Appointment = strAppoinment AND sou_Year = intYear AND sou_DBSource = strDBSource AND sou_InternalID = strInternalID 
    AND sou_InternalSource = strInternalSource;
    
end if;

RETURN intIdSource;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_SpatialRecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_SpatialRecord`(strAccessRights varchar(100), 
strCoordinateUncertaintyInMeters varchar(100), 
strDecimalLatitude varchar(100), 
strDecimalLongitude varchar(100),
strEventDate varchar(100), 
strGeoreferenceRemarks varchar(100), 
strGeoReferenceSource varchar(100), 
strGeoreferenceVerificationStatus varchar(100),
strGeoValidationLBAB varchar(100), 
strLBABUse varchar(100), 
strLocality varchar(100), 
strLocationRemarks varchar(100), 
strRecordBasis varchar(100),
strRegisterDate varchar(100), 
strRegisterInLBABModels varchar(100),
strAssociatedMedia varchar(100),
strVerbatimCoordinateSystem varchar(100),
strVerbatimLatitude varchar(100), 
strVerbatimLocality varchar(100), 
strVerbatimLongitude varchar(100),
strRecordedBy varchar(100),
strIdentifiedBy varchar(100),
strOccurrenceID varchar(100),
strRightsHolder varchar(100),
strRights varchar(100),
strGeodeticDatum varchar(100),
strGeoreferencedBy varchar(100),
strGeoreferencedDate varchar(100),
strGeoreferenceProtocol varchar(100),
strCatalogNumber int(11),
strOccurrenceRemarks varchar(100),
strVerbatimElevation varchar(100),
strMaximumEleMeters varchar(100),
strMinimumElevationInMeters varchar(100)
) RETURNS int(11)
BEGIN

declare intIdSpatialRecord int;
declare intIdMax int;

select spaRec_Id into intIdSpatialRecord from spatialrecord where spaRec_AccessRights = strAccessRights AND spaRec_CoordinateUncertaintyInMeters = strCoordinateUncertaintyInMeters AND spaRec_DecimalLatitude = strDecimalLatitude
					AND spaRec_DecimalLongitude = strDecimalLongitude AND spaRec_GeoreferenceRemarks = strGeoreferenceRemarks AND spaRec_GeoReferenceSource = strGeoReferenceSource 
                    AND spaRec_GeoreferenceVerificationStatus = strGeoreferenceVerificationStatus AND spaRec_GeoValidationLBAB = strGeoValidationLBAB;

if intIdSpatialRecord is null then
   select count(*) into intIdMax from spatialrecord;
	if intIdMax = 0 then
		set intIdSpatialRecord = 1;
	else
        select max(spaRec_Id) + 1 into intIdSpatialRecord from spatialrecord;
	end if;  
    
    insert into spatialrecord values (intIdSpatialRecord, strAccessRights, strCoordinateUncertaintyInMeters, strDecimalLatitude, strDecimalLongitude,
									now(), strGeoreferenceRemarks, strGeoReferenceSource, strGeoreferenceVerificationStatus,
									strGeoValidationLBAB, strLBABUse, strLocality, strLocationRemarks, strRecordBasis,
									now(), strRegisterInLBABModels, strAssociatedMedia, strVerbatimCoordinateSystem,
                                    strVerbatimLatitude, strVerbatimLocality, strVerbatimLongitude, strRecordedBy, strIdentifiedBy,
									strOccurrenceID, strRightsHolder, strRights, strGeodeticDatum, strGeoreferencedBy,
									strGeoreferencedDate, strGeoreferenceProtocol, strCatalogNumber, strOccurrenceRemarks,strVerbatimElevation, strMaximumEleMeters, strMinimumElevationInMeters);
    
	select spaRec_Id into intIdSpatialRecord from spatialrecord where spaRec_AccessRights = strAccessRights AND spaRec_CoordinateUncertaintyInMeters = strCoordinateUncertaintyInMeters AND spaRec_DecimalLatitude = strDecimalLatitude
	AND spaRec_DecimalLongitude = strDecimalLongitude AND spaRec_GeoreferenceRemarks = strGeoreferenceRemarks AND spaRec_GeoReferenceSource = strGeoReferenceSource 
    AND spaRec_GeoreferenceVerificationStatus = strGeoreferenceVerificationStatus AND spaRec_GeoValidationLBAB = strGeoValidationLBAB;
                    
end if;

RETURN intIdSpatialRecord;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_SpatialRecordSegunda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_SpatialRecordSegunda`(
intOccurrenceID int(11), 
strAccessRights varchar(100), 
strRightsHolder varchar(100), 
strRights varchar(100), 
strCoordinateUncertaintyInMeters varchar(100), 
strDecimalLatitude varchar(100), 
strDecimalLongitude varchar(100), 
strGeoreferenceRemarks varchar(100), 
strGeodeticDatum varchar(100), 
strGeoreferencedBy varchar(100), 
strGeoreferencedDate varchar(100), 
strGeoreferenceProtocol varchar(100), 
strGeoReferenceSource varchar(100), 
strGeoreferenceVerificationStatus varchar(100), 
strGeoValidationLBAB varchar(100), 
intCatalogNumber int(11), 
strLBABUse varchar(100), 
strLocality varchar(100), 
strLocationRemarks varchar(100), 
strRecordBasis varchar(100), 
strRegisterInLBABModels varchar(100), 
strAssociatedMedia varchar(100), 
strVerbatimCoordinateSystem varchar(100), 
strVerbatimLatitude varchar(100), 
strVerbatimLocality varchar(100), 
strVerbatimLongitude varchar(100), 
strRecordedBy varchar(100), 
strIdentifiedBy varchar(100), 
strOccurrenceRemarks varchar(100), 
strVerbatimElevation varchar(100), 
strMaximumEleMeters varchar(100), 
strMinimumElevationInMeters varchar(100) 
) RETURNS int(11)
BEGIN

declare intIdSpatialRecord int;
declare intIdMax int;

select spaRec_Id into intIdSpatialRecord from spatialrecord where 
spaRec_OccurrenceID = intOccurrenceID 
AND spaRec_AccessRights = strAccessRights  
AND spaRec_Rights = strRights 
AND spaRec_CoordinateUncertaintyInMeters = strCoordinateUncertaintyInMeters 
AND spaRec_DecimalLatitude = strDecimalLatitude 
AND spaRec_DecimalLongitude = strDecimalLongitude 
AND spaRec_GeoreferenceRemarks = strGeoreferenceRemarks 
AND spaRec_GeodeticDatum =  strGeodeticDatum 
AND spaRec_GeoReferenceSource = strGeoReferenceSource 
AND spaRec_GeoreferenceVerificationStatus = strGeoreferenceVerificationStatus 
AND spaRec_GeoValidationLBAB = strGeoValidationLBAB  
AND spaRec_LBABUse = strLBABUse 
AND spaRec_Locality = strLocality 
AND spaRec_LocationRemarks = strLocationRemarks 
AND spaRec_RecordBasis = strRecordBasis 
AND spaRec_RegisterInLBABModels = strRegisterInLBABModels 
AND spaRec_AssociatedMedia = strAssociatedMedia 
AND spaRec_VerbatimCoordinateSystem = strVerbatimCoordinateSystem 
AND spaRec_VerbatimLatitude = strVerbatimLatitude 
AND spaRec_VerbatimLocality = strVerbatimLocality 
AND spaRec_VerbatimLongitude = strVerbatimLongitude 
AND spaRec_RecordedBy = strRecordedBy 
AND spaRec_IdentifiedBy = strIdentifiedBy 
AND spaRec_RightsHolder = strRightsHolder 
AND spaRec_GeoreferencedBy = strGeoreferencedBy 
AND spaRec_GeoreferencedDate = strGeoreferencedDate 
AND spaRec_GeoreferenceProtocol = strGeoreferenceProtocol 
AND spaRec_CatalogNumber = intCatalogNumber 
AND spaRec_OccurrenceRemarks = strOccurrenceRemarks 
AND spaRec_VerbatimElevation = strVerbatimElevation 
AND spaRec_MaximumEleMeters = strMaximumEleMeters 
AND spaRec_MinimumElevationInMeters = strMinimumElevationInMeters; 

if intIdSpatialRecord is null then
   select count(*) into intIdMax from spatialrecord;
	if intIdMax = 0 then
		set intIdSpatialRecord = 1;
	else
        select max(spaRec_Id) + 1 into intIdSpatialRecord from spatialrecord;
	end if;  
    
    insert into spatialrecord values (
intIdSpatialRecord, 
strAccessRights, 
strCoordinateUncertaintyInMeters, 
strDecimalLatitude, 
strDecimalLongitude,
now(),
strGeoreferenceRemarks, 
strGeoReferenceSource, 
strGeoreferenceVerificationStatus,
strGeoValidationLBAB, 
strLBABUse, 
strLocality, 
strLocationRemarks, 
strRecordBasis,
now(), 
strRegisterInLBABModels,  
strAssociatedMedia, 
strVerbatimCoordinateSystem,
strVerbatimLatitude, 
strVerbatimLocality, 
strVerbatimLongitude, 
strRecordedBy,
strIdentifiedBy,
intOccurrenceID, 
strRightsHolder, 
strRights, 
strGeodeticDatum, 
strGeoreferencedBy,
strGeoreferencedDate, 
strGeoreferenceProtocol, 
intCatalogNumber, 
strOccurrenceRemarks, 
strVerbatimElevation,
strMaximumEleMeters,
strMinimumElevationInMeters
);
    
	select spaRec_Id into intIdSpatialRecord from spatialrecord where 
spaRec_OccurrenceID = intOccurrenceID 
AND spaRec_AccessRights = strAccessRights  
AND spaRec_Rights = strRights 
AND spaRec_CoordinateUncertaintyInMeters = strCoordinateUncertaintyInMeters 
AND spaRec_DecimalLatitude = strDecimalLatitude 
AND spaRec_DecimalLongitude = strDecimalLongitude 
AND spaRec_GeoreferenceRemarks = strGeoreferenceRemarks 
AND spaRec_GeodeticDatum =  strGeodeticDatum 
AND spaRec_GeoReferenceSource = strGeoReferenceSource 
AND spaRec_GeoreferenceVerificationStatus = strGeoreferenceVerificationStatus 
AND spaRec_GeoValidationLBAB = strGeoValidationLBAB  
AND spaRec_LBABUse = strLBABUse 
AND spaRec_Locality = strLocality 
AND spaRec_LocationRemarks = strLocationRemarks 
AND spaRec_RecordBasis = strRecordBasis 
AND spaRec_RegisterInLBABModels = strRegisterInLBABModels 
AND spaRec_AssociatedMedia = strAssociatedMedia 
AND spaRec_VerbatimCoordinateSystem = strVerbatimCoordinateSystem 
AND spaRec_VerbatimLatitude = strVerbatimLatitude 
AND spaRec_VerbatimLocality = strVerbatimLocality 
AND spaRec_VerbatimLongitude = strVerbatimLongitude 
AND spaRec_RecordedBy = strRecordedBy 
AND spaRec_IdentifiedBy = strIdentifiedBy 
AND spaRec_RightsHolder = strRightsHolder 
AND spaRec_GeoreferencedBy = strGeoreferencedBy 
AND spaRec_GeoreferencedDate = strGeoreferencedDate 
AND spaRec_GeoreferenceProtocol = strGeoreferenceProtocol 
AND spaRec_CatalogNumber = intCatalogNumber 
AND spaRec_OccurrenceRemarks = strOccurrenceRemarks 
AND spaRec_VerbatimElevation = strVerbatimElevation 
AND spaRec_MaximumEleMeters = strMaximumEleMeters 
AND spaRec_MinimumElevationInMeters = strMinimumElevationInMeters; 

end if;

RETURN intIdSpatialRecord;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Specificepithet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Specificepithet`(strSpecificEpithet varchar(100)) RETURNS int(11)
BEGIN

declare intIdSpecificepithet int;
declare intIdMax int;
select speEpi_Id into intIdSpecificepithet from specificepithet where speEpi_SpecificEpithet = strSpecificEpithet;

if intIdSpecificepithet is null then
   select count(*) into intIdMax from specificepithet;
	if intIdMax = 0 then
		set intIdSpecificepithet = 1;
	else
        select max(speEpi_Id) + 1 into intIdSpecificepithet from specificepithet;
	end if;  
    
    insert into specificepithet values (intIdSpecificepithet, strSpecificEpithet);
	select speEpi_Id into intIdSpecificepithet from specificepithet where speEpi_SpecificEpithet = strSpecificEpithet;
end if;

RETURN intIdSpecificepithet;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_State` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_State`(strState varchar(100)) RETURNS int(11)
BEGIN

declare intIdState int;
declare intIdMax int;
select sta_Id into intIdState from state where sta_Description = strState;

if intIdState is null then
   select count(*) into intIdMax from state;
	if intIdMax = 0 then
		set intIdState = 1;
	else
        select max(sta_Id) + 1 into intIdState from state;
	end if;  
    
    insert into state values (intIdState, strState);
	select sta_Id into intIdState from state where sta_Description = strState;
end if;

RETURN intIdState;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_SubGenus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_SubGenus`(strSubGenus varchar(100)) RETURNS int(11)
BEGIN

declare intIdSubGenus int;
declare intIdMax int;
select subGen_Id into intIdSubGenus from subgenus where subGen_Subgenus = strSubGenus;

if intIdSubGenus is null then
   select count(*) into intIdMax from subgenus;
	if intIdMax = 0 then
		set intIdSubGenus = 1;
	else
        select max(subGen_Id) + 1 into intIdSubGenus from subgenus;
	end if;  
    
    insert into subgenus values (intIdSubGenus, strSubGenus);
	select subGen_Id into intIdSubGenus from subgenus where subGen_Subgenus = strSubGenus;
end if;

RETURN intIdSubGenus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Taxonomy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Taxonomy`(strIdentificationQualifier varchar(100), strNamePublishedIn varchar(100),
								  strScientificName varchar(100), strScientificNameAuthorship varchar(100), strScientificNameID varchar(100),
                                  strTaxonConceptId varchar(100), strTaxonomicStatus varchar(100), strTaxonRank varchar(100),
                                  strTaxonRemarks varchar(100), strNameAccordingTo varchar(100), strVernacularName varchar(100), 
                                  strOriginalNameUsage varchar(100),  strTaxValidationLBAB varchar(100), strNote varchar(100)) RETURNS int(11)
BEGIN

declare intIdTaxonomy int;
declare intIdMax int;

	select tax_Id into intIdTaxonomy from taxonomy where tax_IdentificationQualifier = strIdentificationQualifier 
	AND	tax_NamePublishedIn = strNamePublishedIn AND tax_ScientificName = strScientificName AND tax_ScientificNameAuthorship = strScientificNameAuthorship 
    AND tax_ScientificNameID = strScientificNameID AND tax_TaxonConceptId = strTaxonConceptId AND tax_TaxonomicStatus = strTaxonomicStatus 
    AND tax_TaxonRank = strTaxonRank AND tax_TaxonRemarks = strTaxonRemarks AND tax_NameAccordingTo = strNameAccordingTo AND strVernacularName = strVernacularName 
    AND tax_originalNameUsage = strOriginalNameUsage AND tax_taxValidationLBAB = strTaxValidationLBAB AND tax_Note = strNote;
 
if intIdTaxonomy is null then
   select count(*) into intIdMax from taxonomy;
	if intIdMax = 0 then
		set intIdTaxonomy = 1;
	else
        select max(tax_Id) + 1 into intIdTaxonomy from taxonomy;
	end if;  
    
    insert into taxonomy values (intIdTaxonomy, strIdentificationQualifier, strNamePublishedIn, strScientificName, 
								strScientificNameAuthorship, strScientificNameID, strTaxonConceptId, strTaxonomicStatus, strTaxonRank,
							  strTaxonRemarks, strNameAccordingTo, strVernacularName, strOriginalNameUsage, strTaxValidationLBAB, strNote);
                              
	select tax_Id into intIdTaxonomy from taxonomy where tax_IdentificationQualifier = strIdentificationQualifier 
	AND	tax_NamePublishedIn = strNamePublishedIn AND tax_ScientificName = strScientificName AND tax_ScientificNameAuthorship = strScientificNameAuthorship 
    AND tax_ScientificNameID = strScientificNameID AND tax_TaxonConceptId = strTaxonConceptId AND tax_TaxonomicStatus = strTaxonomicStatus 
    AND tax_TaxonRank = strTaxonRank AND tax_TaxonRemarks = strTaxonRemarks AND tax_NameAccordingTo = strNameAccordingTo AND strVernacularName = strVernacularName 
    AND tax_originalNameUsage = strOriginalNameUsage AND tax_taxValidationLBAB = strTaxValidationLBAB AND tax_Note = strNote;

end if;


RETURN intIdTaxonomy;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Threatstatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Threatstatus`(strDescription varchar(100), strUicnNational varchar(100), strDateUicnNational varchar(100), 
										strUicnInternational varchar(100), strDateUicnInternational varchar(100)) RETURNS int(11)
BEGIN

declare intIdThreatstatus int;
declare intIdMax int;

select thrSta_Id into intIdThreatstatus from threatstatus where thrSta_Description = strDescription AND thrSta_UicnNational = strUicnNational AND thrSta_UicnInternational = strUicnInternational;

if intIdThreatstatus is null then
	select count(*) into intIdMax from threatstatus;
 
	if intIdMax = 0 then
		set intIdThreatstatus = 1;
	else
        select max(thrSta_Id) + 1 into intIdThreatstatus from threatstatus;
	end if;  
    
    insert into threatstatus values (intIdThreatstatus, strDescription, strUicnNational, strDateUicnNational, strUicnInternational, strDateUicnInternational);
    
	select thrSta_Id into intIdThreatstatus from threatstatus where thrSta_Description = strDescription AND thrSta_UicnNational = strUicnNational AND thrSta_UicnInternational = strUicnInternational;
   
end if;

RETURN intIdThreatstatus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_Type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_Type`(strType varchar(100)) RETURNS int(11)
BEGIN

declare intIdType int;
declare intIdMax int;
select typ_Id into intIdType from type where typ_Description = strType;

if intIdType is null then
   select count(*) into intIdMax from type;
	if intIdMax = 0 then
		set intIdType = 1;
	else
        select max(typ_Id) + 1 into intIdType from type;
	end if;  
    
    insert into type values (intIdType, strType);
	select typ_Id into intIdType from type where typ_Description = strType;
end if;

RETURN intIdType;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `value_UseStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `value_UseStatus`(strSourceType varchar(100), strUseTypeVerbatim varchar(100)) RETURNS int(11)
BEGIN

declare intIdUsestatus int;
declare intIdMax int;
select useSta_Id into intIdUsestatus from usestatus where useSta_SourceType = strSourceType AND useSta_UseTypeVerbatim = strUseTypeVerbatim;

if intIdUsestatus is null then
   select count(*) into intIdMax from usestatus;
	if intIdMax = 0 then
		set intIdUsestatus = 1;
	else
        select max(useSta_Id) + 1 into intIdUsestatus from usestatus;
	end if;  
    
    insert into usestatus values (intIdUsestatus, strSourceType, strUseTypeVerbatim);
	select useSta_Id into intIdUsestatus from usestatus where useSta_SourceType = strSourceType AND useSta_UseTypeVerbatim = strUseTypeVerbatim;
end if;

RETURN intIdUsestatus;

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

-- Dump completed on 2015-06-28 19:46:59
