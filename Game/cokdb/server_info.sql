# Host: localhost  (Version: 5.5.40)
# Date: 2018-12-02 05:14:58
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "server_info"
#

DROP TABLE IF EXISTS `server_info`;
CREATE TABLE `server_info` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `activityTime` bigint(20) DEFAULT '0',
  `activationTime` bigint(20) DEFAULT '0',
  `kaifu` bigint(20) DEFAULT '0',
  `yangfu` bigint(20) DEFAULT '0',
  `daoliangStart` bigint(20) DEFAULT '0',
  `daoliangEnd` bigint(20) DEFAULT '0',
  `shuaguaiActStart` bigint(20) DEFAULT '0',
  `thronePic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payTotalTime` bigint(20) DEFAULT '0',
  `crossFightServerId` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_info"
#

INSERT INTO `server_info` VALUES ('server',15295092763,1529509276372,0,0,0,0,0,'301',0,NULL);
