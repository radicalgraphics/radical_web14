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
-- Dumping data for table `radicalwebapp_portfolio`
--

LOCK TABLES `radicalwebapp_portfolio` WRITE;
/*!40000 ALTER TABLE `radicalwebapp_portfolio` DISABLE KEYS */;
REPLACE INTO `radicalwebapp_portfolio` (`id`, `name`, `platform`, `tag`, `image`) VALUES (1,'Forza Motorsport 2','Xbox 360','games','img/Our_work/1.jpg'),(2,'Pimp My Ride','Xbox 360','games','img/Our_work/9.jpg'),(3,'Warhammer Online: Age of Reckoning','PC','games','img/Our_work/2.jpg'),(4,'Kingdom Under Fire: Circle of Doom','Xbox 360','games','img/Our_work/3.jpg'),(5,'Barbie in The 12 Dancing Princesses','Gameboy Advance','games','img/Our_work/10.jpg'),(6,'Kart\'n\'Crazy','PC','games','img/Our_work/11.jpg'),(7,'Guitar Hero II','Xbox 360','games','img/Our_work/4.jpg'),(8,'Ninja Gaiden II','Xbox 360','games','img/Our_work/5.jpg'),(9,'Vampire Rain','Xbox 360','games','img/Our_work/6.jpg'),(10,'Ancient Wars Sparta','PC','games','img/Our_work/7.jpg'),(11,'Age of Empires III','PC','games','img/Our_work/8.jpg'),(12,'Barbie as The Island Princess','Wii','games','img/Our_work/12.jpg'),(13,'Blue Dragon','Xbox 360','games','img/Our_work/13.jpg'),(14,'Caesar IV','PC','games','img/Our_work/14.jpg'),(15,'Warrior Epic','PC','games','img/Our_work/15.jpg'),(16,'Gears of War','Xbox 360','games','img/Our_work/16.jpg'),(17,'Guitar Hero Encore Rock The 80s','PlayStation 2','games','img/Our_work/17.jpg'),(18,'Halo 2','Xbox 360','games','img/Our_work/18.jpg'),(19,'Halo 2','PC','games','img/Our_work/19.jpg'),(20,'Harley-Davidson Race to The Rally','PlayStation 2','games','img/Our_work/20.jpg'),(21,'Killzone 3','PS3','games','img/Our_work/21.jpg'),(22,'Killzone Shadow Fall','PS4','games','img/Our_work/22.jpg'),(23,'League of Legends','PC','games','img/Our_work/23.jpg'),(24,'Mass Effect','Xbox 360','games','img/Our_work/24.jpg'),(25,'Xbox 360 Dashboard','Xbox 360','user experience','img/Our_work/25.jpg'),(26,'Ninety-Nine Nights','Xbox 360','games','img/Our_work/26.jpg'),(27,'Over The Hedge Hammy Goes Nuts!','PSP','games','img/Our_work/27.jpg'),(28,'Pangya Season 4 Delight','PC','games','img/Our_work/28.jpg'),(29,'Pokémon X','Nintendo 3DS','games','img/Our_work/29.jpg'),(30,'Pokémon Y','Nintendo 3DS','games','img/Our_work/30.jpg'),(31,'scene it? Box Office Smash!','Xbox 360','games','img/Our_work/31.jpg'),(32,'scene it? Lights, Camera, Action','Xbox 360','games','img/Our_work/32.jpg'),(33,'Xbox 360 IPTV','Xbox 360','user experience','img/Our_work/33.jpg'),(34,'Shadowrun','Xbox 360','games','img/Our_work/34.jpg'),(35,'Xbox 360 HD-DVD','Xbox 360','user experience','img/Our_work/35.jpg'),(36,'John Deere - Harvest in The Heartland','Nintendo DS','games','img/Our_work/36.jpg'),(37,'Zune','Zune','user experience','img/Our_work/37.jpg'),(38,'TomTom ONE XL Series','Portable Navigation Device','web applications','media/img/Our_work/tomtom-xl-340s.jpg'),(39,'TomTom Live Traffic','Web','web applications','media/img/Our_work/tomtom_livetraffic.jpg'),(40,'Zune App','Windows PC','web applications','media/img/Our_work/zune_APP.PNG');
/*!40000 ALTER TABLE `radicalwebapp_portfolio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-16  1:26:29
