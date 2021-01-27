/*
Navicat MySQL Data Transfer

Source Server         : 192.168.92.131
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : cokdb_pay

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-11-04 17:43:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for payfive
-- ----------------------------
DROP TABLE IF EXISTS `payfive`;
CREATE TABLE `payfive` (
  `date` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `paysum` float(20,2) DEFAULT NULL,
  `paytimes` int(10) DEFAULT NULL,
  PRIMARY KEY (`date`,`pf`,`country`),
  KEY `index` (`country`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of payfive
-- ----------------------------

-- ----------------------------
-- Table structure for payrecord
-- ----------------------------
DROP TABLE IF EXISTS `payrecord`;
CREATE TABLE `payrecord` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `request` blob,
  `postParam` blob,
  `result` blob,
  `time` bigint(20) DEFAULT NULL,
  `lastCheckTime` int(10) DEFAULT NULL,
  `checkTimes` int(10) DEFAULT '0',
  `checkHistory` blob,
  `checkResult` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`orderId`,`method`),
  KEY `index` (`time`,`method`,`checkResult`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of payrecord
-- ----------------------------
