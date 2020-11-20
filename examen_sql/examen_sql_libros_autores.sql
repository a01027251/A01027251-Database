-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: examen_sql
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `libros_autores`
--

DROP TABLE IF EXISTS `libros_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros_autores` (
  `id_libro` int NOT NULL,
  `id_autor` int NOT NULL,
  KEY `fk_id_autor_idx` (`id_autor`),
  KEY `fk_id_libro` (`id_libro`),
  CONSTRAINT `fk_id_autor` FOREIGN KEY (`id_autor`) REFERENCES `Autores` (`id_autor`),
  CONSTRAINT `fk_id_libro` FOREIGN KEY (`id_libro`) REFERENCES `Libros` (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_autores`
--

LOCK TABLES `libros_autores` WRITE;
/*!40000 ALTER TABLE `libros_autores` DISABLE KEYS */;
INSERT INTO `libros_autores` VALUES (1,9),(2,5),(3,7),(4,1),(5,6),(6,1),(7,3),(8,1),(9,2),(10,7),(11,6),(12,1),(13,5),(14,1),(15,8),(16,2),(17,10),(18,5),(19,9),(20,8),(21,3),(22,10),(23,6),(24,6),(25,3),(26,8),(27,2),(28,4),(29,7),(30,9),(31,9),(32,1),(33,4),(34,4),(35,4),(36,3),(37,10),(38,10),(39,3),(40,4),(41,1),(42,6),(43,10),(44,6),(45,4),(46,9),(47,8),(48,1),(49,6),(50,1),(51,4),(52,9),(53,6),(54,5),(55,6),(56,2),(57,6),(58,6),(59,8),(60,7),(61,10),(62,6),(63,7),(64,2),(65,8),(66,9),(67,4),(68,8),(69,4),(70,3),(71,8),(72,9),(73,5),(74,9),(75,7),(76,5),(77,6),(78,6),(79,7),(80,6),(81,1),(82,2),(83,1),(84,2),(85,8),(86,4),(87,3),(88,7),(89,1),(90,4),(91,5),(92,3),(93,6),(94,6),(95,1),(96,1),(97,1),(98,5),(99,3),(100,10);
/*!40000 ALTER TABLE `libros_autores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 12:15:42
