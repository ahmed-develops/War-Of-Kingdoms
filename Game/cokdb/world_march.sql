# Host: localhost  (Version: 5.5.40)
# Date: 2018-03-31 13:10:38
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "world_march"
#

DROP TABLE IF EXISTS `world_march`;
CREATE TABLE `world_march` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerId` int(11) NOT NULL,
  `ownerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerColor` int(11) DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teamId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `armyInfo` blob,
  `type` int(11) NOT NULL,
  `targetId` int(40) NOT NULL,
  `targetType` int(11) DEFAULT NULL,
  `targetUid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marchStartTime` bigint(20) NOT NULL,
  `marchTime` int(11) DEFAULT NULL,
  `marchArrivalTime` bigint(20) DEFAULT NULL,
  `returnStartTime` bigint(20) DEFAULT NULL,
  `arrivalTime` bigint(20) DEFAULT NULL,
  `exploreTime` bigint(11) DEFAULT NULL,
  `exploreReport` blob,
  `collectSpd` float DEFAULT NULL,
  `changeCollectSpdTime` bigint(20) DEFAULT NULL,
  `collectedBeforeSpd` bigint(20) DEFAULT NULL,
  `resLevel` int(11) DEFAULT NULL,
  `plunderRes` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `retrieveRes` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `extraParam` int(11) DEFAULT '0',
  `blackLandMarchTime` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monsterArmyCount` int(8) DEFAULT NULL,
  `monsterLevel` int(8) DEFAULT NULL,
  `monsterInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `territoryStartTime` bigint(20) DEFAULT NULL,
  `territoryUpdateTime` bigint(20) DEFAULT NULL,
  `territoryStat` int(2) DEFAULT '0',
  `buildingKillArmy` blob,
  `slowDown` int(11) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ownerId_index_001` (`ownerUid`) USING BTREE,
  KEY `targetUid_index` (`targetUid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_march"
#

