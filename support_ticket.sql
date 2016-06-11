# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.42)
# Database: support_ticket
# Generation Time: 2016-06-11 03:07:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table report_bug
# ------------------------------------------------------------

DROP TABLE IF EXISTS `report_bug`;

CREATE TABLE `report_bug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) DEFAULT NULL,
  `report_bug` text,
  `create_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `answer` text,
  `statusbug` enum('pending','confirmed','fix') DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `report_bug` WRITE;
/*!40000 ALTER TABLE `report_bug` DISABLE KEYS */;

INSERT INTO `report_bug` (`id`, `menu`, `report_bug`, `create_date`, `user_id`, `answer`, `statusbug`)
VALUES
	(30,'dsad','asdada','2015-03-05 06:06:00',23546,NULL,'pending');

/*!40000 ALTER TABLE `report_bug` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_answer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_answer`;

CREATE TABLE `ticket_answer` (
  `uuid` varchar(36) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `user_uuid` varchar(36) DEFAULT NULL,
  `answer` text,
  `file_uuid` varchar(36) DEFAULT NULL,
  `ticket_uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_answer` WRITE;
/*!40000 ALTER TABLE `ticket_answer` DISABLE KEYS */;

INSERT INTO `ticket_answer` (`uuid`, `date`, `user_uuid`, `answer`, `file_uuid`, `ticket_uuid`)
VALUES
	('4ee02bcb-9c1c-47ee-b960-19c25a846bac','2015-09-08 20:17:00','0b76938b-0e38-44fc-929b-aba08c1ed884','test<div><br></div>',NULL,'dd685357-9aa0-4bcb-b32f-da07485d81f6'),
	('5d8c7f0a-2dbe-49cd-81c2-1a534a1f9425','2015-09-08 20:20:00','0b76938b-0e38-44fc-929b-aba08c1ed884','test 2',NULL,'dd685357-9aa0-4bcb-b32f-da07485d81f6'),
	('6d029fcd-75b4-4689-ab18-5bb4d8a1a14a','2015-09-08 21:01:00','0b76938b-0e38-44fc-929b-aba08c1ed884','test',NULL,'dd685357-9aa0-4bcb-b32f-da07485d81f6'),
	('70caaec0-0497-44e4-9229-c206fb21305c','2015-09-08 20:05:00','0b76938b-0e38-44fc-929b-aba08c1ed884','tesxt',NULL,'dd685357-9aa0-4bcb-b32f-da07485d81f6'),
	('dcb771b8-ddd6-4c6c-b63e-a920636cbf4b','2015-09-08 20:02:00','0b76938b-0e38-44fc-929b-aba08c1ed884','tesxt',NULL,'dd685357-9aa0-4bcb-b32f-da07485d81f6'),
	('e2513b29-ee2f-4b1b-84a5-addb703e96ea','2015-09-08 20:07:00','8ae12f05-46d3-4b58-b94d-68bd8b819f94','heloo',NULL,'dd685357-9aa0-4bcb-b32f-da07485d81f6');

/*!40000 ALTER TABLE `ticket_answer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_auth_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_auth_user`;

CREATE TABLE `ticket_auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `modul_id` int(11) DEFAULT NULL,
  `create` enum('n','y') DEFAULT 'n',
  `update` enum('n','y') DEFAULT 'n',
  `delete` enum('n','y') DEFAULT 'n',
  `print` enum('n','y') DEFAULT 'n',
  `view` enum('n','y') DEFAULT 'n',
  PRIMARY KEY (`id`),
  KEY `modul_id` (`modul_id`),
  KEY `user_typeid` (`type_id`),
  CONSTRAINT `ticket_auth_user_ibfk_1` FOREIGN KEY (`modul_id`) REFERENCES `ticket_modul` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_auth_user` WRITE;
/*!40000 ALTER TABLE `ticket_auth_user` DISABLE KEYS */;

INSERT INTO `ticket_auth_user` (`id`, `type_id`, `modul_id`, `create`, `update`, `delete`, `print`, `view`)
VALUES
	(1,0,1,'y','y','y','y','y'),
	(2,0,2,'y','y','y','y','y'),
	(3,0,3,'y','y','y','y','y'),
	(4,0,4,'y','y','y','y','y'),
	(5,0,5,'y','y','y','y','y'),
	(6,0,6,'y','y','y','y','y'),
	(7,0,7,'y','y','y','y','y'),
	(8,0,8,'y','y','y','y','y'),
	(10,0,10,'y','y','y','y','y'),
	(11,0,11,'y','y','y','y','y'),
	(12,0,12,'y','y','y','y','y'),
	(14,0,15,'y','y','y','y','y'),
	(15,0,16,'y','y','y','y','y'),
	(16,0,17,'y','y','y','y','y'),
	(17,0,18,'y','y','y','y','y'),
	(18,0,19,'y','y','y','y','y'),
	(19,1,12,'n','n','n','n','n'),
	(20,0,20,'y','y','y','y','y'),
	(21,0,22,'y','y','y','y','y'),
	(22,0,21,'y','y','y','y','y'),
	(23,0,23,'y','y','y','y','y'),
	(24,0,24,'y','y','y','y','y'),
	(25,1,5,'y','y','y','y','y'),
	(26,1,10,'y','y','y','y','y'),
	(27,1,16,'y','y','y','y','y'),
	(28,1,23,'y','y','y','y','y'),
	(29,0,25,'y','y','y','y','y'),
	(30,0,26,'y','y','y','y','y');

/*!40000 ALTER TABLE `ticket_auth_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_ci_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_ci_sessions`;

CREATE TABLE `ticket_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_ci_sessions` WRITE;
/*!40000 ALTER TABLE `ticket_ci_sessions` DISABLE KEYS */;

INSERT INTO `ticket_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`)
VALUES
	('003cd2c2007ceb0259a8ac41ca20c947','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0',1426288283,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"find_ticket\";a:6:{s:3:\"url\";s:11:\"find_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('00fc9fa91029326da32de5cebffbea36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.1 Safari/537.36',1426347007,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"find_ticket\";a:6:{s:3:\"url\";s:11:\"find_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('064f58971fc6ed1ac965947fd5d1874f','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36',1426420046,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('06d72fdea95cbc3365ff62e3b44dc195','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2323.2 Safari/537.36',1425679418,''),
	('09632397b2aadf5f742a2b319bc8520c','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2325.0 Safari/537.36',1425887957,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:21:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"find_ticket\";a:6:{s:3:\"url\";s:11:\"find_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('16aea82269f5e1e208657e1a61dfe52a','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2356.3 Safari/537.36',1428186385,''),
	('18a9cfaaff97e90cd9d46d8b555aef56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2437.4 Safari/537.36',1434984480,''),
	('1be1e0522b94880858ecd6676bcce29d','192.168.1.1','0',1426123902,''),
	('2442e0c5df304bc3c407c156376dbf30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2452.0 Safari/537.36',1436478003,'a:6:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:6:\"deptid\";s:1:\"1\";s:5:\"menus\";a:22:{s:8:\"operator\";a:6:{s:3:\"url\";s:8:\"operator\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"register_user\";a:6:{s:3:\"url\";s:13:\"register_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:4:\"news\";a:6:{s:3:\"url\";s:4:\"news\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('2616fab1b35dd03609f9d6c3682fbba9','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2356.3 Safari/537.36',1428191882,''),
	('2759fbbd80c904fcdc4f08a53ab6da53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2328.0 Safari/537.36',1426116121,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:21:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"find_ticket\";a:6:{s:3:\"url\";s:11:\"find_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('3212a9f9ccfaca75a834a43f6f53d9be','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2497.0 Safari/537.36',1441201266,'a:5:{s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:6:\"deptid\";s:1:\"1\";s:5:\"menus\";a:22:{s:8:\"operator\";a:6:{s:3:\"url\";s:8:\"operator\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"register_user\";a:6:{s:3:\"url\";s:13:\"register_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:4:\"news\";a:6:{s:3:\"url\";s:4:\"news\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('355d2c7cbf22774e63a597ae82a359e7','192.168.1.1','0',1426059476,''),
	('393370c22390dfe10ae13362ed26f01c','::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:38.0) Gecko/20100101 Firefox/38.0',1426348456,''),
	('3d0e04ff42d7b0f8be8c5f9a844db5c0','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2341.0 Safari/537.36',1427116616,''),
	('41a72842416c54172e296c44cb4157aa','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:38.0) Gecko/20100101 Firefox/38.0',1428191243,''),
	('46e5f54341276e85729c2d25ac3d47bc','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2333.3 Safari/537.36',1426543125,''),
	('49dd9f24095e683adae58ecac854fe71','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2504.0 Safari/537.36',1441720895,'a:7:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:36:\"0b76938b-0e38-44fc-929b-aba08c1ed884\";s:4:\"name\";s:6:\"sdadas\";s:4:\"tipe\";s:1:\"1\";s:6:\"deptid\";N;s:5:\"email\";s:23:\"master.ardani@gmail.com\";s:5:\"menus\";a:4:{s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('4c8b5771ad917d03b95c20de0872f524','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2327.5 Safari/537.36',1426031264,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:36:\"8ae12f05-46d3-4b58-b94d-68bd8b819f94\";s:4:\"name\";s:6:\"ardani\";s:4:\"tipe\";s:1:\"1\";s:5:\"menus\";a:1:{s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('4ff05ce4dd76649a449745bb3031fb4e','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.1 Safari/537.36',1426286546,''),
	('51186119df8e4a6f77b0ec0a03c8f09b','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2352.0 Safari/537.36',1427929807,''),
	('533ed0f1d8b782c92fdac063ed980c5e','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.1 Safari/537.36',1426286531,''),
	('5ab5a4b077349e407cb1d66f3bbe67ed','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2342.2 Safari/537.36',1427241713,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('5ca8eb9aeadb10cae3cbc4bfbc9b10fb','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2466.0 Safari/537.36',1437973239,''),
	('61fa3c010f5e6041d13b9cad51548508','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.2 Safari/537.36',1428329335,''),
	('62e583e4a72351ba9142b77b108fa7dc','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36',1427035313,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('63ab7dd726ab090868c5f0516b4a931e','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0',1441668976,''),
	('649f94a59b1a6c02c966b390448a1bb7','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2341.0 Safari/537.36',1427154810,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('66313933c68b0f600a96049586cfddba','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2430.0 Safari/537.36',1434211113,''),
	('6c739ba82ef3bc7de41e724e95644848','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2321.0 Safari/537.36',1425512604,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:17:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"template\";a:6:{s:3:\"url\";s:8:\"template\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"find_ticket\";a:6:{s:3:\"url\";s:11:\"find_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('6c79547a4765a756440a32f695375607','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2424.0 Safari/537.36',1433770569,'a:6:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:6:\"deptid\";s:1:\"1\";s:5:\"menus\";a:23:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:4:\"news\";a:6:{s:3:\"url\";s:4:\"news\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('6ce1111277eb89c5bd4c56bb7800554e','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2499.1 Safari/537.36',1441291568,'a:6:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:6:\"deptid\";s:1:\"1\";s:5:\"menus\";a:22:{s:8:\"operator\";a:6:{s:3:\"url\";s:8:\"operator\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"register_user\";a:6:{s:3:\"url\";s:13:\"register_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:4:\"news\";a:6:{s:3:\"url\";s:4:\"news\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('70ccfac4bad5c900587da4420375782f','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2323.0 Safari/537.36',1425597934,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:17:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"template\";a:6:{s:3:\"url\";s:8:\"template\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"find_ticket\";a:6:{s:3:\"url\";s:11:\"find_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('7a14d70b7b5fb3c71ce0bdd5091d2347','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2346.0 Safari/537.36',1427545110,''),
	('7a14e2ec403b8c700a069e253627b35d','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2434.0 Safari/537.36',1434550071,''),
	('7d76f8d25fd9eb2f5cfaebb3c529d77e','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2333.3 Safari/537.36',1426551467,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('7fa902031f4ab6503d87a5ee4af68a40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2334.0 Safari/537.36',1426634506,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('84af73cac598fe809cb2c39b89cf6560','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.1 Safari/537.36',1426286582,'a:4:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";}'),
	('869daa48385e226d0e531ac0d33109f7','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0',1441668975,''),
	('8c5ecf32ae3ef3f7097ba8f1af9f0cb2','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0',1441668974,''),
	('9201b65da582462966218bec941ad3b3','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2323.2 Safari/537.36',1425684113,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:17:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"find_ticket\";a:6:{s:3:\"url\";s:11:\"find_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('964d094970842dd34bc70e4bee35047e','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2429.0 Safari/537.36',1434118643,'a:6:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:6:\"deptid\";s:1:\"1\";s:5:\"menus\";a:22:{s:8:\"operator\";a:6:{s:3:\"url\";s:8:\"operator\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:4:\"news\";a:6:{s:3:\"url\";s:4:\"news\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('96bb61c62f4b9311f51dabe1d21725ec','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2429.0 Safari/537.36',1434151635,''),
	('97353f93456ff73648e25a81969ce839','192.168.1.1','0',1426036538,''),
	('9a90bddf45a863e18fd276aaef624760','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2343.5 Safari/537.36',1427323660,'a:6:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:6:\"deptid\";s:1:\"1\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('a05649513086697767febac82f666ee2','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2429.0 Safari/537.36',1434155998,'a:6:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:6:\"deptid\";s:1:\"1\";s:5:\"menus\";a:22:{s:8:\"operator\";a:6:{s:3:\"url\";s:8:\"operator\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"register_user\";a:6:{s:3:\"url\";s:13:\"register_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:4:\"news\";a:6:{s:3:\"url\";s:4:\"news\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('a2b94c9931a097e3e783673e19c1ea13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.2 Safari/537.36',1428329360,''),
	('a358c04bb45503a5a9dc71175bb4148f','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36',1426983053,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('a91318aa4fe409d7ef779405eadac78b','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2504.0 Safari/537.36',1441717304,''),
	('a96c720c9bf3f5f5b37f4d555e15617f','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2503.0 Safari/537.36',1441668166,''),
	('b7f89253ca1c7dd1b77e337f81f86260','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2762.0 Safari/537.36',1465391605,''),
	('b9fe8eee098932a1c6ddd299c53a7c57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36',1426999268,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('bbaad64881d5849d311ede01fc149af7','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.2 Safari/537.36',1428329363,'a:5:{s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:6:\"deptid\";s:1:\"1\";s:5:\"menus\";a:23:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:4:\"news\";a:6:{s:3:\"url\";s:4:\"news\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('bc2a44722a710f442b9981187c07489d','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.4 Safari/537.36',1426394067,''),
	('be4508e0907fe4abcbc010f076cb907e','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2437.4 Safari/537.36',1434984451,''),
	('bf97f6c4eaf2b83c7665863c84f3d415','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2503.0 Safari/537.36',1441668960,'a:6:{s:6:\"userid\";s:36:\"0b76938b-0e38-44fc-929b-aba08c1ed884\";s:4:\"name\";s:6:\"sdadas\";s:4:\"tipe\";s:1:\"1\";s:6:\"deptid\";N;s:5:\"email\";s:23:\"master.ardani@gmail.com\";s:5:\"menus\";a:4:{s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('c16455e752f6c279b9063dcc2f42a1e4','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2762.0 Safari/537.36',1465391552,''),
	('c1bd6394188b944a5df634b21c830265','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2437.4 Safari/537.36',1434984449,''),
	('c48ec2d057dfa54952ac44fc60c4ee9d','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2466.0 Safari/537.36',1437973241,''),
	('dfa2032451d668d990bcf38817b01228','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2499.1 Safari/537.36',1441295270,'a:6:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:6:\"deptid\";s:1:\"1\";s:5:\"menus\";a:23:{s:8:\"operator\";a:6:{s:3:\"url\";s:8:\"operator\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"register_user\";a:6:{s:3:\"url\";s:13:\"register_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"ticket_feed\";a:6:{s:3:\"url\";s:11:\"ticket_feed\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:4:\"news\";a:6:{s:3:\"url\";s:4:\"news\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}'),
	('e0635a6b7b3a3aae54bc2a5f09606ded','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.2 Safari/537.36',1428329322,''),
	('eaf657445ef7b828a560c4c83d903a97','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2327.5 Safari/537.36',1426026062,''),
	('ecf614a55d5a3c6f617e564974404439','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2762.0 Safari/537.36',1465392066,''),
	('f6090c8fe1115e88580bb185dae5bf49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0',1441668975,''),
	('f7388b2486d45349556ddf4f1309014b','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2336.0 Safari/537.36',1426720920,'a:5:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";s:5:\"23546\";s:4:\"name\";s:15:\"admin is greate\";s:4:\"tipe\";s:1:\"0\";s:5:\"menus\";a:22:{s:8:\"employee\";a:6:{s:3:\"url\";s:8:\"employee\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"departement\";a:6:{s:3:\"url\";s:11:\"departement\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"template_answer\";a:6:{s:3:\"url\";s:15:\"template_answer\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:15:\"register_member\";a:6:{s:3:\"url\";s:15:\"register_member\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"create_ticket\";a:6:{s:3:\"url\";s:13:\"create_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"ticket_status\";a:6:{s:3:\"url\";s:13:\"ticket_status\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"ticket_topic\";a:6:{s:3:\"url\";s:12:\"ticket_topic\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"my_ticket\";a:6:{s:3:\"url\";s:9:\"my_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:8:\"priority\";a:6:{s:3:\"url\";s:8:\"priority\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"list_ticket\";a:6:{s:3:\"url\";s:11:\"list_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"assign_ticket\";a:6:{s:3:\"url\";s:13:\"assign_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"replay_ticket\";a:6:{s:3:\"url\";s:13:\"replay_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"knowledgebases\";a:6:{s:3:\"url\";s:14:\"knowledgebases\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:12:\"upload_modul\";a:6:{s:3:\"url\";s:12:\"upload_modul\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"knowledgebase\";a:6:{s:3:\"url\";s:13:\"knowledgebase\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"modul_cat\";a:6:{s:3:\"url\";s:9:\"modul_cat\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:14:\"setting_option\";a:6:{s:3:\"url\";s:14:\"setting_option\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:13:\"report_ticket\";a:6:{s:3:\"url\";s:13:\"report_ticket\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:10:\"report_bug\";a:6:{s:3:\"url\";s:10:\"report_bug\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:16:\"authority_access\";a:6:{s:3:\"url\";s:16:\"authority_access\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:9:\"type_user\";a:6:{s:3:\"url\";s:9:\"type_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}s:11:\"access_user\";a:6:{s:3:\"url\";s:11:\"access_user\";s:4:\"view\";s:1:\"y\";s:6:\"create\";s:1:\"y\";s:6:\"update\";s:1:\"y\";s:6:\"delete\";s:1:\"y\";s:5:\"print\";s:1:\"y\";}}}');

/*!40000 ALTER TABLE `ticket_ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_departement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_departement`;

CREATE TABLE `ticket_departement` (
  `departement_id` int(11) NOT NULL AUTO_INCREMENT,
  `departement_name` varchar(45) DEFAULT NULL,
  `parent` int(11) DEFAULT '-1',
  PRIMARY KEY (`departement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_departement` WRITE;
/*!40000 ALTER TABLE `ticket_departement` DISABLE KEYS */;

INSERT INTO `ticket_departement` (`departement_id`, `departement_name`, `parent`)
VALUES
	(0,'UMUM',-1),
	(1,'KASUBDIT KRIMINAL',-1),
	(2,'KASUBDIT LALULINTAS',-1),
	(4,'HUMAS',-1),
	(8,'KASI BPKB',2),
	(9,'KASI STNK',2),
	(10,'KASI DLL',2),
	(11,'BPKB BARU',8),
	(12,'TATA USAHA',8),
	(13,'ARSIP DAN DOKUMENT',8),
	(14,'PENYELESAIAN PERKARA',8),
	(15,'MUTASI',8),
	(16,'MUTASI LUAR DAERAH',15),
	(17,'MUTASI PERUBAHAN',15),
	(18,'umum 2',0),
	(19,'dsdfsdfsdf',0);

/*!40000 ALTER TABLE `ticket_departement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_feed
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_feed`;

CREATE TABLE `ticket_feed` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ticket_uuid` varchar(36) DEFAULT NULL,
  `user` varchar(250) DEFAULT '{}',
  `status` varchar(250) DEFAULT '{}',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ticket_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_file`;

CREATE TABLE `ticket_file` (
  `uuid` varchar(36) NOT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `file_type` varchar(30) DEFAULT NULL,
  `file_size` varchar(30) DEFAULT NULL,
  `file_name_encrypt` varchar(100) DEFAULT NULL,
  `ticket_uuid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ticket_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_history`;

CREATE TABLE `ticket_history` (
  `uuid` varchar(36) DEFAULT NULL,
  `type_history` varchar(50) DEFAULT NULL,
  `new_departement` varchar(80) DEFAULT NULL,
  `date` datetime NOT NULL,
  `status` varchar(25) DEFAULT NULL,
  `user_uuid` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_history` WRITE;
/*!40000 ALTER TABLE `ticket_history` DISABLE KEYS */;

INSERT INTO `ticket_history` (`uuid`, `type_history`, `new_departement`, `date`, `status`, `user_uuid`)
VALUES
	('6d8132a8-c8a5-4378-83fa-449e03eaaea9',NULL,NULL,'2015-06-13 22:56:00','open','c5f43dfc-0724-4e93-b087-b0bf39a59d83'),
	('dd685357-9aa0-4bcb-b32f-da07485d81f6',NULL,NULL,'2015-09-08 06:36:00','open','0b76938b-0e38-44fc-929b-aba08c1ed884');

/*!40000 ALTER TABLE `ticket_history` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_knowledgebase
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_knowledgebase`;

CREATE TABLE `ticket_knowledgebase` (
  `uuid` varchar(36) NOT NULL,
  `content` text,
  `title` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT '0000-00-00',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_knowledgebase` WRITE;
/*!40000 ALTER TABLE `ticket_knowledgebase` DISABLE KEYS */;

INSERT INTO `ticket_knowledgebase` (`uuid`, `content`, `title`, `created`, `updated`)
VALUES
	('e179aaa9-361f-426e-a21c-410cbd637831','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Sdasdasda','2015-03-06','0000-00-00');

/*!40000 ALTER TABLE `ticket_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_log`;

CREATE TABLE `ticket_log` (
  `uuid` varchar(36) NOT NULL,
  `user_uuid` varchar(36) DEFAULT NULL,
  `log` text,
  `type` varchar(45) DEFAULT NULL,
  `ticket_uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ticket_modul
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_modul`;

CREATE TABLE `ticket_modul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modul_name` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `modul_catid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modul_catid` (`modul_catid`),
  CONSTRAINT `ticket_modul_ibfk_1` FOREIGN KEY (`modul_catid`) REFERENCES `ticket_modul_cat` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_modul` WRITE;
/*!40000 ALTER TABLE `ticket_modul` DISABLE KEYS */;

INSERT INTO `ticket_modul` (`id`, `modul_name`, `icon`, `url`, `modul_catid`)
VALUES
	(1,'Operator','moon-user-3','operator',1),
	(2,'Departement','moon-office ','departement',1),
	(3,'Hak Akses','moon-equalizer ','authority_access',5),
	(4,'Unggah Modul','moon-upload-3 ','upload_modul',3),
	(5,'Pengetahuan','moon-bookmarks','knowledgebase',3),
	(6,'Modul Kategori','moon-fire ','modul_cat',3),
	(7,'Tipe Pengguna','moon-user-2','type_user',5),
	(8,'Akses Pengguna','moon-lock','access_user',5),
	(10,'Buat Pengaduan','moon-pencil','create_ticket',2),
	(11,'Status Pengaduan','moon-list','ticket_status',2),
	(12,'Topik Pengaduan','moon-star-3','ticket_topic',2),
	(15,'Pengaturan Pilihan','moon-cart-3','setting_option',3),
	(16,'Pengaduan Saya','moon-bookmarks','my_ticket',2),
	(17,'Laporan Pengaduan','moon-print','report_ticket',4),
	(18,'Laporkan Bug','moon-quotes-left','report_bug',4),
	(19,'Prioritas Pengaduan','moon-fire','priority',2),
	(20,'Pengguna Terdaftar','moon-user-2','register_user',1),
	(21,'Daftar Pengaduan','moon-bookmarks','list_ticket',2),
	(22,'Alihkan Pengaduan','moon-equalizer','assign_ticket',2),
	(23,'Balas Pengaduan','moon-fire','replay_ticket',2),
	(24,'Pengetahuan','moon-bookmarks','knowledgebases',2),
	(25,'Berita','icon-glass','news',3),
	(26,'Pemberitahuan','moon-list','ticket_feed',2);

/*!40000 ALTER TABLE `ticket_modul` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_modul_cat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_modul_cat`;

CREATE TABLE `ticket_modul_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modul_cat` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_modul_cat` WRITE;
/*!40000 ALTER TABLE `ticket_modul_cat` DISABLE KEYS */;

INSERT INTO `ticket_modul_cat` (`id`, `modul_cat`, `icon`)
VALUES
	(1,'Data Utama','icon-hdd'),
	(2,'Pengaduan','icon-folder-open'),
	(3,'Pengaturan 2','icon-wrench'),
	(4,'Laporan','icon-print'),
	(5,'Akses','icon-user');

/*!40000 ALTER TABLE `ticket_modul_cat` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_news`;

CREATE TABLE `ticket_news` (
  `uuid` varchar(36) NOT NULL,
  `content` text,
  `title` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_news` WRITE;
/*!40000 ALTER TABLE `ticket_news` DISABLE KEYS */;

INSERT INTO `ticket_news` (`uuid`, `content`, `title`, `created`)
VALUES
	('a04b2115-8222-4d77-922f-5b5f14962d36','<strong >Lorem Ipsum</strong><span >&nbsp;adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</span><br>','news 1','2015-04-05');

/*!40000 ALTER TABLE `ticket_news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_notify
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_notify`;

CREATE TABLE `ticket_notify` (
  `uuid_ticket` varchar(36) DEFAULT NULL,
  `uuid_user` varchar(36) DEFAULT NULL,
  `read` char(1) DEFAULT '0',
  `message` varchar(250) DEFAULT NULL,
  `date_feed` datetime DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ticket_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_option`;

CREATE TABLE `ticket_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(45) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_option` WRITE;
/*!40000 ALTER TABLE `ticket_option` DISABLE KEYS */;

INSERT INTO `ticket_option` (`id`, `key`, `value`)
VALUES
	(1,'office.name','nama office'),
	(2,'office.address','test'),
	(3,'office.telp','021'),
	(4,'office.email','email');

/*!40000 ALTER TABLE `ticket_option` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_priority
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_priority`;

CREATE TABLE `ticket_priority` (
  `priority_id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`priority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_priority` WRITE;
/*!40000 ALTER TABLE `ticket_priority` DISABLE KEYS */;

INSERT INTO `ticket_priority` (`priority_id`, `priority`)
VALUES
	(1,'normal'),
	(2,'urgent'),
	(3,'critical');

/*!40000 ALTER TABLE `ticket_priority` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_status`;

CREATE TABLE `ticket_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_status` WRITE;
/*!40000 ALTER TABLE `ticket_status` DISABLE KEYS */;

INSERT INTO `ticket_status` (`status_id`, `status`)
VALUES
	(1,'open'),
	(2,'close');

/*!40000 ALTER TABLE `ticket_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_template_answer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_template_answer`;

CREATE TABLE `ticket_template_answer` (
  `uuid` varchar(36) NOT NULL,
  `template` text,
  `title` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_template_answer` WRITE;
/*!40000 ALTER TABLE `ticket_template_answer` DISABLE KEYS */;

INSERT INTO `ticket_template_answer` (`uuid`, `template`, `title`)
VALUES
	('d6660726-f9b5-44e2-ba09-1571e638c74b','terima kasih untuk pertanyaannya','template 1');

/*!40000 ALTER TABLE `ticket_template_answer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_ticket
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_ticket`;

CREATE TABLE `ticket_ticket` (
  `uuid` varchar(36) NOT NULL,
  `no_ticket` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_uuid` varchar(36) DEFAULT NULL,
  `departement_id` int(11) DEFAULT '0',
  `title` varchar(45) DEFAULT NULL,
  `question` text,
  `date` date DEFAULT NULL,
  `status_id` int(11) DEFAULT '1',
  `topic_id` int(11) DEFAULT NULL,
  `update` timestamp NULL DEFAULT NULL,
  `closed` char(1) DEFAULT '0',
  `assign_uuid` varchar(36) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `operator_uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `no_ticket` (`no_ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_ticket` WRITE;
/*!40000 ALTER TABLE `ticket_ticket` DISABLE KEYS */;

INSERT INTO `ticket_ticket` (`uuid`, `no_ticket`, `user_uuid`, `departement_id`, `title`, `question`, `date`, `status_id`, `topic_id`, `update`, `closed`, `assign_uuid`, `priority_id`, `operator_uuid`)
VALUES
	('6d8132a8-c8a5-4378-83fa-449e03eaaea9',0011,'c5f43dfc-0724-4e93-b087-b0bf39a59d83',0,'CARA MEMBUAT BPKB','Bagaimana cara membuat BPKB','2015-06-13',1,1,NULL,'0',NULL,1,NULL),
	('dd685357-9aa0-4bcb-b32f-da07485d81f6',0012,'0b76938b-0e38-44fc-929b-aba08c1ed884',0,'helo','teest','2015-09-08',1,1,'2015-09-08 00:00:00','0',NULL,1,NULL);

/*!40000 ALTER TABLE `ticket_ticket` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_ticket_has_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_ticket_has_file`;

CREATE TABLE `ticket_ticket_has_file` (
  `ticket_uuid` varchar(36) DEFAULT NULL,
  `file_uuid` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ticket_topic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_topic`;

CREATE TABLE `ticket_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_topic` WRITE;
/*!40000 ALTER TABLE `ticket_topic` DISABLE KEYS */;

INSERT INTO `ticket_topic` (`topic_id`, `topic`)
VALUES
	(1,'umum'),
	(2,'khusus'),
	(3,'tata cara');

/*!40000 ALTER TABLE `ticket_topic` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_type_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_type_user`;

CREATE TABLE `ticket_type_user` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_type_user` WRITE;
/*!40000 ALTER TABLE `ticket_type_user` DISABLE KEYS */;

INSERT INTO `ticket_type_user` (`type_id`, `name`)
VALUES
	(0,'administrator'),
	(1,'user'),
	(2,'operator');

/*!40000 ALTER TABLE `ticket_type_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_user`;

CREATE TABLE `ticket_user` (
  `uuid` varchar(36) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password_original` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `actived` char(1) DEFAULT '0',
  `full_name` varchar(50) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `type_id` int(11) DEFAULT '1',
  `departement_id` int(11) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `identity_no` varchar(25) DEFAULT NULL,
  `type_identity` char(5) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `work` varchar(50) DEFAULT NULL,
  `rt` char(10) DEFAULT NULL,
  `rw` char(10) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL,
  `sub` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_user` WRITE;
/*!40000 ALTER TABLE `ticket_user` DISABLE KEYS */;

INSERT INTO `ticket_user` (`uuid`, `email`, `password_original`, `password`, `actived`, `full_name`, `phone`, `address`, `type_id`, `departement_id`, `username`, `avatar`, `identity_no`, `type_identity`, `gender`, `work`, `rt`, `rw`, `village`, `sub`, `province`, `last_login`)
VALUES
	('0b76938b-0e38-44fc-929b-aba08c1ed884','master.ardani@gmail.com','test','098f6bcd4621d373cade4e832627b4f6','1','sdadas','12335','solo',1,NULL,NULL,NULL,'1235','SIM','L',NULL,'7','7','solo','solo','jawa tengah','2015-09-08 21:03:00'),
	('11989754-1b32-4f7c-9ffb-4f1bb5723768','test@gmail.com',NULL,'098f6bcd4621d373cade4e832627b4f6','0','dsadasd','-1','sada',2,4,NULL,NULL,'213','SIM','L',NULL,'12','12','siwal','asdas','jawa tengah',NULL),
	('23546','admin@admin.com',NULL,'21232f297a57a5a743894a0e4a801fc3','1','admin is greate','02185642','yogyakarta',0,1,'admin',NULL,'1','SIM','L','pegawai','02','03','gondang','gondang','jawa tengah','2015-09-08 21:01:00'),
	('23547','admin2@admin.com',NULL,'21232f297a57a5a743894a0e4a801fc3','1','admin is greate','02185642','yogyakarta',2,1,'admin',NULL,'1','SIM','L','pegawai','02','03','gondang','gondang','jawa tengah','2015-03-23 20:16:00'),
	('23548','admin3@admin.com',NULL,'21232f297a57a5a743894a0e4a801fc3','0','test','02185642','yogyakarta',2,2,'admin',NULL,'1','SIM','L','pegawai','02','03','gondang','gondang','jawa tengah','2015-03-23 20:16:00'),
	('8ae12f05-46d3-4b58-b94d-68bd8b819f94','ardani@skyshi.com',NULL,'2c28abddae416b5a25d6a89688f4f96e','1','ardani','085642201514','solo',1,NULL,NULL,NULL,'546','SIM','L',NULL,'7','5','solo','solo','solo',NULL),
	('c5f43dfc-0724-4e93-b087-b0bf39a59d83','hello@gmail.com','test','098f6bcd4621d373cade4e832627b4f6','1','heloo','2121','solo',1,NULL,NULL,NULL,'121','SIM','L',NULL,'12','21','si','si','si','2015-06-13 22:56:00'),
	('f6d10287-07c5-4f1f-b29e-c504e065256d','ardani@skyshi2.com',NULL,'2c28abddae416b5a25d6a89688f4f96e','1','ardani','085642201514','solo',1,NULL,NULL,NULL,'546','SIM','L',NULL,'7','4','siwal','asdas','a',NULL);

/*!40000 ALTER TABLE `ticket_user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
