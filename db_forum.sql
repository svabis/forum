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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(22,'Can add ieraksts',8,'add_ieraksts'),(23,'Can change ieraksts',8,'change_ieraksts'),(24,'Can delete ieraksts',8,'delete_ieraksts'),(25,'Can add super tema',9,'add_supertema'),(26,'Can change super tema',9,'change_supertema'),(27,'Can delete super tema',9,'delete_supertema'),(28,'Can add tema',10,'add_tema'),(29,'Can change tema',10,'change_tema'),(30,'Can delete tema',10,'delete_tema');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

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
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$uj1zFvZSURge$gzfJ9f23x7G+28kogUtyCZydTQlBjQzA6xLbIhCQjDs=','2018-08-17 01:21:06.000000',1,'svabis','','','',1,1,'2018-08-16 09:16:03.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-08-16 11:44:52.000000','1','Ieraksts object',1,'',8,1),(2,'2018-08-16 11:45:10.000000','2','Ieraksts object',1,'',8,1),(3,'2018-08-16 11:45:30.000000','3','Ieraksts object',1,'',8,1),(4,'2018-08-16 12:24:02.000000','2','Ieraksts object',2,'Changed image.',8,1),(7,'2018-08-16 17:53:18.000000','10','Ieraksts object',2,'Changed image.',8,1),(9,'2018-08-16 21:12:39.000000','31','Ieraksts object',3,'',8,1),(10,'2018-08-16 21:12:39.000000','30','Ieraksts object',3,'',8,1),(11,'2018-08-16 21:12:39.000000','29','Ieraksts object',3,'',8,1),(12,'2018-08-16 21:12:39.000000','28','Ieraksts object',3,'',8,1),(13,'2018-08-16 21:12:39.000000','27','Ieraksts object',3,'',8,1),(14,'2018-08-16 21:12:39.000000','26','Ieraksts object',3,'',8,1),(15,'2018-08-16 21:12:39.000000','25','Ieraksts object',3,'',8,1),(16,'2018-08-16 21:13:03.000000','24','Ieraksts object',3,'',8,1),(17,'2018-08-16 21:13:03.000000','23','Ieraksts object',3,'',8,1),(18,'2018-08-17 02:10:53.000000','43','Ieraksts object',3,'',8,1),(19,'2018-08-17 02:10:53.000000','42','Ieraksts object',3,'',8,1),(20,'2018-08-17 02:10:53.000000','41','Ieraksts object',3,'',8,1),(21,'2018-08-17 02:10:53.000000','40','Ieraksts object',3,'',8,1),(22,'2018-08-17 02:10:53.000000','39','Ieraksts object',3,'',8,1),(23,'2018-08-17 02:10:53.000000','38','Ieraksts object',3,'',8,1),(24,'2018-08-17 02:10:53.000000','37','Ieraksts object',3,'',8,1),(25,'2018-08-17 02:10:53.000000','36','Ieraksts object',3,'',8,1),(26,'2018-08-17 02:10:53.000000','35','Ieraksts object',3,'',8,1),(27,'2018-08-17 15:50:05.000000','52','Ieraksts object',3,'',8,1),(28,'2018-08-17 15:50:05.000000','51','Ieraksts object',3,'',8,1),(29,'2018-08-17 15:50:05.000000','50','Ieraksts object',3,'',8,1),(30,'2018-08-17 15:50:05.000000','49','Ieraksts object',3,'',8,1),(31,'2018-08-17 15:50:05.000000','48','Ieraksts object',3,'',8,1),(32,'2018-08-17 17:40:10.000000','57','Ieraksts object',3,'',8,1),(33,'2018-08-17 17:40:10.000000','56','Ieraksts object',3,'',8,1),(34,'2018-08-17 17:40:10.000000','55','Ieraksts object',3,'',8,1),(35,'2018-08-17 17:40:10.000000','54','Ieraksts object',3,'',8,1),(36,'2018-08-17 17:40:10.000000','53','Ieraksts object',3,'',8,1),(37,'2018-08-17 17:40:10.000000','47','Ieraksts object',3,'',8,1),(38,'2018-08-17 17:40:10.000000','46','Ieraksts object',3,'',8,1),(39,'2018-08-17 17:40:10.000000','45','Ieraksts object',3,'',8,1),(40,'2018-08-17 17:40:10.000000','44','Ieraksts object',3,'',8,1),(41,'2018-08-17 17:40:10.000000','34','Ieraksts object',3,'',8,1),(42,'2018-08-17 17:40:10.000000','33','Ieraksts object',3,'',8,1),(43,'2018-08-17 17:40:10.000000','32','Ieraksts object',3,'',8,1),(44,'2018-08-17 17:40:10.000000','22','Ieraksts object',3,'',8,1),(45,'2018-08-17 17:40:10.000000','21','Ieraksts object',3,'',8,1),(46,'2018-08-17 17:40:10.000000','20','Ieraksts object',3,'',8,1),(47,'2018-08-17 17:40:10.000000','19','Ieraksts object',3,'',8,1),(48,'2018-08-17 17:40:10.000000','18','Ieraksts object',3,'',8,1),(49,'2018-08-17 17:40:10.000000','17','Ieraksts object',3,'',8,1),(50,'2018-08-17 17:40:10.000000','16','Ieraksts object',3,'',8,1),(51,'2018-08-17 17:40:10.000000','15','Ieraksts object',3,'',8,1),(52,'2018-08-17 17:40:10.000000','14','Ieraksts object',3,'',8,1),(53,'2018-08-17 17:40:10.000000','13','Ieraksts object',3,'',8,1),(54,'2018-08-17 17:40:10.000000','12','Ieraksts object',3,'',8,1),(55,'2018-08-17 17:40:10.000000','11','Ieraksts object',3,'',8,1),(56,'2018-08-17 17:40:10.000000','10','Ieraksts object',3,'',8,1),(57,'2018-08-17 17:40:10.000000','9','Ieraksts object',3,'',8,1),(58,'2018-08-17 17:40:10.000000','8','Ieraksts object',3,'',8,1),(59,'2018-08-17 17:40:10.000000','7','Ieraksts object',3,'',8,1),(60,'2018-08-17 17:40:10.000000','6','Ieraksts object',3,'',8,1),(61,'2018-08-17 17:40:10.000000','5','Ieraksts object',3,'',8,1),(62,'2018-08-17 17:40:10.000000','4','Ieraksts object',3,'',8,1),(63,'2018-08-17 17:40:10.000000','3','Ieraksts object',3,'',8,1),(64,'2018-08-17 17:40:10.000000','2','Ieraksts object',3,'',8,1),(65,'2018-08-17 17:40:10.000000','1','Ieraksts object',3,'',8,1),(66,'2018-08-17 19:25:16.000000','59','Ieraksts object',3,'',8,1),(67,'2018-08-17 19:25:16.000000','58','Ieraksts object',3,'',8,1),(68,'2018-08-17 20:16:00.000000','1','SuperTema object',1,'',9,1),(69,'2018-08-17 20:16:11.000000','2','SuperTema object',1,'',9,1),(70,'2018-08-17 20:16:21.000000','3','SuperTema object',1,'',9,1),(71,'2018-08-17 20:16:31.000000','4','SuperTema object',1,'',9,1),(72,'2018-08-17 20:16:43.000000','5','SuperTema object',1,'',9,1),(73,'2018-08-17 20:16:51.000000','6','SuperTema object',1,'',9,1),(74,'2018-08-17 20:17:30.000000','7','SuperTema object',1,'',9,1),(75,'2018-08-17 20:17:40.000000','8','SuperTema object',1,'',9,1),(76,'2018-08-17 20:24:24.000000','1','SuperTema object',2,'Changed order.',9,1),(77,'2018-08-17 20:24:32.000000','2','SuperTema object',2,'Changed order.',9,1),(78,'2018-08-17 20:24:38.000000','3','SuperTema object',2,'Changed order.',9,1),(79,'2018-08-17 20:24:46.000000','4','SuperTema object',2,'Changed order.',9,1),(80,'2018-08-17 20:24:59.000000','7','SuperTema object',2,'Changed order.',9,1),(81,'2018-08-17 20:25:06.000000','8','SuperTema object',2,'Changed order.',9,1),(82,'2018-08-17 20:25:18.000000','6','SuperTema object',2,'Changed order.',9,1),(83,'2018-08-17 22:24:13.000000','5','Lādēšana',2,'Changed order.',9,1),(84,'2018-08-17 22:24:45.000000','7','Sacensības',2,'Changed order.',9,1),(85,'2018-08-17 22:24:53.000000','8','Pērk/Pārdod',2,'Changed order.',9,1),(86,'2018-08-17 22:25:01.000000','6','Cits',2,'Changed order.',9,1),(87,'2018-08-17 22:30:07.000000','1','TESTS',1,'',10,1),(88,'2018-08-17 22:37:18.000000','2','Drons',1,'',10,1),(89,'2018-08-17 22:37:30.000000','2','Drons',2,'Changed coment.',10,1),(90,'2018-08-17 22:40:26.000000','2','Drons',2,'Changed entry_count and coment.',10,1),(91,'2018-08-17 22:40:39.000000','2','Drons',2,'No fields changed.',10,1),(92,'2018-08-17 22:41:04.000000','2','Ieraksts object',2,'Changed relate_to.',8,1),(93,'2018-08-17 22:41:11.000000','1','Ieraksts object',2,'Changed relate_to.',8,1),(94,'2018-08-17 22:51:59.000000','2','Drons',2,'Changed comment.',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(8,'blog','ieraksts'),(9,'blog','supertema'),(10,'blog','tema'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-08-16 07:24:32.767698'),(2,'auth','0001_initial','2018-08-16 07:24:32.989061'),(3,'admin','0001_initial','2018-08-16 07:24:33.060981'),(4,'admin','0002_logentry_remove_auto_add','2018-08-16 07:24:33.083789'),(5,'contenttypes','0002_remove_content_type_name','2018-08-16 07:24:33.154132'),(6,'auth','0002_alter_permission_name_max_length','2018-08-16 07:24:33.179490'),(7,'auth','0003_alter_user_email_max_length','2018-08-16 07:24:33.216345'),(8,'auth','0004_alter_user_username_opts','2018-08-16 07:24:33.237721'),(9,'auth','0005_alter_user_last_login_null','2018-08-16 07:24:33.265271'),(10,'auth','0006_require_contenttypes_0002','2018-08-16 07:24:33.267999'),(11,'auth','0007_alter_validators_add_error_messages','2018-08-16 07:24:33.286347'),(12,'auth','0008_alter_user_username_max_length','2018-08-16 07:24:33.316988'),(13,'sessions','0001_initial','2018-08-16 07:24:33.334078'),(14,'blog','0001_initial','2018-08-16 08:57:41.000000'),(15,'blog','0002_remove_tema_page_count','2018-08-16 09:19:55.000000'),(16,'blog','0003_tema_entry_count','2018-08-16 10:05:39.000000'),(17,'blog','0004_auto_20180816_1941','2018-08-16 19:41:52.000000'),(18,'blog','0005_auto_20180816_2125','2018-08-16 21:25:33.000000'),(19,'blog','0006_auto_20180817_0024','2018-08-17 00:24:33.000000'),(20,'blog','0007_auto_20180817_0128','2018-08-17 01:28:19.000000'),(21,'blog','0008_auto_20180817_0135','2018-08-17 01:35:55.000000'),(22,'blog','0009_auto_20180817_0144','2018-08-17 01:44:48.000000'),(23,'blog','0010_auto_20180817_0156','2018-08-17 01:56:28.000000'),(24,'blog','0011_auto_20180817_0205','2018-08-17 02:05:16.000000'),(25,'blog','0012_auto_20180817_0206','2018-08-17 02:06:16.000000'),(26,'blog','0013_supertema','2018-08-17 15:57:40.000000'),(27,'blog','0014_auto_20180817_1721','2018-08-17 17:21:45.000000'),(28,'blog','0015_auto_20180817_1740','2018-08-17 17:40:57.000000'),(29,'blog','0016_auto_20180817_1740','2018-08-17 17:40:57.000000'),(30,'blog','0017_auto_20180817_2234','2018-08-17 20:14:54.000000'),(31,'blog','0018_auto_20180817_2235','2018-08-17 20:14:54.000000'),(32,'blog','0019_auto_20180817_2237','2018-08-17 20:14:54.000000'),(33,'blog','0020_auto_20180817_2302','2018-08-17 20:14:54.000000'),(34,'blog','0021_auto_20180817_2304','2018-08-17 20:14:54.000000'),(35,'blog','0022_auto_20180817_2310','2018-08-17 20:14:54.000000'),(36,'blog','0023_auto_20180817_2314','2018-08-17 20:14:54.000000'),(37,'blog','0024_auto_20180817_2319','2018-08-17 20:20:01.000000'),(38,'blog','0025_auto_20180817_2322','2018-08-17 20:22:53.000000'),(39,'blog','0026_auto_20180818_0012','2018-08-17 21:12:22.000000'),(40,'blog','0027_auto_20180818_0013','2018-08-17 21:13:14.000000'),(41,'blog','0028_auto_20180818_0014','2018-08-17 21:14:27.000000'),(42,'blog','0029_auto_20180818_0025','2018-08-17 21:26:02.000000'),(43,'blog','0030_auto_20180818_0042','2018-08-17 21:42:32.000000'),(44,'blog','0031_auto_20180818_0049','2018-08-17 21:49:16.000000'),(45,'blog','0032_auto_20180818_0050','2018-08-17 21:50:54.000000'),(46,'blog','0033_auto_20180818_0052','2018-08-17 21:52:08.000000'),(47,'blog','0034_auto_20180818_0053','2018-08-17 21:53:43.000000'),(48,'blog','0035_auto_20180818_0101','2018-08-17 22:01:22.000000'),(49,'blog','0036_auto_20180818_0117','2018-08-17 22:17:26.000000'),(50,'blog','0037_auto_20180818_0118','2018-08-17 22:18:25.000000'),(51,'blog','0038_auto_20180818_0121','2018-08-17 22:21:38.000000'),(52,'blog','0039_auto_20180818_0136','2018-08-17 22:36:23.000000'),(53,'blog','0040_auto_20180818_0150','2018-08-17 22:50:19.000000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('d7f1utey4sgz268sbgys4het430mv5z6','Njk3ZmRkZTVjMzFjNGZiMDY0YjgwNzQwMjkzZjJmZjk0NjlmMTBmYzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4MzQ3M2MyMTM4ODNkNTk4NDM3NTA4MzQ0MDdlZTdiYTlhZjY1NjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-08-31 01:21:06.000000'),('oy191ccytdgk4st0taktigtexxv89nzi','Njk3ZmRkZTVjMzFjNGZiMDY0YjgwNzQwMjkzZjJmZjk0NjlmMTBmYzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4MzQ3M2MyMTM4ODNkNTk4NDM3NTA4MzQ0MDdlZTdiYTlhZjY1NjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-08-30 12:22:17.000000'),('uqti3rv4iootj9mppkqof0bljxupofax','Njk3ZmRkZTVjMzFjNGZiMDY0YjgwNzQwMjkzZjJmZjk0NjlmMTBmYzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4MzQ3M2MyMTM4ODNkNTk4NDM3NTA4MzQ0MDdlZTdiYTlhZjY1NjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-08-30 11:30:42.000000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ieraksts`
--

DROP TABLE IF EXISTS `ieraksts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ieraksts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `text` longtext NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `relate_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ieraksts_1f88dc1d` (`relate_to_id`),
  CONSTRAINT `ieraksts_relate_to_id_2c8fb831b1e5535a_fk_tema_id` FOREIGN KEY (`relate_to_id`) REFERENCES `tema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ieraksts`
--

LOCK TABLES `ieraksts` WRITE;
/*!40000 ALTER TABLE `ieraksts` DISABLE KEYS */;
INSERT INTO `ieraksts` VALUES (1,'svabis','2018-08-17 22:38:37','Bilde','forum_img/screenshot-from-2018-07-09-173844png',2),(2,'svabis','2018-08-17 22:39:53','bilde','forum_img/screenshot-from-2018-07-09-173728png',2),(3,'svabis','2018-08-17 22:42:40','vēl','forum_img/img_4384jpg-1',2);
/*!40000 ALTER TABLE `ieraksts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_tema`
--

DROP TABLE IF EXISTS `super_tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `super_tema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `super_tema_slug_3ab285d3e7653163_uniq` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_tema`
--

LOCK TABLES `super_tema` WRITE;
/*!40000 ALTER TABLE `super_tema` DISABLE KEYS */;
INSERT INTO `super_tema` VALUES (1,'Ieroči','ieroci',1),(2,'Optika','optika',2),(3,'Piederumi','piederumi',3),(4,'Munīcija','municija',4),(5,'Lādēšana','ladesana',5),(6,'Cits','cits',8),(7,'Sacensības','sacensibas',6),(8,'Pērk/Pārdod','perkpardod',7);
/*!40000 ALTER TABLE `super_tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_entry` datetime NOT NULL,
  `entry_count` int(11) NOT NULL,
  `comment` tinyint(1) NOT NULL,
  `relate_to_super_id` int(11) NOT NULL,
  `parent_id` int(11),
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `tema_382035a3` (`relate_to_super_id`),
  KEY `tema_6be37982` (`parent_id`),
  CONSTRAINT `tema_parent_id_212b68cca5f26de7_fk_tema_id` FOREIGN KEY (`parent_id`) REFERENCES `tema` (`id`),
  CONSTRAINT `tema_relate_to_super_id_1b31a27c59403c55_fk_super_tema_id` FOREIGN KEY (`relate_to_super_id`) REFERENCES `super_tema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (1,'TESTS','mzvbZVnLNF','2018-08-17 22:29:54',0,0,1,NULL),(2,'Drons','kDRJMUwxTt','2018-08-17 22:42:40',3,1,6,NULL);
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-18 12:23:41
