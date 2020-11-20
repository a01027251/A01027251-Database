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
-- Table structure for table `libros_tags`
--

DROP TABLE IF EXISTS `libros_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros_tags` (
  `id_libro` int NOT NULL,
  `id_tag` int NOT NULL,
  KEY `fk_id_libro_idx` (`id_libro`),
  KEY `fk_id_tag_idx` (`id_tag`),
  CONSTRAINT `fk2_id_libro` FOREIGN KEY (`id_libro`) REFERENCES `Libros` (`id_libro`),
  CONSTRAINT `fk_id_tag` FOREIGN KEY (`id_tag`) REFERENCES `Tags` (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_tags`
--

LOCK TABLES `libros_tags` WRITE;
/*!40000 ALTER TABLE `libros_tags` DISABLE KEYS */;
INSERT INTO `libros_tags` VALUES (1,7),(2,4),(3,2),(4,10),(5,1),(6,2),(7,1),(8,3),(9,4),(10,6),(11,6),(12,1),(13,8),(14,8),(15,7),(16,3),(17,5),(18,7),(19,7),(20,10),(21,5),(22,10),(23,4),(24,2),(25,2),(26,10),(27,8),(28,8),(29,6),(30,7),(31,1),(32,5),(33,2),(34,2),(35,3),(36,10),(37,8),(38,3),(39,1),(40,3),(41,6),(42,7),(43,5),(44,10),(45,3),(46,10),(47,8),(48,10),(49,1),(50,5),(51,10),(52,9),(53,6),(54,6),(55,10),(56,9),(57,6),(58,3),(59,5),(60,7),(61,1),(62,4),(63,8),(64,7),(65,9),(66,6),(67,6),(68,4),(69,7),(70,4),(71,5),(72,4),(73,1),(74,6),(75,1),(76,3),(77,6),(78,8),(79,9),(80,7),(81,2),(82,5),(83,1),(84,8),(85,7),(86,2),(87,10),(88,4),(89,2),(90,2),(91,6),(92,2),(93,6),(94,1),(95,4),(96,8),(97,7),(98,6),(99,6),(100,7);
/*!40000 ALTER TABLE `libros_tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 12:15:43
