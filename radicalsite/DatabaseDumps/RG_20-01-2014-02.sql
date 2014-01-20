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
INSERT INTO `radicalwebapp_portfolio` (`id`, `name`, `platform`, `tag`, `image`, `image_big`, `featured`) VALUES (1,'Forza Motorsport 2','Xbox 360','games','img/Our_work/1.jpg','media/img/Our_work/_-Forza-Motorsport-2-Xbox-360-_.jpg',39),(2,'Pimp My Ride','Xbox 360','games','img/Our_work/9.jpg','media/img/Our_work/_-Pimp-My-Ride-Xbox-360-_.jpg',9),(3,'Warhammer Online: Age of Reckoning','PC','games','img/Our_work/2.jpg','media/img/Our_work/936full-warhammer-online--age-of-reckoning-cover.jpg',38),(4,'Kingdom Under Fire: Circle of Doom','Xbox 360','games','img/Our_work/3.jpg','media/img/Our_work/932035_73639_front.jpg',19),(5,'Barbie in The 12 Dancing Princesses','Gameboy Advance','games','img/Our_work/10.jpg','media/img/Our_work/933483_76431_front.jpg',7),(6,'Kart\'n\'Crazy','PC','games','img/Our_work/11.jpg','media/img/Our_work/00965344-photo-kart-n-crazy.jpg',16),(7,'Guitar Hero II','Xbox 360','games','img/Our_work/4.jpg','media/img/Our_work/1167957373.jpg',26),(8,'Ninja Gaiden II','Xbox 360','games','img/Our_work/5.jpg','media/img/Our_work/1195140874.jpg',29),(9,'Vampire Rain','Xbox 360','games','img/Our_work/6.jpg','media/img/Our_work/1329076287-.jpg',18),(10,'Ancient Wars Sparta','PC','games','img/Our_work/7.jpg','media/img/Our_work/Ancient_Wars_Sparta_PC_Game_cover.jpg',22),(11,'Age of Empires III','PC','games','img/Our_work/8.jpg','media/img/Our_work/aoe3box.png.jpg',28),(12,'Barbie as The Island Princess','Wii','games','img/Our_work/12.jpg','media/img/Our_work/Baribie-Island.jpg',17),(13,'Blue Dragon','Xbox 360','games','img/Our_work/13.jpg','media/img/Our_work/Blue_Dragon_Xbox_360.jpg',27),(14,'Caesar IV','PC','games','img/Our_work/14.jpg','media/img/Our_work/boxshot.jpg',24),(15,'Warrior Epic','PC','games','img/Our_work/15.jpg','media/img/Our_work/warrior-epic.jpg',25),(16,'Gears of War','Xbox 360','games','img/Our_work/16.jpg','media/img/Our_work/gears-of-war-boxart.jpg',34),(17,'Guitar Hero Encore Rock The 80s','PlayStation 2','games','img/Our_work/17.jpg','media/img/Our_work/Gh-encore-rocks-the-80s-cover.jpg',23),(18,'Halo 2','Xbox 360','games','img/Our_work/18.jpg','media/img/Our_work/halo-2-back-cover-41131.jpg',33),(19,'Halo 2','PC','games','img/Our_work/19.jpg','media/img/Our_work/halo-2-front-cover-100851.jpg',21),(20,'Harley-Davidson Race to The Rally','PlayStation 2','games','img/Our_work/20.jpg','media/img/Our_work/Harley-Davidson-Race-To-Rally-Front-Cover-26200.jpg',20),(21,'Killzone 3','PS3','games','img/Our_work/21.jpg','media/img/Our_work/killzone_3_rp_packfront.jpg',37),(22,'Killzone Shadow Fall','PS4','games','media/img/Our_work/4.jpg','media/img/Our_work/1371040862-killzone-shadow-fall.jpg',36),(23,'League of Legends','PC','games','img/Our_work/23.jpg','media/img/Our_work/League-of-Legends_ver2FULL_US.jpg',32),(24,'Mass Effect','Xbox 360','games','img/Our_work/24.jpg','media/img/Our_work/mass-effect-box-art.jpg',35),(25,'Xbox 360 Dashboard','Xbox 360','user experience','img/Our_work/25.jpg','media/img/Our_work/maxresdefault.jpg',15),(26,'Ninety-Nine Nights','Xbox 360','games','img/Our_work/26.jpg','media/img/Our_work/n3_cover.jpg',14),(27,'Over The Hedge Hammy Goes Nuts!','PSP','games','img/Our_work/27.jpg','media/img/Our_work/Over_the_Hedge_-_Hammy_Goes_Nuts.jpg',13),(28,'Pangya Season 4 Delight','PC','games','img/Our_work/28.jpg','media/img/Our_work/pangya-season4.jpg',11),(29,'Pokémon X','Nintendo 3DS','games','img/Our_work/29.jpg','media/img/Our_work/Pokémon_X_Front_Packaging.jpg',31),(30,'Pokémon Y','Nintendo 3DS','games','img/Our_work/30.jpg','media/img/Our_work/Pokemon-X-and-Y-cover-art.jpg',30),(31,'scene it? Box Office Smash!','Xbox 360','games','img/Our_work/31.jpg','media/img/Our_work/scene_it.jpg',12),(32,'scene it? Lights, Camera, Action','Xbox 360','games','img/Our_work/32.jpg','media/img/Our_work/Scene-It-Lights-Camera-Action-Achievements-Xbox-360-2.jpg',10),(33,'Xbox 360 IPTV','Xbox 360','user experience','img/Our_work/33.jpg','media/img/Our_work/Screenshot_-_IPTV_on_Xbox_360_-_Mediablade.jpg',8),(34,'Shadowrun','Xbox 360','games','img/Our_work/34.jpg','media/img/Our_work/shadowrun-xbox360u.jpg',6),(35,'Xbox 360 HD-DVD','Xbox 360','user experience','img/Our_work/35.jpg','media/img/Our_work/xbox360_hd-dvd_02.jpg',5),(36,'John Deere - Harvest in The Heartland','Nintendo DS','games','img/Our_work/36.jpg','media/img/Our_work/z9687563Q.jpg',4),(37,'Zune','Zune','user experience','media/img/Our_work/37.jpg','media/img/Our_work/Zune80and4.jpg',3),(38,'TomTom ONE XL Series','Portable Navigation Device','web applications','media/img/Our_work/tomtom-xl-340s.jpg','media/img/Our_work/tomtom-xl-340s_1.jpg',2),(39,'TomTom Live Traffic','Web','web applications','media/img/Our_work/tomtom_livetraffic.jpg','media/img/Our_work/tomtom_livetraffic_1.jpg',1),(40,'Zune App','Windows PC','web applications','media/img/Our_work/zune_APP_3.PNG','media/img/Our_work/zune_APP_4.PNG',0);
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

-- Dump completed on 2014-01-20 17:08:00
