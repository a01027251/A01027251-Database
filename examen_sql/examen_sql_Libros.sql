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
-- Table structure for table `Libros`
--

DROP TABLE IF EXISTS `Libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Libros` (
  `id_libro` int NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Libros`
--

LOCK TABLES `Libros` WRITE;
/*!40000 ALTER TABLE `Libros` DISABLE KEYS */;
INSERT INTO `Libros` VALUES (1,'enffzjkt','1991-03-01',89.9),(2,'ufpoxqfz','1972-04-25',56.65),(3,'lypeodxc','1950-09-22',48.55),(4,'elaqdejh','1962-08-18',14.56),(5,'rivqarpl','1961-10-25',16.01),(6,'zqxlunss','1979-01-28',84.73),(7,'cuedavxh','2011-09-20',72.86),(8,'yiegqfyn','2015-05-20',84.5),(9,'xduobppt','1996-11-14',82.86),(10,'waqqvftj','1959-09-20',35.89),(11,'hmixwkhk','2011-04-17',4.29),(12,'gvlsxnte','1973-05-22',15.85),(13,'tzdyodvg','1987-08-07',32.36),(14,'hwauomtt','1998-07-24',94.72),(15,'najrvxvk','1976-10-08',50.5),(16,'xoimpkkd','1988-10-23',5.21),(17,'zljeiyhg','1985-12-07',45.39),(18,'fatoajue','2019-06-11',35.29),(19,'phvvesgq','1986-09-09',18.78),(20,'skavkpnj','2017-05-10',74.06),(21,'ravcrzpf','2011-07-09',34.37),(22,'jvyldixi','1985-02-04',28.22),(23,'xbrgktxy','1969-08-30',47.48),(24,'yvzsxuvw','1950-07-02',43.18),(25,'cwbuqjfw','1978-09-27',75.75),(26,'sdsvubgi','1951-05-05',7.83),(27,'awupdjyo','1977-06-09',37.68),(28,'mjjfaknw','1993-04-28',10.06),(29,'hcopltlz','1995-07-10',89.26),(30,'mmpnvzgo','2008-04-25',97.66),(31,'oklozcjk','2012-04-12',80.65),(32,'voemptne','2015-02-24',9.76),(33,'azdaqbsx','1968-09-04',40.43),(34,'tkfsheyo','2016-07-02',72.51),(35,'rmlmycog','2002-04-13',88.69),(36,'abetzfbm','2017-09-15',6.21),(37,'kboxkwsg','1964-06-01',69.75),(38,'zpglksrg','2004-08-14',14.44),(39,'ievuoblt','1977-01-10',48.41),(40,'ptynhqhl','1970-05-16',98.59),(41,'lfofthpw','2014-09-24',43.43),(42,'wwblxhvx','1974-09-26',97.83),(43,'jgrhmdbr','1952-11-08',86.83),(44,'hjgivypv','2000-01-12',45.52),(45,'irxjdnuc','1963-03-18',79.19),(46,'yxffhrmt','1996-08-13',63.78),(47,'xnuukfbe','1994-07-30',85.76),(48,'xhwmcttl','1967-06-28',63.65),(49,'jqcrrama','1965-12-29',39.92),(50,'dvpxvtbt','2008-02-16',5.07),(51,'mkmbxbpc','1996-08-25',8.32),(52,'jgnkspth','1996-06-21',44.64),(53,'wqhdrixi','1974-01-29',81.94),(54,'ylvjzkwo','1995-04-28',99.18),(55,'osblqcwg','1979-08-12',32.13),(56,'ncaeyuju','1955-11-24',91.13),(57,'iswavruq','2004-05-07',25.63),(58,'syzsyxhq','1952-08-30',34.86),(59,'dnzvjbhw','1956-06-11',73.37),(60,'naxweysb','1992-10-23',14.77),(61,'gliufwyp','1976-02-29',56.98),(62,'gqwtsfxv','1980-11-27',69.53),(63,'ocwfnsos','1971-05-05',73.51),(64,'golsdoaw','1984-03-23',55.89),(65,'dofxoaoi','1970-08-29',29.74),(66,'ufpkawvb','1989-09-28',51.21),(67,'jcktnief','1983-09-02',67.59),(68,'tqpblkmj','1984-06-29',22.86),(69,'pibbhzrj','1997-01-04',2.47),(70,'lhyypmsa','1978-02-06',3.7),(71,'legajkav','1955-02-11',39.73),(72,'lrbgvotw','1978-03-21',83.94),(73,'giumqumn','1950-05-16',4.93),(74,'kegbfiry','1997-04-18',83.38),(75,'exdgseaa','2019-09-29',83.41),(76,'unwvrqvm','1962-01-10',70.23),(77,'vxjxyxjl','2009-11-23',67.94),(78,'ahboxirn','1963-12-04',27.18),(79,'jcdzznmk','1980-10-26',26.55),(80,'sbmdoiar','1965-10-24',40.52),(81,'oazahgkb','1994-04-20',85.87),(82,'hphrjnmj','1952-11-06',15.06),(83,'gbsoayxk','1967-04-13',30.99),(84,'qvbjhgwk','2019-12-11',63.83),(85,'klkojpzt','1990-02-25',96.11),(86,'nyfttwpa','1963-05-28',32.18),(87,'uchwwzxi','1989-10-21',7.69),(88,'rmcmirux','2016-08-16',16.51),(89,'pwpbhlwh','1985-05-03',30.66),(90,'ybhvmfbp','2010-05-20',14.48),(91,'tiubbxob','1995-06-26',98.43),(92,'mcbvqtrq','1955-08-30',38.01),(93,'vhwdalcg','2015-10-11',94.18),(94,'djcgsies','2011-05-08',42.81),(95,'ikwsrfzi','2004-08-27',77.22),(96,'ommxjfca','2007-03-25',41.38),(97,'igeqegzw','1961-03-01',47.41),(98,'gdxoafxs','2003-12-29',93.75),(99,'syafyicx','1992-11-21',70.88),(100,'htuiriqv','1955-03-03',93.98);
/*!40000 ALTER TABLE `Libros` ENABLE KEYS */;
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
