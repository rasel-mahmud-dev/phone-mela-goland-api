-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: app3_database
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test_user','test_user@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735204/phone_mela/avatar/my-avatar-300x300.jpg','2022-03-19 00:24:49','user','test_user',NULL),(2,'rasel_mahmud_dev','rasel.mahmud.dev@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','admin','rasel.mahmud.dev',NULL),(3,'Bret','Leanne_Graham@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','Leanne Graham',NULL),(4,'Dennis','Dennis_Schulis@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','Mrs. Dennis Schulis',NULL),(5,'Kurtis ','Kurtis@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','Kurtis ',NULL),(6,'Nicholas ','Nicholas@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','Nicholas',NULL),(7,'Glenna ','Glenna@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','Glenna',NULL),(8,'Clementina ','Clementina@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','Clementina',NULL),(9,'test_user9','test_user9@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user9',NULL),(10,'test_user10','test_user10@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user10',NULL),(11,'test_user11','test_user11@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user11',NULL),(12,'test_user12','test_user12@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user12',NULL),(13,'test_user13','test_user13@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user13',NULL),(14,'test_user14','test_user14@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user14',NULL),(15,'test_user15','test_user15@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user15',NULL),(16,'test_user16','test_user16@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user16',NULL),(17,'test_user17','test_user17@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user17',NULL),(18,'test_user18','test_user18@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user18',NULL),(19,'test_user19','test_user19@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user19',NULL),(20,'test_user20','test_user20@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user20',NULL),(21,'test_user21','test_user21@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user21',NULL),(22,'test_user23','test_user22@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user22',NULL),(23,'test_user23','test_user23@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user23',NULL),(24,'test_user24','test_user24@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user24',NULL),(25,'test_user25','test_user25@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user25',NULL),(26,'test_user26','test_user26@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user26',NULL),(27,'test_user27','test_user27@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user27',NULL),(28,'test_user28','test_user28@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user28',NULL),(29,'test_user29','test_user29@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user29',NULL),(30,'test_user30','test_user30@gmail.com','$2a$08$Tj9kveUf9GzZCn4l70wqdeh8Uq.FK2T6sYXcGGvtqAkFUWPdU3DZO','https://res.cloudinary.com/rasel/image/upload/v1650735179/phone_mela/avatar/42914006_20200412_1312170_1608903911.jpg','2022-03-19 00:24:49','user','test_user30',NULL);
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

-- Dump completed on 2022-05-06 20:39:30
