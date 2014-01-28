CREATE DATABASE  IF NOT EXISTS `local_radicaldb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `local_radicaldb`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: local_radicaldb
-- ------------------------------------------------------
-- Server version	5.5.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `radicalwebapp_comment`
--

LOCK TABLES `radicalwebapp_comment` WRITE;
/*!40000 ALTER TABLE `radicalwebapp_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `radicalwebapp_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `radicalwebapp_post`
--

LOCK TABLES `radicalwebapp_post` WRITE;
/*!40000 ALTER TABLE `radicalwebapp_post` DISABLE KEYS */;
INSERT INTO `radicalwebapp_post` (`id`, `title`, `body`, `created`, `author_id`, `image`, `views`) VALUES (1,'Prueba con fotaza','Erase una vez una foto gorda y oronda. Queria salir en el blog de radical, por tanto le dejamos que salga del tirona','2014-01-18 13:55:29',1,'media/img/blog/Gears_Of_War_-_Logo.jpg',0),(2,'I luv my mum','This is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...\r\nThis is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...\r\nThis is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...\r\nThis is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...\r\n\r\nThis is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...','2014-01-18 14:04:38',1,'media/img/blog/Untitled-1b.png',0),(3,'Getting an office space','Yeah guys! , finally we\'re trying to get an office space in the beautiful city of Amsterdam. It\'s been taking us a while , cause , well let\'s face it, money doesn\'t grow on trees. (And rent isn\'t cheap).\r\nBut definitely , we\'re getting somewhere :).\r\nLocated in Amsterdam Noord, we found a perfect space where we can develop rocking apps and entertainment software to the level of trying to get you engaged as hell.\r\nStay tuned for news on the matter! :D','2014-01-18 14:24:57',1,'media/img/blog/a-lab-648x329.jpg',2),(4,'The Nikon D5000','<hr /><p><img src=\"http://127.0.0.1:8000/media/media/_DSC0025.JPG\" alt=\"_DSC0025.JPG\" unselectable=\"on\" style=\"text-align: justify; height: 148px; width: 222.9367088607595px; float: right; margin: 0px 0px 10px 10px;\"></p>\r\n\r\n<p><img src=\"http://127.0.0.1:8000/media/media/_DSC0013.JPG\" alt=\"_DSC0013.JPG\" unselectable=\"on\" style=\"height: 373px;\"></p>\r\n\r\n<hr />\r\n<p>We got this amazing cam from Nikon to check the power of the reflex photography!</p>\r\n\r\n<p><img src=\"http://127.0.0.1:8000/media/media/_DSC0011_2.JPG\" alt=\"_DSC0011.JPG\" unselectable=\"on\" style=\"height: 340px -webkit-transform:rotate(90deg);;\"></p>\r\n\r\n<hr />','2014-01-22 15:53:32',1,'media/img/blog/_DSC0025.JPG',6);
/*!40000 ALTER TABLE `radicalwebapp_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-28 19:57:32
