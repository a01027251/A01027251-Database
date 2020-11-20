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
-- Temporary view structure for view `titulo_tag_precio`
--

DROP TABLE IF EXISTS `titulo_tag_precio`;
/*!50001 DROP VIEW IF EXISTS `titulo_tag_precio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `titulo_tag_precio` AS SELECT 
 1 AS `Titulo del libro`,
 1 AS `Tag`,
 1 AS `Precio $`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `titulo_autor_tag`
--

DROP TABLE IF EXISTS `titulo_autor_tag`;
/*!50001 DROP VIEW IF EXISTS `titulo_autor_tag`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `titulo_autor_tag` AS SELECT 
 1 AS `Titulo del libro`,
 1 AS `Nombre del autor`,
 1 AS `Apellido del autor`,
 1 AS `Tag del libro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `titulo_autor_fecha`
--

DROP TABLE IF EXISTS `titulo_autor_fecha`;
/*!50001 DROP VIEW IF EXISTS `titulo_autor_fecha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `titulo_autor_fecha` AS SELECT 
 1 AS `Titulo del libro`,
 1 AS `Nombre del autor`,
 1 AS `Apellido del autor`,
 1 AS `Fecha de publicacion del libro`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `titulo_tag_precio`
--

/*!50001 DROP VIEW IF EXISTS `titulo_tag_precio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `titulo_tag_precio` AS select `libros`.`titulo` AS `Titulo del libro`,`tags`.`tag` AS `Tag`,`libros`.`precio` AS `Precio $` from ((`libros` join `libros_tags` on((`libros`.`id_libro` = `libros_tags`.`id_libro`))) join `tags` on((`tags`.`id_tag` = `libros_tags`.`id_tag`))) order by `libros`.`precio` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `titulo_autor_tag`
--

/*!50001 DROP VIEW IF EXISTS `titulo_autor_tag`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `titulo_autor_tag` AS select `libros`.`titulo` AS `Titulo del libro`,`autores`.`nombre` AS `Nombre del autor`,`autores`.`apellido` AS `Apellido del autor`,`tags`.`tag` AS `Tag del libro` from ((((`libros` join `libros_autores` on((`libros`.`id_libro` = `libros_autores`.`id_libro`))) join `autores` on((`autores`.`id_autor` = `libros_autores`.`id_autor`))) join `libros_tags` on((`libros`.`id_libro` = `libros_tags`.`id_libro`))) join `tags` on((`tags`.`id_tag` = `libros_tags`.`id_tag`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `titulo_autor_fecha`
--

/*!50001 DROP VIEW IF EXISTS `titulo_autor_fecha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `titulo_autor_fecha` AS select `libros`.`titulo` AS `Titulo del libro`,`autores`.`nombre` AS `Nombre del autor`,`autores`.`apellido` AS `Apellido del autor`,`libros`.`fecha_publicacion` AS `Fecha de publicacion del libro` from ((`libros` join `libros_autores` on((`libros`.`id_libro` = `libros_autores`.`id_libro`))) join `autores` on((`autores`.`id_autor` = `libros_autores`.`id_autor`))) order by `libros`.`fecha_publicacion` */;
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

-- Dump completed on 2020-11-20 12:15:43
