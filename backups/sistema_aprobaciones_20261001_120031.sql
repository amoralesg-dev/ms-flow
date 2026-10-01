-- MySQL dump 10.13  Distrib 8.0.45, for macos14.8 (arm64)
--
-- Host: 127.0.0.1    Database: sistema_aprobaciones
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `sistema_aprobaciones`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sistema_aprobaciones` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `sistema_aprobaciones`;

--
-- Table structure for table `ACT_EVT_LOG`
--

DROP TABLE IF EXISTS `ACT_EVT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_EVT_LOG` (
  `LOG_NR_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_EVT_LOG`
--

LOCK TABLES `ACT_EVT_LOG` WRITE;
/*!40000 ALTER TABLE `ACT_EVT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_EVT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_GE_BYTEARRAY`
--

DROP TABLE IF EXISTS `ACT_GE_BYTEARRAY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_GE_BYTEARRAY` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_BYTEAR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `ACT_RE_DEPLOYMENT` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_GE_BYTEARRAY`
--

LOCK TABLES `ACT_GE_BYTEARRAY` WRITE;
/*!40000 ALTER TABLE `ACT_GE_BYTEARRAY` DISABLE KEYS */;
INSERT INTO `ACT_GE_BYTEARRAY` VALUES ('217803ab-ac8f-11f1-b310-0a87a46785dc',1,'ruta_2328.bpmn20.xml','217803aa-ac8f-11f1-b310-0a87a46785dc',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/test\">\n  <process id=\"ruta_2328\" name=\"Proceso de aprobación 2328\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"Inicio\"></startEvent>\n    <endEvent id=\"end\" name=\"Fin\"></endEvent>\n    <userTask id=\"sit_20\" name=\"Situación 20 - a Registrados\"></userTask>\n    <userTask id=\"sit_32\" name=\"Situación 32\"></userTask>\n    <userTask id=\"sit_31\" name=\"Situación 31 - a Autorizacin Esp\"></userTask>\n    <userTask id=\"sit_33\" name=\"Situación 33\"></userTask>\n    <userTask id=\"sit_34\" name=\"Situación 34\"></userTask>\n    <userTask id=\"sit_35\" name=\"Situación 35\"></userTask>\n    <userTask id=\"sit_36\" name=\"Situación 36\"></userTask>\n    <userTask id=\"sit_41\" name=\"Situación 41\"></userTask>\n    <userTask id=\"sit_38\" name=\"Situación 38 - a Autorizacin Esp\"></userTask>\n    <userTask id=\"sit_45\" name=\"Situación 45\"></userTask>\n    <userTask id=\"sit_60\" name=\"Situación 60 - a Registradas\"></userTask>\n    <userTask id=\"sit_63\" name=\"Situación 63\"></userTask>\n    <userTask id=\"sit_62\" name=\"Situación 62 - a Aut. Epecial\"></userTask>\n    <userTask id=\"sit_64\" name=\"Situación 64\"></userTask>\n    <userTask id=\"sit_66\" name=\"Situación 66\"></userTask>\n    <userTask id=\"sit_65\" name=\"Situación 65 - a Provisionadas\"></userTask>\n    <userTask id=\"sit_67\" name=\"Situación 67\"></userTask>\n    <userTask id=\"sit_68\" name=\"Situación 68\"></userTask>\n    <userTask id=\"sit_69\" name=\"Situación 69\"></userTask>\n    <userTask id=\"sit_70\" name=\"Situación 70\"></userTask>\n    <userTask id=\"sit_71\" name=\"Situación 71 - a Procesando en PN\"></userTask>\n    <userTask id=\"sit_99\" name=\"Situación 99 - a Cancelar\"></userTask>\n    <sequenceFlow id=\"flow_start\" sourceRef=\"start\" targetRef=\"sit_20\"></sequenceFlow>\n    <sequenceFlow id=\"flow_1\" name=\"to_sit_32\" sourceRef=\"sit_20\" targetRef=\"sit_32\"></sequenceFlow>\n    <sequenceFlow id=\"flow_2\" name=\"to_sit_33\" sourceRef=\"sit_31\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_3\" name=\"to_sit_33\" sourceRef=\"sit_32\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_4\" name=\"to_sit_34\" sourceRef=\"sit_33\" targetRef=\"sit_34\"></sequenceFlow>\n    <sequenceFlow id=\"flow_5\" name=\"to_sit_35\" sourceRef=\"sit_34\" targetRef=\"sit_35\"></sequenceFlow>\n    <sequenceFlow id=\"flow_6\" name=\"to_sit_36\" sourceRef=\"sit_35\" targetRef=\"sit_36\"></sequenceFlow>\n    <sequenceFlow id=\"flow_7\" name=\"to_sit_41\" sourceRef=\"sit_36\" targetRef=\"sit_41\"></sequenceFlow>\n    <sequenceFlow id=\"flow_8\" name=\"to_sit_33\" sourceRef=\"sit_38\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_9\" name=\"to_sit_45\" sourceRef=\"sit_41\" targetRef=\"sit_45\"></sequenceFlow>\n    <sequenceFlow id=\"flow_10\" name=\"to_sit_63\" sourceRef=\"sit_60\" targetRef=\"sit_63\"></sequenceFlow>\n    <sequenceFlow id=\"flow_11\" name=\"to_sit_64\" sourceRef=\"sit_62\" targetRef=\"sit_64\"></sequenceFlow>\n    <sequenceFlow id=\"flow_12\" name=\"to_sit_64\" sourceRef=\"sit_63\" targetRef=\"sit_64\"></sequenceFlow>\n    <sequenceFlow id=\"flow_13\" name=\"to_sit_66\" sourceRef=\"sit_64\" targetRef=\"sit_66\"></sequenceFlow>\n    <sequenceFlow id=\"flow_14\" name=\"to_sit_67\" sourceRef=\"sit_65\" targetRef=\"sit_67\"></sequenceFlow>\n    <sequenceFlow id=\"flow_15\" name=\"to_sit_67\" sourceRef=\"sit_66\" targetRef=\"sit_67\"></sequenceFlow>\n    <sequenceFlow id=\"flow_16\" name=\"to_sit_68\" sourceRef=\"sit_67\" targetRef=\"sit_68\"></sequenceFlow>\n    <sequenceFlow id=\"flow_17\" name=\"to_sit_69\" sourceRef=\"sit_68\" targetRef=\"sit_69\"></sequenceFlow>\n    <sequenceFlow id=\"flow_18\" name=\"to_sit_70\" sourceRef=\"sit_69\" targetRef=\"sit_70\"></sequenceFlow>\n    <sequenceFlow id=\"flow_19\" name=\"to_end\" sourceRef=\"sit_70\" targetRef=\"end\"></sequenceFlow>\n    <sequenceFlow id=\"flow_20\" name=\"to_sit_70\" sourceRef=\"sit_71\" targetRef=\"sit_70\"></sequenceFlow>\n    <sequenceFlow id=\"flow_21\" name=\"to_sit_60\" sourceRef=\"sit_99\" targetRef=\"sit_60\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ruta_2328\">\n    <bpmndi:BPMNPlane bpmnElement=\"ruta_2328\" id=\"BPMNPlane_ruta_2328\"></bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('3c0743bf-acab-11f1-a9a3-0a87a46785dc',1,'ruta_2328.bpmn20.xml','3c0743be-acab-11f1-a9a3-0a87a46785dc',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/test\">\n  <process id=\"ruta_2328\" name=\"Proceso de aprobación 2328\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"Inicio\"></startEvent>\n    <endEvent id=\"end\" name=\"Fin\"></endEvent>\n    <userTask id=\"sit_20\" name=\"Situación 20 - a Registrados\"></userTask>\n    <userTask id=\"sit_32\" name=\"Situación 32\"></userTask>\n    <userTask id=\"sit_31\" name=\"Situación 31 - a Autorizacin Esp\"></userTask>\n    <userTask id=\"sit_33\" name=\"Situación 33\"></userTask>\n    <userTask id=\"sit_34\" name=\"Situación 34\"></userTask>\n    <userTask id=\"sit_35\" name=\"Situación 35\"></userTask>\n    <userTask id=\"sit_36\" name=\"Situación 36\"></userTask>\n    <userTask id=\"sit_41\" name=\"Situación 41\"></userTask>\n    <userTask id=\"sit_38\" name=\"Situación 38 - a Autorizacin Esp\"></userTask>\n    <userTask id=\"sit_45\" name=\"Situación 45\"></userTask>\n    <userTask id=\"sit_60\" name=\"Situación 60 - a Registradas\"></userTask>\n    <userTask id=\"sit_63\" name=\"Situación 63\"></userTask>\n    <userTask id=\"sit_62\" name=\"Situación 62 - a Aut. Epecial\"></userTask>\n    <userTask id=\"sit_64\" name=\"Situación 64\"></userTask>\n    <userTask id=\"sit_66\" name=\"Situación 66\"></userTask>\n    <userTask id=\"sit_65\" name=\"Situación 65 - a Provisionadas\"></userTask>\n    <userTask id=\"sit_67\" name=\"Situación 67\"></userTask>\n    <userTask id=\"sit_68\" name=\"Situación 68\"></userTask>\n    <userTask id=\"sit_69\" name=\"Situación 69\"></userTask>\n    <userTask id=\"sit_70\" name=\"Situación 70\"></userTask>\n    <userTask id=\"sit_71\" name=\"Situación 71 - a Procesando en PN\"></userTask>\n    <userTask id=\"sit_99\" name=\"Situación 99 - a Cancelar\"></userTask>\n    <sequenceFlow id=\"flow_start\" sourceRef=\"start\" targetRef=\"sit_20\"></sequenceFlow>\n    <sequenceFlow id=\"flow_1\" name=\"to_sit_32\" sourceRef=\"sit_20\" targetRef=\"sit_32\"></sequenceFlow>\n    <sequenceFlow id=\"flow_2\" name=\"to_sit_33\" sourceRef=\"sit_31\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_3\" name=\"to_sit_33\" sourceRef=\"sit_32\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_4\" name=\"to_sit_34\" sourceRef=\"sit_33\" targetRef=\"sit_34\"></sequenceFlow>\n    <sequenceFlow id=\"flow_5\" name=\"to_sit_35\" sourceRef=\"sit_34\" targetRef=\"sit_35\"></sequenceFlow>\n    <sequenceFlow id=\"flow_6\" name=\"to_sit_36\" sourceRef=\"sit_35\" targetRef=\"sit_36\"></sequenceFlow>\n    <sequenceFlow id=\"flow_7\" name=\"to_sit_41\" sourceRef=\"sit_36\" targetRef=\"sit_41\"></sequenceFlow>\n    <sequenceFlow id=\"flow_8\" name=\"to_sit_33\" sourceRef=\"sit_38\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_9\" name=\"to_sit_45\" sourceRef=\"sit_41\" targetRef=\"sit_45\"></sequenceFlow>\n    <sequenceFlow id=\"flow_10\" name=\"to_sit_63\" sourceRef=\"sit_60\" targetRef=\"sit_63\"></sequenceFlow>\n    <sequenceFlow id=\"flow_11\" name=\"to_sit_64\" sourceRef=\"sit_62\" targetRef=\"sit_64\"></sequenceFlow>\n    <sequenceFlow id=\"flow_12\" name=\"to_sit_64\" sourceRef=\"sit_63\" targetRef=\"sit_64\"></sequenceFlow>\n    <sequenceFlow id=\"flow_13\" name=\"to_sit_66\" sourceRef=\"sit_64\" targetRef=\"sit_66\"></sequenceFlow>\n    <sequenceFlow id=\"flow_14\" name=\"to_sit_67\" sourceRef=\"sit_65\" targetRef=\"sit_67\"></sequenceFlow>\n    <sequenceFlow id=\"flow_15\" name=\"to_sit_67\" sourceRef=\"sit_66\" targetRef=\"sit_67\"></sequenceFlow>\n    <sequenceFlow id=\"flow_16\" name=\"to_sit_68\" sourceRef=\"sit_67\" targetRef=\"sit_68\"></sequenceFlow>\n    <sequenceFlow id=\"flow_17\" name=\"to_sit_69\" sourceRef=\"sit_68\" targetRef=\"sit_69\"></sequenceFlow>\n    <sequenceFlow id=\"flow_18\" name=\"to_sit_70\" sourceRef=\"sit_69\" targetRef=\"sit_70\"></sequenceFlow>\n    <sequenceFlow id=\"flow_19\" name=\"to_end\" sourceRef=\"sit_70\" targetRef=\"end\"></sequenceFlow>\n    <sequenceFlow id=\"flow_20\" name=\"to_sit_70\" sourceRef=\"sit_71\" targetRef=\"sit_70\"></sequenceFlow>\n    <sequenceFlow id=\"flow_21\" name=\"to_sit_60\" sourceRef=\"sit_99\" targetRef=\"sit_60\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ruta_2328\">\n    <bpmndi:BPMNPlane bpmnElement=\"ruta_2328\" id=\"BPMNPlane_ruta_2328\"></bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('60828f28-acab-11f1-a9a3-0a87a46785dc',1,'ruta_2328.bpmn20.xml','60828f27-acab-11f1-a9a3-0a87a46785dc',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/test\">\n  <process id=\"ruta_2328\" name=\"Proceso de aprobación 2328\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"Inicio\"></startEvent>\n    <endEvent id=\"end\" name=\"Fin\"></endEvent>\n    <userTask id=\"sit_20\" name=\"Situación 20 - a Registrados\"></userTask>\n    <userTask id=\"sit_32\" name=\"Situación 32\"></userTask>\n    <userTask id=\"sit_31\" name=\"Situación 31 - a Autorizacin Esp\"></userTask>\n    <userTask id=\"sit_33\" name=\"Situación 33\"></userTask>\n    <userTask id=\"sit_34\" name=\"Situación 34\"></userTask>\n    <userTask id=\"sit_35\" name=\"Situación 35\"></userTask>\n    <userTask id=\"sit_36\" name=\"Situación 36\"></userTask>\n    <userTask id=\"sit_41\" name=\"Situación 41\"></userTask>\n    <userTask id=\"sit_38\" name=\"Situación 38 - a Autorizacin Esp\"></userTask>\n    <userTask id=\"sit_45\" name=\"Situación 45\"></userTask>\n    <userTask id=\"sit_60\" name=\"Situación 60 - a Registradas\"></userTask>\n    <userTask id=\"sit_63\" name=\"Situación 63\"></userTask>\n    <userTask id=\"sit_62\" name=\"Situación 62 - a Aut. Epecial\"></userTask>\n    <userTask id=\"sit_64\" name=\"Situación 64\"></userTask>\n    <userTask id=\"sit_66\" name=\"Situación 66\"></userTask>\n    <userTask id=\"sit_65\" name=\"Situación 65 - a Provisionadas\"></userTask>\n    <userTask id=\"sit_67\" name=\"Situación 67\"></userTask>\n    <userTask id=\"sit_68\" name=\"Situación 68\"></userTask>\n    <userTask id=\"sit_69\" name=\"Situación 69\"></userTask>\n    <userTask id=\"sit_70\" name=\"Situación 70\"></userTask>\n    <userTask id=\"sit_71\" name=\"Situación 71 - a Procesando en PN\"></userTask>\n    <userTask id=\"sit_99\" name=\"Situación 99 - a Cancelar\"></userTask>\n    <sequenceFlow id=\"flow_start\" sourceRef=\"start\" targetRef=\"sit_20\"></sequenceFlow>\n    <sequenceFlow id=\"flow_1\" name=\"to_sit_32\" sourceRef=\"sit_20\" targetRef=\"sit_32\"></sequenceFlow>\n    <sequenceFlow id=\"flow_2\" name=\"to_sit_33\" sourceRef=\"sit_31\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_3\" name=\"to_sit_33\" sourceRef=\"sit_32\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_4\" name=\"to_sit_34\" sourceRef=\"sit_33\" targetRef=\"sit_34\"></sequenceFlow>\n    <sequenceFlow id=\"flow_5\" name=\"to_sit_35\" sourceRef=\"sit_34\" targetRef=\"sit_35\"></sequenceFlow>\n    <sequenceFlow id=\"flow_6\" name=\"to_sit_36\" sourceRef=\"sit_35\" targetRef=\"sit_36\"></sequenceFlow>\n    <sequenceFlow id=\"flow_7\" name=\"to_sit_41\" sourceRef=\"sit_36\" targetRef=\"sit_41\"></sequenceFlow>\n    <sequenceFlow id=\"flow_8\" name=\"to_sit_33\" sourceRef=\"sit_38\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_9\" name=\"to_sit_45\" sourceRef=\"sit_41\" targetRef=\"sit_45\"></sequenceFlow>\n    <sequenceFlow id=\"flow_10\" name=\"to_sit_63\" sourceRef=\"sit_60\" targetRef=\"sit_63\"></sequenceFlow>\n    <sequenceFlow id=\"flow_11\" name=\"to_sit_64\" sourceRef=\"sit_62\" targetRef=\"sit_64\"></sequenceFlow>\n    <sequenceFlow id=\"flow_12\" name=\"to_sit_64\" sourceRef=\"sit_63\" targetRef=\"sit_64\"></sequenceFlow>\n    <sequenceFlow id=\"flow_13\" name=\"to_sit_66\" sourceRef=\"sit_64\" targetRef=\"sit_66\"></sequenceFlow>\n    <sequenceFlow id=\"flow_14\" name=\"to_sit_67\" sourceRef=\"sit_65\" targetRef=\"sit_67\"></sequenceFlow>\n    <sequenceFlow id=\"flow_15\" name=\"to_sit_67\" sourceRef=\"sit_66\" targetRef=\"sit_67\"></sequenceFlow>\n    <sequenceFlow id=\"flow_16\" name=\"to_sit_68\" sourceRef=\"sit_67\" targetRef=\"sit_68\"></sequenceFlow>\n    <sequenceFlow id=\"flow_17\" name=\"to_sit_69\" sourceRef=\"sit_68\" targetRef=\"sit_69\"></sequenceFlow>\n    <sequenceFlow id=\"flow_18\" name=\"to_sit_70\" sourceRef=\"sit_69\" targetRef=\"sit_70\"></sequenceFlow>\n    <sequenceFlow id=\"flow_19\" name=\"to_end\" sourceRef=\"sit_70\" targetRef=\"end\"></sequenceFlow>\n    <sequenceFlow id=\"flow_20\" name=\"to_sit_70\" sourceRef=\"sit_71\" targetRef=\"sit_70\"></sequenceFlow>\n    <sequenceFlow id=\"flow_21\" name=\"to_sit_60\" sourceRef=\"sit_99\" targetRef=\"sit_60\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ruta_2328\">\n    <bpmndi:BPMNPlane bpmnElement=\"ruta_2328\" id=\"BPMNPlane_ruta_2328\"></bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('88f3d5b5-abfe-11f1-acd5-2ef27d0795e9',1,'ruta_zztest.bpmn20.xml','88f3d5b4-abfe-11f1-acd5-2ef27d0795e9',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/test\">\n  <process id=\"ruta_zztest\" name=\"Proceso de aprobación ZZTEST\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"Inicio\"></startEvent>\n    <endEvent id=\"end\" name=\"Fin\"></endEvent>\n    <userTask id=\"sit_20\" name=\"Situación 20 - a Registrados\"></userTask>\n    <userTask id=\"sit_33\" name=\"Situación 33\"></userTask>\n    <userTask id=\"sit_35\" name=\"Situación 35\"></userTask>\n    <sequenceFlow id=\"flow_start\" sourceRef=\"start\" targetRef=\"sit_20\"></sequenceFlow>\n    <sequenceFlow id=\"flow_1\" name=\"to_sit_33\" sourceRef=\"sit_20\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_2\" name=\"to_sit_35\" sourceRef=\"sit_33\" targetRef=\"sit_35\"></sequenceFlow>\n    <sequenceFlow id=\"flow_3\" name=\"to_end\" sourceRef=\"sit_35\" targetRef=\"end\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ruta_zztest\">\n    <bpmndi:BPMNPlane bpmnElement=\"ruta_zztest\" id=\"BPMNPlane_ruta_zztest\"></bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('928fdb58-abfe-11f1-acd5-2ef27d0795e9',1,'ruta_zztest.bpmn20.xml','928fdb57-abfe-11f1-acd5-2ef27d0795e9',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/test\">\n  <process id=\"ruta_zztest\" name=\"Proceso de aprobación ZZTEST\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"Inicio\"></startEvent>\n    <endEvent id=\"end\" name=\"Fin\"></endEvent>\n    <userTask id=\"sit_20\" name=\"Situación 20 - a Registrados\"></userTask>\n    <userTask id=\"sit_33\" name=\"Situación 33\"></userTask>\n    <userTask id=\"sit_35\" name=\"Situación 35\"></userTask>\n    <sequenceFlow id=\"flow_start\" sourceRef=\"start\" targetRef=\"sit_20\"></sequenceFlow>\n    <sequenceFlow id=\"flow_1\" name=\"to_sit_33\" sourceRef=\"sit_20\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_2\" name=\"to_sit_35\" sourceRef=\"sit_33\" targetRef=\"sit_35\"></sequenceFlow>\n    <sequenceFlow id=\"flow_3\" name=\"to_end\" sourceRef=\"sit_35\" targetRef=\"end\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ruta_zztest\">\n    <bpmndi:BPMNPlane bpmnElement=\"ruta_zztest\" id=\"BPMNPlane_ruta_zztest\"></bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('e1ae204d-ac67-11f1-9c0a-0a87a46785dc',1,'ruta_2328.bpmn20.xml','e1ae204c-ac67-11f1-9c0a-0a87a46785dc',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/test\">\n  <process id=\"ruta_2328\" name=\"Proceso de aprobación 2328\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"Inicio\"></startEvent>\n    <endEvent id=\"end\" name=\"Fin\"></endEvent>\n    <userTask id=\"sit_20\" name=\"Situación 20 - a Registrados\"></userTask>\n    <userTask id=\"sit_32\" name=\"Situación 32\"></userTask>\n    <userTask id=\"sit_31\" name=\"Situación 31 - a Autorizacin Esp\"></userTask>\n    <userTask id=\"sit_33\" name=\"Situación 33\"></userTask>\n    <userTask id=\"sit_34\" name=\"Situación 34\"></userTask>\n    <userTask id=\"sit_35\" name=\"Situación 35\"></userTask>\n    <userTask id=\"sit_36\" name=\"Situación 36\"></userTask>\n    <userTask id=\"sit_41\" name=\"Situación 41\"></userTask>\n    <userTask id=\"sit_38\" name=\"Situación 38 - a Autorizacin Esp\"></userTask>\n    <userTask id=\"sit_45\" name=\"Situación 45\"></userTask>\n    <userTask id=\"sit_60\" name=\"Situación 60 - a Registradas\"></userTask>\n    <userTask id=\"sit_63\" name=\"Situación 63\"></userTask>\n    <userTask id=\"sit_62\" name=\"Situación 62 - a Aut. Epecial\"></userTask>\n    <userTask id=\"sit_64\" name=\"Situación 64\"></userTask>\n    <userTask id=\"sit_66\" name=\"Situación 66\"></userTask>\n    <userTask id=\"sit_65\" name=\"Situación 65 - a Provisionadas\"></userTask>\n    <userTask id=\"sit_67\" name=\"Situación 67\"></userTask>\n    <userTask id=\"sit_68\" name=\"Situación 68\"></userTask>\n    <userTask id=\"sit_69\" name=\"Situación 69\"></userTask>\n    <userTask id=\"sit_70\" name=\"Situación 70\"></userTask>\n    <userTask id=\"sit_71\" name=\"Situación 71 - a Procesando en PN\"></userTask>\n    <userTask id=\"sit_99\" name=\"Situación 99 - a Cancelar\"></userTask>\n    <sequenceFlow id=\"flow_start\" sourceRef=\"start\" targetRef=\"sit_20\"></sequenceFlow>\n    <sequenceFlow id=\"flow_1\" name=\"to_sit_32\" sourceRef=\"sit_20\" targetRef=\"sit_32\"></sequenceFlow>\n    <sequenceFlow id=\"flow_2\" name=\"to_sit_33\" sourceRef=\"sit_31\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_3\" name=\"to_sit_33\" sourceRef=\"sit_32\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_4\" name=\"to_sit_34\" sourceRef=\"sit_33\" targetRef=\"sit_34\"></sequenceFlow>\n    <sequenceFlow id=\"flow_5\" name=\"to_sit_35\" sourceRef=\"sit_34\" targetRef=\"sit_35\"></sequenceFlow>\n    <sequenceFlow id=\"flow_6\" name=\"to_sit_36\" sourceRef=\"sit_35\" targetRef=\"sit_36\"></sequenceFlow>\n    <sequenceFlow id=\"flow_7\" name=\"to_sit_41\" sourceRef=\"sit_36\" targetRef=\"sit_41\"></sequenceFlow>\n    <sequenceFlow id=\"flow_8\" name=\"to_sit_33\" sourceRef=\"sit_38\" targetRef=\"sit_33\"></sequenceFlow>\n    <sequenceFlow id=\"flow_9\" name=\"to_sit_45\" sourceRef=\"sit_41\" targetRef=\"sit_45\"></sequenceFlow>\n    <sequenceFlow id=\"flow_10\" name=\"to_sit_63\" sourceRef=\"sit_60\" targetRef=\"sit_63\"></sequenceFlow>\n    <sequenceFlow id=\"flow_11\" name=\"to_sit_64\" sourceRef=\"sit_62\" targetRef=\"sit_64\"></sequenceFlow>\n    <sequenceFlow id=\"flow_12\" name=\"to_sit_64\" sourceRef=\"sit_63\" targetRef=\"sit_64\"></sequenceFlow>\n    <sequenceFlow id=\"flow_13\" name=\"to_sit_66\" sourceRef=\"sit_64\" targetRef=\"sit_66\"></sequenceFlow>\n    <sequenceFlow id=\"flow_14\" name=\"to_sit_67\" sourceRef=\"sit_65\" targetRef=\"sit_67\"></sequenceFlow>\n    <sequenceFlow id=\"flow_15\" name=\"to_sit_67\" sourceRef=\"sit_66\" targetRef=\"sit_67\"></sequenceFlow>\n    <sequenceFlow id=\"flow_16\" name=\"to_sit_68\" sourceRef=\"sit_67\" targetRef=\"sit_68\"></sequenceFlow>\n    <sequenceFlow id=\"flow_17\" name=\"to_sit_69\" sourceRef=\"sit_68\" targetRef=\"sit_69\"></sequenceFlow>\n    <sequenceFlow id=\"flow_18\" name=\"to_sit_70\" sourceRef=\"sit_69\" targetRef=\"sit_70\"></sequenceFlow>\n    <sequenceFlow id=\"flow_19\" name=\"to_end\" sourceRef=\"sit_70\" targetRef=\"end\"></sequenceFlow>\n    <sequenceFlow id=\"flow_20\" name=\"to_sit_70\" sourceRef=\"sit_71\" targetRef=\"sit_70\"></sequenceFlow>\n    <sequenceFlow id=\"flow_21\" name=\"to_sit_60\" sourceRef=\"sit_99\" targetRef=\"sit_60\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ruta_2328\">\n    <bpmndi:BPMNPlane bpmnElement=\"ruta_2328\" id=\"BPMNPlane_ruta_2328\"></bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
/*!40000 ALTER TABLE `ACT_GE_BYTEARRAY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_GE_PROPERTY`
--

DROP TABLE IF EXISTS `ACT_GE_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_GE_PROPERTY` (
  `NAME_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_GE_PROPERTY`
--

LOCK TABLES `ACT_GE_PROPERTY` WRITE;
/*!40000 ALTER TABLE `ACT_GE_PROPERTY` DISABLE KEYS */;
INSERT INTO `ACT_GE_PROPERTY` VALUES ('cfg.execution-related-entities-count','true',1),('cfg.task-related-entities-count','true',1),('common.schema.version','7.2.0.2',1),('eventregistry.schema.version','7.2.0.2',1),('next.dbid','1',1),('schema.history','create(7.2.0.2)',1),('schema.version','7.2.0.2',1);
/*!40000 ALTER TABLE `ACT_GE_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_ACTINST`
--

DROP TABLE IF EXISTS `ACT_HI_ACTINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_ACTINST` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `COMPLETED_BY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `TRANSACTION_ORDER_` int DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_ACTINST`
--

LOCK TABLES `ACT_HI_ACTINST` WRITE;
/*!40000 ALTER TABLE `ACT_HI_ACTINST` DISABLE KEYS */;
INSERT INTO `ACT_HI_ACTINST` VALUES ('3c0ebdd3-acab-11f1-a9a3-0a87a46785dc',1,'ruta_2328:3:3c0bb090-acab-11f1-a9a3-0a87a46785dc','3c0e6fb1-acab-11f1-a9a3-0a87a46785dc','3c0ebdd2-acab-11f1-a9a3-0a87a46785dc','start',NULL,NULL,'Inicio','startEvent',NULL,NULL,'2026-09-09 18:04:47.218','2026-09-09 18:04:47.219',1,1,NULL,''),('3c0ee4e4-acab-11f1-a9a3-0a87a46785dc',1,'ruta_2328:3:3c0bb090-acab-11f1-a9a3-0a87a46785dc','3c0e6fb1-acab-11f1-a9a3-0a87a46785dc','3c0ebdd2-acab-11f1-a9a3-0a87a46785dc','flow_start',NULL,NULL,NULL,'sequenceFlow',NULL,NULL,'2026-09-09 18:04:47.219','2026-09-09 18:04:47.219',2,0,NULL,''),('3c0ee4e5-acab-11f1-a9a3-0a87a46785dc',2,'ruta_2328:3:3c0bb090-acab-11f1-a9a3-0a87a46785dc','3c0e6fb1-acab-11f1-a9a3-0a87a46785dc','3c0ebdd2-acab-11f1-a9a3-0a87a46785dc','sit_20','3c0f0bf6-acab-11f1-a9a3-0a87a46785dc',NULL,'Situación 20 - a Registrados','userTask',NULL,NULL,'2026-09-09 18:04:47.219','2026-09-09 18:05:23.099',3,35880,'E2E: prueba de cancelación desde la pantalla BPM',''),('6088f7cc-acab-11f1-a9a3-0a87a46785dc',1,'ruta_2328:4:60872309-acab-11f1-a9a3-0a87a46785dc','6088f7ca-acab-11f1-a9a3-0a87a46785dc','6088f7cb-acab-11f1-a9a3-0a87a46785dc','start',NULL,NULL,'Inicio','startEvent',NULL,NULL,'2026-09-09 18:05:48.417','2026-09-09 18:05:48.417',1,0,NULL,''),('6088f7cd-acab-11f1-a9a3-0a87a46785dc',1,'ruta_2328:4:60872309-acab-11f1-a9a3-0a87a46785dc','6088f7ca-acab-11f1-a9a3-0a87a46785dc','6088f7cb-acab-11f1-a9a3-0a87a46785dc','flow_start',NULL,NULL,NULL,'sequenceFlow',NULL,NULL,'2026-09-09 18:05:48.417','2026-09-09 18:05:48.417',2,0,NULL,''),('60891ede-acab-11f1-a9a3-0a87a46785dc',2,'ruta_2328:4:60872309-acab-11f1-a9a3-0a87a46785dc','6088f7ca-acab-11f1-a9a3-0a87a46785dc','6088f7cb-acab-11f1-a9a3-0a87a46785dc','sit_20','60891edf-acab-11f1-a9a3-0a87a46785dc',NULL,'Situación 20 - a Registrados','userTask',NULL,NULL,'2026-09-09 18:05:48.418','2026-09-09 18:05:53.687',3,5269,'Verificación historial CANCELADA',''),('929cd3ac-abfe-11f1-acd5-2ef27d0795e9',1,'ruta_zztest:2:929336b9-abfe-11f1-acd5-2ef27d0795e9','929cac9a-abfe-11f1-acd5-2ef27d0795e9','929cac9b-abfe-11f1-acd5-2ef27d0795e9','start',NULL,NULL,'Inicio','startEvent',NULL,NULL,'2026-09-08 21:28:49.499','2026-09-08 21:28:49.502',1,3,NULL,''),('929dbe0d-abfe-11f1-acd5-2ef27d0795e9',1,'ruta_zztest:2:929336b9-abfe-11f1-acd5-2ef27d0795e9','929cac9a-abfe-11f1-acd5-2ef27d0795e9','929cac9b-abfe-11f1-acd5-2ef27d0795e9','flow_start',NULL,NULL,NULL,'sequenceFlow',NULL,NULL,'2026-09-08 21:28:49.505','2026-09-08 21:28:49.505',2,0,NULL,''),('929dbe0e-abfe-11f1-acd5-2ef27d0795e9',2,'ruta_zztest:2:929336b9-abfe-11f1-acd5-2ef27d0795e9','929cac9a-abfe-11f1-acd5-2ef27d0795e9','929cac9b-abfe-11f1-acd5-2ef27d0795e9','sit_20','929f92cf-abfe-11f1-acd5-2ef27d0795e9',NULL,'Situación 20 - a Registrados','userTask',NULL,NULL,'2026-09-08 21:28:49.505','2026-09-09 14:43:16.129',3,62066624,'Prueba de cancelacion monitor',''),('e1d186d1-ac67-11f1-9c0a-0a87a46785dc',1,'ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc','e1d138af-ac67-11f1-9c0a-0a87a46785dc','e1d15fc0-ac67-11f1-9c0a-0a87a46785dc','start',NULL,NULL,'Inicio','startEvent',NULL,NULL,'2026-09-09 10:02:39.541','2026-09-09 10:02:39.545',1,4,NULL,''),('e1d24a22-ac67-11f1-9c0a-0a87a46785dc',1,'ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc','e1d138af-ac67-11f1-9c0a-0a87a46785dc','e1d15fc0-ac67-11f1-9c0a-0a87a46785dc','flow_start',NULL,NULL,NULL,'sequenceFlow',NULL,NULL,'2026-09-09 10:02:39.546','2026-09-09 10:02:39.546',2,0,NULL,''),('e1d24a23-ac67-11f1-9c0a-0a87a46785dc',1,'ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc','e1d138af-ac67-11f1-9c0a-0a87a46785dc','e1d15fc0-ac67-11f1-9c0a-0a87a46785dc','sit_20','e1d53054-ac67-11f1-9c0a-0a87a46785dc',NULL,'Situación 20 - a Registrados','userTask',NULL,NULL,'2026-09-09 10:02:39.546',NULL,3,NULL,NULL,'');
/*!40000 ALTER TABLE `ACT_HI_ACTINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_ATTACHMENT`
--

DROP TABLE IF EXISTS `ACT_HI_ATTACHMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_ATTACHMENT` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_ATTACHMENT`
--

LOCK TABLES `ACT_HI_ATTACHMENT` WRITE;
/*!40000 ALTER TABLE `ACT_HI_ATTACHMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_ATTACHMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_COMMENT`
--

DROP TABLE IF EXISTS `ACT_HI_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_COMMENT` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_COMMENT`
--

LOCK TABLES `ACT_HI_COMMENT` WRITE;
/*!40000 ALTER TABLE `ACT_HI_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_DETAIL`
--

DROP TABLE IF EXISTS `ACT_HI_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_DETAIL` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_DETAIL`
--

LOCK TABLES `ACT_HI_DETAIL` WRITE;
/*!40000 ALTER TABLE `ACT_HI_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_ENTITYLINK`
--

DROP TABLE IF EXISTS `ACT_HI_ENTITYLINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_ENTITYLINK` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_HI_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_HI_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_HI_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_ENTITYLINK`
--

LOCK TABLES `ACT_HI_ENTITYLINK` WRITE;
/*!40000 ALTER TABLE `ACT_HI_ENTITYLINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_ENTITYLINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_IDENTITYLINK`
--

DROP TABLE IF EXISTS `ACT_HI_IDENTITYLINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_IDENTITYLINK` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_IDENTITYLINK`
--

LOCK TABLES `ACT_HI_IDENTITYLINK` WRITE;
/*!40000 ALTER TABLE `ACT_HI_IDENTITYLINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_IDENTITYLINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_PROCINST`
--

DROP TABLE IF EXISTS `ACT_HI_PROCINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_PROCINST` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_SUPER_PROCINST` (`SUPER_PROCESS_INSTANCE_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_PROCINST`
--

LOCK TABLES `ACT_HI_PROCINST` WRITE;
/*!40000 ALTER TABLE `ACT_HI_PROCINST` DISABLE KEYS */;
INSERT INTO `ACT_HI_PROCINST` VALUES ('3c0e6fb1-acab-11f1-a9a3-0a87a46785dc',2,'3c0e6fb1-acab-11f1-a9a3-0a87a46785dc',NULL,'ruta_2328:3:3c0bb090-acab-11f1-a9a3-0a87a46785dc','2026-09-09 18:04:47.216','2026-09-09 18:05:23.155',35939,NULL,'start',NULL,NULL,'E2E: prueba de cancelación desde la pantalla BPM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6088f7ca-acab-11f1-a9a3-0a87a46785dc',2,'6088f7ca-acab-11f1-a9a3-0a87a46785dc',NULL,'ruta_2328:4:60872309-acab-11f1-a9a3-0a87a46785dc','2026-09-09 18:05:48.417','2026-09-09 18:05:53.702',5285,NULL,'start',NULL,NULL,'Verificación historial CANCELADA','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('929cac9a-abfe-11f1-acd5-2ef27d0795e9',2,'929cac9a-abfe-11f1-acd5-2ef27d0795e9',NULL,'ruta_zztest:2:929336b9-abfe-11f1-acd5-2ef27d0795e9','2026-09-08 21:28:49.498','2026-09-09 14:43:16.179',62066681,NULL,'start',NULL,NULL,'Prueba de cancelacion monitor','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('e1d138af-ac67-11f1-9c0a-0a87a46785dc',1,'e1d138af-ac67-11f1-9c0a-0a87a46785dc',NULL,'ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc','2026-09-09 10:02:39.539',NULL,NULL,NULL,'start',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ACT_HI_PROCINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_TASKINST`
--

DROP TABLE IF EXISTS `ACT_HI_TASKINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_TASKINST` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `STATE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `IN_PROGRESS_TIME_` datetime(3) DEFAULT NULL,
  `IN_PROGRESS_STARTED_BY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `CLAIMED_BY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUSPENDED_TIME_` datetime(3) DEFAULT NULL,
  `SUSPENDED_BY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `COMPLETED_BY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `IN_PROGRESS_DUE_DATE_` datetime(3) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_TASKINST`
--

LOCK TABLES `ACT_HI_TASKINST` WRITE;
/*!40000 ALTER TABLE `ACT_HI_TASKINST` DISABLE KEYS */;
INSERT INTO `ACT_HI_TASKINST` VALUES ('3c0f0bf6-acab-11f1-a9a3-0a87a46785dc',2,'ruta_2328:3:3c0bb090-acab-11f1-a9a3-0a87a46785dc',NULL,'sit_20','3c0e6fb1-acab-11f1-a9a3-0a87a46785dc','3c0ebdd2-acab-11f1-a9a3-0a87a46785dc',NULL,NULL,NULL,NULL,NULL,'completed','Situación 20 - a Registrados',NULL,NULL,NULL,NULL,'2026-09-09 18:04:47.219',NULL,NULL,NULL,NULL,NULL,NULL,'2026-09-09 18:05:23.092',NULL,35873,'E2E: prueba de cancelación desde la pantalla BPM',50,NULL,NULL,NULL,NULL,'','2026-09-09 18:05:23.092'),('60891edf-acab-11f1-a9a3-0a87a46785dc',2,'ruta_2328:4:60872309-acab-11f1-a9a3-0a87a46785dc',NULL,'sit_20','6088f7ca-acab-11f1-a9a3-0a87a46785dc','6088f7cb-acab-11f1-a9a3-0a87a46785dc',NULL,NULL,NULL,NULL,NULL,'completed','Situación 20 - a Registrados',NULL,NULL,NULL,NULL,'2026-09-09 18:05:48.418',NULL,NULL,NULL,NULL,NULL,NULL,'2026-09-09 18:05:53.683',NULL,5265,'Verificación historial CANCELADA',50,NULL,NULL,NULL,NULL,'','2026-09-09 18:05:53.683'),('929f92cf-abfe-11f1-acd5-2ef27d0795e9',2,'ruta_zztest:2:929336b9-abfe-11f1-acd5-2ef27d0795e9',NULL,'sit_20','929cac9a-abfe-11f1-acd5-2ef27d0795e9','929cac9b-abfe-11f1-acd5-2ef27d0795e9',NULL,NULL,NULL,NULL,NULL,'completed','Situación 20 - a Registrados',NULL,NULL,NULL,NULL,'2026-09-08 21:28:49.505',NULL,NULL,NULL,NULL,NULL,NULL,'2026-09-09 14:43:16.118',NULL,62066613,'Prueba de cancelacion monitor',50,NULL,NULL,NULL,NULL,'','2026-09-09 14:43:16.118'),('e1d53054-ac67-11f1-9c0a-0a87a46785dc',1,'ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc',NULL,'sit_20','e1d138af-ac67-11f1-9c0a-0a87a46785dc','e1d15fc0-ac67-11f1-9c0a-0a87a46785dc',NULL,NULL,NULL,NULL,NULL,'created','Situación 20 - a Registrados',NULL,NULL,NULL,NULL,'2026-09-09 10:02:39.548',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,'','2026-09-09 10:02:39.567');
/*!40000 ALTER TABLE `ACT_HI_TASKINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_TSK_LOG`
--

DROP TABLE IF EXISTS `ACT_HI_TSK_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_TSK_LOG` (
  `ID_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DATA_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_ACT_HI_TSK_LOG_TASK` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_TSK_LOG`
--

LOCK TABLES `ACT_HI_TSK_LOG` WRITE;
/*!40000 ALTER TABLE `ACT_HI_TSK_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_TSK_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_VARINST`
--

DROP TABLE IF EXISTS `ACT_HI_VARINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_HI_VARINST` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_EXE` (`EXECUTION_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_VARINST`
--

LOCK TABLES `ACT_HI_VARINST` WRITE;
/*!40000 ALTER TABLE `ACT_HI_VARINST` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_VARINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_BYTEARRAY`
--

DROP TABLE IF EXISTS `ACT_ID_BYTEARRAY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_ID_BYTEARRAY` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_BYTEARRAY`
--

LOCK TABLES `ACT_ID_BYTEARRAY` WRITE;
/*!40000 ALTER TABLE `ACT_ID_BYTEARRAY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_ID_BYTEARRAY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_GROUP`
--

DROP TABLE IF EXISTS `ACT_ID_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_ID_GROUP` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_GROUP`
--

LOCK TABLES `ACT_ID_GROUP` WRITE;
/*!40000 ALTER TABLE `ACT_ID_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_ID_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_INFO`
--

DROP TABLE IF EXISTS `ACT_ID_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_ID_INFO` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_INFO`
--

LOCK TABLES `ACT_ID_INFO` WRITE;
/*!40000 ALTER TABLE `ACT_ID_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_ID_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_MEMBERSHIP`
--

DROP TABLE IF EXISTS `ACT_ID_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_ID_MEMBERSHIP` (
  `USER_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `ACT_ID_GROUP` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `ACT_ID_USER` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_MEMBERSHIP`
--

LOCK TABLES `ACT_ID_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `ACT_ID_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_ID_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_PRIV`
--

DROP TABLE IF EXISTS `ACT_ID_PRIV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_ID_PRIV` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PRIV_NAME` (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_PRIV`
--

LOCK TABLES `ACT_ID_PRIV` WRITE;
/*!40000 ALTER TABLE `ACT_ID_PRIV` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_ID_PRIV` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_PRIV_MAPPING`
--

DROP TABLE IF EXISTS `ACT_ID_PRIV_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_ID_PRIV_MAPPING` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PRIV_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_PRIV_MAPPING` (`PRIV_ID_`),
  KEY `ACT_IDX_PRIV_USER` (`USER_ID_`),
  KEY `ACT_IDX_PRIV_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `ACT_ID_PRIV` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_PRIV_MAPPING`
--

LOCK TABLES `ACT_ID_PRIV_MAPPING` WRITE;
/*!40000 ALTER TABLE `ACT_ID_PRIV_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_ID_PRIV_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_PROPERTY`
--

DROP TABLE IF EXISTS `ACT_ID_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_ID_PROPERTY` (
  `NAME_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_PROPERTY`
--

LOCK TABLES `ACT_ID_PROPERTY` WRITE;
/*!40000 ALTER TABLE `ACT_ID_PROPERTY` DISABLE KEYS */;
INSERT INTO `ACT_ID_PROPERTY` VALUES ('schema.version','7.2.0.2',1);
/*!40000 ALTER TABLE `ACT_ID_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_TOKEN`
--

DROP TABLE IF EXISTS `ACT_ID_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_ID_TOKEN` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) NULL DEFAULT NULL,
  `IP_ADDRESS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_AGENT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_TOKEN`
--

LOCK TABLES `ACT_ID_TOKEN` WRITE;
/*!40000 ALTER TABLE `ACT_ID_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_ID_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_USER`
--

DROP TABLE IF EXISTS `ACT_ID_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_ID_USER` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DISPLAY_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_USER`
--

LOCK TABLES `ACT_ID_USER` WRITE;
/*!40000 ALTER TABLE `ACT_ID_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_ID_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_PROCDEF_INFO`
--

DROP TABLE IF EXISTS `ACT_PROCDEF_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_PROCDEF_INFO` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_PROCDEF_INFO`
--

LOCK TABLES `ACT_PROCDEF_INFO` WRITE;
/*!40000 ALTER TABLE `ACT_PROCDEF_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_PROCDEF_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RE_DEPLOYMENT`
--

DROP TABLE IF EXISTS `ACT_RE_DEPLOYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RE_DEPLOYMENT` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RE_DEPLOYMENT`
--

LOCK TABLES `ACT_RE_DEPLOYMENT` WRITE;
/*!40000 ALTER TABLE `ACT_RE_DEPLOYMENT` DISABLE KEYS */;
INSERT INTO `ACT_RE_DEPLOYMENT` VALUES ('217803aa-ac8f-11f1-b310-0a87a46785dc','deployment_ruta_2328',NULL,NULL,'','2026-09-09 14:43:36.701',NULL,NULL,'217803aa-ac8f-11f1-b310-0a87a46785dc',NULL),('3c0743be-acab-11f1-a9a3-0a87a46785dc','deployment_ruta_2328',NULL,NULL,'','2026-09-09 18:04:47.169',NULL,NULL,'3c0743be-acab-11f1-a9a3-0a87a46785dc',NULL),('60828f27-acab-11f1-a9a3-0a87a46785dc','deployment_ruta_2328',NULL,NULL,'','2026-09-09 18:05:48.374',NULL,NULL,'60828f27-acab-11f1-a9a3-0a87a46785dc',NULL),('88f3d5b4-abfe-11f1-acd5-2ef27d0795e9','deployment_ruta_zztest',NULL,NULL,'','2026-09-08 21:28:33.292',NULL,NULL,'88f3d5b4-abfe-11f1-acd5-2ef27d0795e9',NULL),('928fdb57-abfe-11f1-acd5-2ef27d0795e9','deployment_ruta_zztest',NULL,NULL,'','2026-09-08 21:28:49.414',NULL,NULL,'928fdb57-abfe-11f1-acd5-2ef27d0795e9',NULL),('e1ae204c-ac67-11f1-9c0a-0a87a46785dc','deployment_ruta_2328',NULL,NULL,'','2026-09-09 10:02:39.305',NULL,NULL,'e1ae204c-ac67-11f1-9c0a-0a87a46785dc',NULL);
/*!40000 ALTER TABLE `ACT_RE_DEPLOYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RE_MODEL`
--

DROP TABLE IF EXISTS `ACT_RE_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RE_MODEL` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `ACT_RE_DEPLOYMENT` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RE_MODEL`
--

LOCK TABLES `ACT_RE_MODEL` WRITE;
/*!40000 ALTER TABLE `ACT_RE_MODEL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RE_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RE_PROCDEF`
--

DROP TABLE IF EXISTS `ACT_RE_PROCDEF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RE_PROCDEF` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DERIVED_VERSION_` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`DERIVED_VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RE_PROCDEF`
--

LOCK TABLES `ACT_RE_PROCDEF` WRITE;
/*!40000 ALTER TABLE `ACT_RE_PROCDEF` DISABLE KEYS */;
INSERT INTO `ACT_RE_PROCDEF` VALUES ('ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc',1,'http://www.flowable.org/test','Proceso de aprobación 2328','ruta_2328',1,'e1ae204c-ac67-11f1-9c0a-0a87a46785dc','ruta_2328.bpmn20.xml',NULL,NULL,0,0,1,'',NULL,NULL,NULL,0),('ruta_2328:2:2183755c-ac8f-11f1-b310-0a87a46785dc',1,'http://www.flowable.org/test','Proceso de aprobación 2328','ruta_2328',2,'217803aa-ac8f-11f1-b310-0a87a46785dc','ruta_2328.bpmn20.xml',NULL,NULL,0,0,1,'',NULL,NULL,NULL,0),('ruta_2328:3:3c0bb090-acab-11f1-a9a3-0a87a46785dc',1,'http://www.flowable.org/test','Proceso de aprobación 2328','ruta_2328',3,'3c0743be-acab-11f1-a9a3-0a87a46785dc','ruta_2328.bpmn20.xml',NULL,NULL,0,0,1,'',NULL,NULL,NULL,0),('ruta_2328:4:60872309-acab-11f1-a9a3-0a87a46785dc',1,'http://www.flowable.org/test','Proceso de aprobación 2328','ruta_2328',4,'60828f27-acab-11f1-a9a3-0a87a46785dc','ruta_2328.bpmn20.xml',NULL,NULL,0,0,1,'',NULL,NULL,NULL,0),('ruta_zztest:1:89042966-abfe-11f1-acd5-2ef27d0795e9',1,'http://www.flowable.org/test','Proceso de aprobación ZZTEST','ruta_zztest',1,'88f3d5b4-abfe-11f1-acd5-2ef27d0795e9','ruta_zztest.bpmn20.xml',NULL,NULL,0,0,1,'',NULL,NULL,NULL,0),('ruta_zztest:2:929336b9-abfe-11f1-acd5-2ef27d0795e9',9,'http://www.flowable.org/test','Proceso de aprobación ZZTEST','ruta_zztest',2,'928fdb57-abfe-11f1-acd5-2ef27d0795e9','ruta_zztest.bpmn20.xml',NULL,NULL,0,0,1,'',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ACT_RE_PROCDEF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_ACTINST`
--

DROP TABLE IF EXISTS `ACT_RU_ACTINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_ACTINST` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `COMPLETED_BY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `TRANSACTION_ORDER_` int DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_RU_ACTI_START` (`START_TIME_`),
  KEY `ACT_IDX_RU_ACTI_END` (`END_TIME_`),
  KEY `ACT_IDX_RU_ACTI_PROC` (`PROC_INST_ID_`),
  KEY `ACT_IDX_RU_ACTI_PROC_ACT` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_RU_ACTI_EXEC` (`EXECUTION_ID_`),
  KEY `ACT_IDX_RU_ACTI_EXEC_ACT` (`EXECUTION_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_RU_ACTI_TASK` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_ACTINST`
--

LOCK TABLES `ACT_RU_ACTINST` WRITE;
/*!40000 ALTER TABLE `ACT_RU_ACTINST` DISABLE KEYS */;
INSERT INTO `ACT_RU_ACTINST` VALUES ('e1d186d1-ac67-11f1-9c0a-0a87a46785dc',1,'ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc','e1d138af-ac67-11f1-9c0a-0a87a46785dc','e1d15fc0-ac67-11f1-9c0a-0a87a46785dc','start',NULL,NULL,'Inicio','startEvent',NULL,NULL,'2026-09-09 10:02:39.541','2026-09-09 10:02:39.545',4,1,NULL,''),('e1d24a22-ac67-11f1-9c0a-0a87a46785dc',1,'ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc','e1d138af-ac67-11f1-9c0a-0a87a46785dc','e1d15fc0-ac67-11f1-9c0a-0a87a46785dc','flow_start',NULL,NULL,NULL,'sequenceFlow',NULL,NULL,'2026-09-09 10:02:39.546','2026-09-09 10:02:39.546',0,2,NULL,''),('e1d24a23-ac67-11f1-9c0a-0a87a46785dc',1,'ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc','e1d138af-ac67-11f1-9c0a-0a87a46785dc','e1d15fc0-ac67-11f1-9c0a-0a87a46785dc','sit_20','e1d53054-ac67-11f1-9c0a-0a87a46785dc',NULL,'Situación 20 - a Registrados','userTask',NULL,NULL,'2026-09-09 10:02:39.546',NULL,NULL,3,NULL,'');
/*!40000 ALTER TABLE `ACT_RU_ACTINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_DEADLETTER_JOB`
--

DROP TABLE IF EXISTS `ACT_RU_DEADLETTER_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_DEADLETTER_JOB` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_DEADLETTER_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_DJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_DJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_DJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_DEADLETTER_JOB`
--

LOCK TABLES `ACT_RU_DEADLETTER_JOB` WRITE;
/*!40000 ALTER TABLE `ACT_RU_DEADLETTER_JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_DEADLETTER_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_ENTITYLINK`
--

DROP TABLE IF EXISTS `ACT_RU_ENTITYLINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_ENTITYLINK` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_ENTITYLINK`
--

LOCK TABLES `ACT_RU_ENTITYLINK` WRITE;
/*!40000 ALTER TABLE `ACT_RU_ENTITYLINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_ENTITYLINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_EVENT_SUBSCR`
--

DROP TABLE IF EXISTS `ACT_RU_EVENT_SUBSCR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_EVENT_SUBSCR` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_IDX_EVENT_SUBSCR_EXEC_ID` (`EXECUTION_ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_PROC_ID` (`PROC_INST_ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_SCOPEREF_` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_EVENT_SUBSCR`
--

LOCK TABLES `ACT_RU_EVENT_SUBSCR` WRITE;
/*!40000 ALTER TABLE `ACT_RU_EVENT_SUBSCR` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_EVENT_SUBSCR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_EXECUTION`
--

DROP TABLE IF EXISTS `ACT_RU_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_EXECUTION` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint DEFAULT NULL,
  `IS_CONCURRENT_` tinyint DEFAULT NULL,
  `IS_SCOPE_` tinyint DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint DEFAULT NULL,
  `IS_MI_ROOT_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `CACHED_ENT_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int DEFAULT NULL,
  `TASK_COUNT_` int DEFAULT NULL,
  `JOB_COUNT_` int DEFAULT NULL,
  `TIMER_JOB_COUNT_` int DEFAULT NULL,
  `SUSP_JOB_COUNT_` int DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int DEFAULT NULL,
  `EXTERNAL_WORKER_JOB_COUNT_` int DEFAULT NULL,
  `VAR_COUNT_` int DEFAULT NULL,
  `ID_LINK_COUNT_` int DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_EXEC_REF_ID_` (`REFERENCE_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_EXECUTION`
--

LOCK TABLES `ACT_RU_EXECUTION` WRITE;
/*!40000 ALTER TABLE `ACT_RU_EXECUTION` DISABLE KEYS */;
INSERT INTO `ACT_RU_EXECUTION` VALUES ('e1d138af-ac67-11f1-9c0a-0a87a46785dc',1,'e1d138af-ac67-11f1-9c0a-0a87a46785dc',NULL,NULL,'ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc',NULL,'e1d138af-ac67-11f1-9c0a-0a87a46785dc',NULL,1,0,1,0,0,1,NULL,'',NULL,'start','2026-09-09 10:02:39.539',NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL),('e1d15fc0-ac67-11f1-9c0a-0a87a46785dc',1,'e1d138af-ac67-11f1-9c0a-0a87a46785dc',NULL,'e1d138af-ac67-11f1-9c0a-0a87a46785dc','ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc',NULL,'e1d138af-ac67-11f1-9c0a-0a87a46785dc','sit_20',1,0,0,0,0,1,NULL,'',NULL,NULL,'2026-09-09 10:02:39.540',NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ACT_RU_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_EXTERNAL_JOB`
--

DROP TABLE IF EXISTS `ACT_RU_EXTERNAL_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_EXTERNAL_JOB` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXTERNAL_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_EXTERNAL_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_EXTERNAL_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_EJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_EJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_EJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_EXTERNAL_JOB`
--

LOCK TABLES `ACT_RU_EXTERNAL_JOB` WRITE;
/*!40000 ALTER TABLE `ACT_RU_EXTERNAL_JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_EXTERNAL_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_HISTORY_JOB`
--

DROP TABLE IF EXISTS `ACT_RU_HISTORY_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_HISTORY_JOB` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_HISTORY_JOB`
--

LOCK TABLES `ACT_RU_HISTORY_JOB` WRITE;
/*!40000 ALTER TABLE `ACT_RU_HISTORY_JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_HISTORY_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_IDENTITYLINK`
--

DROP TABLE IF EXISTS `ACT_RU_IDENTITYLINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_IDENTITYLINK` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `ACT_RU_TASK` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_IDENTITYLINK`
--

LOCK TABLES `ACT_RU_IDENTITYLINK` WRITE;
/*!40000 ALTER TABLE `ACT_RU_IDENTITYLINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_IDENTITYLINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_JOB`
--

DROP TABLE IF EXISTS `ACT_RU_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_JOB` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_JOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_JOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_JOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_JOB`
--

LOCK TABLES `ACT_RU_JOB` WRITE;
/*!40000 ALTER TABLE `ACT_RU_JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_SUSPENDED_JOB`
--

DROP TABLE IF EXISTS `ACT_RU_SUSPENDED_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_SUSPENDED_JOB` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_SUSPENDED_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_SJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_SJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_SJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_SUSPENDED_JOB`
--

LOCK TABLES `ACT_RU_SUSPENDED_JOB` WRITE;
/*!40000 ALTER TABLE `ACT_RU_SUSPENDED_JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_SUSPENDED_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_TASK`
--

DROP TABLE IF EXISTS `ACT_RU_TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_TASK` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `STATE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IN_PROGRESS_TIME_` datetime(3) DEFAULT NULL,
  `IN_PROGRESS_STARTED_BY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `CLAIMED_BY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUSPENDED_TIME_` datetime(3) DEFAULT NULL,
  `SUSPENDED_BY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `IN_PROGRESS_DUE_DATE_` datetime(3) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint DEFAULT NULL,
  `VAR_COUNT_` int DEFAULT NULL,
  `ID_LINK_COUNT_` int DEFAULT NULL,
  `SUB_TASK_COUNT_` int DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_IDX_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_TASK`
--

LOCK TABLES `ACT_RU_TASK` WRITE;
/*!40000 ALTER TABLE `ACT_RU_TASK` DISABLE KEYS */;
INSERT INTO `ACT_RU_TASK` VALUES ('e1d53054-ac67-11f1-9c0a-0a87a46785dc',1,'e1d15fc0-ac67-11f1-9c0a-0a87a46785dc','e1d138af-ac67-11f1-9c0a-0a87a46785dc','ruta_2328:1:e1c74d9e-ac67-11f1-9c0a-0a87a46785dc',NULL,NULL,NULL,NULL,NULL,NULL,'created','Situación 20 - a Registrados',NULL,NULL,'sit_20',NULL,NULL,NULL,50,'2026-09-09 10:02:39.548',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'',NULL,1,0,0,0);
/*!40000 ALTER TABLE `ACT_RU_TASK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_TIMER_JOB`
--

DROP TABLE IF EXISTS `ACT_RU_TIMER_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_TIMER_JOB` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_TIMER_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_TIMER_JOB_DUEDATE` (`DUEDATE_`),
  KEY `ACT_IDX_TJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_TIMER_JOB`
--

LOCK TABLES `ACT_RU_TIMER_JOB` WRITE;
/*!40000 ALTER TABLE `ACT_RU_TIMER_JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_TIMER_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_VARIABLE`
--

DROP TABLE IF EXISTS `ACT_RU_VARIABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACT_RU_VARIABLE` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_RU_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_RU_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_VARIABLE`
--

LOCK TABLES `ACT_RU_VARIABLE` WRITE;
/*!40000 ALTER TABLE `ACT_RU_VARIABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_VARIABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FLW_CHANNEL_DEFINITION`
--

DROP TABLE IF EXISTS `FLW_CHANNEL_DEFINITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FLW_CHANNEL_DEFINITION` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `IMPLEMENTATION_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_IDX_CHANNEL_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FLW_CHANNEL_DEFINITION`
--

LOCK TABLES `FLW_CHANNEL_DEFINITION` WRITE;
/*!40000 ALTER TABLE `FLW_CHANNEL_DEFINITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FLW_CHANNEL_DEFINITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FLW_EVENT_DEFINITION`
--

DROP TABLE IF EXISTS `FLW_EVENT_DEFINITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FLW_EVENT_DEFINITION` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_IDX_EVENT_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FLW_EVENT_DEFINITION`
--

LOCK TABLES `FLW_EVENT_DEFINITION` WRITE;
/*!40000 ALTER TABLE `FLW_EVENT_DEFINITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FLW_EVENT_DEFINITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FLW_EVENT_DEPLOYMENT`
--

DROP TABLE IF EXISTS `FLW_EVENT_DEPLOYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FLW_EVENT_DEPLOYMENT` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOY_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FLW_EVENT_DEPLOYMENT`
--

LOCK TABLES `FLW_EVENT_DEPLOYMENT` WRITE;
/*!40000 ALTER TABLE `FLW_EVENT_DEPLOYMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FLW_EVENT_DEPLOYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FLW_EVENT_RESOURCE`
--

DROP TABLE IF EXISTS `FLW_EVENT_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FLW_EVENT_RESOURCE` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  PRIMARY KEY (`ID_`),
  KEY `FLW_IDX_EVENT_RSRC_DPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `FLW_FK_EVENT_RSRC_DPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `FLW_EVENT_DEPLOYMENT` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FLW_EVENT_RESOURCE`
--

LOCK TABLES `FLW_EVENT_RESOURCE` WRITE;
/*!40000 ALTER TABLE `FLW_EVENT_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FLW_EVENT_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FLW_RU_BATCH`
--

DROP TABLE IF EXISTS `FLW_RU_BATCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FLW_RU_BATCH` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BATCH_DOC_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FLW_RU_BATCH`
--

LOCK TABLES `FLW_RU_BATCH` WRITE;
/*!40000 ALTER TABLE `FLW_RU_BATCH` DISABLE KEYS */;
/*!40000 ALTER TABLE `FLW_RU_BATCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FLW_RU_BATCH_PART`
--

DROP TABLE IF EXISTS `FLW_RU_BATCH_PART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FLW_RU_BATCH_PART` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESULT_DOC_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `FLW_IDX_BATCH_PART` (`BATCH_ID_`),
  CONSTRAINT `FLW_FK_BATCH_PART_PARENT` FOREIGN KEY (`BATCH_ID_`) REFERENCES `FLW_RU_BATCH` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FLW_RU_BATCH_PART`
--

LOCK TABLES `FLW_RU_BATCH_PART` WRITE;
/*!40000 ALTER TABLE `FLW_RU_BATCH_PART` DISABLE KEYS */;
/*!40000 ALTER TABLE `FLW_RU_BATCH_PART` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_ruta`
--

DROP TABLE IF EXISTS `cat_ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_ruta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `clave_ruta` varchar(20) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `activa` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `clave_ruta` (`clave_ruta`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_ruta`
--

LOCK TABLES `cat_ruta` WRITE;
/*!40000 ALTER TABLE `cat_ruta` DISABLE KEYS */;
INSERT INTO `cat_ruta` VALUES (1,'2328','DIR. FINANZAS',1),(2,'9000','PRESIDENCIA EJECUTIVA   SCISNEROS-IOLANO',1),(3,'9001','CONTADOR GRAL. PRES.    SCISNEROS-IOLANO',1),(4,'9002','COMUNICACIN Y RELACIONES PUBLICAS',1),(5,'9004','SEGURIDAD               SCISNEROS-IOLANO',1),(6,'9005','HOLDING                 JSANCHEZ',1),(7,'9010','GASTOS ESPECIALES       SCISNEROS-IOLANO',1),(8,'901E','GASTOS ESPECIALES       SCISNEROS-IOLANO',1),(9,'9020','DIR CORP REC. HUMANOS   EGUILLEN-MPEREZ',1),(10,'9021','DIR CORP REC. HUMANOS   EGUILLEN-MPEREZ',1),(11,'9025','JEFATURA SERV GRALES. MGUTIERREZ-MPEREZ',1),(12,'9026','AREA DE REC. HUM.     MGUTIERREZ-MPEREZ',1),(13,'902B','ADMIN. PERSONAL       MGUTIERREZ-MPEREZ',1),(14,'902C','DIR CORP REC. HUMANOS   EGUILLEN',1),(15,'902E','AREA DE REC. HUM.             MGUTIERREZ',1),(16,'9030','DIR GRAL FIN Y CTRL     JSANCHEZ',1),(17,'9033','DIR GAL FINANZAS',1),(18,'9035','DIR GAL FINANZAS',1),(19,'9037','GERENCIA DE SISTEMAS  JSANCHEZ',1),(20,'903B','GERENCIA DE SISTEMAS  JSANCHEZ',1),(21,'903E','AREA FINANZAS',1),(22,'9044','SUBDIR REL. INVERSIONIS JSANCHEZ',1),(23,'9052','GCIA. CONTRALORIA CORP.  JSANCHEZ',1),(24,'9056','DIR. CORP FP&A, TI   LEDIAZ',1),(25,'9058','GCIA. TESORERIA CORP.  MSANTILLAN-TESO',1),(26,'905A','OPER. ESP. TES S/CONTA',1),(27,'905B','CONTRALORIA VALES',1),(28,'905D','DIR. TESORERIA CORP.',1),(29,'905E','CONTRALORIA EFECTIVO',1),(30,'905F','CONTRALORIA',1),(31,'9060','DIR PLAN. FISCAL        JSANCHEZ',1),(32,'9062','G ANA. ESTRATEGICO',1),(33,'9063','GCIA OPERER.LFISCAL    JMAGALLA-JSANCHEZ',1),(34,'9066','GCIA CONTRAL. DIV SUSP.',1),(35,'906B','G ANA. ESTRATEGICO   JSANCHEZ',1),(36,'906C','GERENCIA FISCAL  JMAGALLANES-JSANCHEZ',1),(37,'906E','G. ANA. ESTRATEGICO EFECTIVO',1),(38,'9070','DIRECCION JURIDICO      JPROSAS',1),(39,'9072','GERENCIA JURIDICO MMORA-JPROSAS',1),(40,'9074','DIR. DE AUDITORIA INTERNA VMSILVA',1),(41,'9075','DIR. DE CTRL Y GESTION   IOLANO',1),(42,'9077','DIR. DIV. SUSPENSIONES',1),(43,'9078','GCIA PLAN ESTRATEGICA  MPEREZ',1),(44,'9079','GCIA TI Y TELECOM      JAPEREZ-MPEREZ',1),(45,'907B','GERENCIA JURIDICA    MMORA - JPROSAS',1),(46,'9080','DIR GRAL DIV AUTOPA   JSANCHEZ',1),(47,'9086','DIR.RES.NORTEAMERICA',1),(48,'9089','VENTAS NACIONALES  JAPEREZ',1),(49,'908B','DIR.RES.NORTEAMERICA  MPEREZ',1),(50,'908E','DIR GRAL DIV AUTOPA  JSANCHEZ',1),(51,'9100','ANT DE SUEL Y AHORROS MGUTIERREZ',1),(52,'9200','ACTIVOS FIJOS CORP. IOLANO',1),(53,'9300','CAJA DE AHORRO',1),(54,'CONC','RUTA CONCUR',1),(55,'GRAL','RUTA GENERAL PARA ADMINISTRADORES',1),(56,'R031','ACTIVOS FIJOS PLANTAS  IOLANO',1),(57,'R032','RUTA PROYECTOS MANUFACTURA',1);
/*!40000 ALTER TABLE `cat_ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_situacion`
--

DROP TABLE IF EXISTS `cat_situacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_situacion` (
  `codigo` int NOT NULL,
  `descripcion_corta` varchar(150) NOT NULL,
  `descripcion_larga` varchar(255) NOT NULL,
  `tipo_flujo` varchar(30) NOT NULL,
  `activa` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_situacion`
--

LOCK TABLES `cat_situacion` WRITE;
/*!40000 ALTER TABLE `cat_situacion` DISABLE KEYS */;
INSERT INTO `cat_situacion` VALUES (20,'a Registrados','REGISTRADOS','COMPROBACIONES',1),(30,'a Vale Registrado','VALES REGISTRADOS','COMPROBACIONES',1),(31,'a Autorizacin Esp','EN AUTORIZACION ESPECIAL','COMPROBACIONES',1),(32,'a Jefe Inmediato','EN AUTORIZACION JEFE INMEDIATO','COMPROBACIONES',1),(33,'a Contraloria','EN AUTORIZACION DE CONTROLORIA','COMPROBACIONES',1),(34,'a Tesorera','EN AUTORIZACION DE TESORERIA','COMPROBACIONES',1),(35,'a Caja x Pagar','VALES POR PAGAR','COMPROBACIONES',1),(36,'a Caja Pagados','VALES PAGADOS','COMPROBACIONES',1),(38,'a Autorizacin Esp','EN AUTORIZACION ESPECIAL','COMPROBACIONES',1),(40,'a PE2000 Registrados','EN PE2000 REGISTRADOS','COMPROBACIONES',1),(41,'a PE2000 Autorizaci','EN PE2000 EN AUTORIZACIONES','COMPROBACIONES',1),(45,'a Pagados','EN PE2000 PAGADOS','COMPROBACIONES',1),(46,'a Comprobar','2ANTICIPOS','COMPROBACIONES',1),(47,'a Aut. Comprobacin','2ANTICIPOS','COMPROBACIONES',1),(48,'a Aut. Comprobacin','2ANTICIPOS','COMPROBACIONES',1),(49,'a Comprobado','ANTICIPOS COMPROBADOS','COMPROBACIONES',1),(50,'a Registradas Sicoin','SOLICITUDES AF REGISTRADAS EN SICOIN','COMPROBACIONES',1),(55,'a Proceso en PE','SOLICITUDES AF PROCESANDOSE EN PE','COMPROBACIONES',1),(60,'a Registradas','SOLICITUDES REGISTRADAS','FOLIOS',1),(61,'a Jefatura','SOLICITUDES EN VO. BO. DE JEFATURA','FOLIOS',1),(62,'a Aut. Epecial','SOLICITUDES EN AUTORIZACION ESPECIAL PRESUPUESTO','FOLIOS',1),(63,'a Gerencia','SOLICITUDES EN VO. BO DE GERENCIA','FOLIOS',1),(64,'a Contraloria','SOLICITUDES EN VO. BO. CONTRALORIA','FOLIOS',1),(65,'a Provisionadas','SOLICITUDES EN PROVISION DE GASTOS','FOLIOS',1),(66,'a Direccin','SOLICITUDES EN AUTORIZACION DE DIRECCION','FOLIOS',1),(67,'a Tesorera','SOLICITUDES AUTORIZADAS EN TESORERIA','FOLIOS',1),(68,'a Prog. Pago','SOLICITUDES EN PROGRAMACION DE PAGO','FOLIOS',1),(69,'a Procesando','SOLICITUDES EN PROCESO DE PAGO','FOLIOS',1),(70,'a Pagadas','SOLICITUDES PAGADAS','FOLIOS',1),(71,'a Procesando en PN','SOLICITUD EN PROCESO DE PAGO EN PIEDRAS NEGRAS','FOLIOS',1),(99,'a Cancelar','SOLICITUDES CANCELADAS','FOLIOS',1);
/*!40000 ALTER TABLE `cat_situacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'1','schema','SQL','V1__schema.sql',-69826233,'root','2026-09-09 00:10:57',77,1),(2,'2','data catalogos','SQL','V2__data_catalogos.sql',793417443,'root','2026-09-09 00:10:58',690,1),(3,'3','drop local identity','SQL','V3__drop_local_identity.sql',1573501186,'root','2026-09-09 00:10:58',373,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_config`
--

DROP TABLE IF EXISTS `password_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ruta_id` bigint NOT NULL,
  `situacion_actual_codigo` int NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `max_intentos` int NOT NULL DEFAULT '3',
  `activa` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_password_config` (`ruta_id`,`situacion_actual_codigo`),
  KEY `fk_pc_sit_actual` (`situacion_actual_codigo`),
  CONSTRAINT `fk_pc_ruta` FOREIGN KEY (`ruta_id`) REFERENCES `cat_ruta` (`id`),
  CONSTRAINT `fk_pc_sit_actual` FOREIGN KEY (`situacion_actual_codigo`) REFERENCES `cat_situacion` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_config`
--

LOCK TABLES `password_config` WRITE;
/*!40000 ALTER TABLE `password_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruta_transicion`
--

DROP TABLE IF EXISTS `ruta_transicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruta_transicion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ruta_id` bigint NOT NULL,
  `situacion_actual_codigo` int NOT NULL,
  `situacion_anterior_codigo` int DEFAULT NULL,
  `situacion_siguiente_codigo` int DEFAULT NULL,
  `solicitar_password` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_ruta_transicion` (`ruta_id`,`situacion_actual_codigo`,`situacion_siguiente_codigo`),
  KEY `fk_rt_sit_actual` (`situacion_actual_codigo`),
  KEY `fk_rt_sit_anterior` (`situacion_anterior_codigo`),
  KEY `fk_rt_sit_siguiente` (`situacion_siguiente_codigo`),
  KEY `idx_rt_ruta_actual` (`ruta_id`,`situacion_actual_codigo`),
  CONSTRAINT `fk_rt_ruta` FOREIGN KEY (`ruta_id`) REFERENCES `cat_ruta` (`id`),
  CONSTRAINT `fk_rt_sit_actual` FOREIGN KEY (`situacion_actual_codigo`) REFERENCES `cat_situacion` (`codigo`),
  CONSTRAINT `fk_rt_sit_anterior` FOREIGN KEY (`situacion_anterior_codigo`) REFERENCES `cat_situacion` (`codigo`),
  CONSTRAINT `fk_rt_sit_siguiente` FOREIGN KEY (`situacion_siguiente_codigo`) REFERENCES `cat_situacion` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=1135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruta_transicion`
--

LOCK TABLES `ruta_transicion` WRITE;
/*!40000 ALTER TABLE `ruta_transicion` DISABLE KEYS */;
INSERT INTO `ruta_transicion` VALUES (1,1,20,99,32,0),(2,1,31,20,33,1),(3,1,32,20,33,1),(4,1,33,20,34,1),(5,1,34,20,35,1),(6,1,35,20,36,1),(7,1,36,20,41,0),(8,1,38,20,33,1),(9,1,41,20,45,0),(10,1,60,NULL,63,0),(11,1,62,60,64,0),(12,1,63,60,64,1),(13,1,64,60,66,1),(14,1,65,66,67,1),(15,1,66,60,67,1),(16,1,67,60,68,1),(17,1,68,67,69,1),(18,1,69,68,70,1),(19,1,70,69,NULL,0),(20,1,71,60,70,0),(21,1,99,NULL,60,0),(22,2,20,99,32,0),(23,2,31,20,33,1),(24,2,32,20,33,1),(25,2,33,20,34,1),(26,2,34,20,35,1),(27,2,35,20,36,1),(28,2,36,20,41,0),(29,2,38,20,33,1),(30,2,41,20,45,0),(31,2,60,NULL,63,0),(32,2,62,60,64,0),(33,2,63,60,64,1),(34,2,64,60,66,1),(35,2,65,66,67,1),(36,2,66,60,67,1),(37,2,67,60,68,1),(38,2,68,67,69,1),(39,2,69,68,70,1),(40,2,70,69,NULL,0),(41,2,71,60,70,0),(42,2,99,NULL,60,1),(43,3,20,99,32,0),(44,3,31,20,33,1),(45,3,32,20,33,1),(46,3,33,20,34,1),(47,3,34,20,35,1),(48,3,35,20,36,1),(49,3,36,20,41,0),(50,3,38,20,33,1),(51,3,41,20,45,0),(52,3,60,NULL,63,0),(53,3,62,60,64,0),(54,3,63,60,64,1),(55,3,64,60,66,1),(56,3,65,66,67,1),(57,3,66,60,67,1),(58,3,67,60,68,1),(59,3,68,67,69,1),(60,3,69,68,70,1),(61,3,70,69,NULL,0),(62,3,71,60,70,0),(63,3,99,NULL,60,1),(64,4,20,99,32,0),(65,4,31,20,33,1),(66,4,32,20,33,1),(67,4,33,20,34,1),(68,4,34,20,35,1),(69,4,35,20,36,1),(70,4,36,20,41,0),(71,4,38,20,33,1),(72,4,41,20,45,0),(73,4,60,NULL,63,0),(74,4,62,60,64,0),(75,4,63,60,64,1),(76,4,64,60,66,1),(77,4,65,66,67,1),(78,4,66,60,67,1),(79,4,67,60,68,1),(80,4,68,67,69,1),(81,4,69,68,70,1),(82,4,70,69,NULL,0),(83,4,71,60,70,0),(84,5,20,99,32,0),(85,5,31,20,33,1),(86,5,32,20,33,1),(87,5,33,20,34,1),(88,5,34,20,35,1),(89,5,35,20,36,1),(90,5,36,20,41,0),(91,5,38,20,33,1),(92,5,41,20,45,0),(93,5,60,NULL,63,0),(94,5,62,60,64,0),(95,5,63,60,64,1),(96,5,64,60,66,1),(97,5,65,66,67,1),(98,5,66,60,67,1),(99,5,67,60,68,1),(100,5,68,67,69,1),(101,5,69,68,70,1),(102,5,70,69,NULL,0),(103,5,71,60,70,0),(104,5,99,NULL,60,1),(105,6,20,99,32,1),(106,6,32,20,33,0),(107,6,60,NULL,63,0),(108,6,62,60,64,0),(109,6,63,60,64,1),(110,6,64,60,66,1),(111,6,65,66,67,1),(112,6,66,60,67,1),(113,6,67,60,68,1),(114,6,68,67,69,1),(115,6,69,68,70,1),(116,6,70,69,NULL,0),(117,6,71,60,70,0),(118,7,20,99,32,0),(119,7,31,20,33,1),(120,7,32,20,33,1),(121,7,33,20,34,1),(122,7,34,20,35,1),(123,7,35,20,36,1),(124,7,36,20,41,0),(125,7,38,20,33,1),(126,7,41,20,45,0),(127,7,60,NULL,63,0),(128,7,62,60,64,0),(129,7,63,60,64,1),(130,7,64,60,66,1),(131,7,65,66,67,1),(132,7,66,60,67,1),(133,7,67,60,68,1),(134,7,68,67,69,1),(135,7,69,68,70,1),(136,7,70,69,NULL,0),(137,7,71,60,70,0),(138,8,20,99,32,0),(139,8,31,20,33,1),(140,8,32,20,33,1),(141,8,33,20,34,1),(142,8,34,20,35,1),(143,8,35,20,36,1),(144,8,36,20,41,0),(145,8,38,20,33,1),(146,8,41,20,45,0),(147,8,60,NULL,63,0),(148,8,62,60,64,0),(149,8,63,60,64,1),(150,8,64,60,66,1),(151,8,65,66,67,1),(152,8,66,60,67,1),(153,8,67,60,68,1),(154,8,68,67,69,1),(155,8,69,68,70,1),(156,8,70,69,NULL,0),(157,8,71,60,70,0),(158,9,20,99,32,0),(159,9,31,20,33,1),(160,9,32,20,33,1),(161,9,33,20,34,1),(162,9,34,20,35,1),(163,9,35,20,36,1),(164,9,36,20,41,0),(165,9,38,20,33,1),(166,9,41,20,45,0),(167,9,60,NULL,63,0),(168,9,62,60,64,0),(169,9,63,60,64,1),(170,9,64,60,66,1),(171,9,65,66,67,1),(172,9,66,60,67,1),(173,9,67,60,68,1),(174,9,68,67,69,1),(175,9,69,68,70,1),(176,9,70,69,NULL,0),(177,9,71,60,70,0),(178,9,99,NULL,60,0),(179,10,20,99,32,0),(180,10,31,20,33,1),(181,10,32,20,33,1),(182,10,33,20,34,1),(183,10,34,20,35,1),(184,10,35,20,36,1),(185,10,36,20,41,0),(186,10,38,20,33,1),(187,10,41,20,45,0),(188,10,60,NULL,63,0),(189,10,62,60,64,0),(190,10,63,60,64,1),(191,10,64,60,66,1),(192,10,65,66,67,1),(193,10,66,60,67,1),(194,10,67,60,68,1),(195,10,68,67,69,1),(196,10,69,68,70,1),(197,10,70,69,NULL,0),(198,10,71,60,70,0),(199,10,99,NULL,60,0),(200,11,20,99,32,0),(201,11,31,20,33,1),(202,11,32,20,33,1),(203,11,33,20,34,1),(204,11,34,20,35,1),(205,11,35,20,36,1),(206,11,36,20,41,0),(207,11,38,20,33,1),(208,11,41,20,45,0),(209,11,60,NULL,63,0),(210,11,62,60,64,0),(211,11,63,60,64,1),(212,11,64,60,66,1),(213,11,65,66,67,1),(214,11,66,60,67,1),(215,11,67,60,68,1),(216,11,68,67,69,1),(217,11,69,68,70,1),(218,11,70,69,NULL,0),(219,11,71,60,70,0),(220,12,20,99,32,0),(221,12,31,20,33,1),(222,12,32,20,33,1),(223,12,33,20,34,1),(224,12,34,20,35,1),(225,12,35,20,36,1),(226,12,36,20,41,0),(227,12,38,20,33,1),(228,12,41,20,45,0),(229,12,60,NULL,63,0),(230,12,62,60,64,0),(231,12,63,60,64,1),(232,12,64,60,66,1),(233,12,65,66,67,1),(234,12,66,60,67,1),(235,12,67,60,68,1),(236,12,68,67,69,1),(237,12,69,68,70,1),(238,12,70,69,NULL,0),(239,12,71,60,70,0),(240,13,20,99,32,0),(241,13,31,20,32,1),(242,13,32,20,33,1),(243,13,33,20,34,1),(244,13,34,20,35,1),(245,13,35,20,36,1),(246,13,36,20,41,0),(247,13,38,20,33,0),(248,13,41,20,45,0),(249,13,60,NULL,63,0),(250,13,62,60,64,0),(251,13,63,60,64,1),(252,13,64,60,66,1),(253,13,65,66,67,1),(254,13,66,60,67,1),(255,13,67,60,68,1),(256,13,68,67,69,1),(257,13,69,68,70,1),(258,13,70,69,NULL,0),(259,13,71,60,70,0),(260,13,99,NULL,60,0),(261,14,20,99,32,0),(262,14,31,20,33,1),(263,14,32,20,33,1),(264,14,33,20,34,1),(265,14,34,20,35,1),(266,14,35,20,36,1),(267,14,36,20,41,0),(268,14,38,20,33,1),(269,14,41,20,45,0),(270,14,60,NULL,63,0),(271,14,62,60,64,0),(272,14,63,60,64,1),(273,14,64,60,66,1),(274,14,65,66,67,1),(275,14,66,60,67,1),(276,14,67,60,68,1),(277,14,68,67,69,1),(278,14,69,68,70,1),(279,14,70,69,NULL,0),(280,14,71,60,70,0),(281,14,99,NULL,60,0),(282,15,20,99,32,0),(283,15,31,20,33,1),(284,15,32,20,33,1),(285,15,33,20,34,1),(286,15,34,20,35,1),(287,15,35,20,36,1),(288,15,36,20,41,0),(289,15,38,20,33,1),(290,15,41,20,45,0),(291,15,60,NULL,63,0),(292,15,62,60,64,0),(293,15,63,60,64,1),(294,15,64,60,66,1),(295,15,65,66,67,1),(296,15,66,60,67,1),(297,15,67,60,68,1),(298,15,68,67,69,1),(299,15,69,68,70,1),(300,15,70,69,NULL,0),(301,15,71,60,70,0),(302,16,20,99,32,0),(303,16,31,20,33,1),(304,16,32,20,33,1),(305,16,33,20,34,1),(306,16,34,20,35,1),(307,16,35,20,36,1),(308,16,36,20,41,0),(309,16,38,20,33,1),(310,16,41,20,45,0),(311,16,60,NULL,63,0),(312,16,62,60,64,0),(313,16,63,60,64,1),(314,16,64,60,66,1),(315,16,65,66,67,1),(316,16,66,60,67,1),(317,16,67,60,68,1),(318,16,68,67,69,1),(319,16,69,68,70,1),(320,16,70,69,NULL,0),(321,16,71,60,70,0),(322,16,99,NULL,60,1),(323,17,20,99,32,0),(324,17,31,20,33,0),(325,17,32,20,33,1),(326,17,33,20,34,1),(327,17,34,20,35,1),(328,17,35,20,36,1),(329,17,36,20,41,0),(330,17,38,20,33,0),(331,17,41,20,45,0),(332,17,60,NULL,63,0),(333,17,62,60,64,0),(334,17,63,60,64,1),(335,17,64,60,66,1),(336,17,65,66,67,1),(337,17,66,60,67,1),(338,17,67,60,68,1),(339,17,68,67,69,1),(340,17,69,68,70,1),(341,17,70,69,NULL,0),(342,17,71,60,70,0),(343,18,20,99,32,0),(344,18,31,20,33,0),(345,18,32,20,33,1),(346,18,33,20,34,1),(347,18,34,20,35,1),(348,18,35,20,36,1),(349,18,36,20,41,0),(350,18,38,20,33,0),(351,18,41,20,45,0),(352,18,60,NULL,63,0),(353,18,62,60,64,0),(354,18,63,60,64,1),(355,18,64,60,66,1),(356,18,65,66,67,1),(357,18,66,60,67,1),(358,18,67,60,68,1),(359,18,68,67,69,1),(360,18,69,68,70,1),(361,18,70,69,NULL,0),(362,18,71,60,70,0),(363,19,20,99,32,0),(364,19,31,20,33,0),(365,19,32,20,33,1),(366,19,33,20,34,1),(367,19,34,20,35,1),(368,19,35,20,36,1),(369,19,36,20,41,0),(370,19,38,20,33,0),(371,19,41,20,45,0),(372,19,60,NULL,63,0),(373,19,62,60,64,0),(374,19,63,60,64,1),(375,19,64,60,66,1),(376,19,65,66,67,1),(377,19,66,60,67,1),(378,19,67,60,68,1),(379,19,68,67,69,1),(380,19,69,68,70,1),(381,19,70,69,NULL,0),(382,19,71,60,70,0),(383,19,99,NULL,60,0),(384,20,20,99,32,0),(385,20,31,20,33,1),(386,20,32,20,33,1),(387,20,33,20,34,1),(388,20,34,20,35,1),(389,20,35,20,36,1),(390,20,36,20,41,0),(391,20,38,20,33,1),(392,20,41,20,45,0),(393,20,60,NULL,63,0),(394,20,62,60,64,0),(395,20,63,60,64,1),(396,20,64,60,66,1),(397,20,65,66,67,1),(398,20,66,60,67,1),(399,20,67,60,68,1),(400,20,68,67,69,1),(401,20,69,68,70,1),(402,20,70,69,NULL,0),(403,20,71,60,70,0),(404,21,20,99,32,0),(405,21,31,20,33,1),(406,21,32,20,33,1),(407,21,33,20,34,1),(408,21,34,20,35,1),(409,21,35,20,36,1),(410,21,36,20,41,0),(411,21,38,20,33,1),(412,21,41,20,45,0),(413,21,60,NULL,63,0),(414,21,62,60,64,0),(415,21,63,60,64,1),(416,21,64,60,66,1),(417,21,65,66,67,1),(418,21,66,60,67,1),(419,21,67,60,68,1),(420,21,68,67,69,1),(421,21,69,68,70,1),(422,21,70,69,NULL,0),(423,21,71,60,70,0),(424,22,20,99,32,0),(425,22,31,20,33,0),(426,22,32,20,33,1),(427,22,33,20,34,1),(428,22,34,20,35,1),(429,22,35,20,36,1),(430,22,36,20,41,0),(431,22,38,20,33,0),(432,22,41,20,45,0),(433,22,60,NULL,63,0),(434,22,62,60,64,0),(435,22,63,60,64,1),(436,22,64,60,66,1),(437,22,65,66,67,1),(438,22,66,60,67,1),(439,22,67,60,68,1),(440,22,68,67,69,1),(441,22,69,68,70,1),(442,22,70,69,NULL,0),(443,22,71,60,70,0),(444,22,99,NULL,60,0),(445,23,20,99,32,0),(446,23,31,20,33,0),(447,23,32,20,33,1),(448,23,33,20,34,1),(449,23,34,20,35,1),(450,23,35,20,36,1),(451,23,36,35,41,0),(452,23,38,20,33,0),(453,23,41,20,45,0),(454,23,60,NULL,63,0),(455,23,62,60,64,0),(456,23,63,60,64,1),(457,23,64,60,66,1),(458,23,65,66,67,1),(459,23,66,60,67,1),(460,23,67,60,68,1),(461,23,68,67,69,1),(462,23,69,68,70,1),(463,23,70,69,NULL,0),(464,23,71,60,70,0),(465,24,20,99,32,0),(466,24,31,20,33,1),(467,24,32,20,33,1),(468,24,33,20,34,1),(469,24,34,20,35,1),(470,24,35,20,36,1),(471,24,36,20,41,0),(472,24,38,20,33,1),(473,24,41,20,45,0),(474,24,60,NULL,63,0),(475,24,62,60,64,0),(476,24,63,60,64,1),(477,24,64,60,66,1),(478,24,65,66,67,1),(479,24,66,60,67,1),(480,24,67,60,68,1),(481,24,68,67,69,1),(482,24,69,68,70,1),(483,24,70,69,NULL,0),(484,24,71,60,70,0),(485,24,99,NULL,60,0),(486,25,20,99,32,0),(487,25,31,20,33,1),(488,25,32,20,33,1),(489,25,33,20,34,1),(490,25,34,20,35,1),(491,25,35,20,36,1),(492,25,36,20,41,0),(493,25,38,20,33,1),(494,25,41,20,45,0),(495,25,60,NULL,63,0),(496,25,62,60,64,0),(497,25,63,60,64,1),(498,25,64,60,66,1),(499,25,65,66,67,1),(500,25,66,60,67,1),(501,25,67,60,68,1),(502,25,68,67,69,1),(503,25,69,68,70,1),(504,25,70,69,NULL,0),(505,25,71,60,70,0),(506,25,99,NULL,60,0),(507,26,60,NULL,63,0),(508,26,62,60,64,0),(509,26,63,60,64,1),(510,26,65,66,67,1),(511,26,66,60,67,1),(512,26,67,60,68,1),(513,26,68,67,69,1),(514,26,69,68,70,1),(515,26,70,69,NULL,0),(516,26,71,60,70,0),(517,26,99,NULL,60,0),(518,27,20,99,32,0),(519,27,31,20,33,1),(520,27,32,20,33,1),(521,27,33,20,34,1),(522,27,34,20,35,1),(523,27,35,20,36,1),(524,27,36,20,41,0),(525,27,38,20,33,1),(526,27,41,20,45,0),(527,27,60,NULL,63,0),(528,27,62,60,64,0),(529,27,63,60,64,1),(530,27,64,60,66,1),(531,27,65,66,67,1),(532,27,66,60,67,1),(533,27,67,60,68,1),(534,27,68,67,69,1),(535,27,69,68,70,1),(536,27,70,69,NULL,0),(537,27,71,60,70,0),(538,28,20,99,32,0),(539,28,31,20,33,0),(540,28,32,20,33,1),(541,28,33,20,34,1),(542,28,34,20,35,1),(543,28,35,20,36,1),(544,28,36,20,41,0),(545,28,38,20,33,0),(546,28,41,20,45,0),(547,28,60,NULL,63,0),(548,28,62,60,64,0),(549,28,63,60,64,1),(550,28,64,60,66,1),(551,28,65,66,67,1),(552,28,66,60,67,1),(553,28,67,60,68,1),(554,28,68,67,69,1),(555,28,69,68,70,1),(556,28,70,69,NULL,0),(557,28,71,60,70,0),(558,29,20,99,32,0),(559,29,31,20,33,1),(560,29,32,20,33,1),(561,29,33,20,34,1),(562,29,34,20,35,1),(563,29,35,20,36,1),(564,29,36,20,41,0),(565,29,38,20,33,1),(566,29,41,20,45,0),(567,29,60,NULL,63,0),(568,29,62,60,64,0),(569,29,63,60,64,1),(570,29,64,60,66,1),(571,29,65,66,67,1),(572,29,66,60,67,1),(573,29,67,60,68,1),(574,29,68,67,69,1),(575,29,69,68,70,1),(576,29,70,69,NULL,0),(577,29,71,60,70,0),(578,30,20,99,32,0),(579,30,31,20,33,0),(580,30,32,20,33,1),(581,30,33,20,34,1),(582,30,34,20,35,1),(583,30,35,20,36,1),(584,30,36,35,41,0),(585,30,38,20,33,0),(586,30,41,20,45,0),(587,30,60,NULL,63,0),(588,30,62,60,64,0),(589,30,63,60,64,1),(590,30,64,60,66,1),(591,30,65,66,67,1),(592,30,66,60,67,1),(593,30,67,60,68,1),(594,30,68,67,69,1),(595,30,69,68,70,1),(596,30,70,69,NULL,0),(597,30,71,60,70,0),(598,31,20,99,32,0),(599,31,31,20,33,1),(600,31,32,20,33,1),(601,31,33,20,34,1),(602,31,34,20,35,1),(603,31,35,20,36,1),(604,31,36,20,41,0),(605,31,38,20,33,1),(606,31,41,20,45,0),(607,31,45,20,NULL,0),(608,31,60,NULL,63,0),(609,31,62,60,64,0),(610,31,63,60,64,1),(611,31,64,60,66,1),(612,31,65,66,67,1),(613,31,66,60,67,1),(614,31,67,60,68,1),(615,31,68,67,69,1),(616,31,69,68,70,1),(617,31,70,69,NULL,0),(618,31,71,60,70,0),(619,31,99,NULL,60,1),(620,32,20,99,32,0),(621,32,31,20,33,1),(622,32,32,20,33,1),(623,32,33,20,34,1),(624,32,34,20,35,1),(625,32,35,20,36,1),(626,32,36,20,41,0),(627,32,38,20,33,1),(628,32,41,20,45,0),(629,32,60,NULL,63,0),(630,32,62,60,64,0),(631,32,63,60,64,1),(632,32,64,60,66,1),(633,32,65,66,67,1),(634,32,66,60,67,1),(635,32,67,60,68,1),(636,32,68,67,69,1),(637,32,69,68,70,1),(638,32,70,69,NULL,0),(639,32,71,60,70,0),(640,32,99,NULL,60,0),(641,33,20,99,32,0),(642,33,31,20,33,0),(643,33,32,20,33,1),(644,33,33,20,34,1),(645,33,34,20,35,1),(646,33,35,20,36,1),(647,33,36,20,41,0),(648,33,38,20,33,0),(649,33,41,20,45,0),(650,33,60,NULL,63,0),(651,33,62,60,64,0),(652,33,63,60,64,1),(653,33,64,60,66,1),(654,33,65,66,67,1),(655,33,66,60,67,1),(656,33,67,60,68,1),(657,33,68,67,69,1),(658,33,69,68,70,1),(659,33,70,69,NULL,0),(660,33,71,60,70,0),(661,34,20,99,32,0),(662,34,31,20,33,0),(663,34,32,20,33,1),(664,34,33,20,34,1),(665,34,34,20,35,1),(666,34,35,20,36,1),(667,34,36,20,41,0),(668,34,38,20,33,0),(669,34,41,20,45,0),(670,34,60,NULL,63,0),(671,34,62,60,64,0),(672,34,63,60,64,1),(673,34,64,60,66,1),(674,34,65,66,67,1),(675,34,66,60,67,1),(676,34,67,60,68,1),(677,34,68,67,69,1),(678,34,69,68,70,1),(679,34,70,69,NULL,0),(680,34,71,60,70,0),(681,35,20,99,32,0),(682,35,31,20,33,1),(683,35,32,20,33,1),(684,35,33,20,34,1),(685,35,34,20,35,1),(686,35,35,20,36,1),(687,35,36,20,41,0),(688,35,38,20,33,1),(689,35,41,20,45,0),(690,35,60,NULL,63,0),(691,35,62,60,64,0),(692,35,63,60,64,1),(693,35,64,60,66,1),(694,35,65,66,67,1),(695,35,66,60,67,1),(696,35,67,60,68,1),(697,35,68,67,69,1),(698,35,69,68,70,1),(699,35,70,69,NULL,0),(700,35,71,60,70,0),(701,35,99,NULL,60,0),(702,36,20,99,32,0),(703,36,31,20,33,0),(704,36,32,20,33,1),(705,36,33,20,34,1),(706,36,34,20,35,1),(707,36,35,20,36,1),(708,36,36,20,41,0),(709,36,38,20,33,0),(710,36,41,20,45,0),(711,36,60,NULL,63,0),(712,36,62,60,64,0),(713,36,63,60,64,1),(714,36,64,60,66,1),(715,36,65,66,67,1),(716,36,66,60,67,1),(717,36,67,60,68,1),(718,36,68,67,69,1),(719,36,69,68,70,1),(720,36,70,69,NULL,0),(721,36,71,60,70,0),(722,37,20,99,32,0),(723,37,31,20,33,1),(724,37,32,20,33,1),(725,37,33,20,34,1),(726,37,34,20,35,1),(727,37,35,20,36,1),(728,37,36,20,41,0),(729,37,38,20,33,1),(730,37,41,20,45,0),(731,37,60,NULL,63,0),(732,37,62,60,64,0),(733,37,63,60,64,1),(734,37,64,60,66,1),(735,37,65,66,67,1),(736,37,66,60,67,1),(737,37,67,60,68,1),(738,37,68,67,69,1),(739,37,69,68,70,1),(740,37,70,69,NULL,0),(741,37,71,60,70,0),(742,37,99,NULL,60,0),(743,38,20,99,32,0),(744,38,31,20,33,0),(745,38,32,20,33,1),(746,38,33,20,34,1),(747,38,34,20,35,1),(748,38,35,20,36,1),(749,38,36,20,41,0),(750,38,38,20,33,0),(751,38,41,20,45,0),(752,38,60,NULL,63,0),(753,38,62,60,64,0),(754,38,63,60,64,1),(755,38,64,60,66,1),(756,38,65,66,67,1),(757,38,66,60,67,1),(758,38,67,60,68,1),(759,38,68,67,69,1),(760,38,69,68,70,1),(761,38,70,69,NULL,0),(762,38,71,60,70,0),(763,39,20,99,32,0),(764,39,31,20,33,0),(765,39,32,20,33,1),(766,39,33,20,34,1),(767,39,34,20,35,1),(768,39,35,20,36,1),(769,39,36,20,41,0),(770,39,38,20,33,0),(771,39,41,20,45,0),(772,39,60,NULL,63,0),(773,39,62,60,64,0),(774,39,63,60,64,1),(775,39,64,60,66,1),(776,39,65,66,67,1),(777,39,66,60,67,1),(778,39,67,60,68,1),(779,39,68,67,69,1),(780,39,69,68,70,1),(781,39,70,69,NULL,0),(782,39,71,60,70,0),(783,39,99,NULL,60,0),(784,40,20,99,32,0),(785,40,31,20,33,1),(786,40,32,20,33,1),(787,40,33,20,34,1),(788,40,34,20,35,1),(789,40,35,20,36,1),(790,40,36,20,41,0),(791,40,38,20,33,1),(792,40,41,20,45,0),(793,40,60,NULL,63,0),(794,40,62,60,64,0),(795,40,63,60,64,1),(796,40,64,60,66,1),(797,40,65,66,67,1),(798,40,66,60,67,1),(799,40,67,60,68,1),(800,40,68,67,69,1),(801,40,69,68,70,1),(802,40,70,69,NULL,0),(803,40,71,60,70,0),(804,41,20,99,32,0),(805,41,31,20,33,1),(806,41,32,20,33,1),(807,41,33,20,34,1),(808,41,34,20,35,1),(809,41,35,20,36,1),(810,41,36,20,41,0),(811,41,38,20,33,1),(812,41,41,20,45,0),(813,41,60,NULL,63,0),(814,41,62,60,64,0),(815,41,63,60,64,1),(816,41,64,60,66,1),(817,41,65,66,67,1),(818,41,66,60,67,1),(819,41,67,60,68,1),(820,41,68,67,69,1),(821,41,69,68,70,1),(822,41,70,69,NULL,0),(823,41,71,60,70,0),(824,42,20,99,32,0),(825,42,31,20,33,1),(826,42,32,20,33,1),(827,42,33,20,34,1),(828,42,34,20,35,1),(829,42,35,20,36,1),(830,42,36,20,41,0),(831,42,38,20,33,1),(832,42,41,20,45,0),(833,42,60,NULL,63,0),(834,42,62,60,64,0),(835,42,63,60,64,1),(836,42,64,60,66,1),(837,42,65,66,67,1),(838,42,66,60,67,1),(839,42,67,60,68,1),(840,42,68,67,69,1),(841,42,69,68,70,1),(842,42,70,69,NULL,0),(843,42,71,60,70,0),(844,43,20,99,32,0),(845,43,31,20,33,0),(846,43,32,20,33,1),(847,43,33,20,34,1),(848,43,34,20,35,1),(849,43,35,20,36,1),(850,43,36,20,41,0),(851,43,38,20,33,0),(852,43,41,20,45,0),(853,43,60,NULL,63,0),(854,43,62,60,64,0),(855,43,63,60,64,1),(856,43,64,60,66,1),(857,43,65,66,67,1),(858,43,66,60,67,1),(859,43,67,60,68,1),(860,43,68,67,69,1),(861,43,69,68,70,1),(862,43,70,69,NULL,0),(863,43,71,60,70,0),(864,44,20,99,32,0),(865,44,31,20,33,1),(866,44,32,20,33,1),(867,44,33,20,34,1),(868,44,34,20,35,1),(869,44,35,20,36,1),(870,44,36,20,41,0),(871,44,38,20,33,1),(872,44,41,20,45,0),(873,44,60,NULL,63,0),(874,44,62,60,64,0),(875,44,63,60,64,1),(876,44,64,60,66,1),(877,44,65,66,67,1),(878,44,66,60,67,1),(879,44,67,60,68,1),(880,44,68,67,69,1),(881,44,69,68,70,1),(882,44,70,69,NULL,0),(883,44,71,60,70,0),(884,44,99,NULL,60,0),(885,45,20,99,32,0),(886,45,31,20,33,0),(887,45,32,20,33,1),(888,45,33,20,34,1),(889,45,34,20,35,1),(890,45,35,20,36,1),(891,45,36,20,41,0),(892,45,38,20,33,0),(893,45,41,20,45,0),(894,45,60,NULL,63,0),(895,45,62,60,64,0),(896,45,63,60,64,1),(897,45,64,60,66,1),(898,45,65,66,67,1),(899,45,66,60,67,1),(900,45,67,60,68,1),(901,45,68,67,69,1),(902,45,69,68,70,1),(903,45,70,69,NULL,0),(904,45,99,NULL,60,0),(905,46,20,99,32,0),(906,46,31,20,33,0),(907,46,32,20,33,1),(908,46,33,20,34,1),(909,46,34,20,35,1),(910,46,35,20,36,1),(911,46,36,20,41,0),(912,46,38,20,33,0),(913,46,41,20,45,0),(914,46,60,NULL,63,0),(915,46,62,60,64,0),(916,46,63,60,64,1),(917,46,64,60,66,1),(918,46,65,66,67,1),(919,46,66,60,67,1),(920,46,67,60,68,1),(921,46,68,67,69,1),(922,46,69,68,70,1),(923,46,70,69,NULL,0),(924,46,71,60,70,0),(925,47,20,99,32,0),(926,47,31,20,33,0),(927,47,32,20,33,1),(928,47,33,20,34,1),(929,47,34,20,35,1),(930,47,35,20,36,1),(931,47,36,35,41,0),(932,47,38,20,33,0),(933,47,41,20,45,0),(934,47,60,NULL,63,0),(935,47,62,60,64,0),(936,47,63,60,64,1),(937,47,64,60,66,1),(938,47,65,66,67,1),(939,47,66,60,67,1),(940,47,67,60,68,1),(941,47,68,67,69,1),(942,47,69,68,70,1),(943,47,70,69,NULL,0),(944,47,71,60,70,0),(945,48,20,99,32,0),(946,48,31,20,33,1),(947,48,32,20,33,1),(948,48,33,20,34,1),(949,48,34,20,35,1),(950,48,35,20,36,1),(951,48,36,20,41,0),(952,48,38,20,33,1),(953,48,41,20,45,0),(954,48,60,NULL,63,0),(955,48,62,60,64,0),(956,48,63,60,64,1),(957,48,64,60,66,1),(958,48,65,66,67,1),(959,48,66,60,67,1),(960,48,67,60,68,1),(961,48,68,67,69,1),(962,48,69,68,70,1),(963,48,70,69,NULL,0),(964,48,71,60,70,0),(965,49,20,99,32,0),(966,49,31,20,33,0),(967,49,32,20,33,1),(968,49,33,20,34,1),(969,49,34,20,35,1),(970,49,35,20,36,1),(971,49,36,35,41,0),(972,49,38,20,33,0),(973,49,41,20,45,0),(974,49,60,NULL,63,0),(975,49,62,60,64,0),(976,49,63,60,64,1),(977,49,64,60,66,1),(978,49,65,66,67,1),(979,49,66,60,67,1),(980,49,67,60,68,1),(981,49,68,67,69,1),(982,49,69,68,70,1),(983,49,70,69,NULL,0),(984,49,71,60,70,0),(985,50,20,99,32,0),(986,50,31,20,33,0),(987,50,32,20,33,1),(988,50,33,20,34,1),(989,50,34,20,35,1),(990,50,35,20,36,1),(991,50,36,20,41,0),(992,50,38,20,33,0),(993,50,41,20,45,0),(994,50,60,NULL,63,0),(995,50,62,60,64,0),(996,50,63,60,64,1),(997,50,64,60,66,1),(998,50,65,66,67,1),(999,50,66,60,67,1),(1000,50,67,60,68,1),(1001,50,68,67,69,1),(1002,50,69,68,70,1),(1003,50,70,69,NULL,0),(1004,50,71,60,70,0),(1005,51,20,99,32,0),(1006,51,31,20,33,0),(1007,51,32,20,33,1),(1008,51,33,20,34,1),(1009,51,34,20,35,1),(1010,51,35,20,36,1),(1011,51,36,20,41,0),(1012,51,38,20,33,0),(1013,51,41,20,45,0),(1014,51,60,NULL,63,0),(1015,51,62,60,64,0),(1016,51,63,60,64,1),(1017,51,64,60,66,1),(1018,51,65,66,67,1),(1019,51,66,60,67,1),(1020,51,67,60,68,1),(1021,51,68,67,69,1),(1022,51,69,68,70,1),(1023,51,70,69,NULL,0),(1024,51,71,60,70,0),(1025,52,60,NULL,63,0),(1026,52,62,60,64,0),(1027,52,63,60,64,1),(1028,52,64,60,66,1),(1029,52,65,66,67,1),(1030,52,66,60,67,1),(1031,52,67,60,68,1),(1032,52,68,67,69,1),(1033,52,69,68,70,1),(1034,52,70,69,NULL,0),(1035,52,71,60,70,0),(1036,53,20,99,32,0),(1037,53,31,20,33,0),(1038,53,32,20,33,1),(1039,53,33,20,34,1),(1040,53,34,20,35,1),(1041,53,35,20,36,1),(1042,53,36,20,41,0),(1043,53,38,20,33,0),(1044,53,41,20,45,0),(1045,53,60,NULL,63,0),(1046,53,62,60,64,0),(1047,53,63,60,64,1),(1048,53,64,60,66,1),(1049,53,65,66,67,1),(1050,53,66,60,67,1),(1051,53,67,60,68,1),(1052,53,68,67,69,1),(1053,53,69,68,70,1),(1054,53,70,69,NULL,0),(1055,53,71,60,70,0),(1056,54,20,99,32,0),(1057,54,31,20,33,0),(1058,54,32,20,33,1),(1059,54,33,99,34,1),(1060,54,34,20,35,1),(1061,54,35,20,36,1),(1062,54,36,20,41,0),(1063,54,38,99,33,0),(1064,54,41,20,45,0),(1065,54,60,NULL,63,0),(1066,54,62,60,64,0),(1067,54,63,60,64,1),(1068,54,64,99,67,1),(1069,54,65,66,67,1),(1070,54,66,60,67,1),(1071,54,67,99,68,1),(1072,54,68,67,69,1),(1073,54,69,68,70,1),(1074,54,70,69,NULL,0),(1075,54,71,60,70,0),(1076,55,60,NULL,63,0),(1077,55,62,60,64,0),(1078,55,63,60,64,1),(1079,55,64,60,66,1),(1080,55,65,66,67,1),(1081,55,66,60,67,1),(1082,55,67,60,68,1),(1083,55,68,67,69,1),(1084,55,69,68,70,1),(1085,55,70,69,NULL,0),(1086,55,71,60,70,0),(1087,56,50,NULL,55,0),(1088,56,55,50,60,0),(1089,56,60,50,63,0),(1090,56,62,50,64,0),(1091,56,63,60,64,1),(1092,56,64,60,66,1),(1093,56,65,66,67,1),(1094,56,66,60,67,1),(1095,56,67,60,68,1),(1096,56,68,67,69,1),(1097,56,69,68,70,1),(1098,56,70,69,NULL,0),(1099,56,71,60,70,0),(1100,56,99,NULL,60,0),(1101,57,20,99,32,0),(1102,57,31,20,33,0),(1103,57,32,20,33,1),(1104,57,33,20,34,1),(1105,57,34,20,35,1),(1106,57,35,20,36,1),(1107,57,36,20,41,0),(1108,57,38,20,33,0),(1109,57,41,20,45,0),(1110,57,50,NULL,55,0),(1111,57,55,50,60,0),(1112,57,60,NULL,63,0),(1113,57,62,60,64,0),(1114,57,63,60,64,1),(1115,57,64,60,66,1),(1116,57,65,66,67,1),(1117,57,66,60,67,1),(1118,57,67,60,68,1),(1119,57,68,67,69,1),(1120,57,69,68,70,1),(1121,57,70,69,NULL,0),(1122,57,71,60,70,0),(1123,57,99,NULL,60,0);
/*!40000 ALTER TABLE `ruta_transicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `folio` varchar(30) NOT NULL,
  `tipo_solicitud` varchar(50) NOT NULL,
  `tipo_flujo` varchar(20) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `monto` decimal(18,2) DEFAULT NULL,
  `solicitante_username` varchar(120) NOT NULL,
  `ruta_id` bigint NOT NULL,
  `situacion_actual_codigo` int NOT NULL,
  `process_definition_key` varchar(120) DEFAULT NULL,
  `process_instance_id` varchar(120) DEFAULT NULL,
  `referencia_externa` varchar(120) DEFAULT NULL,
  `activa` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `folio` (`folio`),
  KEY `fk_sol_ruta` (`ruta_id`),
  KEY `idx_solicitud_folio` (`folio`),
  KEY `idx_solicitud_situacion` (`situacion_actual_codigo`),
  CONSTRAINT `fk_sol_ruta` FOREIGN KEY (`ruta_id`) REFERENCES `cat_ruta` (`id`),
  CONSTRAINT `fk_sol_sit_actual` FOREIGN KEY (`situacion_actual_codigo`) REFERENCES `cat_situacion` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (2,'CMP-20260909-00001','ANTICIPO','COMPROBACIONES','prueba en dos ',6000.00,'admin.mock',1,32,'ruta_2328','e1d138af-ac67-11f1-9c0a-0a87a46785dc','prueba',1,'2026-09-09 10:02:40','2026-09-09 10:37:59');
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_historial`
--

DROP TABLE IF EXISTS `solicitud_historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_historial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `solicitud_id` bigint NOT NULL,
  `situacion_anterior_codigo` int DEFAULT NULL,
  `situacion_nueva_codigo` int NOT NULL,
  `accion` varchar(30) NOT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `usuario_username` varchar(120) DEFAULT NULL,
  `fecha_evento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_hist_sit_anterior` (`situacion_anterior_codigo`),
  KEY `fk_hist_sit_nueva` (`situacion_nueva_codigo`),
  KEY `idx_hist_solicitud` (`solicitud_id`),
  CONSTRAINT `fk_hist_sit_anterior` FOREIGN KEY (`situacion_anterior_codigo`) REFERENCES `cat_situacion` (`codigo`),
  CONSTRAINT `fk_hist_sit_nueva` FOREIGN KEY (`situacion_nueva_codigo`) REFERENCES `cat_situacion` (`codigo`),
  CONSTRAINT `fk_hist_solicitud` FOREIGN KEY (`solicitud_id`) REFERENCES `solicitud` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_historial`
--

LOCK TABLES `solicitud_historial` WRITE;
/*!40000 ALTER TABLE `solicitud_historial` DISABLE KEYS */;
INSERT INTO `solicitud_historial` VALUES (2,2,NULL,20,'CREADA','Solicitud creada','admin.mock','2026-09-09 10:02:40'),(3,2,20,32,'AVANZADA',NULL,'admin.mock','2026-09-09 10:37:59');
/*!40000 ALTER TABLE `solicitud_historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sistema_aprobaciones'
--

--
-- Dumping routines for database 'sistema_aprobaciones'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-01 12:00:32
