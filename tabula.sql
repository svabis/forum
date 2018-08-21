-- MySQL dump 10.15  Distrib 10.0.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: forum
-- ------------------------------------------------------
-- Server version	10.0.34-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$1GAcFKnVJNAA$m6pCAouTw0DO9PnO1NEGptfIERwsRaXz1shlwjFjZsU=','2018-08-18 09:35:44.000000',1,'svabis','','','fizmats@inbox.lv',1,1,'2017-02-21 15:23:21.000000'),(2,'pbkdf2_sha256$20000$F42jm8rUuEM5$zJc2aqie08ew1BpkjuiW8QI7l6mKaLBq4lZUUeS+jSA=','2018-08-16 19:34:35.738251',1,'janis','','','sga@dexed.eu',1,1,'2017-02-21 16:50:41.000000'),(4,'pbkdf2_sha256$20000$FJbBlBI2hwK9$0ocwtLZuqclcGxq1AdIcXtEVmcBEXdpFFf5S/5PRcEI=','2018-07-11 05:41:24.981068',0,'opis','','','',0,1,'2017-03-04 21:35:53.077377'),(5,'pbkdf2_sha256$20000$J4llunE4bKox$6P0UTmBZf0Z1YkeiqRt36EcueF3KZwcTYVMZsWiqAzo=','2017-03-05 13:37:05.957230',0,'gunars','','','',0,1,'2017-03-04 21:38:18.422883'),(6,'pbkdf2_sha256$20000$9GncEfePuNh8$s1GqobyW6TTwDdbyxrjQVdzXzh/PM8sWOwkVDxoCX1s=','2017-04-15 08:48:10.288776',0,'raitis','','','',0,1,'2017-03-06 18:45:28.000000'),(30,'pbkdf2_sha256$20000$jAMfOk6ME1nB$newL6RuUFnA9JW6AaFu84OodV4+7VLFkhWMKNQY38fc=','2017-07-25 18:57:59.210846',0,'kuiliskur@gmail.com','','','',0,1,'2017-07-17 20:34:14.000000'),(31,'pbkdf2_sha256$20000$0uXX1HkxrDKV$PwsHBaID6rLkZJzkmglWPCvIG6H4YRdypHgwBxl3qYI=','2018-03-21 17:13:58.795027',0,'demo','','','',0,1,'2017-08-20 09:47:44.000000'),(32,'pbkdf2_sha256$20000$bnPspOC1sw8W$F83eNDqpwKLMW62gEmJhy3Xaiy2g/EiCF9TjR0p0KIg=','2018-02-08 11:22:42.054373',0,'kuvaldalv0011@gmail.com','','','',0,1,'2018-02-07 12:11:34.873626'),(33,'pbkdf2_sha256$20000$y5dX2p294KS0$0OELoce1Jv3BGqSQgRBxZ8AWZT6iLx7j0OkaVIZj1TM=',NULL,0,'kuvaldalv0012@gmail.com','','','',0,1,'2018-03-20 18:36:51.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-18 12:36:40
