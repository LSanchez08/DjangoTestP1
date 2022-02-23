-- MariaDB dump 10.19  Distrib 10.7.1-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: apidatabase
-- ------------------------------------------------------
-- Server version	10.7.1-MariaDB-1:10.7.1+maria~focal

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
-- Table structure for table `api_drink`
--

CREATE DATABASE IF NOT EXISTS `apidatabase`;
USE `apidatabase`;

DROP TABLE IF EXISTS `api_drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_drink` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_drink`
--

LOCK TABLES `api_drink` WRITE;
/*!40000 ALTER TABLE `api_drink` DISABLE KEYS */;
INSERT INTO `api_drink` VALUES
(1,'Agua',15),
(2,'Refresco',20),
(3,'Refresco rellenable',30),
(4,'Te helado',20),
(5,'Cafe',20),
(6,'Capuccino',30);
/*!40000 ALTER TABLE `api_drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_food`
--

DROP TABLE IF EXISTS `api_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_food` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_food`
--

LOCK TABLES `api_food` WRITE;
/*!40000 ALTER TABLE `api_food` DISABLE KEYS */;
INSERT INTO `api_food` VALUES
(1,'Palomitas',50),
(2,'M&MS',10),
(3,'Papas',20),
(4,'Nachos',45),
(5,'Hot dogs',60),
(6,'Ponpon',15);
/*!40000 ALTER TABLE `api_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_movie`
--

DROP TABLE IF EXISTS `api_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_movie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `ranking` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_movie_category_id_9097c8bb_fk_api_moviecategories_id` (`category_id`),
  CONSTRAINT `api_movie_category_id_9097c8bb_fk_api_moviecategories_id` FOREIGN KEY (`category_id`) REFERENCES `api_moviecategories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_movie`
--

LOCK TABLES `api_movie` WRITE;
/*!40000 ALTER TABLE `api_movie` DISABLE KEYS */;
INSERT INTO `api_movie` VALUES
(7,'The batman','No se ha estrenado',5,5),
(8,'Spiderman no way home','Yo solo queria que saliera mat murdock',8,5),
(9,'Toy story 1','Pelicula de mi infancia',8,7),
(10,'Toy story 2','Pelicula de mi infancia',8,7),
(11,'Toy story 3','No me gusto',5,7),
(12,'Toy story 4','Esta menos',1,7),
(13,'Son como ninos 2','Estuvo mejor la primera',5,4),
(15,'Una esposa de mentira','Esta si esta buena',9,4);
/*!40000 ALTER TABLE `api_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_moviecategories`
--

DROP TABLE IF EXISTS `api_moviecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_moviecategories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_moviecategories`
--

LOCK TABLES `api_moviecategories` WRITE;
/*!40000 ALTER TABLE `api_moviecategories` DISABLE KEYS */;
INSERT INTO `api_moviecategories` VALUES
(4,'Comedia'),
(5,'Accion'),
(6,'Terror'),
(7,'Infantil');
/*!40000 ALTER TABLE `api_moviecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_movieschedules`
--

DROP TABLE IF EXISTS `api_movieschedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_movieschedules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` varchar(10) NOT NULL,
  `room` int(11) NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_movieschedules_movie_id_a96182ad_fk_api_movie_id` (`movie_id`),
  CONSTRAINT `api_movieschedules_movie_id_a96182ad_fk_api_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `api_movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_movieschedules`
--

LOCK TABLES `api_movieschedules` WRITE;
/*!40000 ALTER TABLE `api_movieschedules` DISABLE KEYS */;
INSERT INTO `api_movieschedules` VALUES
(1,'14:40',1,7),
(2,'18:00',1,7),
(3,'14:00',4,10),
(4,'14:00',3,12),
(5,'14:20',5,8),
(6,'21:00',5,8);
/*!40000 ALTER TABLE `api_movieschedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_orders`
--

DROP TABLE IF EXISTS `api_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `drink_id` bigint(20) NOT NULL,
  `food_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_orders_drink_id_75a1a51f_fk_api_drink_id` (`drink_id`),
  KEY `api_orders_food_id_9026b5a6_fk_api_food_id` (`food_id`),
  CONSTRAINT `api_orders_drink_id_75a1a51f_fk_api_drink_id` FOREIGN KEY (`drink_id`) REFERENCES `api_drink` (`id`),
  CONSTRAINT `api_orders_food_id_9026b5a6_fk_api_food_id` FOREIGN KEY (`food_id`) REFERENCES `api_food` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_orders`
--

LOCK TABLES `api_orders` WRITE;
/*!40000 ALTER TABLE `api_orders` DISABLE KEYS */;
INSERT INTO `api_orders` VALUES
(1,1,1),
(2,2,1),
(3,2,1),
(4,3,3),
(5,3,5),
(6,2,4),
(7,4,4);
/*!40000 ALTER TABLE `api_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tickets`
--

DROP TABLE IF EXISTS `api_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_tickets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `single_price` int(11) NOT NULL,
  `quantity_bought` int(11) NOT NULL,
  `schedule_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_tickets_schedule_id_7174c4a5_fk_api_movieschedules_id` (`schedule_id`),
  CONSTRAINT `api_tickets_schedule_id_7174c4a5_fk_api_movieschedules_id` FOREIGN KEY (`schedule_id`) REFERENCES `api_movieschedules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tickets`
--

LOCK TABLES `api_tickets` WRITE;
/*!40000 ALTER TABLE `api_tickets` DISABLE KEYS */;
INSERT INTO `api_tickets` VALUES
(1,50,1,1),
(2,50,3,1),
(3,50,7,1),
(4,60,4,5),
(5,60,3,5),
(6,20,9,3),
(7,40,10,4),
(8,40,5,4);
/*!40000 ALTER TABLE `api_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add movie',7,'add_movie'),
(26,'Can change movie',7,'change_movie'),
(27,'Can delete movie',7,'delete_movie'),
(28,'Can view movie',7,'view_movie'),
(29,'Can add movie categories',8,'add_moviecategories'),
(30,'Can change movie categories',8,'change_moviecategories'),
(31,'Can delete movie categories',8,'delete_moviecategories'),
(32,'Can view movie categories',8,'view_moviecategories'),
(33,'Can add API key',9,'add_apikey'),
(34,'Can change API key',9,'change_apikey'),
(35,'Can delete API key',9,'delete_apikey'),
(36,'Can view API key',9,'view_apikey'),
(37,'Can add food',10,'add_food'),
(38,'Can change food',10,'change_food'),
(39,'Can delete food',10,'delete_food'),
(40,'Can view food',10,'view_food'),
(41,'Can add movie schedules',11,'add_movieschedules'),
(42,'Can change movie schedules',11,'change_movieschedules'),
(43,'Can delete movie schedules',11,'delete_movieschedules'),
(44,'Can view movie schedules',11,'view_movieschedules'),
(45,'Can add drink',12,'add_drink'),
(46,'Can change drink',12,'change_drink'),
(47,'Can delete drink',12,'delete_drink'),
(48,'Can view drink',12,'view_drink'),
(49,'Can add orders',13,'add_orders'),
(50,'Can change orders',13,'change_orders'),
(51,'Can delete orders',13,'delete_orders'),
(52,'Can view orders',13,'view_orders'),
(53,'Can add ticket sold',14,'add_ticketsold'),
(54,'Can change ticket sold',14,'change_ticketsold'),
(55,'Can delete ticket sold',14,'delete_ticketsold'),
(56,'Can view ticket sold',14,'view_ticketsold'),
(57,'Can add tickets',14,'add_tickets'),
(58,'Can change tickets',14,'change_tickets'),
(59,'Can delete tickets',14,'delete_tickets'),
(60,'Can view tickets',14,'view_tickets');
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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
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
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$320000$QFgJAtayau3aAtnCHgwWTv$GiB+SJIIyB5CBt7cKsv1b9XNrese2JOt8ttHtPyep+k=','2022-02-23 18:11:09.186939',1,'admin','','','luis.alberto.sanchez.rios@live.com.mx',1,1,'2022-02-10 02:31:24.866886');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2022-02-10 02:35:02.929106','yVD6HP2L.pbkdf2_sha256$320000$RPrW4IlGDiIboZwt9F0Ha3$qQFteDCp/iEy+9V3s6kyLIkFgewbY8BCGWrdnHv7GTc=','Api1',1,'[{\"added\": {}}]',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(12,'api','drink'),
(10,'api','food'),
(7,'api','movie'),
(8,'api','moviecategories'),
(11,'api','movieschedules'),
(13,'api','orders'),
(14,'api','tickets'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(9,'rest_framework_api_key','apikey'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2022-02-10 01:47:36.578924'),
(2,'auth','0001_initial','2022-02-10 01:47:37.600976'),
(3,'admin','0001_initial','2022-02-10 01:47:37.859899'),
(4,'admin','0002_logentry_remove_auto_add','2022-02-10 01:47:37.902121'),
(5,'admin','0003_logentry_add_action_flag_choices','2022-02-10 01:47:37.946198'),
(6,'contenttypes','0002_remove_content_type_name','2022-02-10 01:47:38.104277'),
(7,'auth','0002_alter_permission_name_max_length','2022-02-10 01:47:38.225076'),
(8,'auth','0003_alter_user_email_max_length','2022-02-10 01:47:38.310760'),
(9,'auth','0004_alter_user_username_opts','2022-02-10 01:47:38.351353'),
(10,'auth','0005_alter_user_last_login_null','2022-02-10 01:47:38.472177'),
(11,'auth','0006_require_contenttypes_0002','2022-02-10 01:47:38.501471'),
(12,'auth','0007_alter_validators_add_error_messages','2022-02-10 01:47:38.540676'),
(13,'auth','0008_alter_user_username_max_length','2022-02-10 01:47:38.614861'),
(14,'auth','0009_alter_user_last_name_max_length','2022-02-10 01:47:38.686074'),
(15,'auth','0010_alter_group_name_max_length','2022-02-10 01:47:38.774892'),
(16,'auth','0011_update_proxy_permissions','2022-02-10 01:47:38.821770'),
(17,'auth','0012_alter_user_first_name_max_length','2022-02-10 01:47:38.904184'),
(18,'sessions','0001_initial','2022-02-10 01:47:39.026424'),
(19,'api','0001_initial','2022-02-10 02:09:35.615254'),
(20,'rest_framework_api_key','0001_initial','2022-02-10 02:24:24.757921'),
(21,'rest_framework_api_key','0002_auto_20190529_2243','2022-02-10 02:24:24.832930'),
(22,'rest_framework_api_key','0003_auto_20190623_1952','2022-02-10 02:24:24.856750'),
(23,'rest_framework_api_key','0004_prefix_hashed_key','2022-02-10 02:24:25.220674'),
(24,'api','0002_food_movieschedules','2022-02-20 23:05:12.228357'),
(25,'api','0003_drink_orders','2022-02-22 16:30:54.435242'),
(26,'api','0004_ticketsold_alter_drink_price_alter_food_price','2022-02-23 16:41:59.813774'),
(27,'api','0005_remove_movieschedules_name','2022-02-23 19:46:17.390117'),
(28,'api','0006_rename_ticketsold_tickets','2022-02-23 20:04:36.525324'),
(29,'api','0007_delete_tickets','2022-02-23 20:04:36.764158'),
(30,'api','0008_tickets','2022-02-23 20:05:14.970967');
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
INSERT INTO `django_session` VALUES
('6fmane9nul2s6viaih7lqsyyb0lx6pej','.eJxVjDsOwjAQBe_iGln4FzuU9JzB2vWucQDZUpxUiLuTSCmgfTPz3iLCupS4dp7jROIilDj9bgjpyXUH9IB6bzK1uswTyl2RB-3y1ohf18P9OyjQy1Y7lTUkRkSfOWgkUB40WKVDID47NpitCcPIhMYyggeXxiFkCi5vsvh8ARiJOVA:1nHzFA:2NoWLwP9QElP8UbTpHb9mMdUgGA3I8GGZmepSPzbaDw','2022-02-24 02:31:36.403568'),
('xrqztd9wy3eo8nad0qufao36l5t015ze','.eJxVjDsOwjAQBe_iGln4FzuU9JzB2vWucQDZUpxUiLuTSCmgfTPz3iLCupS4dp7jROIilDj9bgjpyXUH9IB6bzK1uswTyl2RB-3y1ohf18P9OyjQy1Y7lTUkRkSfOWgkUB40WKVDID47NpitCcPIhMYyggeXxiFkCi5vsvh8ARiJOVA:1nMw6X:Aq4gZKiVXrui0dfpg5tpkri7R6vZvKg0fUwBtqeW5oY','2022-03-09 18:11:09.206948');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_framework_api_key_apikey`
--

DROP TABLE IF EXISTS `rest_framework_api_key_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rest_framework_api_key_apikey` (
  `id` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `hashed_key` varchar(100) NOT NULL,
  `prefix` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prefix` (`prefix`),
  KEY `rest_framework_api_key_apikey_created_c61872d9` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_framework_api_key_apikey`
--

LOCK TABLES `rest_framework_api_key_apikey` WRITE;
/*!40000 ALTER TABLE `rest_framework_api_key_apikey` DISABLE KEYS */;
INSERT INTO `rest_framework_api_key_apikey` VALUES
('yVD6HP2L.pbkdf2_sha256$320000$RPrW4IlGDiIboZwt9F0Ha3$qQFteDCp/iEy+9V3s6kyLIkFgewbY8BCGWrdnHv7GTc=','2022-02-10 02:35:02.926006','Api1',0,NULL,'pbkdf2_sha256$320000$RPrW4IlGDiIboZwt9F0Ha3$qQFteDCp/iEy+9V3s6kyLIkFgewbY8BCGWrdnHv7GTc=','yVD6HP2L');
/*!40000 ALTER TABLE `rest_framework_api_key_apikey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-23 20:08:27
