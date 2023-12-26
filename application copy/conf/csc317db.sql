-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: csc317db
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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `fk_authorId` int NOT NULL,
  `fk_postId` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `commentauthor_idx` (`fk_authorId`),
  KEY `commentpost_idx` (`fk_postId`),
  CONSTRAINT `commentauthor` FOREIGN KEY (`fk_authorId`) REFERENCES `users` (`id`),
  CONSTRAINT `commentpost` FOREIGN KEY (`fk_postId`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(4096) NOT NULL,
  `thumbnail` varchar(4096) NOT NULL,
  `fk_authorId` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `postauthor_idx` (`fk_authorId`),
  CONSTRAINT `postauthor` FOREIGN KEY (`fk_authorId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user3','user3@gmail.com','123','2022-12-05 16:36:14'),(2,'user4','user4@yahoo.com','123','2022-12-05 16:45:16'),(3,'user5','user4@gmail.com','123','2022-12-06 16:39:31'),(4,'user6','user6@gmail.com','$2b$04$x5lnOG246Cur94UvB/wtUut6TWO4pGOye/iNShADQ4HN98fZaBWUS','2022-12-06 16:51:26'),(5,'user7','user7@email.com','$2b$04$UtTYzJG4OZ/H2Wk6YQv/S.j3BEbW2PL3FKos/MMFYq8RvP9.5mAn2','2022-12-06 16:52:45'),(6,'user8','user8@email.com','$2b$04$AmCSebwEyg2ur9ncvZAk4eQ3o73l6HITuHoehwvv/KxbPQJ2NZRb2','2022-12-07 12:16:26'),(7,'user9','user9@gmail.com','$2b$04$mIc8kQLb3fu9wtYSaToKuOwlvXCbfOlbRWy0RguChsyiMCWqpsbXC','2022-12-08 14:48:38'),(8,'user10','user10@email.com','$2b$04$gudXrM37B80qESxi0brgVedd46Pdi6xRlZPDDvzMg2x/ECcUcxzsO','2022-12-08 14:50:27'),(9,'test1','test1@email.com','$2b$04$P3qvsA9kOlzgCJ2sh.cv5.sUYWbn1LPg00QUGNbNlmm0SF2Maq8HG','2022-12-08 14:53:17'),(10,'test2','test2@email.com','$2b$04$0wd.P87zc6xKvcBNODQ6A.OYw087Mmbie8ORWYH.U5XdFj0aCqWe2','2022-12-08 14:55:55'),(11,'test3','test3@email.com','$2b$04$LZ.6JIMahjmUEcBHKnAjyOT3OUpqVOziaCLBThql7VSzSji1lHVRi','2022-12-08 14:57:15'),(12,'test5','test5@email.com','$2b$04$cnPxXW6Nz5PYJqwYYP8N6e2s8JJqvxDTVKp8zwuBiYcmSLmtvNPdu','2022-12-08 15:16:42'),(13,'test6','test6@email.com','$2b$04$vk.CnzEUqJHU6.qhuG3FN.LB.zx41ceNVdP4KN3IdlxEUVG7XaWBK','2022-12-08 15:19:01'),(14,'test7','test7@email.com','$2b$04$BFaxJnb8hkTZOWZtsuTWF.B1Ih6cWlEz5Eek9BgkNesJ2mfruUl16','2022-12-08 15:20:49'),(15,'test8','test8@email.com','$2b$04$8i1OtYwn0lyvczz3GHKBzuy5O7kgk72Jeg.pPt/ud6eipGKHZ2ZPi','2022-12-08 15:22:45'),(16,'test9','test9@email.com','$2b$04$V3bJDYyYQwuCVR9l/O.zJOCa.nCQW1qdxOkKEN1l4UEUofKm5/dqy','2022-12-08 15:26:22'),(17,'test10','test10@email.com','$2b$04$QUjBuCGCVCoRfHskb7PT6.C.R3KyCwtDJIZw3pZAW2r4PpohjX2de','2022-12-08 15:30:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-09 17:04:55
