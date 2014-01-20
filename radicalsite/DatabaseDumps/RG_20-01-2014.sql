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
-- Dumping data for table `radicalwebapp_portfolio`
--

LOCK TABLES `radicalwebapp_portfolio` WRITE;
/*!40000 ALTER TABLE `radicalwebapp_portfolio` DISABLE KEYS */;
INSERT INTO `radicalwebapp_portfolio` (`id`, `name`, `platform`, `tag`, `image`, `featured`) VALUES (1,'Forza Motorsport 2','Xbox 360','games','img/Our_work/1.jpg',0),(2,'Pimp My Ride','Xbox 360','games','img/Our_work/9.jpg',0),(3,'Warhammer Online: Age of Reckoning','PC','games','img/Our_work/2.jpg',0),(4,'Kingdom Under Fire: Circle of Doom','Xbox 360','games','img/Our_work/3.jpg',0),(5,'Barbie in The 12 Dancing Princesses','Gameboy Advance','games','img/Our_work/10.jpg',0),(6,'Kart\'n\'Crazy','PC','games','img/Our_work/11.jpg',0),(7,'Guitar Hero II','Xbox 360','games','img/Our_work/4.jpg',0),(8,'Ninja Gaiden II','Xbox 360','games','img/Our_work/5.jpg',0),(9,'Vampire Rain','Xbox 360','games','img/Our_work/6.jpg',0),(10,'Ancient Wars Sparta','PC','games','img/Our_work/7.jpg',0),(11,'Age of Empires III','PC','games','img/Our_work/8.jpg',0),(12,'Barbie as The Island Princess','Wii','games','img/Our_work/12.jpg',0),(13,'Blue Dragon','Xbox 360','games','img/Our_work/13.jpg',0),(14,'Caesar IV','PC','games','img/Our_work/14.jpg',0),(15,'Warrior Epic','PC','games','img/Our_work/15.jpg',0),(16,'Gears of War','Xbox 360','games','img/Our_work/16.jpg',0),(17,'Guitar Hero Encore Rock The 80s','PlayStation 2','games','img/Our_work/17.jpg',0),(18,'Halo 2','Xbox 360','games','img/Our_work/18.jpg',0),(19,'Halo 2','PC','games','img/Our_work/19.jpg',0),(20,'Harley-Davidson Race to The Rally','PlayStation 2','games','img/Our_work/20.jpg',0),(21,'Killzone 3','PS3','games','img/Our_work/21.jpg',0),(22,'Killzone Shadow Fall','PS4','games','media/img/Our_work/4.jpg',4),(23,'League of Legends','PC','games','img/Our_work/23.jpg',0),(24,'Mass Effect','Xbox 360','games','img/Our_work/24.jpg',0),(25,'Xbox 360 Dashboard','Xbox 360','user experience','img/Our_work/25.jpg',0),(26,'Ninety-Nine Nights','Xbox 360','games','img/Our_work/26.jpg',0),(27,'Over The Hedge Hammy Goes Nuts!','PSP','games','img/Our_work/27.jpg',0),(28,'Pangya Season 4 Delight','PC','games','img/Our_work/28.jpg',0),(29,'Pokémon X','Nintendo 3DS','games','img/Our_work/29.jpg',0),(30,'Pokémon Y','Nintendo 3DS','games','img/Our_work/30.jpg',0),(31,'scene it? Box Office Smash!','Xbox 360','games','img/Our_work/31.jpg',0),(32,'scene it? Lights, Camera, Action','Xbox 360','games','img/Our_work/32.jpg',0),(33,'Xbox 360 IPTV','Xbox 360','user experience','img/Our_work/33.jpg',0),(34,'Shadowrun','Xbox 360','games','img/Our_work/34.jpg',0),(35,'Xbox 360 HD-DVD','Xbox 360','user experience','img/Our_work/35.jpg',0),(36,'John Deere - Harvest in The Heartland','Nintendo DS','games','img/Our_work/36.jpg',0),(37,'Zune','Zune','user experience','img/Our_work/37.jpg',0),(38,'TomTom ONE XL Series','Portable Navigation Device','web applications','media/img/Our_work/tomtom-xl-340s.jpg',0),(39,'TomTom Live Traffic','Web','web applications','media/img/Our_work/tomtom_livetraffic.jpg',0),(40,'Zune App','Windows PC','web applications','media/img/Our_work/zune_APP.PNG',0);
/*!40000 ALTER TABLE `radicalwebapp_portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `radicalwebapp_post`
--

LOCK TABLES `radicalwebapp_post` WRITE;
/*!40000 ALTER TABLE `radicalwebapp_post` DISABLE KEYS */;
INSERT INTO `radicalwebapp_post` (`id`, `title`, `body`, `created`, `author_id`, `image`, `views`) VALUES (1,'Prueba con fotaza','Erase una vez una foto gorda y oronda. Queria salir en el blog de radical, por tanto le dejamos que salga del tirona','2014-01-18 13:55:29',1,'media/img/blog/Gears_Of_War_-_Logo.jpg',0),(2,'I luv my mum','This is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...\r\nThis is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...\r\nThis is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...\r\nThis is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...\r\n\r\nThis is a brilliant tshirt that everyone should be wearing cause I want to get rich fast, dude, fast. Probably it\'s not a good idea to do this, but well, who knows. Maybe it should be done...','2014-01-18 14:04:38',1,'media/img/blog/Untitled-1b.png',0),(3,'Getting an office space','Yeah guys! , finally we\'re trying to get an office space in the beautiful city of Amsterdam. It\'s been taking us a while , cause , well let\'s face it, money doesn\'t grow on trees. (And rent isn\'t cheap).\r\nBut definitely , we\'re getting somewhere :).\r\nLocated in Amsterdam Noord, we found a perfect space where we can develop rocking apps and entertainment software to the level of trying to get you engaged as hell.\r\nStay tuned for news on the matter! :D','2014-01-18 14:24:57',1,'media/img/blog/a-lab-648x329.jpg',1);
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

-- Dump completed on 2014-01-20 13:30:14
