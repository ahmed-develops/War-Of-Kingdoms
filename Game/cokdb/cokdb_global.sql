/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : cokdb_global

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-11-18 19:31:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_device_mapping`
-- ----------------------------
DROP TABLE IF EXISTS `account_device_mapping`;
CREATE TABLE `account_device_mapping` (
  `gameUid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deviceId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`gameUid`,`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of account_device_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for `account_new`
-- ----------------------------
DROP TABLE IF EXISTS `account_new`;
CREATE TABLE `account_new` (
  `gameUid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `server` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deviceId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gaid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailAccount` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleAccount` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleAccountName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookAccount` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookAccountName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gameUserName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gameUserLevel` int(11) NOT NULL,
  `lastTime` bigint(20) NOT NULL,
  `emailConfirm` int(4) DEFAULT '0',
  `passmd5` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT '0',
  PRIMARY KEY (`gameUid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of account_new
-- ----------------------------

-- ----------------------------
-- Table structure for `account_new_oldbigone`
-- ----------------------------
DROP TABLE IF EXISTS `account_new_oldbigone`;
CREATE TABLE `account_new_oldbigone` (
  `gameUid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `server` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deviceId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gaid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailAccount` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleAccount` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleAccountName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookAccount` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookAccountName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gameUserName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gameUserLevel` int(11) NOT NULL,
  `lastTime` bigint(20) NOT NULL,
  `emailConfirm` int(4) DEFAULT '0',
  `passmd5` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT '0',
  PRIMARY KEY (`gameUid`),
  KEY `google_lasttime_index` (`googleAccount`,`lastTime`) USING BTREE,
  KEY `facebook_lasttime_index` (`facebookAccount`,`lastTime`) USING BTREE,
  KEY `deviceId_lasttime_index` (`deviceId`,`lastTime`) USING BTREE,
  KEY `email_lasttime_index` (`emailAccount`,`lastTime`) USING BTREE,
  KEY `pf_pi_lasttime_index` (`pf`,`pfId`,`lastTime`) USING BTREE,
  KEY `server_id_index` (`server`) USING BTREE,
  KEY `username_index` (`gameUserName`),
  KEY `gaid_index` (`gaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of account_new_oldbigone
-- ----------------------------

-- ----------------------------
-- Table structure for `activation`
-- ----------------------------
DROP TABLE IF EXISTS `activation`;
CREATE TABLE `activation` (
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `series` int(11) DEFAULT NULL,
  `type` int(4) DEFAULT '0',
  `user` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useTime` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `timeId` int(10) DEFAULT '0',
  `count` int(8) DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `index_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of activation
-- ----------------------------

-- ----------------------------
-- Table structure for `activation_bak`
-- ----------------------------
DROP TABLE IF EXISTS `activation_bak`;
CREATE TABLE `activation_bak` (
  `code` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `series` int(11) DEFAULT NULL,
  `user` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of activation_bak
-- ----------------------------

-- ----------------------------
-- Table structure for `activation_config`
-- ----------------------------
DROP TABLE IF EXISTS `activation_config`;
CREATE TABLE `activation_config` (
  `seriesId` int(11) NOT NULL,
  `title` blob,
  `contents` blob,
  `reward` blob,
  `num` int(10) DEFAULT NULL,
  `proUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(4) DEFAULT '0',
  `count` int(8) DEFAULT '0',
  `beginTime` bigint(20) DEFAULT '0',
  `endTime` bigint(20) DEFAULT '0',
  `regStart` bigint(20) DEFAULT '0',
  `regEnd` bigint(20) DEFAULT '0',
  `country` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `bLvMin` int(11) DEFAULT '0',
  `bLvMax` int(11) DEFAULT '0',
  `uLvMin` int(11) DEFAULT '0',
  `uLvMax` int(11) DEFAULT '0',
  `powerMin` bigint(20) DEFAULT '0',
  `powerMax` bigint(20) DEFAULT '0',
  `payGold` int(11) DEFAULT '0',
  `deviceLimit` int(11) DEFAULT '0',
  PRIMARY KEY (`seriesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of activation_config
-- ----------------------------

-- ----------------------------
-- Table structure for `activation_device_record`
-- ----------------------------
DROP TABLE IF EXISTS `activation_device_record`;
CREATE TABLE `activation_device_record` (
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `deviceId` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`code`,`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of activation_device_record
-- ----------------------------

-- ----------------------------
-- Table structure for `adcost`
-- ----------------------------
DROP TABLE IF EXISTS `adcost`;
CREATE TABLE `adcost` (
  `date` date NOT NULL,
  `googleplay` double(12,2) DEFAULT NULL,
  `facebook` double(12,2) DEFAULT NULL,
  `cn` double(12,2) DEFAULT NULL,
  `kr` double(12,2) DEFAULT NULL,
  `jp` double(12,2) DEFAULT NULL,
  `th` double(12,2) DEFAULT NULL,
  `ru` double(12,2) DEFAULT NULL,
  `tw` double(12,2) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of adcost
-- ----------------------------

-- ----------------------------
-- Table structure for `addata`
-- ----------------------------
DROP TABLE IF EXISTS `addata`;
CREATE TABLE `addata` (
  `device` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(10) DEFAULT '0',
  `tracker` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`device`),
  KEY `index_time_tracker_country` (`time`,`tracker`,`country`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of addata
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_audit_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_audit_log`;
CREATE TABLE `admin_audit_log` (
  `serial_id` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(50) NOT NULL,
  `target_uid` varchar(50) NOT NULL DEFAULT '',
  `target_server` varchar(8) DEFAULT NULL,
  `action_type` tinyint(4) NOT NULL,
  `action_detail` varchar(2000) NOT NULL DEFAULT '',
  `ip` varchar(24) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serial_id`),
  KEY `tuid` (`target_uid`),
  KEY `uname` (`adminname`),
  KEY `atype` (`action_type`),
  KEY `ctime` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=414743 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_audit_log
-- ----------------------------

-- ----------------------------
-- Table structure for `adreward`
-- ----------------------------
DROP TABLE IF EXISTS `adreward`;
CREATE TABLE `adreward` (
  `device` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(10) NOT NULL DEFAULT '0',
  `reward` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `sendTime` bigint(10) DEFAULT NULL,
  `tryTimes` int(11) DEFAULT '0',
  PRIMARY KEY (`device`,`time`),
  KEY `index_time` (`time`),
  KEY `index_state_tryTime` (`state`,`tryTimes`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of adreward
-- ----------------------------

-- ----------------------------
-- Table structure for `aduser`
-- ----------------------------
DROP TABLE IF EXISTS `aduser`;
CREATE TABLE `aduser` (
  `adid` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_time` bigint(20) DEFAULT NULL,
  `click_time` bigint(20) DEFAULT NULL,
  `ip` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_retargeting` tinyint(1) DEFAULT NULL,
  `app_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_user_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `install_time` bigint(20) NOT NULL DEFAULT '0',
  `platform` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wifi` tinyint(1) DEFAULT NULL,
  `idfa` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advertising_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `android_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_source` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`adid`,`install_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aduser
-- ----------------------------

-- ----------------------------
-- Table structure for `alliance`
-- ----------------------------
DROP TABLE IF EXISTS `alliance`;
CREATE TABLE `alliance` (
  `allianceId` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alliancename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serverId` int(10) DEFAULT NULL,
  PRIMARY KEY (`allianceId`),
  KEY `alliancename_index` (`alliancename`),
  KEY `name_idx` (`alliancename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of alliance
-- ----------------------------

-- ----------------------------
-- Table structure for `bantime_reason`
-- ----------------------------
DROP TABLE IF EXISTS `bantime_reason`;
CREATE TABLE `bantime_reason` (
  `serverId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uid` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `operator` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opeDate` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `status` int(4) DEFAULT '0',
  PRIMARY KEY (`serverId`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bantime_reason
-- ----------------------------

-- ----------------------------
-- Table structure for `banwordrecord`
-- ----------------------------
DROP TABLE IF EXISTS `banwordrecord`;
CREATE TABLE `banwordrecord` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `server` int(4) NOT NULL,
  `banTimes` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`,`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of banwordrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `ban_record`
-- ----------------------------
DROP TABLE IF EXISTS `ban_record`;
CREATE TABLE `ban_record` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `serverId` int(10) NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(20) DEFAULT '0',
  `operator` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opDate` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uuid`),
  KEY `index_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ban_record
-- ----------------------------

-- ----------------------------
-- Table structure for `cn_regpay`
-- ----------------------------
DROP TABLE IF EXISTS `cn_regpay`;
CREATE TABLE `cn_regpay` (
  `date` int(8) NOT NULL,
  `pf` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dau` int(11) NOT NULL DEFAULT '0',
  `reg` int(11) DEFAULT '0',
  `payucnt` int(11) DEFAULT '0',
  `paysum` int(11) DEFAULT '0',
  PRIMARY KEY (`date`,`pf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cn_regpay
-- ----------------------------

-- ----------------------------
-- Table structure for `cn_regpay_accumulative`
-- ----------------------------
DROP TABLE IF EXISTS `cn_regpay_accumulative`;
CREATE TABLE `cn_regpay_accumulative` (
  `date` int(8) NOT NULL,
  `pf` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg` int(11) DEFAULT '0',
  `payucnt` int(11) DEFAULT '0',
  `paysum` int(11) DEFAULT '0',
  PRIMARY KEY (`date`,`pf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cn_regpay_accumulative
-- ----------------------------

-- ----------------------------
-- Table structure for `exchange`
-- ----------------------------
DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pf`,`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of exchange
-- ----------------------------

-- ----------------------------
-- Table structure for `fb_bind`
-- ----------------------------
DROP TABLE IF EXISTS `fb_bind`;
CREATE TABLE `fb_bind` (
  `fbid` bigint(20) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`fbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fb_bind
-- ----------------------------

-- ----------------------------
-- Table structure for `fb_friend`
-- ----------------------------
DROP TABLE IF EXISTS `fb_friend`;
CREATE TABLE `fb_friend` (
  `fid` bigint(20) NOT NULL,
  `tid` bigint(20) NOT NULL,
  `tserver` int(10) DEFAULT NULL,
  `tuid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fb_friend
-- ----------------------------

-- ----------------------------
-- Table structure for `fb_invite`
-- ----------------------------
DROP TABLE IF EXISTS `fb_invite`;
CREATE TABLE `fb_invite` (
  `fid` bigint(20) NOT NULL,
  `tid` bigint(20) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`fid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fb_invite
-- ----------------------------

-- ----------------------------
-- Table structure for `function_version`
-- ----------------------------
DROP TABLE IF EXISTS `function_version`;
CREATE TABLE `function_version` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '功能描述',
  `version` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of function_version
-- ----------------------------

-- ----------------------------
-- Table structure for `gashrequest`
-- ----------------------------
DROP TABLE IF EXISTS `gashrequest`;
CREATE TABLE `gashrequest` (
  `tradeid` bigint(20) NOT NULL,
  `method` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderinfo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `trans` blob,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`tradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gashrequest
-- ----------------------------

-- ----------------------------
-- Table structure for `gashsuccess`
-- ----------------------------
DROP TABLE IF EXISTS `gashsuccess`;
CREATE TABLE `gashsuccess` (
  `tradeid` bigint(20) NOT NULL,
  `finishTime` bigint(20) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirm` int(10) DEFAULT '0',
  PRIMARY KEY (`tradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gashsuccess
-- ----------------------------

-- ----------------------------
-- Table structure for `global_paylog`
-- ----------------------------
DROP TABLE IF EXISTS `global_paylog`;
CREATE TABLE `global_paylog` (
  `sid` int(11) NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `orderInfo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderParam` blob,
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,2) NOT NULL DEFAULT '0.00',
  `paid` double(10,2) DEFAULT '0.00',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  `buildingLv` int(11) DEFAULT NULL,
  `receiverId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`sid`,`uid`,`orderId`,`pf`),
  KEY `ipAndTime` (`ip`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of global_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_gift_log`
-- ----------------------------
DROP TABLE IF EXISTS `mail_gift_log`;
CREATE TABLE `mail_gift_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `toUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `toName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents` blob,
  `rewards` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isOpened` tinyint(2) DEFAULT NULL,
  `isRewarded` tinyint(2) DEFAULT NULL,
  `isThanks` tinyint(2) DEFAULT NULL,
  `sendTime` bigint(20) NOT NULL DEFAULT '0',
  `receiveTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`sendTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mail_gift_log
-- ----------------------------

-- ----------------------------
-- Table structure for `mod_info`
-- ----------------------------
DROP TABLE IF EXISTS `mod_info`;
CREATE TABLE `mod_info` (
  `uid` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `lang` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `server` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `mod_info_fk_01` (`server`) USING BTREE,
  KEY `lang_index` (`lang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mod_info
-- ----------------------------

-- ----------------------------
-- Table structure for `monitor_test`
-- ----------------------------
DROP TABLE IF EXISTS `monitor_test`;
CREATE TABLE `monitor_test` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1501 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of monitor_test
-- ----------------------------

-- ----------------------------
-- Table structure for `move_server_record`
-- ----------------------------
DROP TABLE IF EXISTS `move_server_record`;
CREATE TABLE `move_server_record` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `src` int(11) NOT NULL,
  `dst` int(11) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of move_server_record
-- ----------------------------

-- ----------------------------
-- Table structure for `mycardrequest`
-- ----------------------------
DROP TABLE IF EXISTS `mycardrequest`;
CREATE TABLE `mycardrequest` (
  `factradeseq` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `authcode` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methodparam` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tradeseq` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderInfo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(10) NOT NULL,
  `state` int(10) DEFAULT '0',
  PRIMARY KEY (`factradeseq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mycardrequest
-- ----------------------------

-- ----------------------------
-- Table structure for `mycardsuccess`
-- ----------------------------
DROP TABLE IF EXISTS `mycardsuccess`;
CREATE TABLE `mycardsuccess` (
  `tradeseq` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mycardid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fulldata` blob NOT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`tradeseq`),
  KEY `index_time` (`time`),
  KEY `index_mycardid` (`mycardid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mycardsuccess
-- ----------------------------

-- ----------------------------
-- Table structure for `outer_mail`
-- ----------------------------
DROP TABLE IF EXISTS `outer_mail`;
CREATE TABLE `outer_mail` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) DEFAULT '0',
  `mailType` int(11) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `regStartTime` bigint(20) DEFAULT NULL,
  `regEndTime` bigint(20) DEFAULT NULL,
  `lastOnlineTime` bigint(20) DEFAULT NULL,
  `levelMin` int(10) DEFAULT NULL,
  `levelMax` int(10) DEFAULT NULL,
  `title` blob,
  `contents` blob,
  `reward` blob,
  `updateVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `parse` int(11) DEFAULT NULL,
  `notification` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addr` blob,
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of outer_mail
-- ----------------------------

-- ----------------------------
-- Table structure for `paylog_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `paylog_tmp`;
CREATE TABLE `paylog_tmp` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `orderInfo` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,2) NOT NULL DEFAULT '0.00',
  `paid` double(10,2) DEFAULT '0.00',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  `buildingLv` int(11) DEFAULT '0',
  KEY `index_time_pf` (`uid`,`orderId`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of paylog_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for `paylog_tmp_2`
-- ----------------------------
DROP TABLE IF EXISTS `paylog_tmp_2`;
CREATE TABLE `paylog_tmp_2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `orderInfo` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,2) NOT NULL DEFAULT '0.00',
  `paid` double(10,2) DEFAULT '0.00',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  `buildingLv` int(11) DEFAULT '0',
  `receiverId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `index_time_pf` (`time`,`pf`),
  KEY `index_orderid` (`uid`,`orderId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of paylog_tmp_2
-- ----------------------------

-- ----------------------------
-- Table structure for `push_137`
-- ----------------------------
DROP TABLE IF EXISTS `push_137`;
CREATE TABLE `push_137` (
  `id` tinyint(1) NOT NULL,
  `time` smallint(4) DEFAULT '0',
  `title` blob,
  `contents` blob,
  `reward` blob,
  `notification` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of push_137
-- ----------------------------

-- ----------------------------
-- Table structure for `repeat_name`
-- ----------------------------
DROP TABLE IF EXISTS `repeat_name`;
CREATE TABLE `repeat_name` (
  `gameUid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gameUserName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `server` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `minServer` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gameUid`),
  KEY `server_index` (`server`),
  KEY `name_index` (`gameUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of repeat_name
-- ----------------------------

-- ----------------------------
-- Table structure for `risk_setting`
-- ----------------------------
DROP TABLE IF EXISTS `risk_setting`;
CREATE TABLE `risk_setting` (
  `id` varchar(40) COLLATE utf8_bin NOT NULL,
  `k1` int(10) DEFAULT NULL,
  `k2` int(10) DEFAULT NULL,
  `k3` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of risk_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `s10_us1000`
-- ----------------------------
DROP TABLE IF EXISTS `s10_us1000`;
CREATE TABLE `s10_us1000` (
  `uid` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of s10_us1000
-- ----------------------------

-- ----------------------------
-- Table structure for `server_info`
-- ----------------------------
DROP TABLE IF EXISTS `server_info`;
CREATE TABLE `server_info` (
  `id` int(10) NOT NULL,
  `type` int(4) NOT NULL,
  `cross_fight_server_id` int(10) DEFAULT NULL,
  `daoliangStart` bigint(20) DEFAULT '0',
  `daoliangEnd` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of server_info
-- ----------------------------

-- ----------------------------
-- Table structure for `server_push_auxiliary`
-- ----------------------------
DROP TABLE IF EXISTS `server_push_auxiliary`;
CREATE TABLE `server_push_auxiliary` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `serverStr` blob,
  `sqlStr` mediumblob,
  `status` int(4) DEFAULT '0',
  `operationTime` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of server_push_auxiliary
-- ----------------------------

-- ----------------------------
-- Table structure for `sign_in_feed`
-- ----------------------------
DROP TABLE IF EXISTS `sign_in_feed`;
CREATE TABLE `sign_in_feed` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `feed` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`feed`,`type`,`uid`),
  KEY `index_uid_time` (`uid`,`time`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sign_in_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `specialreward`
-- ----------------------------
DROP TABLE IF EXISTS `specialreward`;
CREATE TABLE `specialreward` (
  `gameuid` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` int(11) DEFAULT '0',
  `sendTime` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`gameuid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of specialreward
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(40) NOT NULL DEFAULT '',
  `pwd` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `userbindmapping`
-- ----------------------------
DROP TABLE IF EXISTS `userbindmapping`;
CREATE TABLE `userbindmapping` (
  `gameUid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mappingType` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mappingValue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastTime` bigint(20) DEFAULT '0',
  `active` int(11) DEFAULT '0',
  PRIMARY KEY (`gameUid`,`mappingType`),
  KEY `pf_pi_lasttime_index` (`mappingType`,`mappingValue`,`lastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userbindmapping
-- ----------------------------

-- ----------------------------
-- Table structure for `userbindmappingreverse`
-- ----------------------------
DROP TABLE IF EXISTS `userbindmappingreverse`;
CREATE TABLE `userbindmappingreverse` (
  `gameUid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mappingType` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mappingValue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastTime` bigint(20) DEFAULT '0',
  `active` int(11) DEFAULT '0',
  PRIMARY KEY (`gameUid`,`mappingType`),
  KEY `pf_pi_lasttime_index` (`mappingType`,`mappingValue`,`lastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userbindmappingreverse
-- ----------------------------

-- ----------------------------
-- Table structure for `userbindmappingreverse_oldbigone`
-- ----------------------------
DROP TABLE IF EXISTS `userbindmappingreverse_oldbigone`;
CREATE TABLE `userbindmappingreverse_oldbigone` (
  `gameUid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mappingType` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mappingValue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastTime` bigint(20) DEFAULT '0',
  `active` int(11) DEFAULT '0',
  PRIMARY KEY (`gameUid`,`mappingType`),
  KEY `pf_pi_lasttime_index` (`mappingType`,`mappingValue`,`lastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userbindmappingreverse_oldbigone
-- ----------------------------

-- ----------------------------
-- Table structure for `userbindmapping_oldbigone`
-- ----------------------------
DROP TABLE IF EXISTS `userbindmapping_oldbigone`;
CREATE TABLE `userbindmapping_oldbigone` (
  `gameUid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mappingType` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mappingValue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastTime` bigint(20) DEFAULT '0',
  `active` int(11) DEFAULT '0',
  PRIMARY KEY (`gameUid`,`mappingType`),
  KEY `pf_pi_lasttime_index` (`mappingType`,`mappingValue`,`lastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userbindmapping_oldbigone
-- ----------------------------

-- ----------------------------
-- Table structure for `usermapping`
-- ----------------------------
DROP TABLE IF EXISTS `usermapping`;
CREATE TABLE `usermapping` (
  `gameUid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mappingType` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mappingValue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastTime` bigint(20) DEFAULT '0',
  `active` int(11) DEFAULT '0',
  PRIMARY KEY (`gameUid`,`mappingType`),
  KEY `pf_pi_lasttime_index` (`mappingType`,`mappingValue`,`lastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usermapping
-- ----------------------------

-- ----------------------------
-- Table structure for `user_logging_events`
-- ----------------------------
DROP TABLE IF EXISTS `user_logging_events`;
CREATE TABLE `user_logging_events` (
  `email` varchar(40) NOT NULL DEFAULT '',
  `event_id` int(11) NOT NULL,
  `receiveTime` bigint(20) DEFAULT '0',
  `completeTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`email`,`event_id`),
  KEY `ULE_EVENTID_INDEX_01` (`event_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_logging_events
-- ----------------------------

-- ----------------------------
-- Table structure for `user_tasks`
-- ----------------------------
DROP TABLE IF EXISTS `user_tasks`;
CREATE TABLE `user_tasks` (
  `email` varchar(40) NOT NULL DEFAULT '',
  `event_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `receiveTime` bigint(20) DEFAULT '0',
  `completeTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`email`,`event_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `user_tasks_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `logging_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_tasks
-- ----------------------------
