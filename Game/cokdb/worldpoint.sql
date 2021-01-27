# Host: localhost  (Version: 5.5.40)
# Date: 2018-03-25 14:53:55
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "worldpoint"
#

DROP TABLE IF EXISTS `worldpoint`;
CREATE TABLE `worldpoint` (
  `id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `areaId` int(11) NOT NULL,
  `monsterAreaId` int(11) DEFAULT NULL,
  `bornAreaId` int(11) DEFAULT NULL,
  `gridType` int(11) NOT NULL,
  `grid2Type` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `territoryAlliance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `territoryId` int(11) DEFAULT NULL,
  `active` int(2) DEFAULT NULL,
  `relicAreaId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resLevel` int(11) NOT NULL,
  `resCostValue` int(11) NOT NULL DEFAULT '0',
  `resInitValue` int(11) NOT NULL,
  `ownerId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cityDefValue` int(11) DEFAULT NULL,
  `startOccupyTime` bigint(20) DEFAULT '0',
  `ownerMarchUUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flushTime` bigint(20) DEFAULT '0',
  `fireTime` bigint(20) DEFAULT NULL,
  `shieldTime` bigint(20) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `monsterInfo` blob,
  `resourceShieldTime` bigint(20) DEFAULT '0',
  `monsterCastleState` int(8) DEFAULT '0',
  `monsterCurrHP` int(10) DEFAULT '0',
  `flushFlag` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `world_res_area_id` (`areaId`,`gridType`) USING BTREE,
  KEY `world_xy_type_country_index` (`x`,`y`,`pointType`) USING BTREE,
  KEY `world_monster_area_id` (`monsterAreaId`,`pointType`,`gridType`,`ownerId`,`grid2Type`) USING BTREE,
  KEY `world_pointType_flushTime_index` (`pointType`,`pointItem`,`flushTime`,`gridType`,`grid2Type`) USING BTREE,
  KEY `worldpoint_ownerid` (`ownerId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "worldpoint"
#

