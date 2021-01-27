# Host: localhost  (Version: 5.5.40)
# Date: 2018-11-28 09:48:56
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "activity"
#

DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) NOT NULL,
  `openTime` bigint(20) DEFAULT NULL,
  `startTime` bigint(11) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "activity"
#

INSERT INTO `activity` VALUES (8999,'ws',0,1528527149000,1529667250178,1529672650178),(110004,'monsters soege',4,152950927637,1530136800000,1530223200000);
