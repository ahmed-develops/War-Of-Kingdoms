# Host: localhost  (Version: 5.5.40)
# Date: 2019-01-08 19:50:20
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Database "cokdb_global"
#

CREATE DATABASE IF NOT EXISTS `cokdb_global` /*!40100 DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci */;
USE `cokdb_global`;

#
# Structure for table "account_device_mapping"
#

DROP TABLE IF EXISTS `account_device_mapping`;
CREATE TABLE `account_device_mapping` (
  `gameUid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deviceId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`gameUid`,`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "account_device_mapping"
#


#
# Structure for table "account_new"
#

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

#
# Data for table "account_new"
#


#
# Structure for table "account_new_oldbigone"
#

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

#
# Data for table "account_new_oldbigone"
#


#
# Structure for table "activation"
#

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

#
# Data for table "activation"
#


#
# Structure for table "activation_bak"
#

DROP TABLE IF EXISTS `activation_bak`;
CREATE TABLE `activation_bak` (
  `code` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `series` int(11) DEFAULT NULL,
  `user` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "activation_bak"
#


#
# Structure for table "activation_config"
#

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

#
# Data for table "activation_config"
#


#
# Structure for table "activation_device_record"
#

DROP TABLE IF EXISTS `activation_device_record`;
CREATE TABLE `activation_device_record` (
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `deviceId` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`code`,`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "activation_device_record"
#


#
# Structure for table "adcost"
#

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

#
# Data for table "adcost"
#


#
# Structure for table "addata"
#

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

#
# Data for table "addata"
#


#
# Structure for table "admin_audit_log"
#

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "admin_audit_log"
#


#
# Structure for table "adreward"
#

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

#
# Data for table "adreward"
#


#
# Structure for table "alliance"
#

DROP TABLE IF EXISTS `alliance`;
CREATE TABLE `alliance` (
  `allianceId` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alliancename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serverId` int(10) DEFAULT NULL,
  PRIMARY KEY (`allianceId`),
  KEY `alliancename_index` (`alliancename`),
  KEY `name_idx` (`alliancename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance"
#


#
# Structure for table "ban_record"
#

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

#
# Data for table "ban_record"
#


#
# Structure for table "bantime_reason"
#

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

#
# Data for table "bantime_reason"
#


#
# Structure for table "banwordrecord"
#

DROP TABLE IF EXISTS `banwordrecord`;
CREATE TABLE `banwordrecord` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `server` int(4) NOT NULL,
  `banTimes` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`,`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "banwordrecord"
#


#
# Structure for table "cn_regpay"
#

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

#
# Data for table "cn_regpay"
#


#
# Structure for table "cn_regpay_accumulative"
#

DROP TABLE IF EXISTS `cn_regpay_accumulative`;
CREATE TABLE `cn_regpay_accumulative` (
  `date` int(8) NOT NULL,
  `pf` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg` int(11) DEFAULT '0',
  `payucnt` int(11) DEFAULT '0',
  `paysum` int(11) DEFAULT '0',
  PRIMARY KEY (`date`,`pf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cn_regpay_accumulative"
#


#
# Structure for table "exchange"
#

DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pf`,`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange"
#


#
# Structure for table "fb_bind"
#

DROP TABLE IF EXISTS `fb_bind`;
CREATE TABLE `fb_bind` (
  `fbid` bigint(20) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`fbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "fb_bind"
#


#
# Structure for table "fb_friend"
#

DROP TABLE IF EXISTS `fb_friend`;
CREATE TABLE `fb_friend` (
  `fid` bigint(20) NOT NULL,
  `tid` bigint(20) NOT NULL,
  `tserver` int(10) DEFAULT NULL,
  `tuid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "fb_friend"
#


#
# Structure for table "fb_invite"
#

DROP TABLE IF EXISTS `fb_invite`;
CREATE TABLE `fb_invite` (
  `fid` bigint(20) NOT NULL,
  `tid` bigint(20) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`fid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "fb_invite"
#


#
# Structure for table "gashrequest"
#

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

#
# Data for table "gashrequest"
#


#
# Structure for table "gashsuccess"
#

DROP TABLE IF EXISTS `gashsuccess`;
CREATE TABLE `gashsuccess` (
  `tradeid` bigint(20) NOT NULL,
  `finishTime` bigint(20) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirm` int(10) DEFAULT '0',
  PRIMARY KEY (`tradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "gashsuccess"
#


#
# Structure for table "global_paylog"
#

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

#
# Data for table "global_paylog"
#


#
# Structure for table "logging_event"
#

DROP TABLE IF EXISTS `logging_event`;
CREATE TABLE `logging_event` (
  `timestmp` bigint(20) NOT NULL,
  `formatted_message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logger_name` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level_string` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thread_name` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_flag` smallint(6) DEFAULT NULL,
  `arg0` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `arg1` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `arg2` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `arg3` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller_filename` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `caller_class` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `caller_method` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `caller_line` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`event_id`),
  KEY `format_msg_idx` (`formatted_message`(100)),
  KEY `arg_index` (`arg0`,`arg1`,`arg2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "logging_event"
#


#
# Structure for table "logging_event_exception"
#

DROP TABLE IF EXISTS `logging_event_exception`;
CREATE TABLE `logging_event_exception` (
  `event_id` bigint(20) NOT NULL,
  `i` smallint(6) NOT NULL,
  `trace_line` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`event_id`,`i`),
  KEY `trace_line_idx` (`trace_line`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logging_event_exception"
#


#
# Structure for table "logging_event_property"
#

DROP TABLE IF EXISTS `logging_event_property`;
CREATE TABLE `logging_event_property` (
  `event_id` bigint(20) NOT NULL,
  `mapped_key` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mapped_value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`event_id`,`mapped_key`),
  CONSTRAINT `logging_event_property_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `logging_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "logging_event_property"
#


#
# Structure for table "logging_event_stat"
#

DROP TABLE IF EXISTS `logging_event_stat`;
CREATE TABLE `logging_event_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "logging_event_stat"
#


#
# Structure for table "mail_gift_log"
#

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

#
# Data for table "mail_gift_log"
#


#
# Structure for table "mod_info"
#

DROP TABLE IF EXISTS `mod_info`;
CREATE TABLE `mod_info` (
  `uid` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `lang` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `server` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `mod_info_fk_01` (`server`) USING BTREE,
  KEY `lang_index` (`lang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "mod_info"
#


#
# Structure for table "monitor_test"
#

DROP TABLE IF EXISTS `monitor_test`;
CREATE TABLE `monitor_test` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monitor_test"
#


#
# Structure for table "move_server_record"
#

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

#
# Data for table "move_server_record"
#


#
# Structure for table "mycardrequest"
#

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

#
# Data for table "mycardrequest"
#


#
# Structure for table "mycardsuccess"
#

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

#
# Data for table "mycardsuccess"
#


#
# Structure for table "outer_mail"
#

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

#
# Data for table "outer_mail"
#


#
# Structure for table "paylog_tmp"
#

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

#
# Data for table "paylog_tmp"
#


#
# Structure for table "paylog_tmp_2"
#

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

#
# Data for table "paylog_tmp_2"
#


#
# Structure for table "push_137"
#

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

#
# Data for table "push_137"
#


#
# Structure for table "repeat_name"
#

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

#
# Data for table "repeat_name"
#


#
# Structure for table "risk_setting"
#

DROP TABLE IF EXISTS `risk_setting`;
CREATE TABLE `risk_setting` (
  `id` varchar(40) COLLATE utf8_bin NOT NULL,
  `k1` int(10) DEFAULT NULL,
  `k2` int(10) DEFAULT NULL,
  `k3` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "risk_setting"
#


#
# Structure for table "s10_us1000"
#

DROP TABLE IF EXISTS `s10_us1000`;
CREATE TABLE `s10_us1000` (
  `uid` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "s10_us1000"
#


#
# Structure for table "server_info"
#

DROP TABLE IF EXISTS `server_info`;
CREATE TABLE `server_info` (
  `id` int(10) NOT NULL,
  `type` int(4) NOT NULL,
  `cross_fight_server_id` int(10) DEFAULT NULL,
  `daoliangStart` bigint(20) DEFAULT '0',
  `daoliangEnd` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_info"
#


#
# Structure for table "server_push_auxiliary"
#

DROP TABLE IF EXISTS `server_push_auxiliary`;
CREATE TABLE `server_push_auxiliary` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `serverStr` blob,
  `sqlStr` mediumblob,
  `status` int(4) DEFAULT '0',
  `operationTime` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push_auxiliary"
#


#
# Structure for table "sign_in_feed"
#

DROP TABLE IF EXISTS `sign_in_feed`;
CREATE TABLE `sign_in_feed` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `feed` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`feed`,`type`,`uid`),
  KEY `index_uid_time` (`uid`,`time`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "sign_in_feed"
#


#
# Structure for table "specialreward"
#

DROP TABLE IF EXISTS `specialreward`;
CREATE TABLE `specialreward` (
  `gameuid` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` int(11) DEFAULT '0',
  `sendTime` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`gameuid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "specialreward"
#


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(40) NOT NULL DEFAULT '',
  `pwd` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#


#
# Structure for table "user_logging_events"
#

DROP TABLE IF EXISTS `user_logging_events`;
CREATE TABLE `user_logging_events` (
  `email` varchar(40) NOT NULL DEFAULT '',
  `event_id` int(11) NOT NULL,
  `receiveTime` bigint(20) DEFAULT '0',
  `completeTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`email`,`event_id`),
  KEY `ULE_EVENTID_INDEX_01` (`event_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user_logging_events"
#


#
# Structure for table "user_tasks"
#

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

#
# Data for table "user_tasks"
#


#
# Structure for table "userbindmapping"
#

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

#
# Data for table "userbindmapping"
#


#
# Structure for table "userbindmapping_oldbigone"
#

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

#
# Data for table "userbindmapping_oldbigone"
#


#
# Structure for table "userbindmappingreverse"
#

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

#
# Data for table "userbindmappingreverse"
#


#
# Structure for table "userbindmappingreverse_oldbigone"
#

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

#
# Data for table "userbindmappingreverse_oldbigone"
#


#
# Structure for table "usermapping"
#

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

#
# Data for table "usermapping"
#


#
# Database "cokdb_monitor"
#

CREATE DATABASE IF NOT EXISTS `cokdb_monitor` /*!40100 DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci */;
USE `cokdb_monitor`;

#
# Structure for table "logging_event"
#

DROP TABLE IF EXISTS `logging_event`;
CREATE TABLE `logging_event` (
  `timestmp` bigint(20) NOT NULL,
  `formatted_message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logger_name` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level_string` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thread_name` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_flag` smallint(6) DEFAULT NULL,
  `arg0` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `arg1` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `arg2` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `arg3` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller_filename` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `caller_class` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `caller_method` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `caller_line` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`event_id`),
  KEY `format_msg_idx` (`formatted_message`(100)),
  KEY `arg_index` (`arg0`,`arg1`,`arg2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "logging_event"
#


#
# Structure for table "logging_event_exception"
#

DROP TABLE IF EXISTS `logging_event_exception`;
CREATE TABLE `logging_event_exception` (
  `event_id` bigint(20) NOT NULL,
  `i` smallint(6) NOT NULL,
  `trace_line` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`event_id`,`i`),
  KEY `trace_line_idx` (`trace_line`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logging_event_exception"
#


#
# Structure for table "logging_event_property"
#

DROP TABLE IF EXISTS `logging_event_property`;
CREATE TABLE `logging_event_property` (
  `event_id` bigint(20) NOT NULL,
  `mapped_key` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mapped_value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`event_id`,`mapped_key`),
  CONSTRAINT `logging_event_property_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `logging_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "logging_event_property"
#


#
# Structure for table "logging_event_stat"
#

DROP TABLE IF EXISTS `logging_event_stat`;
CREATE TABLE `logging_event_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "logging_event_stat"
#


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(40) NOT NULL DEFAULT '',
  `pwd` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#


#
# Database "cokdb_pay"
#

CREATE DATABASE IF NOT EXISTS `cokdb_pay` /*!40100 DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci */;
USE `cokdb_pay`;

#
# Structure for table "payfive"
#

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

#
# Data for table "payfive"
#


#
# Structure for table "payrecord"
#

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

#
# Data for table "payrecord"
#


#
# Database "cokdb1"
#

CREATE DATABASE IF NOT EXISTS `cokdb1` /*!40100 DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci */;
USE `cokdb1`;

#
# Structure for table "activation"
#

DROP TABLE IF EXISTS `activation`;
CREATE TABLE `activation` (
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `series` int(11) DEFAULT NULL,
  `user` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `index_user` (`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "activation"
#


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

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `passmd5` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `auth` text COLLATE utf8_unicode_ci NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `addtime` bigint(20) NOT NULL,
  `lastactive` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "admin"
#


#
# Structure for table "affairs"
#

DROP TABLE IF EXISTS `affairs`;
CREATE TABLE `affairs` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `affairId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rewardTime` bigint(20) NOT NULL,
  `rewardNum` int(4) NOT NULL,
  `opt` int(2) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_type` (`type`,`rewardTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "affairs"
#


#
# Structure for table "affairs_value"
#

DROP TABLE IF EXISTS `affairs_value`;
CREATE TABLE `affairs_value` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `people` int(10) NOT NULL DEFAULT '0',
  `refreshTime` bigint(20) NOT NULL,
  `leagueTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "affairs_value"
#


#
# Structure for table "alliance"
#

DROP TABLE IF EXISTS `alliance`;
CREATE TABLE `alliance` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `alliancename` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbrRename` int(11) DEFAULT '0',
  `intro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `announce` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `curMember` int(11) DEFAULT '0',
  `maxMember` int(11) DEFAULT NULL,
  `recruit` int(11) DEFAULT NULL,
  `oldfightpower` int(11) DEFAULT NULL,
  `giftlevel` int(11) DEFAULT '0',
  `alliancepoint` int(11) DEFAULT '0',
  `reicon` int(11) DEFAULT '0',
  `rankone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ranktwo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankthree` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankfour` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankfive` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createtime` bigint(20) NOT NULL,
  `dau` int(11) DEFAULT '0',
  `rallyPoint` int(10) DEFAULT NULL,
  `ally` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enemy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `powerRestriction` bigint(10) DEFAULT '0',
  `castleRestriction` int(2) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance"
#


#
# Structure for table "alliance_apply"
#

DROP TABLE IF EXISTS `alliance_apply`;
CREATE TABLE `alliance_apply` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` blob,
  `type` int(11) DEFAULT NULL,
  `applyTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_user` (`userId`) USING BTREE,
  KEY `index_alliance` (`allianceId`) USING BTREE,
  KEY `index_time` (`applyTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_apply"
#


#
# Structure for table "alliance_battle_record"
#

DROP TABLE IF EXISTS `alliance_battle_record`;
CREATE TABLE `alliance_battle_record` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attAllianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defAllianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `report` blob NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_battle_record"
#


#
# Structure for table "alliance_battle_team"
#

DROP TABLE IF EXISTS `alliance_battle_team`;
CREATE TABLE `alliance_battle_team` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `targetId` int(11) NOT NULL,
  `targetUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetPic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetType` int(2) DEFAULT '0',
  `leaderUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `leaderName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `leaderId` int(11) DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxSoldiers` int(11) NOT NULL,
  `waitTime` bigint(20) NOT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_battle_team"
#


#
# Structure for table "alliance_comment"
#

DROP TABLE IF EXISTS `alliance_comment`;
CREATE TABLE `alliance_comment` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `senderUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senderAllianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` blob,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userpic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_comment"
#


#
# Structure for table "alliance_comment_shield"
#

DROP TABLE IF EXISTS `alliance_comment_shield`;
CREATE TABLE `alliance_comment_shield` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `icon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_comment_shield"
#


#
# Structure for table "alliance_donate"
#

DROP TABLE IF EXISTS `alliance_donate`;
CREATE TABLE `alliance_donate` (
  `uerid` varchar(45) NOT NULL,
  `scienceid` int(11) NOT NULL,
  `highres` varchar(45) DEFAULT NULL,
  `midres` varchar(45) DEFAULT NULL,
  `lowres` varchar(45) DEFAULT NULL,
  `highnum` int(11) DEFAULT '0',
  `midnum` int(11) DEFAULT '0',
  `lownum` int(11) DEFAULT '0',
  `higprogress` int(11) DEFAULT '0',
  `midprogress` int(11) DEFAULT '0',
  `lowprogress` int(11) DEFAULT '0',
  `highcontribute` int(11) DEFAULT '0',
  `midcontribute` int(11) DEFAULT '0',
  `lowcontribute` int(11) DEFAULT '0',
  `lastrefreshtime` bigint(20) DEFAULT '0',
  `highNotUse` int(11) DEFAULT '0',
  `midNotUse` int(11) DEFAULT '0',
  `midAvailable` int(10) DEFAULT '0',
  `highAvailable` int(10) DEFAULT '0',
  PRIMARY KEY (`uerid`,`scienceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "alliance_donate"
#


#
# Structure for table "alliance_gift"
#

DROP TABLE IF EXISTS `alliance_gift`;
CREATE TABLE `alliance_gift` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allianceid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `expiretime` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_gift"
#


#
# Structure for table "alliance_help"
#

DROP TABLE IF EXISTS `alliance_help`;
CREATE TABLE `alliance_help` (
  `helpId` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allianceId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senderId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isvalid` int(10) DEFAULT '1',
  `maxcount` int(10) DEFAULT '0',
  `nowcount` int(10) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `reduceSec` int(10) DEFAULT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `helpers` blob,
  PRIMARY KEY (`helpId`),
  KEY `index_alliance_help` (`content`) USING BTREE,
  KEY `allianceId_index` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_help"
#


#
# Structure for table "alliance_helper"
#

DROP TABLE IF EXISTS `alliance_helper`;
CREATE TABLE `alliance_helper` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `helpId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senderId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recvId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stats` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_alliance_helper` (`helpId`,`recvId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_helper"
#


#
# Structure for table "alliance_invite_move"
#

DROP TABLE IF EXISTS `alliance_invite_move`;
CREATE TABLE `alliance_invite_move` (
  `inviter` varchar(255) COLLATE utf8_bin NOT NULL,
  `invitee` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`inviter`,`invitee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_invite_move"
#


#
# Structure for table "alliance_member"
#

DROP TABLE IF EXISTS `alliance_member`;
CREATE TABLE `alliance_member` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT '0',
  `accPoint` int(11) DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `donateTime` bigint(20) DEFAULT NULL,
  `todaydonate` int(11) DEFAULT '0',
  `todayprogress` int(11) DEFAULT '0',
  `jointime` bigint(20) DEFAULT '0',
  `wood` int(11) DEFAULT '0',
  `stone` int(11) DEFAULT '0',
  `iron` int(11) DEFAULT '0',
  `food` int(11) DEFAULT '0',
  `silver` int(11) DEFAULT '0',
  `gold` int(11) DEFAULT '0',
  `donateCDTime` bigint(20) DEFAULT '0',
  `donateAvailable` int(2) DEFAULT '1',
  `yesterdayLogin` int(11) DEFAULT '0',
  `fight` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_member"
#


#
# Structure for table "alliance_science"
#

DROP TABLE IF EXISTS `alliance_science`;
CREATE TABLE `alliance_science` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scienceId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `wood` int(11) DEFAULT NULL,
  `stone` int(11) DEFAULT NULL,
  `iron` int(11) DEFAULT NULL,
  `food` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `donateprogress` int(11) DEFAULT '0',
  `donatefinish` int(4) DEFAULT '0',
  `researchstarttime` bigint(20) DEFAULT '0',
  `effectflag` int(4) DEFAULT '0',
  `power` int(11) DEFAULT '0',
  PRIMARY KEY (`allianceId`,`scienceId`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_science"
#


#
# Structure for table "alliance_science_upgrade"
#

DROP TABLE IF EXISTS `alliance_science_upgrade`;
CREATE TABLE `alliance_science_upgrade` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scienceId` int(11) DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `needTime` bigint(20) DEFAULT NULL,
  `accelerate` blob,
  PRIMARY KEY (`allianceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_science_upgrade"
#


#
# Structure for table "alliance_shop"
#

DROP TABLE IF EXISTS `alliance_shop`;
CREATE TABLE `alliance_shop` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`allianceId`,`goodsId`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shop"
#


#
# Structure for table "alliance_shop_make"
#

DROP TABLE IF EXISTS `alliance_shop_make`;
CREATE TABLE `alliance_shop_make` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `needTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shop_make"
#


#
# Structure for table "alliance_shophis"
#

DROP TABLE IF EXISTS `alliance_shophis`;
CREATE TABLE `alliance_shophis` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_alliance` (`allianceId`) USING BTREE,
  KEY `index_user` (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shophis"
#


#
# Structure for table "alliance_stats"
#

DROP TABLE IF EXISTS `alliance_stats`;
CREATE TABLE `alliance_stats` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `event_type` int(2) DEFAULT NULL,
  `fromUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `toUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `extraParam` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_stats"
#


#
# Structure for table "alliance_territory"
#

DROP TABLE IF EXISTS `alliance_territory`;
CREATE TABLE `alliance_territory` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `pointId` int(10) DEFAULT NULL,
  `towerPoint` int(10) DEFAULT NULL,
  `type` int(2) DEFAULT '14',
  `resType` int(2) DEFAULT NULL,
  `num` int(10) DEFAULT '1',
  `allianceId` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceName` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceAbbr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stat` int(2) DEFAULT '0',
  `active` int(2) DEFAULT '0',
  `level` int(2) DEFAULT '0',
  `maxDef` int(10) DEFAULT NULL,
  `curDef` int(10) DEFAULT NULL,
  `createId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ownerId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `buildingSpd` double(20,10) DEFAULT '0.0000000000',
  `updateTime` bigint(20) DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `lastUpdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `point_idx` (`pointId`) USING BTREE,
  KEY `alliance_idx` (`allianceId`) USING BTREE,
  KEY `update_idx` (`updateTime`) USING BTREE,
  KEY `start_idx` (`startTime`) USING BTREE,
  KEY `lastup_idx` (`lastUpdateTime`) USING BTREE,
  KEY `tower_idx` (`towerPoint`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_territory"
#


#
# Structure for table "army_total"
#

DROP TABLE IF EXISTS `army_total`;
CREATE TABLE `army_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "army_total"
#


#
# Structure for table "atk_name"
#

DROP TABLE IF EXISTS `atk_name`;
CREATE TABLE `atk_name` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "atk_name"
#


#
# Structure for table "atk_time"
#

DROP TABLE IF EXISTS `atk_time`;
CREATE TABLE `atk_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "atk_time"
#


#
# Structure for table "badwords"
#

DROP TABLE IF EXISTS `badwords`;
CREATE TABLE `badwords` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `words` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "badwords"
#


#
# Structure for table "black_land_res_dead"
#

DROP TABLE IF EXISTS `black_land_res_dead`;
CREATE TABLE `black_land_res_dead` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dead_res_time` (`deadFinishTime`) USING BTREE,
  KEY `areaId_index` (`areaId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "black_land_res_dead"
#


#
# Structure for table "c3p0testtable"
#

DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "c3p0testtable"
#


#
# Structure for table "celebrity"
#

DROP TABLE IF EXISTS `celebrity`;
CREATE TABLE `celebrity` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "celebrity"
#


#
# Structure for table "chat_shield"
#

DROP TABLE IF EXISTS `chat_shield`;
CREATE TABLE `chat_shield` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `other` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `owner_other_index` (`owner`,`other`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "chat_shield"
#


#
# Structure for table "city_monster"
#

DROP TABLE IF EXISTS `city_monster`;
CREATE TABLE `city_monster` (
  `uid` varchar(255) NOT NULL,
  `nextUpdateTime` bigint(20) DEFAULT NULL,
  `bigMonster` int(11) DEFAULT NULL,
  `smallMonster` int(20) DEFAULT NULL,
  `lastUpdateTime` bigint(20) DEFAULT NULL,
  `bigMonsterInOneDay` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "city_monster"
#


#
# Structure for table "compensate_shield_record"
#

DROP TABLE IF EXISTS `compensate_shield_record`;
CREATE TABLE `compensate_shield_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensate_shield_record"
#


#
# Structure for table "compensation_record"
#

DROP TABLE IF EXISTS `compensation_record`;
CREATE TABLE `compensation_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `count` int(10) DEFAULT '0',
  `lastCompensateTime` bigint(20) DEFAULT NULL,
  `isFirstOnFire` int(2) DEFAULT '1',
  PRIMARY KEY (`uid`),
  KEY `time_index` (`lastCompensateTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensation_record"
#


#
# Structure for table "compensation_record_shield"
#

DROP TABLE IF EXISTS `compensation_record_shield`;
CREATE TABLE `compensation_record_shield` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensation_record_shield"
#


#
# Structure for table "crystal_cost_record"
#

DROP TABLE IF EXISTS `crystal_cost_record`;
CREATE TABLE `crystal_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goldType` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `originalGold` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remainGold` bigint(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_user` (`time`,`userId`,`type`) USING BTREE,
  KEY `index_type` (`userId`,`time`,`type`) USING BTREE,
  KEY `index_goldType` (`goldType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "crystal_cost_record"
#


#
# Structure for table "def_time"
#

DROP TABLE IF EXISTS `def_time`;
CREATE TABLE `def_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "def_time"
#


#
# Structure for table "demo"
#

DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `key_` varchar(200) COLLATE utf8_bin NOT NULL,
  `value_` mediumblob,
  PRIMARY KEY (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "demo"
#


#
# Structure for table "device_mail_record"
#

DROP TABLE IF EXISTS `device_mail_record`;
CREATE TABLE `device_mail_record` (
  `deviceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `record` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`deviceId`,`record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "device_mail_record"
#


#
# Structure for table "donate_history"
#

DROP TABLE IF EXISTS `donate_history`;
CREATE TABLE `donate_history` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `donate` int(10) DEFAULT '0',
  `progress` int(10) DEFAULT NULL,
  `donateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `aid_idx` (`allianceId`) USING BTREE,
  KEY `time_idx` (`donateTime`) USING BTREE,
  KEY `progress_idx` (`progress`) USING BTREE,
  KEY `donate_idx` (`donate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "donate_history"
#


#
# Structure for table "donate_history_record"
#

DROP TABLE IF EXISTS `donate_history_record`;
CREATE TABLE `donate_history_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `donate` int(10) DEFAULT '0',
  `progress` int(10) DEFAULT NULL,
  `donateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `aid_idx` (`allianceId`) USING BTREE,
  KEY `time_idx` (`donateTime`) USING BTREE,
  KEY `progress_idx` (`progress`) USING BTREE,
  KEY `donate_idx` (`donate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "donate_history_record"
#


#
# Structure for table "exchange"
#

DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange"
#


#
# Structure for table "exchange_activity"
#

DROP TABLE IF EXISTS `exchange_activity`;
CREATE TABLE `exchange_activity` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `reward` blob,
  `refresh` int(11) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_activity"
#


#
# Structure for table "exchange_alliance_log"
#

DROP TABLE IF EXISTS `exchange_alliance_log`;
CREATE TABLE `exchange_alliance_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`orderId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_alliance_log"
#


#
# Structure for table "exchange_gift"
#

DROP TABLE IF EXISTS `exchange_gift`;
CREATE TABLE `exchange_gift` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `receiverId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sendTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`receiverId`,`exchangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_gift"
#


#
# Structure for table "exchange_gift_log"
#

DROP TABLE IF EXISTS `exchange_gift_log`;
CREATE TABLE `exchange_gift_log` (
  `mailId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `senderId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiverId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendTime` bigint(20) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mailId`,`sendTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_gift_log"
#


#
# Structure for table "exchange_order"
#

DROP TABLE IF EXISTS `exchange_order`;
CREATE TABLE `exchange_order` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_order"
#


#
# Structure for table "exchange_time"
#

DROP TABLE IF EXISTS `exchange_time`;
CREATE TABLE `exchange_time` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `beginTime` bigint(20) DEFAULT NULL,
  `buyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_time"
#


#
# Structure for table "exchange_visible"
#

DROP TABLE IF EXISTS `exchange_visible`;
CREATE TABLE `exchange_visible` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`exchangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_visible"
#


#
# Structure for table "firstpaylog"
#

DROP TABLE IF EXISTS `firstpaylog`;
CREATE TABLE `firstpaylog` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `orderInfo` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,2) NOT NULL DEFAULT '0.00',
  `paid` double(10,2) DEFAULT '0.00',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  PRIMARY KEY (`uid`,`orderId`,`pf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "firstpaylog"
#


#
# Structure for table "fiveonlinedata"
#

DROP TABLE IF EXISTS `fiveonlinedata`;
CREATE TABLE `fiveonlinedata` (
  `timeStamp` int(11) NOT NULL DEFAULT '0',
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`timeStamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "fiveonlinedata"
#


#
# Structure for table "gold_cost_record"
#

DROP TABLE IF EXISTS `gold_cost_record`;
CREATE TABLE `gold_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goldType` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `originalGold` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remainGold` bigint(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_user` (`time`,`userId`,`type`) USING BTREE,
  KEY `index_type` (`userId`,`time`,`type`) USING BTREE,
  KEY `index_goldType` (`goldType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "gold_cost_record"
#


#
# Structure for table "goods_cost_record"
#

DROP TABLE IF EXISTS `goods_cost_record`;
CREATE TABLE `goods_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `original` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remain` bigint(11) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_time` (`time`,`userId`,`itemId`) USING BTREE,
  KEY `index_user` (`userId`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "goods_cost_record"
#


#
# Structure for table "hot_buy_record"
#

DROP TABLE IF EXISTS `hot_buy_record`;
CREATE TABLE `hot_buy_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `buyCount` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`goodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "hot_buy_record"
#


#
# Structure for table "hot_goods_cost_record"
#

DROP TABLE IF EXISTS `hot_goods_cost_record`;
CREATE TABLE `hot_goods_cost_record` (
  `uuid` varchar(255) COLLATE utf8_bin NOT NULL,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `buyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `goods_idx` (`goodsId`) USING BTREE,
  KEY `time_idx` (`buyTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hot_goods_cost_record"
#


#
# Structure for table "hot_info_before_refresh"
#

DROP TABLE IF EXISTS `hot_info_before_refresh`;
CREATE TABLE `hot_info_before_refresh` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `itemId` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) NOT NULL DEFAULT '0',
  `gold` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`goodsId`,`price`,`refreshTime`),
  KEY `time_idx` (`refreshTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hot_info_before_refresh"
#


#
# Structure for table "hot_refresh_record"
#

DROP TABLE IF EXISTS `hot_refresh_record`;
CREATE TABLE `hot_refresh_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "hot_refresh_record"
#


#
# Structure for table "invite_count"
#

DROP TABLE IF EXISTS `invite_count`;
CREATE TABLE `invite_count` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "invite_count"
#


#
# Structure for table "invitee"
#

DROP TABLE IF EXISTS `invitee`;
CREATE TABLE `invitee` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `inviterUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "invitee"
#


#
# Structure for table "inviter"
#

DROP TABLE IF EXISTS `inviter`;
CREATE TABLE `inviter` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `inviteeUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `inviter_index_001` (`uid`,`type`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "inviter"
#


#
# Structure for table "king_present_record"
#

DROP TABLE IF EXISTS `king_present_record`;
CREATE TABLE `king_present_record` (
  `toUserId` varchar(40) NOT NULL,
  `presentId` int(11) NOT NULL,
  `presentNameId` int(11) NOT NULL,
  `sendTime` bigint(20) NOT NULL,
  `abbr` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`toUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "king_present_record"
#


#
# Structure for table "kingdom_cross_fight_history"
#

DROP TABLE IF EXISTS `kingdom_cross_fight_history`;
CREATE TABLE `kingdom_cross_fight_history` (
  `serverId` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `round` int(8) NOT NULL,
  `score` bigint(20) DEFAULT '0',
  `rank` int(8) DEFAULT '0',
  PRIMARY KEY (`serverId`,`startTime`,`round`),
  KEY `kingdom_startTime` (`serverId`,`startTime`) USING BTREE,
  KEY `startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kingdom_cross_fight_history"
#


#
# Structure for table "kingdom_position"
#

DROP TABLE IF EXISTS `kingdom_position`;
CREATE TABLE `kingdom_position` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `positionId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `chNameFlag` int(11) DEFAULT NULL,
  `preKingUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relinquishEndTime` bigint(20) DEFAULT NULL,
  `currResourceType` int(11) DEFAULT NULL,
  `chBannerFlag` int(11) DEFAULT NULL,
  `chThronePicFlag` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kingdom_position"
#


#
# Structure for table "logaction"
#

DROP TABLE IF EXISTS `logaction`;
CREATE TABLE `logaction` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `param` blob,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`action`,`code`) USING BTREE,
  KEY `index2` (`user`,`timeStamp`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logaction"
#


#
# Structure for table "logaction2"
#

DROP TABLE IF EXISTS `logaction2`;
CREATE TABLE `logaction2` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`action`,`code`) USING BTREE,
  KEY `index2` (`user`,`timeStamp`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logaction2"
#


#
# Structure for table "logrecord"
#

DROP TABLE IF EXISTS `logrecord`;
CREATE TABLE `logrecord` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `category` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(11) DEFAULT NULL,
  `param4` int(11) DEFAULT NULL,
  `data1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`category`,`type`) USING BTREE,
  KEY `index_2` (`user`,`category`,`type`,`timeStamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logrecord"
#


#
# Structure for table "logstat"
#

DROP TABLE IF EXISTS `logstat`;
CREATE TABLE `logstat` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logstat"
#


#
# Structure for table "logtemp"
#

DROP TABLE IF EXISTS `logtemp`;
CREATE TABLE `logtemp` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logtemp"
#


#
# Structure for table "logtmp"
#

DROP TABLE IF EXISTS `logtmp`;
CREATE TABLE `logtmp` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logtmp"
#


#
# Structure for table "lottery_log"
#

DROP TABLE IF EXISTS `lottery_log`;
CREATE TABLE `lottery_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `superMode` tinyint(2) DEFAULT NULL,
  `lotteryId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lotteryInfo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "lottery_log"
#


#
# Structure for table "lottery_record"
#

DROP TABLE IF EXISTS `lottery_record`;
CREATE TABLE `lottery_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `superMode` int(2) NOT NULL,
  `step` int(11) NOT NULL,
  `times1` int(11) NOT NULL,
  `times2` int(11) NOT NULL,
  `multiple` int(11) NOT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryInfo1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryInfo2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `times3` int(10) DEFAULT '0',
  `times4` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "lottery_record"
#


#
# Structure for table "mail"
#

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  `reply` int(2) NOT NULL DEFAULT '0',
  `translationId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE,
  KEY `index_toUserTime` (`toUser`,`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail"
#


#
# Structure for table "mail_1016"
#

DROP TABLE IF EXISTS `mail_1016`;
CREATE TABLE `mail_1016` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_1016"
#


#
# Structure for table "mail_20141030"
#

DROP TABLE IF EXISTS `mail_20141030`;
CREATE TABLE `mail_20141030` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_20141030"
#


#
# Structure for table "mail_20150212"
#

DROP TABLE IF EXISTS `mail_20150212`;
CREATE TABLE `mail_20150212` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  `reply` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE,
  KEY `index_toUserTime` (`toUser`,`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_20150212"
#


#
# Structure for table "mail_contents_1016"
#

DROP TABLE IF EXISTS `mail_contents_1016`;
CREATE TABLE `mail_contents_1016` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_contents_1016"
#


#
# Structure for table "mail_contents_20141030"
#

DROP TABLE IF EXISTS `mail_contents_20141030`;
CREATE TABLE `mail_contents_20141030` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_contents_20141030"
#


#
# Structure for table "mail_group"
#

DROP TABLE IF EXISTS `mail_group`;
CREATE TABLE `mail_group` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `groupType` int(4) NOT NULL DEFAULT '1',
  `groupIndex` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`groupType`,`groupIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_group"
#


#
# Structure for table "mail_group_20150212"
#

DROP TABLE IF EXISTS `mail_group_20150212`;
CREATE TABLE `mail_group_20150212` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `groupType` int(4) NOT NULL DEFAULT '1',
  `groupIndex` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`groupType`,`groupIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_group_20150212"
#


#
# Structure for table "material_control"
#

DROP TABLE IF EXISTS `material_control`;
CREATE TABLE `material_control` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(8) NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "material_control"
#


#
# Structure for table "mod_authorize"
#

DROP TABLE IF EXISTS `mod_authorize`;
CREATE TABLE `mod_authorize` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `authorize` int(2) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "mod_authorize"
#


#
# Structure for table "mod_record"
#

DROP TABLE IF EXISTS `mod_record`;
CREATE TABLE `mod_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `toUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailType` int(5) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_idx` (`fromUser`) USING BTREE,
  KEY `to_idx` (`toUser`) USING BTREE,
  KEY `time_Idx` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "mod_record"
#


#
# Structure for table "monitor_test"
#

DROP TABLE IF EXISTS `monitor_test`;
CREATE TABLE `monitor_test` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monitor_test"
#


#
# Structure for table "monster_siege"
#

DROP TABLE IF EXISTS `monster_siege`;
CREATE TABLE `monster_siege` (
  `allianceId` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `monsterCastleId` int(8) DEFAULT '0',
  `startTime` bigint(20) DEFAULT '0',
  `endTime` bigint(20) DEFAULT '0',
  `state` int(8) NOT NULL DEFAULT '0',
  `currPhase` int(8) DEFAULT '0',
  `currRoundIndex` int(8) DEFAULT '0',
  `currRoundStartTime` bigint(20) DEFAULT '0',
  `currMemberUidListInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `memberUidListInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `allianceKillCount` bigint(20) DEFAULT '0',
  `currMonsterInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `monsterCastleIds` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `monsterPerRoundNum` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`allianceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monster_siege"
#


#
# Structure for table "monster_siege_top_history"
#

DROP TABLE IF EXISTS `monster_siege_top_history`;
CREATE TABLE `monster_siege_top_history` (
  `allianceId` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` bigint(20) NOT NULL,
  `allianceAbbr` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allianceName` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `siegeRound` int(8) DEFAULT '0',
  `validMemberCount` int(8) DEFAULT '0',
  `allianceCount` int(10) DEFAULT '0',
  `activityAllianceCount` int(10) DEFAULT '0',
  `activity30AllianceCount` int(10) DEFAULT '0',
  `activity40AllianceCount` int(10) DEFAULT '0',
  `activity50AllianceCount` int(10) DEFAULT '0',
  `monsterPerRoundNum` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`allianceId`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monster_siege_top_history"
#


#
# Structure for table "monthly_card"
#

DROP TABLE IF EXISTS `monthly_card`;
CREATE TABLE `monthly_card` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `accept` int(8) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  `available` int(4) DEFAULT '0',
  `buyTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monthly_card"
#


#
# Structure for table "move_city_time"
#

DROP TABLE IF EXISTS `move_city_time`;
CREATE TABLE `move_city_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "move_city_time"
#


#
# Structure for table "move_total"
#

DROP TABLE IF EXISTS `move_total`;
CREATE TABLE `move_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "move_total"
#


#
# Structure for table "notice_cost_log"
#

DROP TABLE IF EXISTS `notice_cost_log`;
CREATE TABLE `notice_cost_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`itemId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "notice_cost_log"
#


#
# Structure for table "oldmailinsert"
#

DROP TABLE IF EXISTS `oldmailinsert`;
CREATE TABLE `oldmailinsert` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "oldmailinsert"
#


#
# Structure for table "parse_info"
#

DROP TABLE IF EXISTS `parse_info`;
CREATE TABLE `parse_info` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `status` int(4) NOT NULL,
  `audio` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "parse_info"
#


#
# Structure for table "pay_action"
#

DROP TABLE IF EXISTS `pay_action`;
CREATE TABLE `pay_action` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`exchangeId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_action"
#


#
# Structure for table "pay_request"
#

DROP TABLE IF EXISTS `pay_request`;
CREATE TABLE `pay_request` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `purchaseId` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `productId` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `status` int(4) DEFAULT '0',
  `finishTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`pf`,`time`),
  KEY `index_uid_pf_productId` (`uid`,`pf`,`purchaseId`) USING BTREE,
  KEY `index_uid_pf_purchaseId` (`uid`,`pf`,`purchaseId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_request"
#


#
# Structure for table "pay_total"
#

DROP TABLE IF EXISTS `pay_total`;
CREATE TABLE `pay_total` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  `type` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_total"
#


#
# Structure for table "pay_total_log"
#

DROP TABLE IF EXISTS `pay_total_log`;
CREATE TABLE `pay_total_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  `type` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`level`,`createTime`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_total_log"
#


#
# Structure for table "paycheck"
#

DROP TABLE IF EXISTS `paycheck`;
CREATE TABLE `paycheck` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apidata` blob,
  PRIMARY KEY (`uid`,`orderId`,`pf`),
  KEY `index_time_status` (`time`,`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paycheck"
#


#
# Structure for table "paylog"
#

DROP TABLE IF EXISTS `paylog`;
CREATE TABLE `paylog` (
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
  PRIMARY KEY (`uid`,`orderId`,`pf`),
  KEY `index_time_pf` (`time`,`pf`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paylog"
#


#
# Structure for table "paylog_back"
#

DROP TABLE IF EXISTS `paylog_back`;
CREATE TABLE `paylog_back` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,0) NOT NULL DEFAULT '0',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  PRIMARY KEY (`uid`,`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paylog_back"
#


#
# Structure for table "pic_upload_record"
#

DROP TABLE IF EXISTS `pic_upload_record`;
CREATE TABLE `pic_upload_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `picVer` int(11) DEFAULT '0',
  `updateTime` bigint(10) DEFAULT '9223372036854775807',
  `report` int(2) DEFAULT '0',
  `banCount` int(2) DEFAULT '0',
  `banTime` bigint(10) DEFAULT '0',
  `stat` int(2) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `time_idx` (`updateTime`) USING BTREE,
  KEY `report_idx` (`report`) USING BTREE,
  KEY `stat_idx` (`stat`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "pic_upload_record"
#


#
# Structure for table "player"
#

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "player"
#


#
# Structure for table "playerinfo"
#

DROP TABLE IF EXISTS `playerinfo`;
CREATE TABLE `playerinfo` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `battlesWin` int(8) DEFAULT '0',
  `battlesLose` int(8) DEFAULT '0',
  `attacksWin` int(8) DEFAULT '0',
  `attacksLose` int(8) DEFAULT '0',
  `defensesWin` int(8) DEFAULT '0',
  `detectNum` int(8) DEFAULT '0',
  `armyKill` int(8) DEFAULT '0',
  `armyDead` int(8) DEFAULT '0',
  `armyCure` int(8) DEFAULT '0',
  `cityDestroyed` int(8) DEFAULT '0',
  `questPower` int(8) DEFAULT '0',
  `power` bigint(20) DEFAULT '0',
  `buildingPower` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `power_index` (`power`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "playerinfo"
#


#
# Structure for table "pray_record"
#

DROP TABLE IF EXISTS `pray_record`;
CREATE TABLE `pray_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `cost` int(10) NOT NULL DEFAULT '0',
  `resource` varchar(20) COLLATE utf8_bin NOT NULL,
  `num` int(10) NOT NULL,
  `hit` int(2) DEFAULT '0',
  `prayTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `resource_idx` (`resource`) USING BTREE,
  KEY `time_idx` (`prayTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "pray_record"
#


#
# Structure for table "protect_total"
#

DROP TABLE IF EXISTS `protect_total`;
CREATE TABLE `protect_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "protect_total"
#


#
# Structure for table "push_log"
#

DROP TABLE IF EXISTS `push_log`;
CREATE TABLE `push_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `message` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "push_log"
#


#
# Structure for table "push_record"
#

DROP TABLE IF EXISTS `push_record`;
CREATE TABLE `push_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0',
  `msg` blob,
  `status` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "push_record"
#


#
# Structure for table "queue"
#

DROP TABLE IF EXISTS `queue`;
CREATE TABLE `queue` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `qid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `itemId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `isHelped` int(10) DEFAULT NULL,
  `para` int(10) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ownerId_index_001` (`ownerId`) USING BTREE,
  KEY `updateTime_index` (`updateTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "queue"
#


#
# Structure for table "refund_log"
#

DROP TABLE IF EXISTS `refund_log`;
CREATE TABLE `refund_log` (
  `refundId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(8) NOT NULL,
  `time` bigint(20) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `itemId` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `original` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remain` bigint(11) NOT NULL,
  PRIMARY KEY (`refundId`,`order`),
  KEY `index_time` (`time`,`userId`,`type`,`itemId`) USING BTREE,
  KEY `index_user` (`userId`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "refund_log"
#


#
# Structure for table "report"
#

DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `report` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_time` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "report"
#


#
# Structure for table "reward_107"
#

DROP TABLE IF EXISTS `reward_107`;
CREATE TABLE `reward_107` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `version` varchar(255) COLLATE utf8_bin NOT NULL,
  `rewardLevel` int(2) DEFAULT '0',
  `rewardStatus` int(2) DEFAULT '0',
  `endTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`version`),
  KEY `time_idx` (`endTime`) USING BTREE,
  KEY `stat_idx` (`rewardStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "reward_107"
#


#
# Structure for table "score_act"
#

DROP TABLE IF EXISTS `score_act`;
CREATE TABLE `score_act` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `finishFlag` int(11) DEFAULT '0',
  `rewardFlag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "score_act"
#


#
# Structure for table "server_activity"
#

DROP TABLE IF EXISTS `server_activity`;
CREATE TABLE `server_activity` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `rewad` int(11) DEFAULT '0',
  `events` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_activity"
#


#
# Structure for table "server_announce"
#

DROP TABLE IF EXISTS `server_announce`;
CREATE TABLE `server_announce` (
  `serverId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `randomGeneral` blob,
  `lastMoniterPushTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`serverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_announce"
#


#
# Structure for table "server_config"
#

DROP TABLE IF EXISTS `server_config`;
CREATE TABLE `server_config` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `stat` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_config"
#


#
# Structure for table "server_history_top_score"
#

DROP TABLE IF EXISTS `server_history_top_score`;
CREATE TABLE `server_history_top_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `score` double DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_history_top_score"
#


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

#
# Structure for table "server_mail_record"
#

DROP TABLE IF EXISTS `server_mail_record`;
CREATE TABLE `server_mail_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `record` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(2) DEFAULT '0',
  KEY `index_uid` (`uid`,`record`,`state`) USING BTREE,
  KEY `index_record` (`record`,`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_mail_record"
#


#
# Structure for table "server_push"
#

DROP TABLE IF EXISTS `server_push`;
CREATE TABLE `server_push` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) DEFAULT '0',
  `mailType` int(11) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `regStartTime` bigint(20) DEFAULT NULL,
  `regEndTime` bigint(20) DEFAULT NULL,
  `lastOnlineTimeBegin` bigint(20) DEFAULT NULL,
  `lastOnlineTime` bigint(20) DEFAULT NULL,
  `levelMin` int(10) DEFAULT NULL,
  `levelMax` int(10) DEFAULT NULL,
  `title` blob,
  `contents` blob,
  `reward` blob,
  `updateVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `parse` int(11) DEFAULT NULL,
  `notification` blob,
  `reply` int(2) DEFAULT NULL,
  `likeStatus` int(2) DEFAULT NULL,
  `confirm` int(10) DEFAULT '0',
  `platform` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemIdFlag` int(2) DEFAULT '0',
  `activityId` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `countries` varchar(516) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceLimit` int(2) DEFAULT NULL,
  `CDKeySeries` int(11) DEFAULT NULL,
  `bind` int(11) DEFAULT '0',
  `bLvMin` int(11) DEFAULT '0',
  `bLvMax` int(11) DEFAULT '0',
  `HDflag` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push"
#


#
# Structure for table "server_push_20141106"
#

DROP TABLE IF EXISTS `server_push_20141106`;
CREATE TABLE `server_push_20141106` (
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
  `reply` int(2) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push_20141106"
#


#
# Structure for table "server_push_config"
#

DROP TABLE IF EXISTS `server_push_config`;
CREATE TABLE `server_push_config` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `contents` blob,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push_config"
#


#
# Structure for table "server_score"
#

DROP TABLE IF EXISTS `server_score`;
CREATE TABLE `server_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `activity` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `readyTime` bigint(20) DEFAULT NULL,
  `beginTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `rewad` int(11) DEFAULT '0',
  `round` int(11) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_score"
#


#
# Structure for table "server_top_score"
#

DROP TABLE IF EXISTS `server_top_score`;
CREATE TABLE `server_top_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_top_score"
#


#
# Structure for table "server_update"
#

DROP TABLE IF EXISTS `server_update`;
CREATE TABLE `server_update` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `idx` int(10) NOT NULL,
  `content` blob,
  `chineseContent` blob,
  PRIMARY KEY (`uid`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_update"
#


#
# Structure for table "server_update_suggestion"
#

DROP TABLE IF EXISTS `server_update_suggestion`;
CREATE TABLE `server_update_suggestion` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `updateId` varchar(255) COLLATE utf8_bin NOT NULL,
  `idx` int(10) NOT NULL,
  `suggestion` blob,
  `real_uid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `server` int(10) DEFAULT NULL,
  `real_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reward_status` int(5) DEFAULT '0',
  PRIMARY KEY (`uid`,`updateId`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_update_suggestion"
#


#
# Structure for table "server_usermail"
#

DROP TABLE IF EXISTS `server_usermail`;
CREATE TABLE `server_usermail` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sendBy` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sendTime` bigint(20) NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents` blob,
  `reward` blob,
  `rewardStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_sendTime` (`sendTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_usermail"
#


#
# Structure for table "sign_in"
#

DROP TABLE IF EXISTS `sign_in`;
CREATE TABLE `sign_in` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` int(10) DEFAULT '0',
  `signInTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "sign_in"
#


#
# Structure for table "sign_in_feed"
#

DROP TABLE IF EXISTS `sign_in_feed`;
CREATE TABLE `sign_in_feed` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `feed` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`type`,`feed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "sign_in_feed"
#


#
# Structure for table "staff"
#

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "staff"
#


#
# Structure for table "stat_date"
#

DROP TABLE IF EXISTS `stat_date`;
CREATE TABLE `stat_date` (
  `date` date NOT NULL,
  `dau` int(11) NOT NULL DEFAULT '0',
  `pay` double(12,2) NOT NULL DEFAULT '0.00',
  `reg` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_date"
#


#
# Structure for table "stat_login"
#

DROP TABLE IF EXISTS `stat_login`;
CREATE TABLE `stat_login` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login"
#


#
# Structure for table "stat_login_2017_10"
#

DROP TABLE IF EXISTS `stat_login_2017_10`;
CREATE TABLE `stat_login_2017_10` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_10"
#


#
# Structure for table "stat_login_2017_11"
#

DROP TABLE IF EXISTS `stat_login_2017_11`;
CREATE TABLE `stat_login_2017_11` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_11"
#


#
# Structure for table "stat_login_2017_12"
#

DROP TABLE IF EXISTS `stat_login_2017_12`;
CREATE TABLE `stat_login_2017_12` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_12"
#


#
# Structure for table "stat_login_2017_6"
#

DROP TABLE IF EXISTS `stat_login_2017_6`;
CREATE TABLE `stat_login_2017_6` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_6"
#


#
# Structure for table "stat_login_2017_7"
#

DROP TABLE IF EXISTS `stat_login_2017_7`;
CREATE TABLE `stat_login_2017_7` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_7"
#


#
# Structure for table "stat_login_2017_8"
#

DROP TABLE IF EXISTS `stat_login_2017_8`;
CREATE TABLE `stat_login_2017_8` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_8"
#


#
# Structure for table "stat_login_2017_9"
#

DROP TABLE IF EXISTS `stat_login_2017_9`;
CREATE TABLE `stat_login_2017_9` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_9"
#


#
# Structure for table "stat_login_2018_1"
#

DROP TABLE IF EXISTS `stat_login_2018_1`;
CREATE TABLE `stat_login_2018_1` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_1"
#


#
# Structure for table "stat_login_2018_10"
#

DROP TABLE IF EXISTS `stat_login_2018_10`;
CREATE TABLE `stat_login_2018_10` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_10"
#


#
# Structure for table "stat_login_2018_11"
#

DROP TABLE IF EXISTS `stat_login_2018_11`;
CREATE TABLE `stat_login_2018_11` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_11"
#


#
# Structure for table "stat_login_2018_12"
#

DROP TABLE IF EXISTS `stat_login_2018_12`;
CREATE TABLE `stat_login_2018_12` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_12"
#


#
# Structure for table "stat_login_2018_2"
#

DROP TABLE IF EXISTS `stat_login_2018_2`;
CREATE TABLE `stat_login_2018_2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_2"
#


#
# Structure for table "stat_login_2018_3"
#

DROP TABLE IF EXISTS `stat_login_2018_3`;
CREATE TABLE `stat_login_2018_3` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_3"
#


#
# Structure for table "stat_login_2018_4"
#

DROP TABLE IF EXISTS `stat_login_2018_4`;
CREATE TABLE `stat_login_2018_4` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_4"
#


#
# Structure for table "stat_login_2018_5"
#

DROP TABLE IF EXISTS `stat_login_2018_5`;
CREATE TABLE `stat_login_2018_5` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_5"
#


#
# Structure for table "stat_login_2018_6"
#

DROP TABLE IF EXISTS `stat_login_2018_6`;
CREATE TABLE `stat_login_2018_6` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_6"
#


#
# Structure for table "stat_login_2018_7"
#

DROP TABLE IF EXISTS `stat_login_2018_7`;
CREATE TABLE `stat_login_2018_7` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_7"
#


#
# Structure for table "stat_login_2018_8"
#

DROP TABLE IF EXISTS `stat_login_2018_8`;
CREATE TABLE `stat_login_2018_8` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_8"
#


#
# Structure for table "stat_login_2018_9"
#

DROP TABLE IF EXISTS `stat_login_2018_9`;
CREATE TABLE `stat_login_2018_9` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_9"
#


#
# Structure for table "stat_login_2019_0"
#

DROP TABLE IF EXISTS `stat_login_2019_0`;
CREATE TABLE `stat_login_2019_0` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2019_0"
#


#
# Structure for table "stat_login2"
#

DROP TABLE IF EXISTS `stat_login2`;
CREATE TABLE `stat_login2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login2"
#


#
# Structure for table "stat_phone"
#

DROP TABLE IF EXISTS `stat_phone`;
CREATE TABLE `stat_phone` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_phone"
#


#
# Structure for table "stat_reg"
#

DROP TABLE IF EXISTS `stat_reg`;
CREATE TABLE `stat_reg` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referrer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipcountry` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`type`),
  KEY `index_time_pf_country` (`time`,`pf`,`country`) USING BTREE,
  KEY `country_index` (`country`) USING BTREE,
  KEY `type_idx` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_reg"
#


#
# Structure for table "stat_tutorial"
#

DROP TABLE IF EXISTS `stat_tutorial`;
CREATE TABLE `stat_tutorial` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`) USING BTREE,
  KEY `index_tutorial` (`tutorial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial"
#


#
# Structure for table "stat_tutorial_analyze"
#

DROP TABLE IF EXISTS `stat_tutorial_analyze`;
CREATE TABLE `stat_tutorial_analyze` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`) USING BTREE,
  KEY `index_tutorial` (`tutorial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial_analyze"
#


#
# Structure for table "stat_tutorial_v2"
#

DROP TABLE IF EXISTS `stat_tutorial_v2`;
CREATE TABLE `stat_tutorial_v2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`,`appVersion`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial_v2"
#


#
# Structure for table "suggestion"
#

DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE `suggestion` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `castlelevel` int(11) DEFAULT NULL,
  `contents` blob NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `replyContent` blob,
  `replyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `ownerId` (`ownerId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "suggestion"
#


#
# Structure for table "switches"
#

DROP TABLE IF EXISTS `switches`;
CREATE TABLE `switches` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stat` int(2) DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "switches"
#


#
# Structure for table "tavern"
#

DROP TABLE IF EXISTS `tavern`;
CREATE TABLE `tavern` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `free` int(4) NOT NULL,
  `firstFree` int(2) NOT NULL,
  `firstPay` int(2) NOT NULL,
  `freeTimes` int(4) NOT NULL,
  `payTimes` int(4) NOT NULL,
  `generals` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId5` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId6` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruit1` int(2) NOT NULL,
  `recruit2` int(2) NOT NULL,
  `recruit3` int(2) NOT NULL,
  `recruit4` int(2) NOT NULL,
  `recruit5` int(2) NOT NULL,
  `recruit6` int(2) NOT NULL,
  `addFreeTime` bigint(20) NOT NULL,
  `resetResult` int(4) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "tavern"
#


#
# Structure for table "team_atk_time"
#

DROP TABLE IF EXISTS `team_atk_time`;
CREATE TABLE `team_atk_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "team_atk_time"
#


#
# Structure for table "territory_user_effect"
#

DROP TABLE IF EXISTS `territory_user_effect`;
CREATE TABLE `territory_user_effect` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `pointId` int(10) NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stat` int(2) DEFAULT NULL,
  `active` int(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`pointId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "territory_user_effect"
#


#
# Structure for table "time_reward"
#

DROP TABLE IF EXISTS `time_reward`;
CREATE TABLE `time_reward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rewardId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastRewardTime` bigint(20) DEFAULT NULL,
  `nextRewardTime` bigint(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "time_reward"
#


#
# Structure for table "train"
#

DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `genUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finishTrain` bigint(20) NOT NULL,
  `endTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "train"
#


#
# Structure for table "translation"
#

DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` blob COMMENT '发言内容',
  `en` blob,
  `originalLang` varchar(255) DEFAULT 'cn',
  PRIMARY KEY (`id`),
  KEY `index_content` (`content`(50)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "translation"
#


#
# Structure for table "translation_record"
#

DROP TABLE IF EXISTS `translation_record`;
CREATE TABLE `translation_record` (
  `date` varchar(255) NOT NULL,
  `month` int(10) DEFAULT NULL,
  `day` int(10) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `words` int(20) DEFAULT NULL,
  `countryCharacters` int(20) DEFAULT '0',
  `allianceCharacters` int(20) DEFAULT '0',
  `en` int(20) DEFAULT '0',
  `zh-Hans` int(20) DEFAULT '0',
  `zh-Hant` int(20) DEFAULT '0',
  `ja` int(20) DEFAULT '0',
  `ko` int(20) DEFAULT '0',
  `ru` int(20) DEFAULT '0',
  `es` int(20) DEFAULT '0',
  `ms` int(20) DEFAULT '0',
  `fr` int(20) DEFAULT '0',
  `de` int(20) DEFAULT '0',
  `it` int(20) DEFAULT '0',
  `pt` int(20) DEFAULT '0',
  `other` int(20) DEFAULT '0',
  `fromDB` int(20) DEFAULT '0',
  `fromMS` int(20) DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "translation_record"
#


#
# Structure for table "translationv2"
#

DROP TABLE IF EXISTS `translationv2`;
CREATE TABLE `translationv2` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en` blob,
  `zh-Hans` blob,
  `zh-Hant` blob,
  `ja` blob,
  `ko` blob,
  `ru` blob,
  `es` blob,
  `ms` blob,
  `fr` blob,
  `de` blob,
  `it` blob,
  `pt` blob,
  `count` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_en` (`en`(50)) USING BTREE,
  KEY `index_zh-Hans` (`zh-Hans`(20)) USING BTREE,
  KEY `index_zh-Hant` (`zh-Hant`(20)) USING BTREE,
  KEY `index_ja` (`ja`(20)) USING BTREE,
  KEY `index_ko` (`ko`(20)) USING BTREE,
  KEY `index_ru` (`ru`(20)) USING BTREE,
  KEY `index_es` (`es`(20)) USING BTREE,
  KEY `index_ms` (`ms`(20)) USING BTREE,
  KEY `index_fr` (`fr`(20)) USING BTREE,
  KEY `index_de` (`de`(20)) USING BTREE,
  KEY `index_it` (`it`(20)) USING BTREE,
  KEY `index_pt` (`pt`(20)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "translationv2"
#


#
# Structure for table "treasure_map"
#

DROP TABLE IF EXISTS `treasure_map`;
CREATE TABLE `treasure_map` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `treasureId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currentOwner` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originalOwner` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `colour` int(10) DEFAULT NULL,
  `marchId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `finishTime` bigint(20) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `index_o_m` (`currentOwner`,`marchId`) USING BTREE,
  KEY `index_o_t` (`currentOwner`,`targetId`) USING BTREE,
  KEY `index_o_s_c` (`currentOwner`,`state`,`colour`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "treasure_map"
#


#
# Structure for table "trial_field"
#

DROP TABLE IF EXISTS `trial_field`;
CREATE TABLE `trial_field` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `freeTrial` int(11) DEFAULT '0',
  `freeFresh` bigint(20) DEFAULT '0',
  `freeAtk` int(11) DEFAULT '0',
  `monster` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `blood` int(11) DEFAULT '0',
  `screen` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `buyTrial` int(11) DEFAULT '0',
  `buyAtk` int(11) DEFAULT '0',
  `chargeAtkTimes` int(11) DEFAULT '0',
  `rewardMonster` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "trial_field"
#


#
# Structure for table "turret_shooting_task"
#

DROP TABLE IF EXISTS `turret_shooting_task`;
CREATE TABLE `turret_shooting_task` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `turretUid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `marchUuid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `uuid_idx` (`marchUuid`) USING BTREE,
  KEY `startTime_idx` (`startTime`) USING BTREE,
  KEY `endTime_idx` (`endTime`) USING BTREE,
  KEY `uid_idx` (`turretUid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "turret_shooting_task"
#


#
# Structure for table "uid_tmp"
#

DROP TABLE IF EXISTS `uid_tmp`;
CREATE TABLE `uid_tmp` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "uid_tmp"
#


#
# Structure for table "user_14day_login"
#

DROP TABLE IF EXISTS `user_14day_login`;
CREATE TABLE `user_14day_login` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `day` int(10) DEFAULT '0',
  `lastRewardTime` bigint(20) DEFAULT '0',
  `vipRewardTime` bigint(20) DEFAULT '0',
  `reward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`type`),
  KEY `day_index` (`day`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_14day_login"
#


#
# Structure for table "user_achievement"
#

DROP TABLE IF EXISTS `user_achievement`;
CREATE TABLE `user_achievement` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `completeTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_achievement"
#


#
# Structure for table "user_activation"
#

DROP TABLE IF EXISTS `user_activation`;
CREATE TABLE `user_activation` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activation"
#


#
# Structure for table "user_activity"
#

DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `actId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activity"
#


#
# Structure for table "user_activity_new"
#

DROP TABLE IF EXISTS `user_activity_new`;
CREATE TABLE `user_activity_new` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` int(10) NOT NULL,
  `level` int(10) NOT NULL,
  `rewards` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `reserve_1` int(10) NOT NULL,
  `reserve_2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activity_new"
#


#
# Structure for table "user_army"
#

DROP TABLE IF EXISTS `user_army`;
CREATE TABLE `user_army` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(4) NOT NULL DEFAULT '0',
  `free` int(6) NOT NULL DEFAULT '0',
  `pve` int(6) NOT NULL DEFAULT '0',
  `march` int(6) NOT NULL DEFAULT '0',
  `defence` int(6) NOT NULL DEFAULT '0',
  `train` int(6) NOT NULL DEFAULT '0',
  `foodCostTime` bigint(20) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_army"
#


#
# Structure for table "user_assets"
#

DROP TABLE IF EXISTS `user_assets`;
CREATE TABLE `user_assets` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `winPoint` bigint(10) NOT NULL DEFAULT '0',
  `lastUpdateTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_assets"
#


#
# Structure for table "user_building"
#

DROP TABLE IF EXISTS `user_building`;
CREATE TABLE `user_building` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `opType` int(11) DEFAULT '0',
  `putId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reward` int(2) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT '0',
  `effectTime` bigint(20) DEFAULT '0',
  `star` int(11) DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `lockState` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ub_uid_index` (`uid`,`itemId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_building"
#


#
# Structure for table "user_building_exp"
#

DROP TABLE IF EXISTS `user_building_exp`;
CREATE TABLE `user_building_exp` (
  `uid` varchar(255) NOT NULL,
  `historyMax` bigint(20) DEFAULT '0',
  `currentMax` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "user_building_exp"
#


#
# Structure for table "user_collect_record"
#

DROP TABLE IF EXISTS `user_collect_record`;
CREATE TABLE `user_collect_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource` int(10) DEFAULT '0',
  `killPeople` int(10) DEFAULT NULL,
  `train` int(10) DEFAULT NULL,
  `lastKillTime` bigint(20) DEFAULT NULL,
  `sockByResource` int(20) DEFAULT NULL,
  `sockByKill` int(20) DEFAULT NULL,
  `sockByTrain` int(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_collect_record"
#


#
# Structure for table "user_cross_fight_history"
#

DROP TABLE IF EXISTS `user_cross_fight_history`;
CREATE TABLE `user_cross_fight_history` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `round` int(8) NOT NULL,
  `score` bigint(20) DEFAULT '0',
  `rank` int(8) DEFAULT '0',
  `serverId` int(8) NOT NULL,
  PRIMARY KEY (`uid`,`startTime`,`round`),
  KEY `user_startTime` (`uid`,`startTime`) USING BTREE,
  KEY `startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_cross_fight_history"
#


#
# Structure for table "user_daily_task"
#

DROP TABLE IF EXISTS `user_daily_task`;
CREATE TABLE `user_daily_task` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_daily_task"
#


#
# Structure for table "user_dragon"
#

DROP TABLE IF EXISTS `user_dragon`;
CREATE TABLE `user_dragon` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `place` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `uid_index` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_dragon"
#


#
# Structure for table "user_equip"
#

DROP TABLE IF EXISTS `user_equip`;
CREATE TABLE `user_equip` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `on` int(4) NOT NULL DEFAULT '0',
  `itemId` int(11) NOT NULL DEFAULT '0',
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `extraProperty` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uuid`),
  KEY `index_uid_on` (`uid`,`on`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_equip"
#


#
# Structure for table "user_general"
#

DROP TABLE IF EXISTS `user_general`;
CREATE TABLE `user_general` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `generalId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `color` int(4) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  `ability` blob,
  PRIMARY KEY (`uuid`),
  KEY `uid_index_001` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_general"
#


#
# Structure for table "user_gift"
#

DROP TABLE IF EXISTS `user_gift`;
CREATE TABLE `user_gift` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `giftId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gifttype` int(11) NOT NULL,
  `valid` int(2) NOT NULL DEFAULT '1',
  `level` int(11) DEFAULT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `para` int(11) DEFAULT '0',
  `time` bigint(20) NOT NULL,
  `expiretime` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_gift"
#


#
# Structure for table "user_honor"
#

DROP TABLE IF EXISTS `user_honor`;
CREATE TABLE `user_honor` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_honor"
#


#
# Structure for table "user_hospital"
#

DROP TABLE IF EXISTS `user_hospital`;
CREATE TABLE `user_hospital` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dead` int(6) NOT NULL DEFAULT '0',
  `heal` int(6) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hospital"
#


#
# Structure for table "user_hot_item"
#

DROP TABLE IF EXISTS `user_hot_item`;
CREATE TABLE `user_hot_item` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hot_item"
#


#
# Structure for table "user_hot_item_best"
#

DROP TABLE IF EXISTS `user_hot_item_best`;
CREATE TABLE `user_hot_item_best` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `color` int(10) DEFAULT '0',
  `price_type` int(10) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `price_hot` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_hot_item_best"
#


#
# Structure for table "user_hot_item_v2"
#

DROP TABLE IF EXISTS `user_hot_item_v2`;
CREATE TABLE `user_hot_item_v2` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `price_hot` int(10) DEFAULT '0',
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`,`goodsId`,`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hot_item_v2"
#


#
# Structure for table "user_item"
#

DROP TABLE IF EXISTS `user_item`;
CREATE TABLE `user_item` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `value` int(11) DEFAULT NULL,
  `vanishTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `uitem_ownerId_index` (`ownerId`,`itemId`,`value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_item"
#


#
# Structure for table "user_login_ip"
#

DROP TABLE IF EXISTS `user_login_ip`;
CREATE TABLE `user_login_ip` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`ip`),
  KEY `index_uid_count` (`uid`,`count`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_login_ip"
#


#
# Structure for table "user_lord"
#

DROP TABLE IF EXISTS `user_lord`;
CREATE TABLE `user_lord` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `userSign` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `levelUp` int(4) DEFAULT '1',
  `firstJoinAllianceFlag` int(11) DEFAULT '1',
  `newPlayerAwardSoldierFlag` int(11) DEFAULT '0',
  `lastPayTime` bigint(20) DEFAULT '0',
  `pveLevel` int(4) DEFAULT '0',
  `firstBindAccountRewardFlag` int(11) DEFAULT '0',
  `dailyTaskFlushTime` bigint(20) DEFAULT '0',
  `dailyTaskComplete` int(11) DEFAULT '0',
  `isHDLogin` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_lord"
#


#
# Structure for table "user_mine"
#

DROP TABLE IF EXISTS `user_mine`;
CREATE TABLE `user_mine` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `call` int(2) DEFAULT '0',
  `exp` int(11) DEFAULT NULL,
  `miner` int(11) DEFAULT '0',
  `mineTime` bigint(20) DEFAULT NULL,
  `helpInfo` blob,
  PRIMARY KEY (`uid`,`fId`),
  KEY `index_fId` (`fId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_mine"
#


#
# Structure for table "user_mixed_info"
#

DROP TABLE IF EXISTS `user_mixed_info`;
CREATE TABLE `user_mixed_info` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scoreSwitch` int(2) DEFAULT '0',
  `daliyFirstLoginTime` bigint(20) DEFAULT '0',
  `continuouslyLoginDay` int(11) DEFAULT '0',
  `activityPopup` int(11) DEFAULT '0',
  `popupTime` bigint(20) DEFAULT '0',
  `showEquip` int(11) DEFAULT '1',
  `materialBackup` int(11) DEFAULT '1',
  `taskStage` int(11) DEFAULT '0',
  `scrollEquip` int(11) DEFAULT '1',
  `colorblind` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_mixed_info"
#


#
# Structure for table "user_monster_siege"
#

DROP TABLE IF EXISTS `user_monster_siege`;
CREATE TABLE `user_monster_siege` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `failTimes` int(8) DEFAULT '0',
  `killMonsterCount` bigint(20) DEFAULT '0',
  `state` int(8) NOT NULL,
  `goalRank` int(8) DEFAULT '0',
  `failRounds` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `state_index` (`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege"
#


#
# Structure for table "user_monster_siege_history"
#

DROP TABLE IF EXISTS `user_monster_siege_history`;
CREATE TABLE `user_monster_siege_history` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `failRounds` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege_history"
#


#
# Structure for table "user_monster_siege_top_history"
#

DROP TABLE IF EXISTS `user_monster_siege_top_history`;
CREATE TABLE `user_monster_siege_top_history` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` bigint(20) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allianceAbbr` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `allianceName` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `failRounds` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege_top_history"
#


#
# Structure for table "user_onlinereward"
#

DROP TABLE IF EXISTS `user_onlinereward`;
CREATE TABLE `user_onlinereward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `online` bigint(20) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  `use` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_onlinereward"
#


#
# Structure for table "user_picture"
#

DROP TABLE IF EXISTS `user_picture`;
CREATE TABLE `user_picture` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uploadTime` bigint(20) DEFAULT '0',
  `auditPerson` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `state` int(4) DEFAULT '0',
  `picVer` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_picture"
#


#
# Structure for table "user_pray"
#

DROP TABLE IF EXISTS `user_pray`;
CREATE TABLE `user_pray` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `freeFromItem` int(11) DEFAULT '0',
  `itemPrayCount` int(11) DEFAULT '0',
  `prayCount` int(11) DEFAULT '0',
  `lastPrayTime` bigint(20) DEFAULT '0',
  `wood` int(11) DEFAULT '0',
  `food` int(11) DEFAULT '0',
  `iron` int(11) DEFAULT '0',
  `silver` int(11) DEFAULT '0',
  `steel` int(11) DEFAULT '0',
  `goldwood` int(11) DEFAULT '0',
  `goldfood` int(11) DEFAULT '0',
  `goldiron` int(11) DEFAULT '0',
  `goldsilver` int(11) DEFAULT '0',
  `goldsteel` int(11) DEFAULT '0',
  `isFirstFree` int(5) DEFAULT '0',
  `isFirstPay` int(5) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `count_idx` (`prayCount`) USING BTREE,
  KEY `date_idx` (`lastPrayTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_pray"
#


#
# Structure for table "user_reg"
#

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_reg"
#


#
# Structure for table "user_resource"
#

DROP TABLE IF EXISTS `user_resource`;
CREATE TABLE `user_resource` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stone` int(20) NOT NULL,
  `wood` int(20) NOT NULL,
  `iron` int(20) NOT NULL,
  `food` int(20) NOT NULL,
  `silver` int(11) NOT NULL,
  `chip` int(11) NOT NULL,
  `diamond` int(11) NOT NULL,
  `dragon_food` int(11) NOT NULL,
  `dragon_gold` int(11) NOT NULL,
  `lastUpdateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_resource"
#


#
# Structure for table "user_science"
#

DROP TABLE IF EXISTS `user_science`;
CREATE TABLE `user_science` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(6) NOT NULL DEFAULT '0',
  `cd` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  PRIMARY KEY (`uid`,`itemId`),
  KEY `Index_ownerId` (`uid`,`itemId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_science"
#


#
# Structure for table "user_score"
#

DROP TABLE IF EXISTS `user_score`;
CREATE TABLE `user_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '1',
  `level` int(11) DEFAULT '1',
  `score` int(11) DEFAULT '0',
  `reward` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`),
  KEY `index_actId` (`actId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_score"
#


#
# Structure for table "user_score_bak"
#

DROP TABLE IF EXISTS `user_score_bak`;
CREATE TABLE `user_score_bak` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '1',
  `level` int(11) DEFAULT '1',
  `score` int(11) DEFAULT '0',
  `reward` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`),
  KEY `index_actId` (`actId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_score_bak"
#


#
# Structure for table "user_skill"
#

DROP TABLE IF EXISTS `user_skill`;
CREATE TABLE `user_skill` (
  `uuid` varchar(40) COLLATE utf8_bin NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_bin NOT NULL,
  `skillId` varchar(40) COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) DEFAULT '0',
  `actTime` bigint(20) DEFAULT '0',
  `endTime` bigint(20) DEFAULT NULL,
  `stat` int(10) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ownerId_index` (`ownerId`) USING BTREE,
  KEY `starttime_index` (`startTime`) USING BTREE,
  KEY `endtime_index` (`endTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_skill"
#


#
# Structure for table "user_snowball"
#

DROP TABLE IF EXISTS `user_snowball`;
CREATE TABLE `user_snowball` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `curLevel` int(10) DEFAULT NULL,
  `lastThrowTime` bigint(20) DEFAULT NULL,
  `todayThrowCount` int(10) DEFAULT NULL,
  `lastBuyTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_snowball"
#


#
# Structure for table "user_sock"
#

DROP TABLE IF EXISTS `user_sock`;
CREATE TABLE `user_sock` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socks` bigint(20) DEFAULT '0',
  `reward` blob,
  `level` int(10) DEFAULT '0',
  `refreshtime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_sock"
#


#
# Structure for table "user_state"
#

DROP TABLE IF EXISTS `user_state`;
CREATE TABLE `user_state` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stateId` int(11) NOT NULL,
  `startTime` bigint(20) NOT NULL DEFAULT '0',
  `endTime` bigint(20) NOT NULL,
  `type` int(4) DEFAULT '0',
  `type2` int(10) DEFAULT '0',
  `groupType` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`stateId`),
  KEY `index_uid_type2` (`uid`,`type2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_state"
#


#
# Structure for table "user_talent"
#

DROP TABLE IF EXISTS `user_talent`;
CREATE TABLE `user_talent` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `talent` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_talent"
#


#
# Structure for table "user_task"
#

DROP TABLE IF EXISTS `user_task`;
CREATE TABLE `user_task` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `type` int(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_task"
#


#
# Structure for table "user_territory_resource"
#

DROP TABLE IF EXISTS `user_territory_resource`;
CREATE TABLE `user_territory_resource` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wood` bigint(10) DEFAULT '0',
  `stone` bigint(10) DEFAULT '0',
  `iron` bigint(10) DEFAULT '0',
  `food` bigint(10) DEFAULT '0',
  `silver` bigint(10) DEFAULT '0',
  `lastUpdateTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `al_idx` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_territory_resource"
#


#
# Structure for table "user_timereward"
#

DROP TABLE IF EXISTS `user_timereward`;
CREATE TABLE `user_timereward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(8) DEFAULT '0',
  `times` int(8) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  `receiveTime` bigint(20) DEFAULT '0',
  `rewardInfo` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_timereward"
#


#
# Structure for table "user_used_item"
#

DROP TABLE IF EXISTS `user_used_item`;
CREATE TABLE `user_used_item` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_used_item"
#


#
# Structure for table "user_vip"
#

DROP TABLE IF EXISTS `user_vip`;
CREATE TABLE `user_vip` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '-1',
  `loginDays` int(11) NOT NULL,
  `lastLoginTime` bigint(20) NOT NULL,
  `vipEndTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_vip"
#


#
# Structure for table "user_wall"
#

DROP TABLE IF EXISTS `user_wall`;
CREATE TABLE `user_wall` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(6) NOT NULL DEFAULT '0',
  `build` int(6) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  `level` int(4) NOT NULL,
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_wall"
#


#
# Structure for table "user_world"
#

DROP TABLE IF EXISTS `user_world`;
CREATE TABLE `user_world` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pointId` int(11) NOT NULL,
  `color` int(11) DEFAULT NULL,
  `monsterLock` blob,
  `lastCityDefTime` bigint(11) NOT NULL,
  `attMonsterStamina` int(11) DEFAULT NULL,
  `lastStaminaTime` bigint(20) DEFAULT NULL,
  `lastMoveCityTime` bigint(20) DEFAULT '0',
  `srcServerPointId` int(11) DEFAULT NULL,
  `ckfConfirmAccessNextRound` int(4) DEFAULT NULL,
  `ckfNeedLeave` int(4) DEFAULT NULL,
  `ckfAccessTimes` int(8) DEFAULT '0',
  `ckfLastPlayRound` int(4) DEFAULT NULL,
  `ckfProtectTime` bigint(20) DEFAULT NULL,
  `ckfWinStreak` int(8) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_world"
#


#
# Structure for table "user_world_pve"
#

DROP TABLE IF EXISTS `user_world_pve`;
CREATE TABLE `user_world_pve` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pointId` int(11) NOT NULL,
  `attNum` int(11) NOT NULL,
  `buyNum` int(11) DEFAULT NULL,
  `monsterInfo` blob,
  PRIMARY KEY (`uid`,`pointId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_world_pve"
#


#
# Structure for table "userprofile"
#

DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `exp` int(11) NOT NULL,
  `gold` bigint(20) NOT NULL DEFAULT '0',
  `paidGold` bigint(20) DEFAULT '0',
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `parseRegisterId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gcmRegisterId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `openedPos` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picVer` int(11) DEFAULT '0',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chNameCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `worldPoint` int(11) DEFAULT NULL,
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gaid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pf` varchar(40) COLLATE utf8_unicode_ci DEFAULT 'market_global',
  `lang` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmFlag` int(11) DEFAULT '0',
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `offLineTime` bigint(20) DEFAULT '0',
  `banTime` bigint(20) DEFAULT '0',
  `chatBanTime` bigint(20) DEFAULT '0',
  `banGMName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noticeBanTime` bigint(20) DEFAULT '0',
  `lastOnlineTime` bigint(20) DEFAULT '0',
  `gmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serverId` int(11) DEFAULT NULL,
  `crossFightSrcServerId` int(11) NOT NULL DEFAULT '-1',
  `lastModGoldGetTime` bigint(20) DEFAULT '0',
  `modGoldGetTimeInterval` bigint(20) DEFAULT '0',
  `modGoldAmount` bigint(10) DEFAULT '0',
  `beTrainingModTime` bigint(20) DEFAULT '0',
  `guideStep` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `payRiskFactor` int(11) DEFAULT '0',
  `phoneDevice` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crystal` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `name_index` (`name`) USING BTREE,
  KEY `time_level_index` (`regTime`,`level`,`lastOnlineTime`,`pf`) USING BTREE,
  KEY `allianceid_lasttime_index` (`allianceId`,`lastOnlineTime`) USING BTREE,
  KEY `lang_index` (`lang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "userprofile"
#


#
# Structure for table "world_favorite"
#

DROP TABLE IF EXISTS `world_favorite`;
CREATE TABLE `world_favorite` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server` int(11) NOT NULL DEFAULT '0',
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`point`,`server`),
  KEY `time_idx` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_favorite"
#


#
# Structure for table "world_field_monster_dead"
#

DROP TABLE IF EXISTS `world_field_monster_dead`;
CREATE TABLE `world_field_monster_dead` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(20) NOT NULL,
  `monster` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `dead_monster_time` (`deadFinishTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_field_monster_dead"
#


#
# Structure for table "world_flush_field_monster_tmp"
#

DROP TABLE IF EXISTS `world_flush_field_monster_tmp`;
CREATE TABLE `world_flush_field_monster_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `pointItem` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) NOT NULL DEFAULT '0',
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "world_flush_field_monster_tmp"
#


#
# Structure for table "world_flush_monster_tmp"
#

DROP TABLE IF EXISTS `world_flush_monster_tmp`;
CREATE TABLE `world_flush_monster_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_flush_monster_tmp"
#


#
# Structure for table "world_flush_resource_tmp"
#

DROP TABLE IF EXISTS `world_flush_resource_tmp`;
CREATE TABLE `world_flush_resource_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resLevel` int(11) NOT NULL DEFAULT '0',
  `resCostValue` int(11) NOT NULL DEFAULT '0',
  `resInitValue` int(11) NOT NULL,
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_flush_resource_tmp"
#


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


#
# Structure for table "world_res_dead"
#

DROP TABLE IF EXISTS `world_res_dead`;
CREATE TABLE `world_res_dead` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dead_res_time` (`deadFinishTime`) USING BTREE,
  KEY `areaId_index` (`areaId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_res_dead"
#


#
# Structure for table "world_res_record"
#

DROP TABLE IF EXISTS `world_res_record`;
CREATE TABLE `world_res_record` (
  `time` bigint(20) NOT NULL,
  `id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`time`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_res_record"
#


#
# Structure for table "world_update_gridtype_tmp"
#

DROP TABLE IF EXISTS `world_update_gridtype_tmp`;
CREATE TABLE `world_update_gridtype_tmp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gridType` int(11) NOT NULL,
  `grid2Type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_update_gridtype_tmp"
#


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


#
# Database "cokdb2"
#

CREATE DATABASE IF NOT EXISTS `cokdb2` /*!40100 DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci */;
USE `cokdb2`;

#
# Structure for table "activation"
#

DROP TABLE IF EXISTS `activation`;
CREATE TABLE `activation` (
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `series` int(11) DEFAULT NULL,
  `user` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `index_user` (`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "activation"
#


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

INSERT INTO `activity` VALUES (110004,'monsters soege',4,152950927637,1545609600000,1545696000000);

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `passmd5` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `auth` text COLLATE utf8_unicode_ci NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `addtime` bigint(20) NOT NULL,
  `lastactive` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "admin"
#


#
# Structure for table "affairs"
#

DROP TABLE IF EXISTS `affairs`;
CREATE TABLE `affairs` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `affairId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rewardTime` bigint(20) NOT NULL,
  `rewardNum` int(4) NOT NULL,
  `opt` int(2) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_type` (`type`,`rewardTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "affairs"
#


#
# Structure for table "affairs_value"
#

DROP TABLE IF EXISTS `affairs_value`;
CREATE TABLE `affairs_value` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `people` int(10) NOT NULL DEFAULT '0',
  `refreshTime` bigint(20) NOT NULL,
  `leagueTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "affairs_value"
#


#
# Structure for table "alliance"
#

DROP TABLE IF EXISTS `alliance`;
CREATE TABLE `alliance` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `alliancename` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbrRename` int(11) DEFAULT '0',
  `intro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `announce` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `curMember` int(11) DEFAULT '0',
  `maxMember` int(11) DEFAULT NULL,
  `recruit` int(11) DEFAULT NULL,
  `oldfightpower` int(11) DEFAULT NULL,
  `giftlevel` int(11) DEFAULT '0',
  `alliancepoint` int(11) DEFAULT '0',
  `reicon` int(11) DEFAULT '0',
  `rankone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ranktwo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankthree` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankfour` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankfive` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createtime` bigint(20) NOT NULL,
  `dau` int(11) DEFAULT '0',
  `rallyPoint` int(10) DEFAULT NULL,
  `ally` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enemy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `powerRestriction` bigint(10) DEFAULT '0',
  `castleRestriction` int(2) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance"
#


#
# Structure for table "alliance_apply"
#

DROP TABLE IF EXISTS `alliance_apply`;
CREATE TABLE `alliance_apply` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` blob,
  `type` int(11) DEFAULT NULL,
  `applyTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_user` (`userId`) USING BTREE,
  KEY `index_alliance` (`allianceId`) USING BTREE,
  KEY `index_time` (`applyTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_apply"
#


#
# Structure for table "alliance_battle_record"
#

DROP TABLE IF EXISTS `alliance_battle_record`;
CREATE TABLE `alliance_battle_record` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attAllianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defAllianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `report` blob NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_battle_record"
#


#
# Structure for table "alliance_battle_team"
#

DROP TABLE IF EXISTS `alliance_battle_team`;
CREATE TABLE `alliance_battle_team` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `targetId` int(11) NOT NULL,
  `targetUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetPic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetType` int(2) DEFAULT '0',
  `leaderUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `leaderName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `leaderId` int(11) DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxSoldiers` int(11) NOT NULL,
  `waitTime` bigint(20) NOT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_battle_team"
#


#
# Structure for table "alliance_comment"
#

DROP TABLE IF EXISTS `alliance_comment`;
CREATE TABLE `alliance_comment` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `senderUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senderAllianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` blob,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userpic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_comment"
#


#
# Structure for table "alliance_comment_shield"
#

DROP TABLE IF EXISTS `alliance_comment_shield`;
CREATE TABLE `alliance_comment_shield` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `icon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_comment_shield"
#


#
# Structure for table "alliance_donate"
#

DROP TABLE IF EXISTS `alliance_donate`;
CREATE TABLE `alliance_donate` (
  `uerid` varchar(45) NOT NULL,
  `scienceid` int(11) NOT NULL,
  `highres` varchar(45) DEFAULT NULL,
  `midres` varchar(45) DEFAULT NULL,
  `lowres` varchar(45) DEFAULT NULL,
  `highnum` int(11) DEFAULT '0',
  `midnum` int(11) DEFAULT '0',
  `lownum` int(11) DEFAULT '0',
  `higprogress` int(11) DEFAULT '0',
  `midprogress` int(11) DEFAULT '0',
  `lowprogress` int(11) DEFAULT '0',
  `highcontribute` int(11) DEFAULT '0',
  `midcontribute` int(11) DEFAULT '0',
  `lowcontribute` int(11) DEFAULT '0',
  `lastrefreshtime` bigint(20) DEFAULT '0',
  `highNotUse` int(11) DEFAULT '0',
  `midNotUse` int(11) DEFAULT '0',
  `midAvailable` int(10) DEFAULT '0',
  `highAvailable` int(10) DEFAULT '0',
  PRIMARY KEY (`uerid`,`scienceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "alliance_donate"
#


#
# Structure for table "alliance_gift"
#

DROP TABLE IF EXISTS `alliance_gift`;
CREATE TABLE `alliance_gift` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allianceid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `expiretime` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_gift"
#


#
# Structure for table "alliance_help"
#

DROP TABLE IF EXISTS `alliance_help`;
CREATE TABLE `alliance_help` (
  `helpId` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allianceId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senderId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isvalid` int(10) DEFAULT '1',
  `maxcount` int(10) DEFAULT '0',
  `nowcount` int(10) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `reduceSec` int(10) DEFAULT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `helpers` blob,
  PRIMARY KEY (`helpId`),
  KEY `index_alliance_help` (`content`) USING BTREE,
  KEY `allianceId_index` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_help"
#


#
# Structure for table "alliance_helper"
#

DROP TABLE IF EXISTS `alliance_helper`;
CREATE TABLE `alliance_helper` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `helpId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senderId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recvId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stats` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_alliance_helper` (`helpId`,`recvId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_helper"
#


#
# Structure for table "alliance_invite_move"
#

DROP TABLE IF EXISTS `alliance_invite_move`;
CREATE TABLE `alliance_invite_move` (
  `inviter` varchar(255) COLLATE utf8_bin NOT NULL,
  `invitee` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`inviter`,`invitee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_invite_move"
#


#
# Structure for table "alliance_member"
#

DROP TABLE IF EXISTS `alliance_member`;
CREATE TABLE `alliance_member` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT '0',
  `accPoint` int(11) DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `donateTime` bigint(20) DEFAULT NULL,
  `todaydonate` int(11) DEFAULT '0',
  `todayprogress` int(11) DEFAULT '0',
  `jointime` bigint(20) DEFAULT '0',
  `wood` int(11) DEFAULT '0',
  `stone` int(11) DEFAULT '0',
  `iron` int(11) DEFAULT '0',
  `food` int(11) DEFAULT '0',
  `silver` int(11) DEFAULT '0',
  `gold` int(11) DEFAULT '0',
  `donateCDTime` bigint(20) DEFAULT '0',
  `donateAvailable` int(2) DEFAULT '1',
  `yesterdayLogin` int(11) DEFAULT '0',
  `fight` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_member"
#


#
# Structure for table "alliance_science"
#

DROP TABLE IF EXISTS `alliance_science`;
CREATE TABLE `alliance_science` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scienceId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `wood` int(11) DEFAULT NULL,
  `stone` int(11) DEFAULT NULL,
  `iron` int(11) DEFAULT NULL,
  `food` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `donateprogress` int(11) DEFAULT '0',
  `donatefinish` int(4) DEFAULT '0',
  `researchstarttime` bigint(20) DEFAULT '0',
  `effectflag` int(4) DEFAULT '0',
  `power` int(11) DEFAULT '0',
  PRIMARY KEY (`allianceId`,`scienceId`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_science"
#


#
# Structure for table "alliance_science_upgrade"
#

DROP TABLE IF EXISTS `alliance_science_upgrade`;
CREATE TABLE `alliance_science_upgrade` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scienceId` int(11) DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `needTime` bigint(20) DEFAULT NULL,
  `accelerate` blob,
  PRIMARY KEY (`allianceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_science_upgrade"
#


#
# Structure for table "alliance_shop"
#

DROP TABLE IF EXISTS `alliance_shop`;
CREATE TABLE `alliance_shop` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`allianceId`,`goodsId`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shop"
#


#
# Structure for table "alliance_shop_make"
#

DROP TABLE IF EXISTS `alliance_shop_make`;
CREATE TABLE `alliance_shop_make` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `needTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shop_make"
#


#
# Structure for table "alliance_shophis"
#

DROP TABLE IF EXISTS `alliance_shophis`;
CREATE TABLE `alliance_shophis` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_alliance` (`allianceId`) USING BTREE,
  KEY `index_user` (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shophis"
#


#
# Structure for table "alliance_stats"
#

DROP TABLE IF EXISTS `alliance_stats`;
CREATE TABLE `alliance_stats` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `event_type` int(2) DEFAULT NULL,
  `fromUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `toUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `extraParam` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_stats"
#


#
# Structure for table "alliance_territory"
#

DROP TABLE IF EXISTS `alliance_territory`;
CREATE TABLE `alliance_territory` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `pointId` int(10) DEFAULT NULL,
  `towerPoint` int(10) DEFAULT NULL,
  `type` int(2) DEFAULT '14',
  `resType` int(2) DEFAULT NULL,
  `num` int(10) DEFAULT '1',
  `allianceId` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceName` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceAbbr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stat` int(2) DEFAULT '0',
  `active` int(2) DEFAULT '0',
  `level` int(2) DEFAULT '0',
  `maxDef` int(10) DEFAULT NULL,
  `curDef` int(10) DEFAULT NULL,
  `createId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ownerId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `buildingSpd` double(20,10) DEFAULT '0.0000000000',
  `updateTime` bigint(20) DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `lastUpdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `point_idx` (`pointId`) USING BTREE,
  KEY `alliance_idx` (`allianceId`) USING BTREE,
  KEY `update_idx` (`updateTime`) USING BTREE,
  KEY `start_idx` (`startTime`) USING BTREE,
  KEY `lastup_idx` (`lastUpdateTime`) USING BTREE,
  KEY `tower_idx` (`towerPoint`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_territory"
#


#
# Structure for table "army_total"
#

DROP TABLE IF EXISTS `army_total`;
CREATE TABLE `army_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "army_total"
#


#
# Structure for table "atk_name"
#

DROP TABLE IF EXISTS `atk_name`;
CREATE TABLE `atk_name` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "atk_name"
#


#
# Structure for table "atk_time"
#

DROP TABLE IF EXISTS `atk_time`;
CREATE TABLE `atk_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "atk_time"
#


#
# Structure for table "badwords"
#

DROP TABLE IF EXISTS `badwords`;
CREATE TABLE `badwords` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `words` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "badwords"
#


#
# Structure for table "black_land_res_dead"
#

DROP TABLE IF EXISTS `black_land_res_dead`;
CREATE TABLE `black_land_res_dead` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dead_res_time` (`deadFinishTime`) USING BTREE,
  KEY `areaId_index` (`areaId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "black_land_res_dead"
#


#
# Structure for table "c3p0testtable"
#

DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "c3p0testtable"
#


#
# Structure for table "celebrity"
#

DROP TABLE IF EXISTS `celebrity`;
CREATE TABLE `celebrity` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "celebrity"
#


#
# Structure for table "chat_shield"
#

DROP TABLE IF EXISTS `chat_shield`;
CREATE TABLE `chat_shield` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `other` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `owner_other_index` (`owner`,`other`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "chat_shield"
#


#
# Structure for table "city_monster"
#

DROP TABLE IF EXISTS `city_monster`;
CREATE TABLE `city_monster` (
  `uid` varchar(255) NOT NULL,
  `nextUpdateTime` bigint(20) DEFAULT NULL,
  `bigMonster` int(11) DEFAULT NULL,
  `smallMonster` int(20) DEFAULT NULL,
  `lastUpdateTime` bigint(20) DEFAULT NULL,
  `bigMonsterInOneDay` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "city_monster"
#


#
# Structure for table "compensate_shield_record"
#

DROP TABLE IF EXISTS `compensate_shield_record`;
CREATE TABLE `compensate_shield_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensate_shield_record"
#


#
# Structure for table "compensation_record"
#

DROP TABLE IF EXISTS `compensation_record`;
CREATE TABLE `compensation_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `count` int(10) DEFAULT '0',
  `lastCompensateTime` bigint(20) DEFAULT NULL,
  `isFirstOnFire` int(2) DEFAULT '1',
  PRIMARY KEY (`uid`),
  KEY `time_index` (`lastCompensateTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensation_record"
#


#
# Structure for table "compensation_record_shield"
#

DROP TABLE IF EXISTS `compensation_record_shield`;
CREATE TABLE `compensation_record_shield` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensation_record_shield"
#


#
# Structure for table "crystal_cost_record"
#

DROP TABLE IF EXISTS `crystal_cost_record`;
CREATE TABLE `crystal_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goldType` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `originalGold` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remainGold` bigint(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_user` (`time`,`userId`,`type`) USING BTREE,
  KEY `index_type` (`userId`,`time`,`type`) USING BTREE,
  KEY `index_goldType` (`goldType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "crystal_cost_record"
#


#
# Structure for table "def_time"
#

DROP TABLE IF EXISTS `def_time`;
CREATE TABLE `def_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "def_time"
#


#
# Structure for table "demo"
#

DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `key_` varchar(200) COLLATE utf8_bin NOT NULL,
  `value_` mediumblob,
  PRIMARY KEY (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "demo"
#


#
# Structure for table "device_mail_record"
#

DROP TABLE IF EXISTS `device_mail_record`;
CREATE TABLE `device_mail_record` (
  `deviceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `record` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`deviceId`,`record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "device_mail_record"
#


#
# Structure for table "donate_history"
#

DROP TABLE IF EXISTS `donate_history`;
CREATE TABLE `donate_history` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `donate` int(10) DEFAULT '0',
  `progress` int(10) DEFAULT NULL,
  `donateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `aid_idx` (`allianceId`) USING BTREE,
  KEY `time_idx` (`donateTime`) USING BTREE,
  KEY `progress_idx` (`progress`) USING BTREE,
  KEY `donate_idx` (`donate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "donate_history"
#


#
# Structure for table "donate_history_record"
#

DROP TABLE IF EXISTS `donate_history_record`;
CREATE TABLE `donate_history_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `donate` int(10) DEFAULT '0',
  `progress` int(10) DEFAULT NULL,
  `donateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `aid_idx` (`allianceId`) USING BTREE,
  KEY `time_idx` (`donateTime`) USING BTREE,
  KEY `progress_idx` (`progress`) USING BTREE,
  KEY `donate_idx` (`donate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "donate_history_record"
#


#
# Structure for table "exchange"
#

DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange"
#


#
# Structure for table "exchange_activity"
#

DROP TABLE IF EXISTS `exchange_activity`;
CREATE TABLE `exchange_activity` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `reward` blob,
  `refresh` int(11) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_activity"
#


#
# Structure for table "exchange_alliance_log"
#

DROP TABLE IF EXISTS `exchange_alliance_log`;
CREATE TABLE `exchange_alliance_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`orderId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_alliance_log"
#


#
# Structure for table "exchange_gift"
#

DROP TABLE IF EXISTS `exchange_gift`;
CREATE TABLE `exchange_gift` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `receiverId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sendTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`receiverId`,`exchangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_gift"
#


#
# Structure for table "exchange_gift_log"
#

DROP TABLE IF EXISTS `exchange_gift_log`;
CREATE TABLE `exchange_gift_log` (
  `mailId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `senderId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiverId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendTime` bigint(20) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mailId`,`sendTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_gift_log"
#


#
# Structure for table "exchange_order"
#

DROP TABLE IF EXISTS `exchange_order`;
CREATE TABLE `exchange_order` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_order"
#


#
# Structure for table "exchange_time"
#

DROP TABLE IF EXISTS `exchange_time`;
CREATE TABLE `exchange_time` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `beginTime` bigint(20) DEFAULT NULL,
  `buyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_time"
#


#
# Structure for table "exchange_visible"
#

DROP TABLE IF EXISTS `exchange_visible`;
CREATE TABLE `exchange_visible` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`exchangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_visible"
#


#
# Structure for table "firstpaylog"
#

DROP TABLE IF EXISTS `firstpaylog`;
CREATE TABLE `firstpaylog` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `orderInfo` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,2) NOT NULL DEFAULT '0.00',
  `paid` double(10,2) DEFAULT '0.00',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  PRIMARY KEY (`uid`,`orderId`,`pf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "firstpaylog"
#


#
# Structure for table "fiveonlinedata"
#

DROP TABLE IF EXISTS `fiveonlinedata`;
CREATE TABLE `fiveonlinedata` (
  `timeStamp` int(11) NOT NULL DEFAULT '0',
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`timeStamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "fiveonlinedata"
#


#
# Structure for table "gold_cost_record"
#

DROP TABLE IF EXISTS `gold_cost_record`;
CREATE TABLE `gold_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goldType` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `originalGold` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remainGold` bigint(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_user` (`time`,`userId`,`type`) USING BTREE,
  KEY `index_type` (`userId`,`time`,`type`) USING BTREE,
  KEY `index_goldType` (`goldType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "gold_cost_record"
#


#
# Structure for table "goods_cost_record"
#

DROP TABLE IF EXISTS `goods_cost_record`;
CREATE TABLE `goods_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `original` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remain` bigint(11) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_time` (`time`,`userId`,`itemId`) USING BTREE,
  KEY `index_user` (`userId`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "goods_cost_record"
#


#
# Structure for table "hot_buy_record"
#

DROP TABLE IF EXISTS `hot_buy_record`;
CREATE TABLE `hot_buy_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `buyCount` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`goodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "hot_buy_record"
#


#
# Structure for table "hot_goods_cost_record"
#

DROP TABLE IF EXISTS `hot_goods_cost_record`;
CREATE TABLE `hot_goods_cost_record` (
  `uuid` varchar(255) COLLATE utf8_bin NOT NULL,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `buyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `goods_idx` (`goodsId`) USING BTREE,
  KEY `time_idx` (`buyTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hot_goods_cost_record"
#


#
# Structure for table "hot_info_before_refresh"
#

DROP TABLE IF EXISTS `hot_info_before_refresh`;
CREATE TABLE `hot_info_before_refresh` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `itemId` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) NOT NULL DEFAULT '0',
  `gold` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`goodsId`,`price`,`refreshTime`),
  KEY `time_idx` (`refreshTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hot_info_before_refresh"
#


#
# Structure for table "hot_refresh_record"
#

DROP TABLE IF EXISTS `hot_refresh_record`;
CREATE TABLE `hot_refresh_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "hot_refresh_record"
#


#
# Structure for table "invite_count"
#

DROP TABLE IF EXISTS `invite_count`;
CREATE TABLE `invite_count` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "invite_count"
#


#
# Structure for table "invitee"
#

DROP TABLE IF EXISTS `invitee`;
CREATE TABLE `invitee` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `inviterUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "invitee"
#


#
# Structure for table "inviter"
#

DROP TABLE IF EXISTS `inviter`;
CREATE TABLE `inviter` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `inviteeUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `inviter_index_001` (`uid`,`type`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "inviter"
#


#
# Structure for table "king_present_record"
#

DROP TABLE IF EXISTS `king_present_record`;
CREATE TABLE `king_present_record` (
  `toUserId` varchar(40) NOT NULL,
  `presentId` int(11) NOT NULL,
  `presentNameId` int(11) NOT NULL,
  `sendTime` bigint(20) NOT NULL,
  `abbr` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`toUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "king_present_record"
#


#
# Structure for table "kingdom_cross_fight_history"
#

DROP TABLE IF EXISTS `kingdom_cross_fight_history`;
CREATE TABLE `kingdom_cross_fight_history` (
  `serverId` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `round` int(8) NOT NULL,
  `score` bigint(20) DEFAULT '0',
  `rank` int(8) DEFAULT '0',
  PRIMARY KEY (`serverId`,`startTime`,`round`),
  KEY `kingdom_startTime` (`serverId`,`startTime`) USING BTREE,
  KEY `startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kingdom_cross_fight_history"
#


#
# Structure for table "kingdom_position"
#

DROP TABLE IF EXISTS `kingdom_position`;
CREATE TABLE `kingdom_position` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `positionId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `chNameFlag` int(11) DEFAULT NULL,
  `preKingUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relinquishEndTime` bigint(20) DEFAULT NULL,
  `currResourceType` int(11) DEFAULT NULL,
  `chBannerFlag` int(11) DEFAULT NULL,
  `chThronePicFlag` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kingdom_position"
#


#
# Structure for table "logaction"
#

DROP TABLE IF EXISTS `logaction`;
CREATE TABLE `logaction` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `param` blob,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`action`,`code`) USING BTREE,
  KEY `index2` (`user`,`timeStamp`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logaction"
#


#
# Structure for table "logaction2"
#

DROP TABLE IF EXISTS `logaction2`;
CREATE TABLE `logaction2` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`action`,`code`) USING BTREE,
  KEY `index2` (`user`,`timeStamp`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logaction2"
#


#
# Structure for table "logrecord"
#

DROP TABLE IF EXISTS `logrecord`;
CREATE TABLE `logrecord` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `category` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(11) DEFAULT NULL,
  `param4` int(11) DEFAULT NULL,
  `data1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`category`,`type`) USING BTREE,
  KEY `index_2` (`user`,`category`,`type`,`timeStamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logrecord"
#


#
# Structure for table "logstat"
#

DROP TABLE IF EXISTS `logstat`;
CREATE TABLE `logstat` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logstat"
#


#
# Structure for table "logtemp"
#

DROP TABLE IF EXISTS `logtemp`;
CREATE TABLE `logtemp` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logtemp"
#


#
# Structure for table "logtmp"
#

DROP TABLE IF EXISTS `logtmp`;
CREATE TABLE `logtmp` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logtmp"
#


#
# Structure for table "lottery_log"
#

DROP TABLE IF EXISTS `lottery_log`;
CREATE TABLE `lottery_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `superMode` tinyint(2) DEFAULT NULL,
  `lotteryId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lotteryInfo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "lottery_log"
#


#
# Structure for table "lottery_record"
#

DROP TABLE IF EXISTS `lottery_record`;
CREATE TABLE `lottery_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `superMode` int(2) NOT NULL,
  `step` int(11) NOT NULL,
  `times1` int(11) NOT NULL,
  `times2` int(11) NOT NULL,
  `multiple` int(11) NOT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryInfo1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryInfo2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `times3` int(10) DEFAULT '0',
  `times4` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "lottery_record"
#


#
# Structure for table "mail"
#

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  `reply` int(2) NOT NULL DEFAULT '0',
  `translationId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE,
  KEY `index_toUserTime` (`toUser`,`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail"
#


#
# Structure for table "mail_1016"
#

DROP TABLE IF EXISTS `mail_1016`;
CREATE TABLE `mail_1016` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_1016"
#


#
# Structure for table "mail_20141030"
#

DROP TABLE IF EXISTS `mail_20141030`;
CREATE TABLE `mail_20141030` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_20141030"
#


#
# Structure for table "mail_20150212"
#

DROP TABLE IF EXISTS `mail_20150212`;
CREATE TABLE `mail_20150212` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  `reply` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE,
  KEY `index_toUserTime` (`toUser`,`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_20150212"
#


#
# Structure for table "mail_contents_1016"
#

DROP TABLE IF EXISTS `mail_contents_1016`;
CREATE TABLE `mail_contents_1016` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_contents_1016"
#


#
# Structure for table "mail_contents_20141030"
#

DROP TABLE IF EXISTS `mail_contents_20141030`;
CREATE TABLE `mail_contents_20141030` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_contents_20141030"
#


#
# Structure for table "mail_group"
#

DROP TABLE IF EXISTS `mail_group`;
CREATE TABLE `mail_group` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `groupType` int(4) NOT NULL DEFAULT '1',
  `groupIndex` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`groupType`,`groupIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_group"
#


#
# Structure for table "mail_group_20150212"
#

DROP TABLE IF EXISTS `mail_group_20150212`;
CREATE TABLE `mail_group_20150212` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `groupType` int(4) NOT NULL DEFAULT '1',
  `groupIndex` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`groupType`,`groupIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_group_20150212"
#


#
# Structure for table "material_control"
#

DROP TABLE IF EXISTS `material_control`;
CREATE TABLE `material_control` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(8) NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "material_control"
#


#
# Structure for table "mod_authorize"
#

DROP TABLE IF EXISTS `mod_authorize`;
CREATE TABLE `mod_authorize` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `authorize` int(2) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "mod_authorize"
#


#
# Structure for table "mod_record"
#

DROP TABLE IF EXISTS `mod_record`;
CREATE TABLE `mod_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `toUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailType` int(5) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_idx` (`fromUser`) USING BTREE,
  KEY `to_idx` (`toUser`) USING BTREE,
  KEY `time_Idx` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "mod_record"
#


#
# Structure for table "monitor_test"
#

DROP TABLE IF EXISTS `monitor_test`;
CREATE TABLE `monitor_test` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monitor_test"
#


#
# Structure for table "monster_siege"
#

DROP TABLE IF EXISTS `monster_siege`;
CREATE TABLE `monster_siege` (
  `allianceId` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `monsterCastleId` int(8) DEFAULT '0',
  `startTime` bigint(20) DEFAULT '0',
  `endTime` bigint(20) DEFAULT '0',
  `state` int(8) NOT NULL DEFAULT '0',
  `currPhase` int(8) DEFAULT '0',
  `currRoundIndex` int(8) DEFAULT '0',
  `currRoundStartTime` bigint(20) DEFAULT '0',
  `currMemberUidListInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `memberUidListInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `allianceKillCount` bigint(20) DEFAULT '0',
  `currMonsterInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `monsterCastleIds` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `monsterPerRoundNum` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`allianceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monster_siege"
#


#
# Structure for table "monster_siege_top_history"
#

DROP TABLE IF EXISTS `monster_siege_top_history`;
CREATE TABLE `monster_siege_top_history` (
  `allianceId` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` bigint(20) NOT NULL,
  `allianceAbbr` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allianceName` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `siegeRound` int(8) DEFAULT '0',
  `validMemberCount` int(8) DEFAULT '0',
  `allianceCount` int(10) DEFAULT '0',
  `activityAllianceCount` int(10) DEFAULT '0',
  `activity30AllianceCount` int(10) DEFAULT '0',
  `activity40AllianceCount` int(10) DEFAULT '0',
  `activity50AllianceCount` int(10) DEFAULT '0',
  `monsterPerRoundNum` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`allianceId`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monster_siege_top_history"
#


#
# Structure for table "monthly_card"
#

DROP TABLE IF EXISTS `monthly_card`;
CREATE TABLE `monthly_card` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `accept` int(8) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  `available` int(4) DEFAULT '0',
  `buyTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monthly_card"
#


#
# Structure for table "move_city_time"
#

DROP TABLE IF EXISTS `move_city_time`;
CREATE TABLE `move_city_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "move_city_time"
#


#
# Structure for table "move_total"
#

DROP TABLE IF EXISTS `move_total`;
CREATE TABLE `move_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "move_total"
#


#
# Structure for table "notice_cost_log"
#

DROP TABLE IF EXISTS `notice_cost_log`;
CREATE TABLE `notice_cost_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`itemId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "notice_cost_log"
#


#
# Structure for table "oldmailinsert"
#

DROP TABLE IF EXISTS `oldmailinsert`;
CREATE TABLE `oldmailinsert` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "oldmailinsert"
#


#
# Structure for table "parse_info"
#

DROP TABLE IF EXISTS `parse_info`;
CREATE TABLE `parse_info` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `status` int(4) NOT NULL,
  `audio` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "parse_info"
#


#
# Structure for table "pay_action"
#

DROP TABLE IF EXISTS `pay_action`;
CREATE TABLE `pay_action` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`exchangeId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_action"
#


#
# Structure for table "pay_request"
#

DROP TABLE IF EXISTS `pay_request`;
CREATE TABLE `pay_request` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `purchaseId` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `productId` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `status` int(4) DEFAULT '0',
  `finishTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`pf`,`time`),
  KEY `index_uid_pf_productId` (`uid`,`pf`,`purchaseId`) USING BTREE,
  KEY `index_uid_pf_purchaseId` (`uid`,`pf`,`purchaseId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_request"
#


#
# Structure for table "pay_total"
#

DROP TABLE IF EXISTS `pay_total`;
CREATE TABLE `pay_total` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  `type` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_total"
#


#
# Structure for table "pay_total_log"
#

DROP TABLE IF EXISTS `pay_total_log`;
CREATE TABLE `pay_total_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  `type` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`level`,`createTime`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_total_log"
#


#
# Structure for table "paycheck"
#

DROP TABLE IF EXISTS `paycheck`;
CREATE TABLE `paycheck` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apidata` blob,
  PRIMARY KEY (`uid`,`orderId`,`pf`),
  KEY `index_time_status` (`time`,`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paycheck"
#


#
# Structure for table "paylog"
#

DROP TABLE IF EXISTS `paylog`;
CREATE TABLE `paylog` (
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
  PRIMARY KEY (`uid`,`orderId`,`pf`),
  KEY `index_time_pf` (`time`,`pf`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paylog"
#


#
# Structure for table "paylog_back"
#

DROP TABLE IF EXISTS `paylog_back`;
CREATE TABLE `paylog_back` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,0) NOT NULL DEFAULT '0',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  PRIMARY KEY (`uid`,`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paylog_back"
#


#
# Structure for table "pic_upload_record"
#

DROP TABLE IF EXISTS `pic_upload_record`;
CREATE TABLE `pic_upload_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `picVer` int(11) DEFAULT '0',
  `updateTime` bigint(10) DEFAULT '9223372036854775807',
  `report` int(2) DEFAULT '0',
  `banCount` int(2) DEFAULT '0',
  `banTime` bigint(10) DEFAULT '0',
  `stat` int(2) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `time_idx` (`updateTime`) USING BTREE,
  KEY `report_idx` (`report`) USING BTREE,
  KEY `stat_idx` (`stat`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "pic_upload_record"
#


#
# Structure for table "player"
#

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "player"
#


#
# Structure for table "playerinfo"
#

DROP TABLE IF EXISTS `playerinfo`;
CREATE TABLE `playerinfo` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `battlesWin` int(8) DEFAULT '0',
  `battlesLose` int(8) DEFAULT '0',
  `attacksWin` int(8) DEFAULT '0',
  `attacksLose` int(8) DEFAULT '0',
  `defensesWin` int(8) DEFAULT '0',
  `detectNum` int(8) DEFAULT '0',
  `armyKill` int(8) DEFAULT '0',
  `armyDead` int(8) DEFAULT '0',
  `armyCure` int(8) DEFAULT '0',
  `cityDestroyed` int(8) DEFAULT '0',
  `questPower` int(8) DEFAULT '0',
  `power` bigint(20) DEFAULT '0',
  `buildingPower` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `power_index` (`power`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "playerinfo"
#


#
# Structure for table "pray_record"
#

DROP TABLE IF EXISTS `pray_record`;
CREATE TABLE `pray_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `cost` int(10) NOT NULL DEFAULT '0',
  `resource` varchar(20) COLLATE utf8_bin NOT NULL,
  `num` int(10) NOT NULL,
  `hit` int(2) DEFAULT '0',
  `prayTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `resource_idx` (`resource`) USING BTREE,
  KEY `time_idx` (`prayTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "pray_record"
#


#
# Structure for table "protect_total"
#

DROP TABLE IF EXISTS `protect_total`;
CREATE TABLE `protect_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "protect_total"
#


#
# Structure for table "push_log"
#

DROP TABLE IF EXISTS `push_log`;
CREATE TABLE `push_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `message` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "push_log"
#


#
# Structure for table "push_record"
#

DROP TABLE IF EXISTS `push_record`;
CREATE TABLE `push_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0',
  `msg` blob,
  `status` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "push_record"
#


#
# Structure for table "queue"
#

DROP TABLE IF EXISTS `queue`;
CREATE TABLE `queue` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `qid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `itemId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `isHelped` int(10) DEFAULT NULL,
  `para` int(10) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ownerId_index_001` (`ownerId`) USING BTREE,
  KEY `updateTime_index` (`updateTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "queue"
#


#
# Structure for table "refund_log"
#

DROP TABLE IF EXISTS `refund_log`;
CREATE TABLE `refund_log` (
  `refundId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(8) NOT NULL,
  `time` bigint(20) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `itemId` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `original` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remain` bigint(11) NOT NULL,
  PRIMARY KEY (`refundId`,`order`),
  KEY `index_time` (`time`,`userId`,`type`,`itemId`) USING BTREE,
  KEY `index_user` (`userId`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "refund_log"
#


#
# Structure for table "report"
#

DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `report` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_time` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "report"
#


#
# Structure for table "reward_107"
#

DROP TABLE IF EXISTS `reward_107`;
CREATE TABLE `reward_107` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `version` varchar(255) COLLATE utf8_bin NOT NULL,
  `rewardLevel` int(2) DEFAULT '0',
  `rewardStatus` int(2) DEFAULT '0',
  `endTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`version`),
  KEY `time_idx` (`endTime`) USING BTREE,
  KEY `stat_idx` (`rewardStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "reward_107"
#


#
# Structure for table "score_act"
#

DROP TABLE IF EXISTS `score_act`;
CREATE TABLE `score_act` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `finishFlag` int(11) DEFAULT '0',
  `rewardFlag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "score_act"
#


#
# Structure for table "server_activity"
#

DROP TABLE IF EXISTS `server_activity`;
CREATE TABLE `server_activity` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `rewad` int(11) DEFAULT '0',
  `events` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_activity"
#


#
# Structure for table "server_announce"
#

DROP TABLE IF EXISTS `server_announce`;
CREATE TABLE `server_announce` (
  `serverId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `randomGeneral` blob,
  `lastMoniterPushTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`serverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_announce"
#


#
# Structure for table "server_config"
#

DROP TABLE IF EXISTS `server_config`;
CREATE TABLE `server_config` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `stat` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_config"
#


#
# Structure for table "server_history_top_score"
#

DROP TABLE IF EXISTS `server_history_top_score`;
CREATE TABLE `server_history_top_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `score` double DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_history_top_score"
#


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

#
# Structure for table "server_mail_record"
#

DROP TABLE IF EXISTS `server_mail_record`;
CREATE TABLE `server_mail_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `record` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(2) DEFAULT '0',
  KEY `index_uid` (`uid`,`record`,`state`) USING BTREE,
  KEY `index_record` (`record`,`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_mail_record"
#


#
# Structure for table "server_push"
#

DROP TABLE IF EXISTS `server_push`;
CREATE TABLE `server_push` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) DEFAULT '0',
  `mailType` int(11) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `regStartTime` bigint(20) DEFAULT NULL,
  `regEndTime` bigint(20) DEFAULT NULL,
  `lastOnlineTimeBegin` bigint(20) DEFAULT NULL,
  `lastOnlineTime` bigint(20) DEFAULT NULL,
  `levelMin` int(10) DEFAULT NULL,
  `levelMax` int(10) DEFAULT NULL,
  `title` blob,
  `contents` blob,
  `reward` blob,
  `updateVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `parse` int(11) DEFAULT NULL,
  `notification` blob,
  `reply` int(2) DEFAULT NULL,
  `likeStatus` int(2) DEFAULT NULL,
  `confirm` int(10) DEFAULT '0',
  `platform` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemIdFlag` int(2) DEFAULT '0',
  `activityId` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `countries` varchar(516) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceLimit` int(2) DEFAULT NULL,
  `CDKeySeries` int(11) DEFAULT NULL,
  `bind` int(11) DEFAULT '0',
  `bLvMin` int(11) DEFAULT '0',
  `bLvMax` int(11) DEFAULT '0',
  `HDflag` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push"
#


#
# Structure for table "server_push_20141106"
#

DROP TABLE IF EXISTS `server_push_20141106`;
CREATE TABLE `server_push_20141106` (
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
  `reply` int(2) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push_20141106"
#


#
# Structure for table "server_push_config"
#

DROP TABLE IF EXISTS `server_push_config`;
CREATE TABLE `server_push_config` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `contents` blob,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push_config"
#


#
# Structure for table "server_score"
#

DROP TABLE IF EXISTS `server_score`;
CREATE TABLE `server_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `activity` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `readyTime` bigint(20) DEFAULT NULL,
  `beginTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `rewad` int(11) DEFAULT '0',
  `round` int(11) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_score"
#


#
# Structure for table "server_top_score"
#

DROP TABLE IF EXISTS `server_top_score`;
CREATE TABLE `server_top_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_top_score"
#


#
# Structure for table "server_update"
#

DROP TABLE IF EXISTS `server_update`;
CREATE TABLE `server_update` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `idx` int(10) NOT NULL,
  `content` blob,
  `chineseContent` blob,
  PRIMARY KEY (`uid`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_update"
#


#
# Structure for table "server_update_suggestion"
#

DROP TABLE IF EXISTS `server_update_suggestion`;
CREATE TABLE `server_update_suggestion` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `updateId` varchar(255) COLLATE utf8_bin NOT NULL,
  `idx` int(10) NOT NULL,
  `suggestion` blob,
  `real_uid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `server` int(10) DEFAULT NULL,
  `real_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reward_status` int(5) DEFAULT '0',
  PRIMARY KEY (`uid`,`updateId`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_update_suggestion"
#


#
# Structure for table "server_usermail"
#

DROP TABLE IF EXISTS `server_usermail`;
CREATE TABLE `server_usermail` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sendBy` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sendTime` bigint(20) NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents` blob,
  `reward` blob,
  `rewardStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_sendTime` (`sendTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_usermail"
#


#
# Structure for table "sign_in"
#

DROP TABLE IF EXISTS `sign_in`;
CREATE TABLE `sign_in` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` int(10) DEFAULT '0',
  `signInTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "sign_in"
#


#
# Structure for table "sign_in_feed"
#

DROP TABLE IF EXISTS `sign_in_feed`;
CREATE TABLE `sign_in_feed` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `feed` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`type`,`feed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "sign_in_feed"
#


#
# Structure for table "staff"
#

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "staff"
#


#
# Structure for table "stat_date"
#

DROP TABLE IF EXISTS `stat_date`;
CREATE TABLE `stat_date` (
  `date` date NOT NULL,
  `dau` int(11) NOT NULL DEFAULT '0',
  `pay` double(12,2) NOT NULL DEFAULT '0.00',
  `reg` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_date"
#


#
# Structure for table "stat_login"
#

DROP TABLE IF EXISTS `stat_login`;
CREATE TABLE `stat_login` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login"
#


#
# Structure for table "stat_login_2017_10"
#

DROP TABLE IF EXISTS `stat_login_2017_10`;
CREATE TABLE `stat_login_2017_10` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_10"
#


#
# Structure for table "stat_login_2017_11"
#

DROP TABLE IF EXISTS `stat_login_2017_11`;
CREATE TABLE `stat_login_2017_11` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_11"
#


#
# Structure for table "stat_login_2017_12"
#

DROP TABLE IF EXISTS `stat_login_2017_12`;
CREATE TABLE `stat_login_2017_12` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_12"
#


#
# Structure for table "stat_login_2017_6"
#

DROP TABLE IF EXISTS `stat_login_2017_6`;
CREATE TABLE `stat_login_2017_6` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_6"
#


#
# Structure for table "stat_login_2017_7"
#

DROP TABLE IF EXISTS `stat_login_2017_7`;
CREATE TABLE `stat_login_2017_7` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_7"
#


#
# Structure for table "stat_login_2017_8"
#

DROP TABLE IF EXISTS `stat_login_2017_8`;
CREATE TABLE `stat_login_2017_8` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_8"
#


#
# Structure for table "stat_login_2017_9"
#

DROP TABLE IF EXISTS `stat_login_2017_9`;
CREATE TABLE `stat_login_2017_9` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_9"
#


#
# Structure for table "stat_login_2018_1"
#

DROP TABLE IF EXISTS `stat_login_2018_1`;
CREATE TABLE `stat_login_2018_1` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_1"
#


#
# Structure for table "stat_login_2018_10"
#

DROP TABLE IF EXISTS `stat_login_2018_10`;
CREATE TABLE `stat_login_2018_10` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_10"
#


#
# Structure for table "stat_login_2018_11"
#

DROP TABLE IF EXISTS `stat_login_2018_11`;
CREATE TABLE `stat_login_2018_11` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_11"
#


#
# Structure for table "stat_login_2018_12"
#

DROP TABLE IF EXISTS `stat_login_2018_12`;
CREATE TABLE `stat_login_2018_12` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_12"
#


#
# Structure for table "stat_login_2018_2"
#

DROP TABLE IF EXISTS `stat_login_2018_2`;
CREATE TABLE `stat_login_2018_2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_2"
#


#
# Structure for table "stat_login_2018_3"
#

DROP TABLE IF EXISTS `stat_login_2018_3`;
CREATE TABLE `stat_login_2018_3` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_3"
#


#
# Structure for table "stat_login_2018_4"
#

DROP TABLE IF EXISTS `stat_login_2018_4`;
CREATE TABLE `stat_login_2018_4` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_4"
#


#
# Structure for table "stat_login_2018_5"
#

DROP TABLE IF EXISTS `stat_login_2018_5`;
CREATE TABLE `stat_login_2018_5` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_5"
#


#
# Structure for table "stat_login_2018_6"
#

DROP TABLE IF EXISTS `stat_login_2018_6`;
CREATE TABLE `stat_login_2018_6` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_6"
#


#
# Structure for table "stat_login_2018_7"
#

DROP TABLE IF EXISTS `stat_login_2018_7`;
CREATE TABLE `stat_login_2018_7` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_7"
#


#
# Structure for table "stat_login_2018_8"
#

DROP TABLE IF EXISTS `stat_login_2018_8`;
CREATE TABLE `stat_login_2018_8` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_8"
#


#
# Structure for table "stat_login_2018_9"
#

DROP TABLE IF EXISTS `stat_login_2018_9`;
CREATE TABLE `stat_login_2018_9` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_9"
#


#
# Structure for table "stat_login_2019_0"
#

DROP TABLE IF EXISTS `stat_login_2019_0`;
CREATE TABLE `stat_login_2019_0` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2019_0"
#


#
# Structure for table "stat_login2"
#

DROP TABLE IF EXISTS `stat_login2`;
CREATE TABLE `stat_login2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login2"
#


#
# Structure for table "stat_phone"
#

DROP TABLE IF EXISTS `stat_phone`;
CREATE TABLE `stat_phone` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_phone"
#


#
# Structure for table "stat_reg"
#

DROP TABLE IF EXISTS `stat_reg`;
CREATE TABLE `stat_reg` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referrer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipcountry` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`type`),
  KEY `index_time_pf_country` (`time`,`pf`,`country`) USING BTREE,
  KEY `country_index` (`country`) USING BTREE,
  KEY `type_idx` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_reg"
#


#
# Structure for table "stat_tutorial"
#

DROP TABLE IF EXISTS `stat_tutorial`;
CREATE TABLE `stat_tutorial` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`) USING BTREE,
  KEY `index_tutorial` (`tutorial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial"
#


#
# Structure for table "stat_tutorial_analyze"
#

DROP TABLE IF EXISTS `stat_tutorial_analyze`;
CREATE TABLE `stat_tutorial_analyze` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`) USING BTREE,
  KEY `index_tutorial` (`tutorial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial_analyze"
#


#
# Structure for table "stat_tutorial_v2"
#

DROP TABLE IF EXISTS `stat_tutorial_v2`;
CREATE TABLE `stat_tutorial_v2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`,`appVersion`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial_v2"
#


#
# Structure for table "suggestion"
#

DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE `suggestion` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `castlelevel` int(11) DEFAULT NULL,
  `contents` blob NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `replyContent` blob,
  `replyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `ownerId` (`ownerId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "suggestion"
#


#
# Structure for table "switches"
#

DROP TABLE IF EXISTS `switches`;
CREATE TABLE `switches` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stat` int(2) DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "switches"
#


#
# Structure for table "tavern"
#

DROP TABLE IF EXISTS `tavern`;
CREATE TABLE `tavern` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `free` int(4) NOT NULL,
  `firstFree` int(2) NOT NULL,
  `firstPay` int(2) NOT NULL,
  `freeTimes` int(4) NOT NULL,
  `payTimes` int(4) NOT NULL,
  `generals` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId5` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId6` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruit1` int(2) NOT NULL,
  `recruit2` int(2) NOT NULL,
  `recruit3` int(2) NOT NULL,
  `recruit4` int(2) NOT NULL,
  `recruit5` int(2) NOT NULL,
  `recruit6` int(2) NOT NULL,
  `addFreeTime` bigint(20) NOT NULL,
  `resetResult` int(4) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "tavern"
#


#
# Structure for table "team_atk_time"
#

DROP TABLE IF EXISTS `team_atk_time`;
CREATE TABLE `team_atk_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "team_atk_time"
#


#
# Structure for table "territory_user_effect"
#

DROP TABLE IF EXISTS `territory_user_effect`;
CREATE TABLE `territory_user_effect` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `pointId` int(10) NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stat` int(2) DEFAULT NULL,
  `active` int(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`pointId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "territory_user_effect"
#


#
# Structure for table "time_reward"
#

DROP TABLE IF EXISTS `time_reward`;
CREATE TABLE `time_reward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rewardId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastRewardTime` bigint(20) DEFAULT NULL,
  `nextRewardTime` bigint(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "time_reward"
#


#
# Structure for table "train"
#

DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `genUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finishTrain` bigint(20) NOT NULL,
  `endTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "train"
#


#
# Structure for table "translation"
#

DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` blob COMMENT '发言内容',
  `en` blob,
  `originalLang` varchar(255) DEFAULT 'cn',
  PRIMARY KEY (`id`),
  KEY `index_content` (`content`(50)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "translation"
#


#
# Structure for table "translation_record"
#

DROP TABLE IF EXISTS `translation_record`;
CREATE TABLE `translation_record` (
  `date` varchar(255) NOT NULL,
  `month` int(10) DEFAULT NULL,
  `day` int(10) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `words` int(20) DEFAULT NULL,
  `countryCharacters` int(20) DEFAULT '0',
  `allianceCharacters` int(20) DEFAULT '0',
  `en` int(20) DEFAULT '0',
  `zh-Hans` int(20) DEFAULT '0',
  `zh-Hant` int(20) DEFAULT '0',
  `ja` int(20) DEFAULT '0',
  `ko` int(20) DEFAULT '0',
  `ru` int(20) DEFAULT '0',
  `es` int(20) DEFAULT '0',
  `ms` int(20) DEFAULT '0',
  `fr` int(20) DEFAULT '0',
  `de` int(20) DEFAULT '0',
  `it` int(20) DEFAULT '0',
  `pt` int(20) DEFAULT '0',
  `other` int(20) DEFAULT '0',
  `fromDB` int(20) DEFAULT '0',
  `fromMS` int(20) DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "translation_record"
#


#
# Structure for table "translationv2"
#

DROP TABLE IF EXISTS `translationv2`;
CREATE TABLE `translationv2` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en` blob,
  `zh-Hans` blob,
  `zh-Hant` blob,
  `ja` blob,
  `ko` blob,
  `ru` blob,
  `es` blob,
  `ms` blob,
  `fr` blob,
  `de` blob,
  `it` blob,
  `pt` blob,
  `count` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_en` (`en`(50)) USING BTREE,
  KEY `index_zh-Hans` (`zh-Hans`(20)) USING BTREE,
  KEY `index_zh-Hant` (`zh-Hant`(20)) USING BTREE,
  KEY `index_ja` (`ja`(20)) USING BTREE,
  KEY `index_ko` (`ko`(20)) USING BTREE,
  KEY `index_ru` (`ru`(20)) USING BTREE,
  KEY `index_es` (`es`(20)) USING BTREE,
  KEY `index_ms` (`ms`(20)) USING BTREE,
  KEY `index_fr` (`fr`(20)) USING BTREE,
  KEY `index_de` (`de`(20)) USING BTREE,
  KEY `index_it` (`it`(20)) USING BTREE,
  KEY `index_pt` (`pt`(20)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "translationv2"
#


#
# Structure for table "treasure_map"
#

DROP TABLE IF EXISTS `treasure_map`;
CREATE TABLE `treasure_map` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `treasureId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currentOwner` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originalOwner` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `colour` int(10) DEFAULT NULL,
  `marchId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `finishTime` bigint(20) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `index_o_m` (`currentOwner`,`marchId`) USING BTREE,
  KEY `index_o_t` (`currentOwner`,`targetId`) USING BTREE,
  KEY `index_o_s_c` (`currentOwner`,`state`,`colour`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "treasure_map"
#


#
# Structure for table "trial_field"
#

DROP TABLE IF EXISTS `trial_field`;
CREATE TABLE `trial_field` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `freeTrial` int(11) DEFAULT '0',
  `freeFresh` bigint(20) DEFAULT '0',
  `freeAtk` int(11) DEFAULT '0',
  `monster` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `blood` int(11) DEFAULT '0',
  `screen` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `buyTrial` int(11) DEFAULT '0',
  `buyAtk` int(11) DEFAULT '0',
  `chargeAtkTimes` int(11) DEFAULT '0',
  `rewardMonster` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "trial_field"
#


#
# Structure for table "turret_shooting_task"
#

DROP TABLE IF EXISTS `turret_shooting_task`;
CREATE TABLE `turret_shooting_task` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `turretUid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `marchUuid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `uuid_idx` (`marchUuid`) USING BTREE,
  KEY `startTime_idx` (`startTime`) USING BTREE,
  KEY `endTime_idx` (`endTime`) USING BTREE,
  KEY `uid_idx` (`turretUid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "turret_shooting_task"
#


#
# Structure for table "uid_tmp"
#

DROP TABLE IF EXISTS `uid_tmp`;
CREATE TABLE `uid_tmp` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "uid_tmp"
#


#
# Structure for table "user_14day_login"
#

DROP TABLE IF EXISTS `user_14day_login`;
CREATE TABLE `user_14day_login` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `day` int(10) DEFAULT '0',
  `lastRewardTime` bigint(20) DEFAULT '0',
  `vipRewardTime` bigint(20) DEFAULT '0',
  `reward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`type`),
  KEY `day_index` (`day`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_14day_login"
#


#
# Structure for table "user_achievement"
#

DROP TABLE IF EXISTS `user_achievement`;
CREATE TABLE `user_achievement` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `completeTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_achievement"
#


#
# Structure for table "user_activation"
#

DROP TABLE IF EXISTS `user_activation`;
CREATE TABLE `user_activation` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activation"
#


#
# Structure for table "user_activity"
#

DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `actId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activity"
#


#
# Structure for table "user_activity_new"
#

DROP TABLE IF EXISTS `user_activity_new`;
CREATE TABLE `user_activity_new` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` int(10) NOT NULL,
  `level` int(10) NOT NULL,
  `rewards` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `reserve_1` int(10) NOT NULL,
  `reserve_2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activity_new"
#


#
# Structure for table "user_army"
#

DROP TABLE IF EXISTS `user_army`;
CREATE TABLE `user_army` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(4) NOT NULL DEFAULT '0',
  `free` int(6) NOT NULL DEFAULT '0',
  `pve` int(6) NOT NULL DEFAULT '0',
  `march` int(6) NOT NULL DEFAULT '0',
  `defence` int(6) NOT NULL DEFAULT '0',
  `train` int(6) NOT NULL DEFAULT '0',
  `foodCostTime` bigint(20) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_army"
#


#
# Structure for table "user_assets"
#

DROP TABLE IF EXISTS `user_assets`;
CREATE TABLE `user_assets` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `winPoint` bigint(10) NOT NULL DEFAULT '0',
  `lastUpdateTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_assets"
#


#
# Structure for table "user_building"
#

DROP TABLE IF EXISTS `user_building`;
CREATE TABLE `user_building` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `opType` int(11) DEFAULT '0',
  `putId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reward` int(2) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT '0',
  `effectTime` bigint(20) DEFAULT '0',
  `star` int(11) DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `lockState` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ub_uid_index` (`uid`,`itemId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_building"
#


#
# Structure for table "user_building_exp"
#

DROP TABLE IF EXISTS `user_building_exp`;
CREATE TABLE `user_building_exp` (
  `uid` varchar(255) NOT NULL,
  `historyMax` bigint(20) DEFAULT '0',
  `currentMax` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "user_building_exp"
#


#
# Structure for table "user_collect_record"
#

DROP TABLE IF EXISTS `user_collect_record`;
CREATE TABLE `user_collect_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource` int(10) DEFAULT '0',
  `killPeople` int(10) DEFAULT NULL,
  `train` int(10) DEFAULT NULL,
  `lastKillTime` bigint(20) DEFAULT NULL,
  `sockByResource` int(20) DEFAULT NULL,
  `sockByKill` int(20) DEFAULT NULL,
  `sockByTrain` int(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_collect_record"
#


#
# Structure for table "user_cross_fight_history"
#

DROP TABLE IF EXISTS `user_cross_fight_history`;
CREATE TABLE `user_cross_fight_history` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `round` int(8) NOT NULL,
  `score` bigint(20) DEFAULT '0',
  `rank` int(8) DEFAULT '0',
  `serverId` int(8) NOT NULL,
  PRIMARY KEY (`uid`,`startTime`,`round`),
  KEY `user_startTime` (`uid`,`startTime`) USING BTREE,
  KEY `startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_cross_fight_history"
#


#
# Structure for table "user_daily_task"
#

DROP TABLE IF EXISTS `user_daily_task`;
CREATE TABLE `user_daily_task` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_daily_task"
#


#
# Structure for table "user_dragon"
#

DROP TABLE IF EXISTS `user_dragon`;
CREATE TABLE `user_dragon` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `place` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `uid_index` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_dragon"
#


#
# Structure for table "user_equip"
#

DROP TABLE IF EXISTS `user_equip`;
CREATE TABLE `user_equip` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `on` int(4) NOT NULL DEFAULT '0',
  `itemId` int(11) NOT NULL DEFAULT '0',
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `extraProperty` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uuid`),
  KEY `index_uid_on` (`uid`,`on`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_equip"
#


#
# Structure for table "user_general"
#

DROP TABLE IF EXISTS `user_general`;
CREATE TABLE `user_general` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `generalId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `color` int(4) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  `ability` blob,
  PRIMARY KEY (`uuid`),
  KEY `uid_index_001` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_general"
#


#
# Structure for table "user_gift"
#

DROP TABLE IF EXISTS `user_gift`;
CREATE TABLE `user_gift` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `giftId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gifttype` int(11) NOT NULL,
  `valid` int(2) NOT NULL DEFAULT '1',
  `level` int(11) DEFAULT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `para` int(11) DEFAULT '0',
  `time` bigint(20) NOT NULL,
  `expiretime` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_gift"
#


#
# Structure for table "user_honor"
#

DROP TABLE IF EXISTS `user_honor`;
CREATE TABLE `user_honor` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_honor"
#


#
# Structure for table "user_hospital"
#

DROP TABLE IF EXISTS `user_hospital`;
CREATE TABLE `user_hospital` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dead` int(6) NOT NULL DEFAULT '0',
  `heal` int(6) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hospital"
#


#
# Structure for table "user_hot_item"
#

DROP TABLE IF EXISTS `user_hot_item`;
CREATE TABLE `user_hot_item` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hot_item"
#


#
# Structure for table "user_hot_item_best"
#

DROP TABLE IF EXISTS `user_hot_item_best`;
CREATE TABLE `user_hot_item_best` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `color` int(10) DEFAULT '0',
  `price_type` int(10) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `price_hot` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_hot_item_best"
#


#
# Structure for table "user_hot_item_v2"
#

DROP TABLE IF EXISTS `user_hot_item_v2`;
CREATE TABLE `user_hot_item_v2` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `price_hot` int(10) DEFAULT '0',
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`,`goodsId`,`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hot_item_v2"
#


#
# Structure for table "user_item"
#

DROP TABLE IF EXISTS `user_item`;
CREATE TABLE `user_item` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `value` int(11) DEFAULT NULL,
  `vanishTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `uitem_ownerId_index` (`ownerId`,`itemId`,`value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_item"
#


#
# Structure for table "user_login_ip"
#

DROP TABLE IF EXISTS `user_login_ip`;
CREATE TABLE `user_login_ip` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`ip`),
  KEY `index_uid_count` (`uid`,`count`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_login_ip"
#


#
# Structure for table "user_lord"
#

DROP TABLE IF EXISTS `user_lord`;
CREATE TABLE `user_lord` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `userSign` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `levelUp` int(4) DEFAULT '1',
  `firstJoinAllianceFlag` int(11) DEFAULT '1',
  `newPlayerAwardSoldierFlag` int(11) DEFAULT '0',
  `lastPayTime` bigint(20) DEFAULT '0',
  `pveLevel` int(4) DEFAULT '0',
  `firstBindAccountRewardFlag` int(11) DEFAULT '0',
  `dailyTaskFlushTime` bigint(20) DEFAULT '0',
  `dailyTaskComplete` int(11) DEFAULT '0',
  `isHDLogin` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_lord"
#


#
# Structure for table "user_mine"
#

DROP TABLE IF EXISTS `user_mine`;
CREATE TABLE `user_mine` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `call` int(2) DEFAULT '0',
  `exp` int(11) DEFAULT NULL,
  `miner` int(11) DEFAULT '0',
  `mineTime` bigint(20) DEFAULT NULL,
  `helpInfo` blob,
  PRIMARY KEY (`uid`,`fId`),
  KEY `index_fId` (`fId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_mine"
#


#
# Structure for table "user_mixed_info"
#

DROP TABLE IF EXISTS `user_mixed_info`;
CREATE TABLE `user_mixed_info` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scoreSwitch` int(2) DEFAULT '0',
  `daliyFirstLoginTime` bigint(20) DEFAULT '0',
  `continuouslyLoginDay` int(11) DEFAULT '0',
  `activityPopup` int(11) DEFAULT '0',
  `popupTime` bigint(20) DEFAULT '0',
  `showEquip` int(11) DEFAULT '1',
  `materialBackup` int(11) DEFAULT '1',
  `taskStage` int(11) DEFAULT '0',
  `scrollEquip` int(11) DEFAULT '1',
  `colorblind` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_mixed_info"
#


#
# Structure for table "user_monster_siege"
#

DROP TABLE IF EXISTS `user_monster_siege`;
CREATE TABLE `user_monster_siege` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `failTimes` int(8) DEFAULT '0',
  `killMonsterCount` bigint(20) DEFAULT '0',
  `state` int(8) NOT NULL,
  `goalRank` int(8) DEFAULT '0',
  `failRounds` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `state_index` (`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege"
#


#
# Structure for table "user_monster_siege_history"
#

DROP TABLE IF EXISTS `user_monster_siege_history`;
CREATE TABLE `user_monster_siege_history` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `failRounds` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege_history"
#


#
# Structure for table "user_monster_siege_top_history"
#

DROP TABLE IF EXISTS `user_monster_siege_top_history`;
CREATE TABLE `user_monster_siege_top_history` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` bigint(20) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allianceAbbr` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `allianceName` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `failRounds` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege_top_history"
#


#
# Structure for table "user_onlinereward"
#

DROP TABLE IF EXISTS `user_onlinereward`;
CREATE TABLE `user_onlinereward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `online` bigint(20) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  `use` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_onlinereward"
#


#
# Structure for table "user_picture"
#

DROP TABLE IF EXISTS `user_picture`;
CREATE TABLE `user_picture` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uploadTime` bigint(20) DEFAULT '0',
  `auditPerson` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `state` int(4) DEFAULT '0',
  `picVer` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_picture"
#


#
# Structure for table "user_pray"
#

DROP TABLE IF EXISTS `user_pray`;
CREATE TABLE `user_pray` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `freeFromItem` int(11) DEFAULT '0',
  `itemPrayCount` int(11) DEFAULT '0',
  `prayCount` int(11) DEFAULT '0',
  `lastPrayTime` bigint(20) DEFAULT '0',
  `wood` int(11) DEFAULT '0',
  `food` int(11) DEFAULT '0',
  `iron` int(11) DEFAULT '0',
  `silver` int(11) DEFAULT '0',
  `steel` int(11) DEFAULT '0',
  `goldwood` int(11) DEFAULT '0',
  `goldfood` int(11) DEFAULT '0',
  `goldiron` int(11) DEFAULT '0',
  `goldsilver` int(11) DEFAULT '0',
  `goldsteel` int(11) DEFAULT '0',
  `isFirstFree` int(5) DEFAULT '0',
  `isFirstPay` int(5) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `count_idx` (`prayCount`) USING BTREE,
  KEY `date_idx` (`lastPrayTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_pray"
#


#
# Structure for table "user_reg"
#

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_reg"
#


#
# Structure for table "user_resource"
#

DROP TABLE IF EXISTS `user_resource`;
CREATE TABLE `user_resource` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stone` int(20) NOT NULL,
  `wood` int(20) NOT NULL,
  `iron` int(20) NOT NULL,
  `food` int(20) NOT NULL,
  `silver` int(11) NOT NULL,
  `chip` int(11) NOT NULL,
  `diamond` int(11) NOT NULL,
  `dragon_food` int(11) NOT NULL,
  `dragon_gold` int(11) NOT NULL,
  `lastUpdateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_resource"
#


#
# Structure for table "user_science"
#

DROP TABLE IF EXISTS `user_science`;
CREATE TABLE `user_science` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(6) NOT NULL DEFAULT '0',
  `cd` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  PRIMARY KEY (`uid`,`itemId`),
  KEY `Index_ownerId` (`uid`,`itemId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_science"
#


#
# Structure for table "user_score"
#

DROP TABLE IF EXISTS `user_score`;
CREATE TABLE `user_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '1',
  `level` int(11) DEFAULT '1',
  `score` int(11) DEFAULT '0',
  `reward` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`),
  KEY `index_actId` (`actId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_score"
#


#
# Structure for table "user_score_bak"
#

DROP TABLE IF EXISTS `user_score_bak`;
CREATE TABLE `user_score_bak` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '1',
  `level` int(11) DEFAULT '1',
  `score` int(11) DEFAULT '0',
  `reward` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`),
  KEY `index_actId` (`actId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_score_bak"
#


#
# Structure for table "user_skill"
#

DROP TABLE IF EXISTS `user_skill`;
CREATE TABLE `user_skill` (
  `uuid` varchar(40) COLLATE utf8_bin NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_bin NOT NULL,
  `skillId` varchar(40) COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) DEFAULT '0',
  `actTime` bigint(20) DEFAULT '0',
  `endTime` bigint(20) DEFAULT NULL,
  `stat` int(10) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ownerId_index` (`ownerId`) USING BTREE,
  KEY `starttime_index` (`startTime`) USING BTREE,
  KEY `endtime_index` (`endTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_skill"
#


#
# Structure for table "user_snowball"
#

DROP TABLE IF EXISTS `user_snowball`;
CREATE TABLE `user_snowball` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `curLevel` int(10) DEFAULT NULL,
  `lastThrowTime` bigint(20) DEFAULT NULL,
  `todayThrowCount` int(10) DEFAULT NULL,
  `lastBuyTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_snowball"
#


#
# Structure for table "user_sock"
#

DROP TABLE IF EXISTS `user_sock`;
CREATE TABLE `user_sock` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socks` bigint(20) DEFAULT '0',
  `reward` blob,
  `level` int(10) DEFAULT '0',
  `refreshtime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_sock"
#


#
# Structure for table "user_state"
#

DROP TABLE IF EXISTS `user_state`;
CREATE TABLE `user_state` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stateId` int(11) NOT NULL,
  `startTime` bigint(20) NOT NULL DEFAULT '0',
  `endTime` bigint(20) NOT NULL,
  `type` int(4) DEFAULT '0',
  `type2` int(10) DEFAULT '0',
  `groupType` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`stateId`),
  KEY `index_uid_type2` (`uid`,`type2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_state"
#


#
# Structure for table "user_talent"
#

DROP TABLE IF EXISTS `user_talent`;
CREATE TABLE `user_talent` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `talent` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_talent"
#


#
# Structure for table "user_task"
#

DROP TABLE IF EXISTS `user_task`;
CREATE TABLE `user_task` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `type` int(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_task"
#


#
# Structure for table "user_territory_resource"
#

DROP TABLE IF EXISTS `user_territory_resource`;
CREATE TABLE `user_territory_resource` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wood` bigint(10) DEFAULT '0',
  `stone` bigint(10) DEFAULT '0',
  `iron` bigint(10) DEFAULT '0',
  `food` bigint(10) DEFAULT '0',
  `silver` bigint(10) DEFAULT '0',
  `lastUpdateTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `al_idx` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_territory_resource"
#


#
# Structure for table "user_timereward"
#

DROP TABLE IF EXISTS `user_timereward`;
CREATE TABLE `user_timereward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(8) DEFAULT '0',
  `times` int(8) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  `receiveTime` bigint(20) DEFAULT '0',
  `rewardInfo` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_timereward"
#


#
# Structure for table "user_used_item"
#

DROP TABLE IF EXISTS `user_used_item`;
CREATE TABLE `user_used_item` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_used_item"
#


#
# Structure for table "user_vip"
#

DROP TABLE IF EXISTS `user_vip`;
CREATE TABLE `user_vip` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '-1',
  `loginDays` int(11) NOT NULL,
  `lastLoginTime` bigint(20) NOT NULL,
  `vipEndTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_vip"
#


#
# Structure for table "user_wall"
#

DROP TABLE IF EXISTS `user_wall`;
CREATE TABLE `user_wall` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(6) NOT NULL DEFAULT '0',
  `build` int(6) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  `level` int(4) NOT NULL,
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_wall"
#


#
# Structure for table "user_world"
#

DROP TABLE IF EXISTS `user_world`;
CREATE TABLE `user_world` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pointId` int(11) NOT NULL,
  `color` int(11) DEFAULT NULL,
  `monsterLock` blob,
  `lastCityDefTime` bigint(11) NOT NULL,
  `attMonsterStamina` int(11) DEFAULT NULL,
  `lastStaminaTime` bigint(20) DEFAULT NULL,
  `lastMoveCityTime` bigint(20) DEFAULT '0',
  `srcServerPointId` int(11) DEFAULT NULL,
  `ckfConfirmAccessNextRound` int(4) DEFAULT NULL,
  `ckfNeedLeave` int(4) DEFAULT NULL,
  `ckfAccessTimes` int(8) DEFAULT '0',
  `ckfLastPlayRound` int(4) DEFAULT NULL,
  `ckfProtectTime` bigint(20) DEFAULT NULL,
  `ckfWinStreak` int(8) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_world"
#


#
# Structure for table "user_world_pve"
#

DROP TABLE IF EXISTS `user_world_pve`;
CREATE TABLE `user_world_pve` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pointId` int(11) NOT NULL,
  `attNum` int(11) NOT NULL,
  `buyNum` int(11) DEFAULT NULL,
  `monsterInfo` blob,
  PRIMARY KEY (`uid`,`pointId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_world_pve"
#


#
# Structure for table "userprofile"
#

DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `exp` int(11) NOT NULL,
  `gold` bigint(20) NOT NULL DEFAULT '0',
  `paidGold` bigint(20) DEFAULT '0',
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `parseRegisterId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gcmRegisterId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `openedPos` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picVer` int(11) DEFAULT '0',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chNameCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `worldPoint` int(11) DEFAULT NULL,
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gaid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pf` varchar(40) COLLATE utf8_unicode_ci DEFAULT 'market_global',
  `lang` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmFlag` int(11) DEFAULT '0',
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `offLineTime` bigint(20) DEFAULT '0',
  `banTime` bigint(20) DEFAULT '0',
  `chatBanTime` bigint(20) DEFAULT '0',
  `banGMName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noticeBanTime` bigint(20) DEFAULT '0',
  `lastOnlineTime` bigint(20) DEFAULT '0',
  `gmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serverId` int(11) DEFAULT NULL,
  `crossFightSrcServerId` int(11) NOT NULL DEFAULT '-1',
  `lastModGoldGetTime` bigint(20) DEFAULT '0',
  `modGoldGetTimeInterval` bigint(20) DEFAULT '0',
  `modGoldAmount` bigint(10) DEFAULT '0',
  `beTrainingModTime` bigint(20) DEFAULT '0',
  `guideStep` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `payRiskFactor` int(11) DEFAULT '0',
  `phoneDevice` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crystal` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `name_index` (`name`) USING BTREE,
  KEY `time_level_index` (`regTime`,`level`,`lastOnlineTime`,`pf`) USING BTREE,
  KEY `allianceid_lasttime_index` (`allianceId`,`lastOnlineTime`) USING BTREE,
  KEY `lang_index` (`lang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "userprofile"
#


#
# Structure for table "world_favorite"
#

DROP TABLE IF EXISTS `world_favorite`;
CREATE TABLE `world_favorite` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server` int(11) NOT NULL DEFAULT '0',
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`point`,`server`),
  KEY `time_idx` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_favorite"
#


#
# Structure for table "world_field_monster_dead"
#

DROP TABLE IF EXISTS `world_field_monster_dead`;
CREATE TABLE `world_field_monster_dead` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(20) NOT NULL,
  `monster` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `dead_monster_time` (`deadFinishTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_field_monster_dead"
#


#
# Structure for table "world_flush_field_monster_tmp"
#

DROP TABLE IF EXISTS `world_flush_field_monster_tmp`;
CREATE TABLE `world_flush_field_monster_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `pointItem` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) NOT NULL DEFAULT '0',
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "world_flush_field_monster_tmp"
#


#
# Structure for table "world_flush_monster_tmp"
#

DROP TABLE IF EXISTS `world_flush_monster_tmp`;
CREATE TABLE `world_flush_monster_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_flush_monster_tmp"
#


#
# Structure for table "world_flush_resource_tmp"
#

DROP TABLE IF EXISTS `world_flush_resource_tmp`;
CREATE TABLE `world_flush_resource_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resLevel` int(11) NOT NULL DEFAULT '0',
  `resCostValue` int(11) NOT NULL DEFAULT '0',
  `resInitValue` int(11) NOT NULL,
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_flush_resource_tmp"
#


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


#
# Structure for table "world_res_dead"
#

DROP TABLE IF EXISTS `world_res_dead`;
CREATE TABLE `world_res_dead` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dead_res_time` (`deadFinishTime`) USING BTREE,
  KEY `areaId_index` (`areaId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_res_dead"
#


#
# Structure for table "world_res_record"
#

DROP TABLE IF EXISTS `world_res_record`;
CREATE TABLE `world_res_record` (
  `time` bigint(20) NOT NULL,
  `id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`time`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_res_record"
#


#
# Structure for table "world_update_gridtype_tmp"
#

DROP TABLE IF EXISTS `world_update_gridtype_tmp`;
CREATE TABLE `world_update_gridtype_tmp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gridType` int(11) NOT NULL,
  `grid2Type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_update_gridtype_tmp"
#


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


#
# Database "cokdb3"
#

CREATE DATABASE IF NOT EXISTS `cokdb3` /*!40100 DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci */;
USE `cokdb3`;

#
# Structure for table "activation"
#

DROP TABLE IF EXISTS `activation`;
CREATE TABLE `activation` (
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `series` int(11) DEFAULT NULL,
  `user` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `index_user` (`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "activation"
#


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

INSERT INTO `activity` VALUES (110004,'monsters soege',4,152950927637,1545609600000,1545696000000);

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `passmd5` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `auth` text COLLATE utf8_unicode_ci NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `addtime` bigint(20) NOT NULL,
  `lastactive` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "admin"
#


#
# Structure for table "affairs"
#

DROP TABLE IF EXISTS `affairs`;
CREATE TABLE `affairs` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `affairId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rewardTime` bigint(20) NOT NULL,
  `rewardNum` int(4) NOT NULL,
  `opt` int(2) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_type` (`type`,`rewardTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "affairs"
#


#
# Structure for table "affairs_value"
#

DROP TABLE IF EXISTS `affairs_value`;
CREATE TABLE `affairs_value` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `people` int(10) NOT NULL DEFAULT '0',
  `refreshTime` bigint(20) NOT NULL,
  `leagueTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "affairs_value"
#


#
# Structure for table "alliance"
#

DROP TABLE IF EXISTS `alliance`;
CREATE TABLE `alliance` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `alliancename` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbrRename` int(11) DEFAULT '0',
  `intro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `announce` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `curMember` int(11) DEFAULT '0',
  `maxMember` int(11) DEFAULT NULL,
  `recruit` int(11) DEFAULT NULL,
  `oldfightpower` int(11) DEFAULT NULL,
  `giftlevel` int(11) DEFAULT '0',
  `alliancepoint` int(11) DEFAULT '0',
  `reicon` int(11) DEFAULT '0',
  `rankone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ranktwo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankthree` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankfour` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankfive` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createtime` bigint(20) NOT NULL,
  `dau` int(11) DEFAULT '0',
  `rallyPoint` int(10) DEFAULT NULL,
  `ally` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enemy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `powerRestriction` bigint(10) DEFAULT '0',
  `castleRestriction` int(2) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance"
#


#
# Structure for table "alliance_apply"
#

DROP TABLE IF EXISTS `alliance_apply`;
CREATE TABLE `alliance_apply` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` blob,
  `type` int(11) DEFAULT NULL,
  `applyTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_user` (`userId`) USING BTREE,
  KEY `index_alliance` (`allianceId`) USING BTREE,
  KEY `index_time` (`applyTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_apply"
#


#
# Structure for table "alliance_battle_record"
#

DROP TABLE IF EXISTS `alliance_battle_record`;
CREATE TABLE `alliance_battle_record` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attAllianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defAllianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `report` blob NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_battle_record"
#


#
# Structure for table "alliance_battle_team"
#

DROP TABLE IF EXISTS `alliance_battle_team`;
CREATE TABLE `alliance_battle_team` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `targetId` int(11) NOT NULL,
  `targetUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetPic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetType` int(2) DEFAULT '0',
  `leaderUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `leaderName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `leaderId` int(11) DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxSoldiers` int(11) NOT NULL,
  `waitTime` bigint(20) NOT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_battle_team"
#


#
# Structure for table "alliance_comment"
#

DROP TABLE IF EXISTS `alliance_comment`;
CREATE TABLE `alliance_comment` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `senderUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senderAllianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` blob,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userpic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_comment"
#


#
# Structure for table "alliance_comment_shield"
#

DROP TABLE IF EXISTS `alliance_comment_shield`;
CREATE TABLE `alliance_comment_shield` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `icon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_comment_shield"
#


#
# Structure for table "alliance_donate"
#

DROP TABLE IF EXISTS `alliance_donate`;
CREATE TABLE `alliance_donate` (
  `uerid` varchar(45) NOT NULL,
  `scienceid` int(11) NOT NULL,
  `highres` varchar(45) DEFAULT NULL,
  `midres` varchar(45) DEFAULT NULL,
  `lowres` varchar(45) DEFAULT NULL,
  `highnum` int(11) DEFAULT '0',
  `midnum` int(11) DEFAULT '0',
  `lownum` int(11) DEFAULT '0',
  `higprogress` int(11) DEFAULT '0',
  `midprogress` int(11) DEFAULT '0',
  `lowprogress` int(11) DEFAULT '0',
  `highcontribute` int(11) DEFAULT '0',
  `midcontribute` int(11) DEFAULT '0',
  `lowcontribute` int(11) DEFAULT '0',
  `lastrefreshtime` bigint(20) DEFAULT '0',
  `highNotUse` int(11) DEFAULT '0',
  `midNotUse` int(11) DEFAULT '0',
  `midAvailable` int(10) DEFAULT '0',
  `highAvailable` int(10) DEFAULT '0',
  PRIMARY KEY (`uerid`,`scienceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "alliance_donate"
#


#
# Structure for table "alliance_gift"
#

DROP TABLE IF EXISTS `alliance_gift`;
CREATE TABLE `alliance_gift` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allianceid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `expiretime` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_gift"
#


#
# Structure for table "alliance_help"
#

DROP TABLE IF EXISTS `alliance_help`;
CREATE TABLE `alliance_help` (
  `helpId` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allianceId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senderId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isvalid` int(10) DEFAULT '1',
  `maxcount` int(10) DEFAULT '0',
  `nowcount` int(10) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `reduceSec` int(10) DEFAULT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `helpers` blob,
  PRIMARY KEY (`helpId`),
  KEY `index_alliance_help` (`content`) USING BTREE,
  KEY `allianceId_index` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_help"
#


#
# Structure for table "alliance_helper"
#

DROP TABLE IF EXISTS `alliance_helper`;
CREATE TABLE `alliance_helper` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `helpId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senderId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recvId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stats` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_alliance_helper` (`helpId`,`recvId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_helper"
#


#
# Structure for table "alliance_invite_move"
#

DROP TABLE IF EXISTS `alliance_invite_move`;
CREATE TABLE `alliance_invite_move` (
  `inviter` varchar(255) COLLATE utf8_bin NOT NULL,
  `invitee` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`inviter`,`invitee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_invite_move"
#


#
# Structure for table "alliance_member"
#

DROP TABLE IF EXISTS `alliance_member`;
CREATE TABLE `alliance_member` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT '0',
  `accPoint` int(11) DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `donateTime` bigint(20) DEFAULT NULL,
  `todaydonate` int(11) DEFAULT '0',
  `todayprogress` int(11) DEFAULT '0',
  `jointime` bigint(20) DEFAULT '0',
  `wood` int(11) DEFAULT '0',
  `stone` int(11) DEFAULT '0',
  `iron` int(11) DEFAULT '0',
  `food` int(11) DEFAULT '0',
  `silver` int(11) DEFAULT '0',
  `gold` int(11) DEFAULT '0',
  `donateCDTime` bigint(20) DEFAULT '0',
  `donateAvailable` int(2) DEFAULT '1',
  `yesterdayLogin` int(11) DEFAULT '0',
  `fight` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_member"
#


#
# Structure for table "alliance_science"
#

DROP TABLE IF EXISTS `alliance_science`;
CREATE TABLE `alliance_science` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scienceId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `wood` int(11) DEFAULT NULL,
  `stone` int(11) DEFAULT NULL,
  `iron` int(11) DEFAULT NULL,
  `food` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `donateprogress` int(11) DEFAULT '0',
  `donatefinish` int(4) DEFAULT '0',
  `researchstarttime` bigint(20) DEFAULT '0',
  `effectflag` int(4) DEFAULT '0',
  `power` int(11) DEFAULT '0',
  PRIMARY KEY (`allianceId`,`scienceId`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_science"
#


#
# Structure for table "alliance_science_upgrade"
#

DROP TABLE IF EXISTS `alliance_science_upgrade`;
CREATE TABLE `alliance_science_upgrade` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scienceId` int(11) DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `needTime` bigint(20) DEFAULT NULL,
  `accelerate` blob,
  PRIMARY KEY (`allianceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_science_upgrade"
#


#
# Structure for table "alliance_shop"
#

DROP TABLE IF EXISTS `alliance_shop`;
CREATE TABLE `alliance_shop` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`allianceId`,`goodsId`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shop"
#


#
# Structure for table "alliance_shop_make"
#

DROP TABLE IF EXISTS `alliance_shop_make`;
CREATE TABLE `alliance_shop_make` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `needTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shop_make"
#


#
# Structure for table "alliance_shophis"
#

DROP TABLE IF EXISTS `alliance_shophis`;
CREATE TABLE `alliance_shophis` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_alliance` (`allianceId`) USING BTREE,
  KEY `index_user` (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shophis"
#


#
# Structure for table "alliance_stats"
#

DROP TABLE IF EXISTS `alliance_stats`;
CREATE TABLE `alliance_stats` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `event_type` int(2) DEFAULT NULL,
  `fromUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `toUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `extraParam` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_stats"
#


#
# Structure for table "alliance_territory"
#

DROP TABLE IF EXISTS `alliance_territory`;
CREATE TABLE `alliance_territory` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `pointId` int(10) DEFAULT NULL,
  `towerPoint` int(10) DEFAULT NULL,
  `type` int(2) DEFAULT '14',
  `resType` int(2) DEFAULT NULL,
  `num` int(10) DEFAULT '1',
  `allianceId` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceName` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceAbbr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stat` int(2) DEFAULT '0',
  `active` int(2) DEFAULT '0',
  `level` int(2) DEFAULT '0',
  `maxDef` int(10) DEFAULT NULL,
  `curDef` int(10) DEFAULT NULL,
  `createId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ownerId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `buildingSpd` double(20,10) DEFAULT '0.0000000000',
  `updateTime` bigint(20) DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `lastUpdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `point_idx` (`pointId`) USING BTREE,
  KEY `alliance_idx` (`allianceId`) USING BTREE,
  KEY `update_idx` (`updateTime`) USING BTREE,
  KEY `start_idx` (`startTime`) USING BTREE,
  KEY `lastup_idx` (`lastUpdateTime`) USING BTREE,
  KEY `tower_idx` (`towerPoint`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_territory"
#


#
# Structure for table "army_total"
#

DROP TABLE IF EXISTS `army_total`;
CREATE TABLE `army_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "army_total"
#


#
# Structure for table "atk_name"
#

DROP TABLE IF EXISTS `atk_name`;
CREATE TABLE `atk_name` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "atk_name"
#


#
# Structure for table "atk_time"
#

DROP TABLE IF EXISTS `atk_time`;
CREATE TABLE `atk_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "atk_time"
#


#
# Structure for table "badwords"
#

DROP TABLE IF EXISTS `badwords`;
CREATE TABLE `badwords` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `words` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "badwords"
#


#
# Structure for table "black_land_res_dead"
#

DROP TABLE IF EXISTS `black_land_res_dead`;
CREATE TABLE `black_land_res_dead` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dead_res_time` (`deadFinishTime`) USING BTREE,
  KEY `areaId_index` (`areaId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "black_land_res_dead"
#


#
# Structure for table "c3p0testtable"
#

DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "c3p0testtable"
#


#
# Structure for table "celebrity"
#

DROP TABLE IF EXISTS `celebrity`;
CREATE TABLE `celebrity` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "celebrity"
#


#
# Structure for table "chat_shield"
#

DROP TABLE IF EXISTS `chat_shield`;
CREATE TABLE `chat_shield` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `other` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `owner_other_index` (`owner`,`other`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "chat_shield"
#


#
# Structure for table "city_monster"
#

DROP TABLE IF EXISTS `city_monster`;
CREATE TABLE `city_monster` (
  `uid` varchar(255) NOT NULL,
  `nextUpdateTime` bigint(20) DEFAULT NULL,
  `bigMonster` int(11) DEFAULT NULL,
  `smallMonster` int(20) DEFAULT NULL,
  `lastUpdateTime` bigint(20) DEFAULT NULL,
  `bigMonsterInOneDay` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "city_monster"
#


#
# Structure for table "compensate_shield_record"
#

DROP TABLE IF EXISTS `compensate_shield_record`;
CREATE TABLE `compensate_shield_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensate_shield_record"
#


#
# Structure for table "compensation_record"
#

DROP TABLE IF EXISTS `compensation_record`;
CREATE TABLE `compensation_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `count` int(10) DEFAULT '0',
  `lastCompensateTime` bigint(20) DEFAULT NULL,
  `isFirstOnFire` int(2) DEFAULT '1',
  PRIMARY KEY (`uid`),
  KEY `time_index` (`lastCompensateTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensation_record"
#


#
# Structure for table "compensation_record_shield"
#

DROP TABLE IF EXISTS `compensation_record_shield`;
CREATE TABLE `compensation_record_shield` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensation_record_shield"
#


#
# Structure for table "crystal_cost_record"
#

DROP TABLE IF EXISTS `crystal_cost_record`;
CREATE TABLE `crystal_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goldType` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `originalGold` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remainGold` bigint(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_user` (`time`,`userId`,`type`) USING BTREE,
  KEY `index_type` (`userId`,`time`,`type`) USING BTREE,
  KEY `index_goldType` (`goldType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "crystal_cost_record"
#


#
# Structure for table "def_time"
#

DROP TABLE IF EXISTS `def_time`;
CREATE TABLE `def_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "def_time"
#


#
# Structure for table "demo"
#

DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `key_` varchar(200) COLLATE utf8_bin NOT NULL,
  `value_` mediumblob,
  PRIMARY KEY (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "demo"
#


#
# Structure for table "device_mail_record"
#

DROP TABLE IF EXISTS `device_mail_record`;
CREATE TABLE `device_mail_record` (
  `deviceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `record` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`deviceId`,`record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "device_mail_record"
#


#
# Structure for table "donate_history"
#

DROP TABLE IF EXISTS `donate_history`;
CREATE TABLE `donate_history` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `donate` int(10) DEFAULT '0',
  `progress` int(10) DEFAULT NULL,
  `donateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `aid_idx` (`allianceId`) USING BTREE,
  KEY `time_idx` (`donateTime`) USING BTREE,
  KEY `progress_idx` (`progress`) USING BTREE,
  KEY `donate_idx` (`donate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "donate_history"
#


#
# Structure for table "donate_history_record"
#

DROP TABLE IF EXISTS `donate_history_record`;
CREATE TABLE `donate_history_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `donate` int(10) DEFAULT '0',
  `progress` int(10) DEFAULT NULL,
  `donateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `aid_idx` (`allianceId`) USING BTREE,
  KEY `time_idx` (`donateTime`) USING BTREE,
  KEY `progress_idx` (`progress`) USING BTREE,
  KEY `donate_idx` (`donate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "donate_history_record"
#


#
# Structure for table "exchange"
#

DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange"
#


#
# Structure for table "exchange_activity"
#

DROP TABLE IF EXISTS `exchange_activity`;
CREATE TABLE `exchange_activity` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `reward` blob,
  `refresh` int(11) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_activity"
#


#
# Structure for table "exchange_alliance_log"
#

DROP TABLE IF EXISTS `exchange_alliance_log`;
CREATE TABLE `exchange_alliance_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`orderId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_alliance_log"
#


#
# Structure for table "exchange_gift"
#

DROP TABLE IF EXISTS `exchange_gift`;
CREATE TABLE `exchange_gift` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `receiverId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sendTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`receiverId`,`exchangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_gift"
#


#
# Structure for table "exchange_gift_log"
#

DROP TABLE IF EXISTS `exchange_gift_log`;
CREATE TABLE `exchange_gift_log` (
  `mailId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `senderId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiverId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendTime` bigint(20) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mailId`,`sendTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_gift_log"
#


#
# Structure for table "exchange_order"
#

DROP TABLE IF EXISTS `exchange_order`;
CREATE TABLE `exchange_order` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_order"
#


#
# Structure for table "exchange_time"
#

DROP TABLE IF EXISTS `exchange_time`;
CREATE TABLE `exchange_time` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `beginTime` bigint(20) DEFAULT NULL,
  `buyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_time"
#


#
# Structure for table "exchange_visible"
#

DROP TABLE IF EXISTS `exchange_visible`;
CREATE TABLE `exchange_visible` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`exchangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_visible"
#


#
# Structure for table "firstpaylog"
#

DROP TABLE IF EXISTS `firstpaylog`;
CREATE TABLE `firstpaylog` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `orderInfo` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,2) NOT NULL DEFAULT '0.00',
  `paid` double(10,2) DEFAULT '0.00',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  PRIMARY KEY (`uid`,`orderId`,`pf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "firstpaylog"
#


#
# Structure for table "fiveonlinedata"
#

DROP TABLE IF EXISTS `fiveonlinedata`;
CREATE TABLE `fiveonlinedata` (
  `timeStamp` int(11) NOT NULL DEFAULT '0',
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`timeStamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "fiveonlinedata"
#


#
# Structure for table "gold_cost_record"
#

DROP TABLE IF EXISTS `gold_cost_record`;
CREATE TABLE `gold_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goldType` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `originalGold` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remainGold` bigint(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_user` (`time`,`userId`,`type`) USING BTREE,
  KEY `index_type` (`userId`,`time`,`type`) USING BTREE,
  KEY `index_goldType` (`goldType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "gold_cost_record"
#


#
# Structure for table "goods_cost_record"
#

DROP TABLE IF EXISTS `goods_cost_record`;
CREATE TABLE `goods_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `original` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remain` bigint(11) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_time` (`time`,`userId`,`itemId`) USING BTREE,
  KEY `index_user` (`userId`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "goods_cost_record"
#


#
# Structure for table "hot_buy_record"
#

DROP TABLE IF EXISTS `hot_buy_record`;
CREATE TABLE `hot_buy_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `buyCount` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`goodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "hot_buy_record"
#


#
# Structure for table "hot_goods_cost_record"
#

DROP TABLE IF EXISTS `hot_goods_cost_record`;
CREATE TABLE `hot_goods_cost_record` (
  `uuid` varchar(255) COLLATE utf8_bin NOT NULL,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `buyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `goods_idx` (`goodsId`) USING BTREE,
  KEY `time_idx` (`buyTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hot_goods_cost_record"
#


#
# Structure for table "hot_info_before_refresh"
#

DROP TABLE IF EXISTS `hot_info_before_refresh`;
CREATE TABLE `hot_info_before_refresh` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `itemId` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) NOT NULL DEFAULT '0',
  `gold` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`goodsId`,`price`,`refreshTime`),
  KEY `time_idx` (`refreshTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hot_info_before_refresh"
#


#
# Structure for table "hot_refresh_record"
#

DROP TABLE IF EXISTS `hot_refresh_record`;
CREATE TABLE `hot_refresh_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "hot_refresh_record"
#


#
# Structure for table "invite_count"
#

DROP TABLE IF EXISTS `invite_count`;
CREATE TABLE `invite_count` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "invite_count"
#


#
# Structure for table "invitee"
#

DROP TABLE IF EXISTS `invitee`;
CREATE TABLE `invitee` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `inviterUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "invitee"
#


#
# Structure for table "inviter"
#

DROP TABLE IF EXISTS `inviter`;
CREATE TABLE `inviter` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `inviteeUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `inviter_index_001` (`uid`,`type`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "inviter"
#


#
# Structure for table "king_present_record"
#

DROP TABLE IF EXISTS `king_present_record`;
CREATE TABLE `king_present_record` (
  `toUserId` varchar(40) NOT NULL,
  `presentId` int(11) NOT NULL,
  `presentNameId` int(11) NOT NULL,
  `sendTime` bigint(20) NOT NULL,
  `abbr` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`toUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "king_present_record"
#


#
# Structure for table "kingdom_cross_fight_history"
#

DROP TABLE IF EXISTS `kingdom_cross_fight_history`;
CREATE TABLE `kingdom_cross_fight_history` (
  `serverId` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `round` int(8) NOT NULL,
  `score` bigint(20) DEFAULT '0',
  `rank` int(8) DEFAULT '0',
  PRIMARY KEY (`serverId`,`startTime`,`round`),
  KEY `kingdom_startTime` (`serverId`,`startTime`) USING BTREE,
  KEY `startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kingdom_cross_fight_history"
#


#
# Structure for table "kingdom_position"
#

DROP TABLE IF EXISTS `kingdom_position`;
CREATE TABLE `kingdom_position` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `positionId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `chNameFlag` int(11) DEFAULT NULL,
  `preKingUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relinquishEndTime` bigint(20) DEFAULT NULL,
  `currResourceType` int(11) DEFAULT NULL,
  `chBannerFlag` int(11) DEFAULT NULL,
  `chThronePicFlag` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kingdom_position"
#


#
# Structure for table "logaction"
#

DROP TABLE IF EXISTS `logaction`;
CREATE TABLE `logaction` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `param` blob,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`action`,`code`) USING BTREE,
  KEY `index2` (`user`,`timeStamp`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logaction"
#


#
# Structure for table "logaction2"
#

DROP TABLE IF EXISTS `logaction2`;
CREATE TABLE `logaction2` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`action`,`code`) USING BTREE,
  KEY `index2` (`user`,`timeStamp`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logaction2"
#


#
# Structure for table "logrecord"
#

DROP TABLE IF EXISTS `logrecord`;
CREATE TABLE `logrecord` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `category` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(11) DEFAULT NULL,
  `param4` int(11) DEFAULT NULL,
  `data1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`category`,`type`) USING BTREE,
  KEY `index_2` (`user`,`category`,`type`,`timeStamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logrecord"
#


#
# Structure for table "logstat"
#

DROP TABLE IF EXISTS `logstat`;
CREATE TABLE `logstat` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logstat"
#


#
# Structure for table "logtemp"
#

DROP TABLE IF EXISTS `logtemp`;
CREATE TABLE `logtemp` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logtemp"
#


#
# Structure for table "logtmp"
#

DROP TABLE IF EXISTS `logtmp`;
CREATE TABLE `logtmp` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logtmp"
#


#
# Structure for table "lottery_log"
#

DROP TABLE IF EXISTS `lottery_log`;
CREATE TABLE `lottery_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `superMode` tinyint(2) DEFAULT NULL,
  `lotteryId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lotteryInfo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "lottery_log"
#


#
# Structure for table "lottery_record"
#

DROP TABLE IF EXISTS `lottery_record`;
CREATE TABLE `lottery_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `superMode` int(2) NOT NULL,
  `step` int(11) NOT NULL,
  `times1` int(11) NOT NULL,
  `times2` int(11) NOT NULL,
  `multiple` int(11) NOT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryInfo1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryInfo2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `times3` int(10) DEFAULT '0',
  `times4` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "lottery_record"
#


#
# Structure for table "mail"
#

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  `reply` int(2) NOT NULL DEFAULT '0',
  `translationId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE,
  KEY `index_toUserTime` (`toUser`,`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail"
#


#
# Structure for table "mail_1016"
#

DROP TABLE IF EXISTS `mail_1016`;
CREATE TABLE `mail_1016` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_1016"
#


#
# Structure for table "mail_20141030"
#

DROP TABLE IF EXISTS `mail_20141030`;
CREATE TABLE `mail_20141030` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_20141030"
#


#
# Structure for table "mail_20150212"
#

DROP TABLE IF EXISTS `mail_20150212`;
CREATE TABLE `mail_20150212` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  `reply` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE,
  KEY `index_toUserTime` (`toUser`,`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_20150212"
#


#
# Structure for table "mail_contents_1016"
#

DROP TABLE IF EXISTS `mail_contents_1016`;
CREATE TABLE `mail_contents_1016` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_contents_1016"
#


#
# Structure for table "mail_contents_20141030"
#

DROP TABLE IF EXISTS `mail_contents_20141030`;
CREATE TABLE `mail_contents_20141030` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_contents_20141030"
#


#
# Structure for table "mail_group"
#

DROP TABLE IF EXISTS `mail_group`;
CREATE TABLE `mail_group` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `groupType` int(4) NOT NULL DEFAULT '1',
  `groupIndex` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`groupType`,`groupIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_group"
#


#
# Structure for table "mail_group_20150212"
#

DROP TABLE IF EXISTS `mail_group_20150212`;
CREATE TABLE `mail_group_20150212` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `groupType` int(4) NOT NULL DEFAULT '1',
  `groupIndex` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`groupType`,`groupIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_group_20150212"
#


#
# Structure for table "material_control"
#

DROP TABLE IF EXISTS `material_control`;
CREATE TABLE `material_control` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(8) NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "material_control"
#


#
# Structure for table "mod_authorize"
#

DROP TABLE IF EXISTS `mod_authorize`;
CREATE TABLE `mod_authorize` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `authorize` int(2) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "mod_authorize"
#


#
# Structure for table "mod_record"
#

DROP TABLE IF EXISTS `mod_record`;
CREATE TABLE `mod_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `toUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailType` int(5) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_idx` (`fromUser`) USING BTREE,
  KEY `to_idx` (`toUser`) USING BTREE,
  KEY `time_Idx` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "mod_record"
#


#
# Structure for table "monitor_test"
#

DROP TABLE IF EXISTS `monitor_test`;
CREATE TABLE `monitor_test` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monitor_test"
#


#
# Structure for table "monster_siege"
#

DROP TABLE IF EXISTS `monster_siege`;
CREATE TABLE `monster_siege` (
  `allianceId` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `monsterCastleId` int(8) DEFAULT '0',
  `startTime` bigint(20) DEFAULT '0',
  `endTime` bigint(20) DEFAULT '0',
  `state` int(8) NOT NULL DEFAULT '0',
  `currPhase` int(8) DEFAULT '0',
  `currRoundIndex` int(8) DEFAULT '0',
  `currRoundStartTime` bigint(20) DEFAULT '0',
  `currMemberUidListInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `memberUidListInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `allianceKillCount` bigint(20) DEFAULT '0',
  `currMonsterInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `monsterCastleIds` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `monsterPerRoundNum` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`allianceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monster_siege"
#


#
# Structure for table "monster_siege_top_history"
#

DROP TABLE IF EXISTS `monster_siege_top_history`;
CREATE TABLE `monster_siege_top_history` (
  `allianceId` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` bigint(20) NOT NULL,
  `allianceAbbr` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allianceName` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `siegeRound` int(8) DEFAULT '0',
  `validMemberCount` int(8) DEFAULT '0',
  `allianceCount` int(10) DEFAULT '0',
  `activityAllianceCount` int(10) DEFAULT '0',
  `activity30AllianceCount` int(10) DEFAULT '0',
  `activity40AllianceCount` int(10) DEFAULT '0',
  `activity50AllianceCount` int(10) DEFAULT '0',
  `monsterPerRoundNum` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`allianceId`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monster_siege_top_history"
#


#
# Structure for table "monthly_card"
#

DROP TABLE IF EXISTS `monthly_card`;
CREATE TABLE `monthly_card` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `accept` int(8) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  `available` int(4) DEFAULT '0',
  `buyTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monthly_card"
#


#
# Structure for table "move_city_time"
#

DROP TABLE IF EXISTS `move_city_time`;
CREATE TABLE `move_city_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "move_city_time"
#


#
# Structure for table "move_total"
#

DROP TABLE IF EXISTS `move_total`;
CREATE TABLE `move_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "move_total"
#


#
# Structure for table "notice_cost_log"
#

DROP TABLE IF EXISTS `notice_cost_log`;
CREATE TABLE `notice_cost_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`itemId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "notice_cost_log"
#


#
# Structure for table "oldmailinsert"
#

DROP TABLE IF EXISTS `oldmailinsert`;
CREATE TABLE `oldmailinsert` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "oldmailinsert"
#


#
# Structure for table "parse_info"
#

DROP TABLE IF EXISTS `parse_info`;
CREATE TABLE `parse_info` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `status` int(4) NOT NULL,
  `audio` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "parse_info"
#


#
# Structure for table "pay_action"
#

DROP TABLE IF EXISTS `pay_action`;
CREATE TABLE `pay_action` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`exchangeId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_action"
#


#
# Structure for table "pay_request"
#

DROP TABLE IF EXISTS `pay_request`;
CREATE TABLE `pay_request` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `purchaseId` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `productId` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `status` int(4) DEFAULT '0',
  `finishTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`pf`,`time`),
  KEY `index_uid_pf_productId` (`uid`,`pf`,`purchaseId`) USING BTREE,
  KEY `index_uid_pf_purchaseId` (`uid`,`pf`,`purchaseId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_request"
#


#
# Structure for table "pay_total"
#

DROP TABLE IF EXISTS `pay_total`;
CREATE TABLE `pay_total` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  `type` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_total"
#


#
# Structure for table "pay_total_log"
#

DROP TABLE IF EXISTS `pay_total_log`;
CREATE TABLE `pay_total_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  `type` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`level`,`createTime`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_total_log"
#


#
# Structure for table "paycheck"
#

DROP TABLE IF EXISTS `paycheck`;
CREATE TABLE `paycheck` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apidata` blob,
  PRIMARY KEY (`uid`,`orderId`,`pf`),
  KEY `index_time_status` (`time`,`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paycheck"
#


#
# Structure for table "paylog"
#

DROP TABLE IF EXISTS `paylog`;
CREATE TABLE `paylog` (
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
  PRIMARY KEY (`uid`,`orderId`,`pf`),
  KEY `index_time_pf` (`time`,`pf`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paylog"
#


#
# Structure for table "paylog_back"
#

DROP TABLE IF EXISTS `paylog_back`;
CREATE TABLE `paylog_back` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,0) NOT NULL DEFAULT '0',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  PRIMARY KEY (`uid`,`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paylog_back"
#


#
# Structure for table "pic_upload_record"
#

DROP TABLE IF EXISTS `pic_upload_record`;
CREATE TABLE `pic_upload_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `picVer` int(11) DEFAULT '0',
  `updateTime` bigint(10) DEFAULT '9223372036854775807',
  `report` int(2) DEFAULT '0',
  `banCount` int(2) DEFAULT '0',
  `banTime` bigint(10) DEFAULT '0',
  `stat` int(2) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `time_idx` (`updateTime`) USING BTREE,
  KEY `report_idx` (`report`) USING BTREE,
  KEY `stat_idx` (`stat`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "pic_upload_record"
#


#
# Structure for table "player"
#

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "player"
#


#
# Structure for table "playerinfo"
#

DROP TABLE IF EXISTS `playerinfo`;
CREATE TABLE `playerinfo` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `battlesWin` int(8) DEFAULT '0',
  `battlesLose` int(8) DEFAULT '0',
  `attacksWin` int(8) DEFAULT '0',
  `attacksLose` int(8) DEFAULT '0',
  `defensesWin` int(8) DEFAULT '0',
  `detectNum` int(8) DEFAULT '0',
  `armyKill` int(8) DEFAULT '0',
  `armyDead` int(8) DEFAULT '0',
  `armyCure` int(8) DEFAULT '0',
  `cityDestroyed` int(8) DEFAULT '0',
  `questPower` int(8) DEFAULT '0',
  `power` bigint(20) DEFAULT '0',
  `buildingPower` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `power_index` (`power`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "playerinfo"
#


#
# Structure for table "pray_record"
#

DROP TABLE IF EXISTS `pray_record`;
CREATE TABLE `pray_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `cost` int(10) NOT NULL DEFAULT '0',
  `resource` varchar(20) COLLATE utf8_bin NOT NULL,
  `num` int(10) NOT NULL,
  `hit` int(2) DEFAULT '0',
  `prayTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `resource_idx` (`resource`) USING BTREE,
  KEY `time_idx` (`prayTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "pray_record"
#


#
# Structure for table "protect_total"
#

DROP TABLE IF EXISTS `protect_total`;
CREATE TABLE `protect_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "protect_total"
#


#
# Structure for table "push_log"
#

DROP TABLE IF EXISTS `push_log`;
CREATE TABLE `push_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `message` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "push_log"
#


#
# Structure for table "push_record"
#

DROP TABLE IF EXISTS `push_record`;
CREATE TABLE `push_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0',
  `msg` blob,
  `status` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "push_record"
#


#
# Structure for table "queue"
#

DROP TABLE IF EXISTS `queue`;
CREATE TABLE `queue` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `qid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `itemId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `isHelped` int(10) DEFAULT NULL,
  `para` int(10) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ownerId_index_001` (`ownerId`) USING BTREE,
  KEY `updateTime_index` (`updateTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "queue"
#


#
# Structure for table "refund_log"
#

DROP TABLE IF EXISTS `refund_log`;
CREATE TABLE `refund_log` (
  `refundId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(8) NOT NULL,
  `time` bigint(20) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `itemId` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `original` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remain` bigint(11) NOT NULL,
  PRIMARY KEY (`refundId`,`order`),
  KEY `index_time` (`time`,`userId`,`type`,`itemId`) USING BTREE,
  KEY `index_user` (`userId`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "refund_log"
#


#
# Structure for table "report"
#

DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `report` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_time` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "report"
#


#
# Structure for table "reward_107"
#

DROP TABLE IF EXISTS `reward_107`;
CREATE TABLE `reward_107` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `version` varchar(255) COLLATE utf8_bin NOT NULL,
  `rewardLevel` int(2) DEFAULT '0',
  `rewardStatus` int(2) DEFAULT '0',
  `endTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`version`),
  KEY `time_idx` (`endTime`) USING BTREE,
  KEY `stat_idx` (`rewardStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "reward_107"
#


#
# Structure for table "score_act"
#

DROP TABLE IF EXISTS `score_act`;
CREATE TABLE `score_act` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `finishFlag` int(11) DEFAULT '0',
  `rewardFlag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "score_act"
#


#
# Structure for table "server_activity"
#

DROP TABLE IF EXISTS `server_activity`;
CREATE TABLE `server_activity` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `rewad` int(11) DEFAULT '0',
  `events` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_activity"
#


#
# Structure for table "server_announce"
#

DROP TABLE IF EXISTS `server_announce`;
CREATE TABLE `server_announce` (
  `serverId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `randomGeneral` blob,
  `lastMoniterPushTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`serverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_announce"
#


#
# Structure for table "server_config"
#

DROP TABLE IF EXISTS `server_config`;
CREATE TABLE `server_config` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `stat` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_config"
#


#
# Structure for table "server_history_top_score"
#

DROP TABLE IF EXISTS `server_history_top_score`;
CREATE TABLE `server_history_top_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `score` double DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_history_top_score"
#


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

#
# Structure for table "server_mail_record"
#

DROP TABLE IF EXISTS `server_mail_record`;
CREATE TABLE `server_mail_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `record` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(2) DEFAULT '0',
  KEY `index_uid` (`uid`,`record`,`state`) USING BTREE,
  KEY `index_record` (`record`,`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_mail_record"
#


#
# Structure for table "server_push"
#

DROP TABLE IF EXISTS `server_push`;
CREATE TABLE `server_push` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) DEFAULT '0',
  `mailType` int(11) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `regStartTime` bigint(20) DEFAULT NULL,
  `regEndTime` bigint(20) DEFAULT NULL,
  `lastOnlineTimeBegin` bigint(20) DEFAULT NULL,
  `lastOnlineTime` bigint(20) DEFAULT NULL,
  `levelMin` int(10) DEFAULT NULL,
  `levelMax` int(10) DEFAULT NULL,
  `title` blob,
  `contents` blob,
  `reward` blob,
  `updateVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `parse` int(11) DEFAULT NULL,
  `notification` blob,
  `reply` int(2) DEFAULT NULL,
  `likeStatus` int(2) DEFAULT NULL,
  `confirm` int(10) DEFAULT '0',
  `platform` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemIdFlag` int(2) DEFAULT '0',
  `activityId` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `countries` varchar(516) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceLimit` int(2) DEFAULT NULL,
  `CDKeySeries` int(11) DEFAULT NULL,
  `bind` int(11) DEFAULT '0',
  `bLvMin` int(11) DEFAULT '0',
  `bLvMax` int(11) DEFAULT '0',
  `HDflag` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push"
#


#
# Structure for table "server_push_20141106"
#

DROP TABLE IF EXISTS `server_push_20141106`;
CREATE TABLE `server_push_20141106` (
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
  `reply` int(2) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push_20141106"
#


#
# Structure for table "server_push_config"
#

DROP TABLE IF EXISTS `server_push_config`;
CREATE TABLE `server_push_config` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `contents` blob,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push_config"
#


#
# Structure for table "server_score"
#

DROP TABLE IF EXISTS `server_score`;
CREATE TABLE `server_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `activity` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `readyTime` bigint(20) DEFAULT NULL,
  `beginTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `rewad` int(11) DEFAULT '0',
  `round` int(11) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_score"
#


#
# Structure for table "server_top_score"
#

DROP TABLE IF EXISTS `server_top_score`;
CREATE TABLE `server_top_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_top_score"
#


#
# Structure for table "server_update"
#

DROP TABLE IF EXISTS `server_update`;
CREATE TABLE `server_update` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `idx` int(10) NOT NULL,
  `content` blob,
  `chineseContent` blob,
  PRIMARY KEY (`uid`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_update"
#


#
# Structure for table "server_update_suggestion"
#

DROP TABLE IF EXISTS `server_update_suggestion`;
CREATE TABLE `server_update_suggestion` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `updateId` varchar(255) COLLATE utf8_bin NOT NULL,
  `idx` int(10) NOT NULL,
  `suggestion` blob,
  `real_uid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `server` int(10) DEFAULT NULL,
  `real_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reward_status` int(5) DEFAULT '0',
  PRIMARY KEY (`uid`,`updateId`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_update_suggestion"
#


#
# Structure for table "server_usermail"
#

DROP TABLE IF EXISTS `server_usermail`;
CREATE TABLE `server_usermail` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sendBy` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sendTime` bigint(20) NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents` blob,
  `reward` blob,
  `rewardStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_sendTime` (`sendTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_usermail"
#


#
# Structure for table "sign_in"
#

DROP TABLE IF EXISTS `sign_in`;
CREATE TABLE `sign_in` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` int(10) DEFAULT '0',
  `signInTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "sign_in"
#


#
# Structure for table "sign_in_feed"
#

DROP TABLE IF EXISTS `sign_in_feed`;
CREATE TABLE `sign_in_feed` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `feed` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`type`,`feed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "sign_in_feed"
#


#
# Structure for table "staff"
#

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "staff"
#


#
# Structure for table "stat_date"
#

DROP TABLE IF EXISTS `stat_date`;
CREATE TABLE `stat_date` (
  `date` date NOT NULL,
  `dau` int(11) NOT NULL DEFAULT '0',
  `pay` double(12,2) NOT NULL DEFAULT '0.00',
  `reg` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_date"
#


#
# Structure for table "stat_login"
#

DROP TABLE IF EXISTS `stat_login`;
CREATE TABLE `stat_login` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login"
#


#
# Structure for table "stat_login_2017_10"
#

DROP TABLE IF EXISTS `stat_login_2017_10`;
CREATE TABLE `stat_login_2017_10` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_10"
#


#
# Structure for table "stat_login_2017_11"
#

DROP TABLE IF EXISTS `stat_login_2017_11`;
CREATE TABLE `stat_login_2017_11` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_11"
#


#
# Structure for table "stat_login_2017_12"
#

DROP TABLE IF EXISTS `stat_login_2017_12`;
CREATE TABLE `stat_login_2017_12` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_12"
#


#
# Structure for table "stat_login_2017_6"
#

DROP TABLE IF EXISTS `stat_login_2017_6`;
CREATE TABLE `stat_login_2017_6` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_6"
#


#
# Structure for table "stat_login_2017_7"
#

DROP TABLE IF EXISTS `stat_login_2017_7`;
CREATE TABLE `stat_login_2017_7` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_7"
#


#
# Structure for table "stat_login_2017_8"
#

DROP TABLE IF EXISTS `stat_login_2017_8`;
CREATE TABLE `stat_login_2017_8` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_8"
#


#
# Structure for table "stat_login_2017_9"
#

DROP TABLE IF EXISTS `stat_login_2017_9`;
CREATE TABLE `stat_login_2017_9` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_9"
#


#
# Structure for table "stat_login_2018_1"
#

DROP TABLE IF EXISTS `stat_login_2018_1`;
CREATE TABLE `stat_login_2018_1` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_1"
#


#
# Structure for table "stat_login_2018_10"
#

DROP TABLE IF EXISTS `stat_login_2018_10`;
CREATE TABLE `stat_login_2018_10` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_10"
#


#
# Structure for table "stat_login_2018_11"
#

DROP TABLE IF EXISTS `stat_login_2018_11`;
CREATE TABLE `stat_login_2018_11` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_11"
#


#
# Structure for table "stat_login_2018_12"
#

DROP TABLE IF EXISTS `stat_login_2018_12`;
CREATE TABLE `stat_login_2018_12` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_12"
#


#
# Structure for table "stat_login_2018_2"
#

DROP TABLE IF EXISTS `stat_login_2018_2`;
CREATE TABLE `stat_login_2018_2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_2"
#


#
# Structure for table "stat_login_2018_3"
#

DROP TABLE IF EXISTS `stat_login_2018_3`;
CREATE TABLE `stat_login_2018_3` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_3"
#


#
# Structure for table "stat_login_2018_4"
#

DROP TABLE IF EXISTS `stat_login_2018_4`;
CREATE TABLE `stat_login_2018_4` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_4"
#


#
# Structure for table "stat_login_2018_5"
#

DROP TABLE IF EXISTS `stat_login_2018_5`;
CREATE TABLE `stat_login_2018_5` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_5"
#


#
# Structure for table "stat_login_2018_6"
#

DROP TABLE IF EXISTS `stat_login_2018_6`;
CREATE TABLE `stat_login_2018_6` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_6"
#


#
# Structure for table "stat_login_2018_7"
#

DROP TABLE IF EXISTS `stat_login_2018_7`;
CREATE TABLE `stat_login_2018_7` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_7"
#


#
# Structure for table "stat_login_2018_8"
#

DROP TABLE IF EXISTS `stat_login_2018_8`;
CREATE TABLE `stat_login_2018_8` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_8"
#


#
# Structure for table "stat_login_2018_9"
#

DROP TABLE IF EXISTS `stat_login_2018_9`;
CREATE TABLE `stat_login_2018_9` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_9"
#


#
# Structure for table "stat_login_2019_0"
#

DROP TABLE IF EXISTS `stat_login_2019_0`;
CREATE TABLE `stat_login_2019_0` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2019_0"
#


#
# Structure for table "stat_login2"
#

DROP TABLE IF EXISTS `stat_login2`;
CREATE TABLE `stat_login2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login2"
#


#
# Structure for table "stat_phone"
#

DROP TABLE IF EXISTS `stat_phone`;
CREATE TABLE `stat_phone` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_phone"
#


#
# Structure for table "stat_reg"
#

DROP TABLE IF EXISTS `stat_reg`;
CREATE TABLE `stat_reg` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referrer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipcountry` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`type`),
  KEY `index_time_pf_country` (`time`,`pf`,`country`) USING BTREE,
  KEY `country_index` (`country`) USING BTREE,
  KEY `type_idx` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_reg"
#


#
# Structure for table "stat_tutorial"
#

DROP TABLE IF EXISTS `stat_tutorial`;
CREATE TABLE `stat_tutorial` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`) USING BTREE,
  KEY `index_tutorial` (`tutorial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial"
#


#
# Structure for table "stat_tutorial_analyze"
#

DROP TABLE IF EXISTS `stat_tutorial_analyze`;
CREATE TABLE `stat_tutorial_analyze` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`) USING BTREE,
  KEY `index_tutorial` (`tutorial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial_analyze"
#


#
# Structure for table "stat_tutorial_v2"
#

DROP TABLE IF EXISTS `stat_tutorial_v2`;
CREATE TABLE `stat_tutorial_v2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`,`appVersion`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial_v2"
#


#
# Structure for table "suggestion"
#

DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE `suggestion` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `castlelevel` int(11) DEFAULT NULL,
  `contents` blob NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `replyContent` blob,
  `replyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `ownerId` (`ownerId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "suggestion"
#


#
# Structure for table "switches"
#

DROP TABLE IF EXISTS `switches`;
CREATE TABLE `switches` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stat` int(2) DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "switches"
#


#
# Structure for table "tavern"
#

DROP TABLE IF EXISTS `tavern`;
CREATE TABLE `tavern` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `free` int(4) NOT NULL,
  `firstFree` int(2) NOT NULL,
  `firstPay` int(2) NOT NULL,
  `freeTimes` int(4) NOT NULL,
  `payTimes` int(4) NOT NULL,
  `generals` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId5` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId6` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruit1` int(2) NOT NULL,
  `recruit2` int(2) NOT NULL,
  `recruit3` int(2) NOT NULL,
  `recruit4` int(2) NOT NULL,
  `recruit5` int(2) NOT NULL,
  `recruit6` int(2) NOT NULL,
  `addFreeTime` bigint(20) NOT NULL,
  `resetResult` int(4) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "tavern"
#


#
# Structure for table "team_atk_time"
#

DROP TABLE IF EXISTS `team_atk_time`;
CREATE TABLE `team_atk_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "team_atk_time"
#


#
# Structure for table "territory_user_effect"
#

DROP TABLE IF EXISTS `territory_user_effect`;
CREATE TABLE `territory_user_effect` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `pointId` int(10) NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stat` int(2) DEFAULT NULL,
  `active` int(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`pointId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "territory_user_effect"
#


#
# Structure for table "time_reward"
#

DROP TABLE IF EXISTS `time_reward`;
CREATE TABLE `time_reward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rewardId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastRewardTime` bigint(20) DEFAULT NULL,
  `nextRewardTime` bigint(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "time_reward"
#


#
# Structure for table "train"
#

DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `genUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finishTrain` bigint(20) NOT NULL,
  `endTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "train"
#


#
# Structure for table "translation"
#

DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` blob COMMENT '发言内容',
  `en` blob,
  `originalLang` varchar(255) DEFAULT 'cn',
  PRIMARY KEY (`id`),
  KEY `index_content` (`content`(50)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "translation"
#


#
# Structure for table "translation_record"
#

DROP TABLE IF EXISTS `translation_record`;
CREATE TABLE `translation_record` (
  `date` varchar(255) NOT NULL,
  `month` int(10) DEFAULT NULL,
  `day` int(10) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `words` int(20) DEFAULT NULL,
  `countryCharacters` int(20) DEFAULT '0',
  `allianceCharacters` int(20) DEFAULT '0',
  `en` int(20) DEFAULT '0',
  `zh-Hans` int(20) DEFAULT '0',
  `zh-Hant` int(20) DEFAULT '0',
  `ja` int(20) DEFAULT '0',
  `ko` int(20) DEFAULT '0',
  `ru` int(20) DEFAULT '0',
  `es` int(20) DEFAULT '0',
  `ms` int(20) DEFAULT '0',
  `fr` int(20) DEFAULT '0',
  `de` int(20) DEFAULT '0',
  `it` int(20) DEFAULT '0',
  `pt` int(20) DEFAULT '0',
  `other` int(20) DEFAULT '0',
  `fromDB` int(20) DEFAULT '0',
  `fromMS` int(20) DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "translation_record"
#


#
# Structure for table "translationv2"
#

DROP TABLE IF EXISTS `translationv2`;
CREATE TABLE `translationv2` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en` blob,
  `zh-Hans` blob,
  `zh-Hant` blob,
  `ja` blob,
  `ko` blob,
  `ru` blob,
  `es` blob,
  `ms` blob,
  `fr` blob,
  `de` blob,
  `it` blob,
  `pt` blob,
  `count` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_en` (`en`(50)) USING BTREE,
  KEY `index_zh-Hans` (`zh-Hans`(20)) USING BTREE,
  KEY `index_zh-Hant` (`zh-Hant`(20)) USING BTREE,
  KEY `index_ja` (`ja`(20)) USING BTREE,
  KEY `index_ko` (`ko`(20)) USING BTREE,
  KEY `index_ru` (`ru`(20)) USING BTREE,
  KEY `index_es` (`es`(20)) USING BTREE,
  KEY `index_ms` (`ms`(20)) USING BTREE,
  KEY `index_fr` (`fr`(20)) USING BTREE,
  KEY `index_de` (`de`(20)) USING BTREE,
  KEY `index_it` (`it`(20)) USING BTREE,
  KEY `index_pt` (`pt`(20)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "translationv2"
#


#
# Structure for table "treasure_map"
#

DROP TABLE IF EXISTS `treasure_map`;
CREATE TABLE `treasure_map` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `treasureId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currentOwner` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originalOwner` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `colour` int(10) DEFAULT NULL,
  `marchId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `finishTime` bigint(20) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `index_o_m` (`currentOwner`,`marchId`) USING BTREE,
  KEY `index_o_t` (`currentOwner`,`targetId`) USING BTREE,
  KEY `index_o_s_c` (`currentOwner`,`state`,`colour`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "treasure_map"
#


#
# Structure for table "trial_field"
#

DROP TABLE IF EXISTS `trial_field`;
CREATE TABLE `trial_field` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `freeTrial` int(11) DEFAULT '0',
  `freeFresh` bigint(20) DEFAULT '0',
  `freeAtk` int(11) DEFAULT '0',
  `monster` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `blood` int(11) DEFAULT '0',
  `screen` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `buyTrial` int(11) DEFAULT '0',
  `buyAtk` int(11) DEFAULT '0',
  `chargeAtkTimes` int(11) DEFAULT '0',
  `rewardMonster` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "trial_field"
#


#
# Structure for table "turret_shooting_task"
#

DROP TABLE IF EXISTS `turret_shooting_task`;
CREATE TABLE `turret_shooting_task` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `turretUid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `marchUuid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `uuid_idx` (`marchUuid`) USING BTREE,
  KEY `startTime_idx` (`startTime`) USING BTREE,
  KEY `endTime_idx` (`endTime`) USING BTREE,
  KEY `uid_idx` (`turretUid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "turret_shooting_task"
#


#
# Structure for table "uid_tmp"
#

DROP TABLE IF EXISTS `uid_tmp`;
CREATE TABLE `uid_tmp` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "uid_tmp"
#


#
# Structure for table "user_14day_login"
#

DROP TABLE IF EXISTS `user_14day_login`;
CREATE TABLE `user_14day_login` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `day` int(10) DEFAULT '0',
  `lastRewardTime` bigint(20) DEFAULT '0',
  `vipRewardTime` bigint(20) DEFAULT '0',
  `reward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`type`),
  KEY `day_index` (`day`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_14day_login"
#


#
# Structure for table "user_achievement"
#

DROP TABLE IF EXISTS `user_achievement`;
CREATE TABLE `user_achievement` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `completeTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_achievement"
#


#
# Structure for table "user_activation"
#

DROP TABLE IF EXISTS `user_activation`;
CREATE TABLE `user_activation` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activation"
#


#
# Structure for table "user_activity"
#

DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `actId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activity"
#


#
# Structure for table "user_activity_new"
#

DROP TABLE IF EXISTS `user_activity_new`;
CREATE TABLE `user_activity_new` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` int(10) NOT NULL,
  `level` int(10) NOT NULL,
  `rewards` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `reserve_1` int(10) NOT NULL,
  `reserve_2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activity_new"
#


#
# Structure for table "user_army"
#

DROP TABLE IF EXISTS `user_army`;
CREATE TABLE `user_army` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(4) NOT NULL DEFAULT '0',
  `free` int(6) NOT NULL DEFAULT '0',
  `pve` int(6) NOT NULL DEFAULT '0',
  `march` int(6) NOT NULL DEFAULT '0',
  `defence` int(6) NOT NULL DEFAULT '0',
  `train` int(6) NOT NULL DEFAULT '0',
  `foodCostTime` bigint(20) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_army"
#


#
# Structure for table "user_assets"
#

DROP TABLE IF EXISTS `user_assets`;
CREATE TABLE `user_assets` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `winPoint` bigint(10) NOT NULL DEFAULT '0',
  `lastUpdateTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_assets"
#


#
# Structure for table "user_building"
#

DROP TABLE IF EXISTS `user_building`;
CREATE TABLE `user_building` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `opType` int(11) DEFAULT '0',
  `putId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reward` int(2) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT '0',
  `effectTime` bigint(20) DEFAULT '0',
  `star` int(11) DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `lockState` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ub_uid_index` (`uid`,`itemId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_building"
#


#
# Structure for table "user_building_exp"
#

DROP TABLE IF EXISTS `user_building_exp`;
CREATE TABLE `user_building_exp` (
  `uid` varchar(255) NOT NULL,
  `historyMax` bigint(20) DEFAULT '0',
  `currentMax` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "user_building_exp"
#


#
# Structure for table "user_collect_record"
#

DROP TABLE IF EXISTS `user_collect_record`;
CREATE TABLE `user_collect_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource` int(10) DEFAULT '0',
  `killPeople` int(10) DEFAULT NULL,
  `train` int(10) DEFAULT NULL,
  `lastKillTime` bigint(20) DEFAULT NULL,
  `sockByResource` int(20) DEFAULT NULL,
  `sockByKill` int(20) DEFAULT NULL,
  `sockByTrain` int(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_collect_record"
#


#
# Structure for table "user_cross_fight_history"
#

DROP TABLE IF EXISTS `user_cross_fight_history`;
CREATE TABLE `user_cross_fight_history` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `round` int(8) NOT NULL,
  `score` bigint(20) DEFAULT '0',
  `rank` int(8) DEFAULT '0',
  `serverId` int(8) NOT NULL,
  PRIMARY KEY (`uid`,`startTime`,`round`),
  KEY `user_startTime` (`uid`,`startTime`) USING BTREE,
  KEY `startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_cross_fight_history"
#


#
# Structure for table "user_daily_task"
#

DROP TABLE IF EXISTS `user_daily_task`;
CREATE TABLE `user_daily_task` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_daily_task"
#


#
# Structure for table "user_dragon"
#

DROP TABLE IF EXISTS `user_dragon`;
CREATE TABLE `user_dragon` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `place` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `uid_index` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_dragon"
#


#
# Structure for table "user_equip"
#

DROP TABLE IF EXISTS `user_equip`;
CREATE TABLE `user_equip` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `on` int(4) NOT NULL DEFAULT '0',
  `itemId` int(11) NOT NULL DEFAULT '0',
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `extraProperty` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uuid`),
  KEY `index_uid_on` (`uid`,`on`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_equip"
#


#
# Structure for table "user_general"
#

DROP TABLE IF EXISTS `user_general`;
CREATE TABLE `user_general` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `generalId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `color` int(4) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  `ability` blob,
  PRIMARY KEY (`uuid`),
  KEY `uid_index_001` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_general"
#


#
# Structure for table "user_gift"
#

DROP TABLE IF EXISTS `user_gift`;
CREATE TABLE `user_gift` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `giftId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gifttype` int(11) NOT NULL,
  `valid` int(2) NOT NULL DEFAULT '1',
  `level` int(11) DEFAULT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `para` int(11) DEFAULT '0',
  `time` bigint(20) NOT NULL,
  `expiretime` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_gift"
#


#
# Structure for table "user_honor"
#

DROP TABLE IF EXISTS `user_honor`;
CREATE TABLE `user_honor` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_honor"
#


#
# Structure for table "user_hospital"
#

DROP TABLE IF EXISTS `user_hospital`;
CREATE TABLE `user_hospital` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dead` int(6) NOT NULL DEFAULT '0',
  `heal` int(6) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hospital"
#


#
# Structure for table "user_hot_item"
#

DROP TABLE IF EXISTS `user_hot_item`;
CREATE TABLE `user_hot_item` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hot_item"
#


#
# Structure for table "user_hot_item_best"
#

DROP TABLE IF EXISTS `user_hot_item_best`;
CREATE TABLE `user_hot_item_best` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `color` int(10) DEFAULT '0',
  `price_type` int(10) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `price_hot` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_hot_item_best"
#


#
# Structure for table "user_hot_item_v2"
#

DROP TABLE IF EXISTS `user_hot_item_v2`;
CREATE TABLE `user_hot_item_v2` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `price_hot` int(10) DEFAULT '0',
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`,`goodsId`,`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hot_item_v2"
#


#
# Structure for table "user_item"
#

DROP TABLE IF EXISTS `user_item`;
CREATE TABLE `user_item` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `value` int(11) DEFAULT NULL,
  `vanishTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `uitem_ownerId_index` (`ownerId`,`itemId`,`value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_item"
#


#
# Structure for table "user_login_ip"
#

DROP TABLE IF EXISTS `user_login_ip`;
CREATE TABLE `user_login_ip` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`ip`),
  KEY `index_uid_count` (`uid`,`count`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_login_ip"
#


#
# Structure for table "user_lord"
#

DROP TABLE IF EXISTS `user_lord`;
CREATE TABLE `user_lord` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `userSign` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `levelUp` int(4) DEFAULT '1',
  `firstJoinAllianceFlag` int(11) DEFAULT '1',
  `newPlayerAwardSoldierFlag` int(11) DEFAULT '0',
  `lastPayTime` bigint(20) DEFAULT '0',
  `pveLevel` int(4) DEFAULT '0',
  `firstBindAccountRewardFlag` int(11) DEFAULT '0',
  `dailyTaskFlushTime` bigint(20) DEFAULT '0',
  `dailyTaskComplete` int(11) DEFAULT '0',
  `isHDLogin` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_lord"
#


#
# Structure for table "user_mine"
#

DROP TABLE IF EXISTS `user_mine`;
CREATE TABLE `user_mine` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `call` int(2) DEFAULT '0',
  `exp` int(11) DEFAULT NULL,
  `miner` int(11) DEFAULT '0',
  `mineTime` bigint(20) DEFAULT NULL,
  `helpInfo` blob,
  PRIMARY KEY (`uid`,`fId`),
  KEY `index_fId` (`fId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_mine"
#


#
# Structure for table "user_mixed_info"
#

DROP TABLE IF EXISTS `user_mixed_info`;
CREATE TABLE `user_mixed_info` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scoreSwitch` int(2) DEFAULT '0',
  `daliyFirstLoginTime` bigint(20) DEFAULT '0',
  `continuouslyLoginDay` int(11) DEFAULT '0',
  `activityPopup` int(11) DEFAULT '0',
  `popupTime` bigint(20) DEFAULT '0',
  `showEquip` int(11) DEFAULT '1',
  `materialBackup` int(11) DEFAULT '1',
  `taskStage` int(11) DEFAULT '0',
  `scrollEquip` int(11) DEFAULT '1',
  `colorblind` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_mixed_info"
#


#
# Structure for table "user_monster_siege"
#

DROP TABLE IF EXISTS `user_monster_siege`;
CREATE TABLE `user_monster_siege` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `failTimes` int(8) DEFAULT '0',
  `killMonsterCount` bigint(20) DEFAULT '0',
  `state` int(8) NOT NULL,
  `goalRank` int(8) DEFAULT '0',
  `failRounds` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `state_index` (`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege"
#


#
# Structure for table "user_monster_siege_history"
#

DROP TABLE IF EXISTS `user_monster_siege_history`;
CREATE TABLE `user_monster_siege_history` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `failRounds` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege_history"
#


#
# Structure for table "user_monster_siege_top_history"
#

DROP TABLE IF EXISTS `user_monster_siege_top_history`;
CREATE TABLE `user_monster_siege_top_history` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` bigint(20) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allianceAbbr` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `allianceName` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `failRounds` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege_top_history"
#


#
# Structure for table "user_onlinereward"
#

DROP TABLE IF EXISTS `user_onlinereward`;
CREATE TABLE `user_onlinereward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `online` bigint(20) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  `use` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_onlinereward"
#


#
# Structure for table "user_picture"
#

DROP TABLE IF EXISTS `user_picture`;
CREATE TABLE `user_picture` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uploadTime` bigint(20) DEFAULT '0',
  `auditPerson` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `state` int(4) DEFAULT '0',
  `picVer` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_picture"
#


#
# Structure for table "user_pray"
#

DROP TABLE IF EXISTS `user_pray`;
CREATE TABLE `user_pray` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `freeFromItem` int(11) DEFAULT '0',
  `itemPrayCount` int(11) DEFAULT '0',
  `prayCount` int(11) DEFAULT '0',
  `lastPrayTime` bigint(20) DEFAULT '0',
  `wood` int(11) DEFAULT '0',
  `food` int(11) DEFAULT '0',
  `iron` int(11) DEFAULT '0',
  `silver` int(11) DEFAULT '0',
  `steel` int(11) DEFAULT '0',
  `goldwood` int(11) DEFAULT '0',
  `goldfood` int(11) DEFAULT '0',
  `goldiron` int(11) DEFAULT '0',
  `goldsilver` int(11) DEFAULT '0',
  `goldsteel` int(11) DEFAULT '0',
  `isFirstFree` int(5) DEFAULT '0',
  `isFirstPay` int(5) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `count_idx` (`prayCount`) USING BTREE,
  KEY `date_idx` (`lastPrayTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_pray"
#


#
# Structure for table "user_reg"
#

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_reg"
#


#
# Structure for table "user_resource"
#

DROP TABLE IF EXISTS `user_resource`;
CREATE TABLE `user_resource` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stone` int(20) NOT NULL,
  `wood` int(20) NOT NULL,
  `iron` int(20) NOT NULL,
  `food` int(20) NOT NULL,
  `silver` int(11) NOT NULL,
  `chip` int(11) NOT NULL,
  `diamond` int(11) NOT NULL,
  `dragon_food` int(11) NOT NULL,
  `dragon_gold` int(11) NOT NULL,
  `lastUpdateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_resource"
#


#
# Structure for table "user_science"
#

DROP TABLE IF EXISTS `user_science`;
CREATE TABLE `user_science` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(6) NOT NULL DEFAULT '0',
  `cd` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  PRIMARY KEY (`uid`,`itemId`),
  KEY `Index_ownerId` (`uid`,`itemId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_science"
#


#
# Structure for table "user_score"
#

DROP TABLE IF EXISTS `user_score`;
CREATE TABLE `user_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '1',
  `level` int(11) DEFAULT '1',
  `score` int(11) DEFAULT '0',
  `reward` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`),
  KEY `index_actId` (`actId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_score"
#


#
# Structure for table "user_score_bak"
#

DROP TABLE IF EXISTS `user_score_bak`;
CREATE TABLE `user_score_bak` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '1',
  `level` int(11) DEFAULT '1',
  `score` int(11) DEFAULT '0',
  `reward` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`),
  KEY `index_actId` (`actId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_score_bak"
#


#
# Structure for table "user_skill"
#

DROP TABLE IF EXISTS `user_skill`;
CREATE TABLE `user_skill` (
  `uuid` varchar(40) COLLATE utf8_bin NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_bin NOT NULL,
  `skillId` varchar(40) COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) DEFAULT '0',
  `actTime` bigint(20) DEFAULT '0',
  `endTime` bigint(20) DEFAULT NULL,
  `stat` int(10) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ownerId_index` (`ownerId`) USING BTREE,
  KEY `starttime_index` (`startTime`) USING BTREE,
  KEY `endtime_index` (`endTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_skill"
#


#
# Structure for table "user_snowball"
#

DROP TABLE IF EXISTS `user_snowball`;
CREATE TABLE `user_snowball` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `curLevel` int(10) DEFAULT NULL,
  `lastThrowTime` bigint(20) DEFAULT NULL,
  `todayThrowCount` int(10) DEFAULT NULL,
  `lastBuyTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_snowball"
#


#
# Structure for table "user_sock"
#

DROP TABLE IF EXISTS `user_sock`;
CREATE TABLE `user_sock` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socks` bigint(20) DEFAULT '0',
  `reward` blob,
  `level` int(10) DEFAULT '0',
  `refreshtime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_sock"
#


#
# Structure for table "user_state"
#

DROP TABLE IF EXISTS `user_state`;
CREATE TABLE `user_state` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stateId` int(11) NOT NULL,
  `startTime` bigint(20) NOT NULL DEFAULT '0',
  `endTime` bigint(20) NOT NULL,
  `type` int(4) DEFAULT '0',
  `type2` int(10) DEFAULT '0',
  `groupType` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`stateId`),
  KEY `index_uid_type2` (`uid`,`type2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_state"
#


#
# Structure for table "user_talent"
#

DROP TABLE IF EXISTS `user_talent`;
CREATE TABLE `user_talent` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `talent` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_talent"
#


#
# Structure for table "user_task"
#

DROP TABLE IF EXISTS `user_task`;
CREATE TABLE `user_task` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `type` int(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_task"
#


#
# Structure for table "user_territory_resource"
#

DROP TABLE IF EXISTS `user_territory_resource`;
CREATE TABLE `user_territory_resource` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wood` bigint(10) DEFAULT '0',
  `stone` bigint(10) DEFAULT '0',
  `iron` bigint(10) DEFAULT '0',
  `food` bigint(10) DEFAULT '0',
  `silver` bigint(10) DEFAULT '0',
  `lastUpdateTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `al_idx` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_territory_resource"
#


#
# Structure for table "user_timereward"
#

DROP TABLE IF EXISTS `user_timereward`;
CREATE TABLE `user_timereward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(8) DEFAULT '0',
  `times` int(8) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  `receiveTime` bigint(20) DEFAULT '0',
  `rewardInfo` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_timereward"
#


#
# Structure for table "user_used_item"
#

DROP TABLE IF EXISTS `user_used_item`;
CREATE TABLE `user_used_item` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_used_item"
#


#
# Structure for table "user_vip"
#

DROP TABLE IF EXISTS `user_vip`;
CREATE TABLE `user_vip` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '-1',
  `loginDays` int(11) NOT NULL,
  `lastLoginTime` bigint(20) NOT NULL,
  `vipEndTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_vip"
#


#
# Structure for table "user_wall"
#

DROP TABLE IF EXISTS `user_wall`;
CREATE TABLE `user_wall` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(6) NOT NULL DEFAULT '0',
  `build` int(6) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  `level` int(4) NOT NULL,
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_wall"
#


#
# Structure for table "user_world"
#

DROP TABLE IF EXISTS `user_world`;
CREATE TABLE `user_world` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pointId` int(11) NOT NULL,
  `color` int(11) DEFAULT NULL,
  `monsterLock` blob,
  `lastCityDefTime` bigint(11) NOT NULL,
  `attMonsterStamina` int(11) DEFAULT NULL,
  `lastStaminaTime` bigint(20) DEFAULT NULL,
  `lastMoveCityTime` bigint(20) DEFAULT '0',
  `srcServerPointId` int(11) DEFAULT NULL,
  `ckfConfirmAccessNextRound` int(4) DEFAULT NULL,
  `ckfNeedLeave` int(4) DEFAULT NULL,
  `ckfAccessTimes` int(8) DEFAULT '0',
  `ckfLastPlayRound` int(4) DEFAULT NULL,
  `ckfProtectTime` bigint(20) DEFAULT NULL,
  `ckfWinStreak` int(8) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_world"
#


#
# Structure for table "user_world_pve"
#

DROP TABLE IF EXISTS `user_world_pve`;
CREATE TABLE `user_world_pve` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pointId` int(11) NOT NULL,
  `attNum` int(11) NOT NULL,
  `buyNum` int(11) DEFAULT NULL,
  `monsterInfo` blob,
  PRIMARY KEY (`uid`,`pointId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_world_pve"
#


#
# Structure for table "userprofile"
#

DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `exp` int(11) NOT NULL,
  `gold` bigint(20) NOT NULL DEFAULT '0',
  `paidGold` bigint(20) DEFAULT '0',
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `parseRegisterId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gcmRegisterId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `openedPos` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picVer` int(11) DEFAULT '0',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chNameCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `worldPoint` int(11) DEFAULT NULL,
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gaid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pf` varchar(40) COLLATE utf8_unicode_ci DEFAULT 'market_global',
  `lang` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmFlag` int(11) DEFAULT '0',
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `offLineTime` bigint(20) DEFAULT '0',
  `banTime` bigint(20) DEFAULT '0',
  `chatBanTime` bigint(20) DEFAULT '0',
  `banGMName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noticeBanTime` bigint(20) DEFAULT '0',
  `lastOnlineTime` bigint(20) DEFAULT '0',
  `gmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serverId` int(11) DEFAULT NULL,
  `crossFightSrcServerId` int(11) NOT NULL DEFAULT '-1',
  `lastModGoldGetTime` bigint(20) DEFAULT '0',
  `modGoldGetTimeInterval` bigint(20) DEFAULT '0',
  `modGoldAmount` bigint(10) DEFAULT '0',
  `beTrainingModTime` bigint(20) DEFAULT '0',
  `guideStep` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `payRiskFactor` int(11) DEFAULT '0',
  `phoneDevice` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crystal` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `name_index` (`name`) USING BTREE,
  KEY `time_level_index` (`regTime`,`level`,`lastOnlineTime`,`pf`) USING BTREE,
  KEY `allianceid_lasttime_index` (`allianceId`,`lastOnlineTime`) USING BTREE,
  KEY `lang_index` (`lang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "userprofile"
#


#
# Structure for table "world_favorite"
#

DROP TABLE IF EXISTS `world_favorite`;
CREATE TABLE `world_favorite` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server` int(11) NOT NULL DEFAULT '0',
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`point`,`server`),
  KEY `time_idx` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_favorite"
#


#
# Structure for table "world_field_monster_dead"
#

DROP TABLE IF EXISTS `world_field_monster_dead`;
CREATE TABLE `world_field_monster_dead` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(20) NOT NULL,
  `monster` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `dead_monster_time` (`deadFinishTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_field_monster_dead"
#


#
# Structure for table "world_flush_field_monster_tmp"
#

DROP TABLE IF EXISTS `world_flush_field_monster_tmp`;
CREATE TABLE `world_flush_field_monster_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `pointItem` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) NOT NULL DEFAULT '0',
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "world_flush_field_monster_tmp"
#


#
# Structure for table "world_flush_monster_tmp"
#

DROP TABLE IF EXISTS `world_flush_monster_tmp`;
CREATE TABLE `world_flush_monster_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_flush_monster_tmp"
#


#
# Structure for table "world_flush_resource_tmp"
#

DROP TABLE IF EXISTS `world_flush_resource_tmp`;
CREATE TABLE `world_flush_resource_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resLevel` int(11) NOT NULL DEFAULT '0',
  `resCostValue` int(11) NOT NULL DEFAULT '0',
  `resInitValue` int(11) NOT NULL,
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_flush_resource_tmp"
#


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


#
# Structure for table "world_res_dead"
#

DROP TABLE IF EXISTS `world_res_dead`;
CREATE TABLE `world_res_dead` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dead_res_time` (`deadFinishTime`) USING BTREE,
  KEY `areaId_index` (`areaId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_res_dead"
#


#
# Structure for table "world_res_record"
#

DROP TABLE IF EXISTS `world_res_record`;
CREATE TABLE `world_res_record` (
  `time` bigint(20) NOT NULL,
  `id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`time`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_res_record"
#


#
# Structure for table "world_update_gridtype_tmp"
#

DROP TABLE IF EXISTS `world_update_gridtype_tmp`;
CREATE TABLE `world_update_gridtype_tmp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gridType` int(11) NOT NULL,
  `grid2Type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_update_gridtype_tmp"
#


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


#
# Database "cokdb4"
#

CREATE DATABASE IF NOT EXISTS `cokdb4` /*!40100 DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci */;
USE `cokdb4`;

#
# Structure for table "activation"
#

DROP TABLE IF EXISTS `activation`;
CREATE TABLE `activation` (
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `series` int(11) DEFAULT NULL,
  `user` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `index_user` (`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "activation"
#


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

INSERT INTO `activity` VALUES (110004,'monsters soege',4,152950927637,1545609600000,1545696000000);

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `passmd5` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `auth` text COLLATE utf8_unicode_ci NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `addtime` bigint(20) NOT NULL,
  `lastactive` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "admin"
#


#
# Structure for table "affairs"
#

DROP TABLE IF EXISTS `affairs`;
CREATE TABLE `affairs` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `affairId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rewardTime` bigint(20) NOT NULL,
  `rewardNum` int(4) NOT NULL,
  `opt` int(2) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_type` (`type`,`rewardTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "affairs"
#


#
# Structure for table "affairs_value"
#

DROP TABLE IF EXISTS `affairs_value`;
CREATE TABLE `affairs_value` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `people` int(10) NOT NULL DEFAULT '0',
  `refreshTime` bigint(20) NOT NULL,
  `leagueTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "affairs_value"
#


#
# Structure for table "alliance"
#

DROP TABLE IF EXISTS `alliance`;
CREATE TABLE `alliance` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `alliancename` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbrRename` int(11) DEFAULT '0',
  `intro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `announce` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `curMember` int(11) DEFAULT '0',
  `maxMember` int(11) DEFAULT NULL,
  `recruit` int(11) DEFAULT NULL,
  `oldfightpower` int(11) DEFAULT NULL,
  `giftlevel` int(11) DEFAULT '0',
  `alliancepoint` int(11) DEFAULT '0',
  `reicon` int(11) DEFAULT '0',
  `rankone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ranktwo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankthree` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankfour` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rankfive` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createtime` bigint(20) NOT NULL,
  `dau` int(11) DEFAULT '0',
  `rallyPoint` int(10) DEFAULT NULL,
  `ally` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enemy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `powerRestriction` bigint(10) DEFAULT '0',
  `castleRestriction` int(2) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance"
#


#
# Structure for table "alliance_apply"
#

DROP TABLE IF EXISTS `alliance_apply`;
CREATE TABLE `alliance_apply` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` blob,
  `type` int(11) DEFAULT NULL,
  `applyTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_user` (`userId`) USING BTREE,
  KEY `index_alliance` (`allianceId`) USING BTREE,
  KEY `index_time` (`applyTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_apply"
#


#
# Structure for table "alliance_battle_record"
#

DROP TABLE IF EXISTS `alliance_battle_record`;
CREATE TABLE `alliance_battle_record` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attAllianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defAllianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `report` blob NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_battle_record"
#


#
# Structure for table "alliance_battle_team"
#

DROP TABLE IF EXISTS `alliance_battle_team`;
CREATE TABLE `alliance_battle_team` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `targetId` int(11) NOT NULL,
  `targetUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetPic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetAIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetType` int(2) DEFAULT '0',
  `leaderUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `leaderName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `leaderId` int(11) DEFAULT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxSoldiers` int(11) NOT NULL,
  `waitTime` bigint(20) NOT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_battle_team"
#


#
# Structure for table "alliance_comment"
#

DROP TABLE IF EXISTS `alliance_comment`;
CREATE TABLE `alliance_comment` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `senderUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senderAllianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` blob,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userpic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_comment"
#


#
# Structure for table "alliance_comment_shield"
#

DROP TABLE IF EXISTS `alliance_comment_shield`;
CREATE TABLE `alliance_comment_shield` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `icon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_comment_shield"
#


#
# Structure for table "alliance_donate"
#

DROP TABLE IF EXISTS `alliance_donate`;
CREATE TABLE `alliance_donate` (
  `uerid` varchar(45) NOT NULL,
  `scienceid` int(11) NOT NULL,
  `highres` varchar(45) DEFAULT NULL,
  `midres` varchar(45) DEFAULT NULL,
  `lowres` varchar(45) DEFAULT NULL,
  `highnum` int(11) DEFAULT '0',
  `midnum` int(11) DEFAULT '0',
  `lownum` int(11) DEFAULT '0',
  `higprogress` int(11) DEFAULT '0',
  `midprogress` int(11) DEFAULT '0',
  `lowprogress` int(11) DEFAULT '0',
  `highcontribute` int(11) DEFAULT '0',
  `midcontribute` int(11) DEFAULT '0',
  `lowcontribute` int(11) DEFAULT '0',
  `lastrefreshtime` bigint(20) DEFAULT '0',
  `highNotUse` int(11) DEFAULT '0',
  `midNotUse` int(11) DEFAULT '0',
  `midAvailable` int(10) DEFAULT '0',
  `highAvailable` int(10) DEFAULT '0',
  PRIMARY KEY (`uerid`,`scienceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "alliance_donate"
#


#
# Structure for table "alliance_gift"
#

DROP TABLE IF EXISTS `alliance_gift`;
CREATE TABLE `alliance_gift` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allianceid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `expiretime` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_gift"
#


#
# Structure for table "alliance_help"
#

DROP TABLE IF EXISTS `alliance_help`;
CREATE TABLE `alliance_help` (
  `helpId` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allianceId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senderId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isvalid` int(10) DEFAULT '1',
  `maxcount` int(10) DEFAULT '0',
  `nowcount` int(10) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `reduceSec` int(10) DEFAULT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `helpers` blob,
  PRIMARY KEY (`helpId`),
  KEY `index_alliance_help` (`content`) USING BTREE,
  KEY `allianceId_index` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_help"
#


#
# Structure for table "alliance_helper"
#

DROP TABLE IF EXISTS `alliance_helper`;
CREATE TABLE `alliance_helper` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `helpId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senderId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recvId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stats` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_alliance_helper` (`helpId`,`recvId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_helper"
#


#
# Structure for table "alliance_invite_move"
#

DROP TABLE IF EXISTS `alliance_invite_move`;
CREATE TABLE `alliance_invite_move` (
  `inviter` varchar(255) COLLATE utf8_bin NOT NULL,
  `invitee` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`inviter`,`invitee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_invite_move"
#


#
# Structure for table "alliance_member"
#

DROP TABLE IF EXISTS `alliance_member`;
CREATE TABLE `alliance_member` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT '0',
  `accPoint` int(11) DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `donateTime` bigint(20) DEFAULT NULL,
  `todaydonate` int(11) DEFAULT '0',
  `todayprogress` int(11) DEFAULT '0',
  `jointime` bigint(20) DEFAULT '0',
  `wood` int(11) DEFAULT '0',
  `stone` int(11) DEFAULT '0',
  `iron` int(11) DEFAULT '0',
  `food` int(11) DEFAULT '0',
  `silver` int(11) DEFAULT '0',
  `gold` int(11) DEFAULT '0',
  `donateCDTime` bigint(20) DEFAULT '0',
  `donateAvailable` int(2) DEFAULT '1',
  `yesterdayLogin` int(11) DEFAULT '0',
  `fight` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_allianceId` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_member"
#


#
# Structure for table "alliance_science"
#

DROP TABLE IF EXISTS `alliance_science`;
CREATE TABLE `alliance_science` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scienceId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `wood` int(11) DEFAULT NULL,
  `stone` int(11) DEFAULT NULL,
  `iron` int(11) DEFAULT NULL,
  `food` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `donateprogress` int(11) DEFAULT '0',
  `donatefinish` int(4) DEFAULT '0',
  `researchstarttime` bigint(20) DEFAULT '0',
  `effectflag` int(4) DEFAULT '0',
  `power` int(11) DEFAULT '0',
  PRIMARY KEY (`allianceId`,`scienceId`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_science"
#


#
# Structure for table "alliance_science_upgrade"
#

DROP TABLE IF EXISTS `alliance_science_upgrade`;
CREATE TABLE `alliance_science_upgrade` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scienceId` int(11) DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `needTime` bigint(20) DEFAULT NULL,
  `accelerate` blob,
  PRIMARY KEY (`allianceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_science_upgrade"
#


#
# Structure for table "alliance_shop"
#

DROP TABLE IF EXISTS `alliance_shop`;
CREATE TABLE `alliance_shop` (
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`allianceId`,`goodsId`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shop"
#


#
# Structure for table "alliance_shop_make"
#

DROP TABLE IF EXISTS `alliance_shop_make`;
CREATE TABLE `alliance_shop_make` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `needTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_alliance` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shop_make"
#


#
# Structure for table "alliance_shophis"
#

DROP TABLE IF EXISTS `alliance_shophis`;
CREATE TABLE `alliance_shophis` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goodsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_alliance` (`allianceId`) USING BTREE,
  KEY `index_user` (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "alliance_shophis"
#


#
# Structure for table "alliance_stats"
#

DROP TABLE IF EXISTS `alliance_stats`;
CREATE TABLE `alliance_stats` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `event_type` int(2) DEFAULT NULL,
  `fromUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `toUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `extraParam` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_stats"
#


#
# Structure for table "alliance_territory"
#

DROP TABLE IF EXISTS `alliance_territory`;
CREATE TABLE `alliance_territory` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `pointId` int(10) DEFAULT NULL,
  `towerPoint` int(10) DEFAULT NULL,
  `type` int(2) DEFAULT '14',
  `resType` int(2) DEFAULT NULL,
  `num` int(10) DEFAULT '1',
  `allianceId` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceName` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceAbbr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stat` int(2) DEFAULT '0',
  `active` int(2) DEFAULT '0',
  `level` int(2) DEFAULT '0',
  `maxDef` int(10) DEFAULT NULL,
  `curDef` int(10) DEFAULT NULL,
  `createId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ownerId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `buildingSpd` double(20,10) DEFAULT '0.0000000000',
  `updateTime` bigint(20) DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `lastUpdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `point_idx` (`pointId`) USING BTREE,
  KEY `alliance_idx` (`allianceId`) USING BTREE,
  KEY `update_idx` (`updateTime`) USING BTREE,
  KEY `start_idx` (`startTime`) USING BTREE,
  KEY `lastup_idx` (`lastUpdateTime`) USING BTREE,
  KEY `tower_idx` (`towerPoint`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "alliance_territory"
#


#
# Structure for table "army_total"
#

DROP TABLE IF EXISTS `army_total`;
CREATE TABLE `army_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "army_total"
#


#
# Structure for table "atk_name"
#

DROP TABLE IF EXISTS `atk_name`;
CREATE TABLE `atk_name` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "atk_name"
#


#
# Structure for table "atk_time"
#

DROP TABLE IF EXISTS `atk_time`;
CREATE TABLE `atk_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "atk_time"
#


#
# Structure for table "badwords"
#

DROP TABLE IF EXISTS `badwords`;
CREATE TABLE `badwords` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `words` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "badwords"
#


#
# Structure for table "black_land_res_dead"
#

DROP TABLE IF EXISTS `black_land_res_dead`;
CREATE TABLE `black_land_res_dead` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dead_res_time` (`deadFinishTime`) USING BTREE,
  KEY `areaId_index` (`areaId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "black_land_res_dead"
#


#
# Structure for table "c3p0testtable"
#

DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "c3p0testtable"
#


#
# Structure for table "celebrity"
#

DROP TABLE IF EXISTS `celebrity`;
CREATE TABLE `celebrity` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "celebrity"
#


#
# Structure for table "chat_shield"
#

DROP TABLE IF EXISTS `chat_shield`;
CREATE TABLE `chat_shield` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `other` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `owner_other_index` (`owner`,`other`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "chat_shield"
#


#
# Structure for table "city_monster"
#

DROP TABLE IF EXISTS `city_monster`;
CREATE TABLE `city_monster` (
  `uid` varchar(255) NOT NULL,
  `nextUpdateTime` bigint(20) DEFAULT NULL,
  `bigMonster` int(11) DEFAULT NULL,
  `smallMonster` int(20) DEFAULT NULL,
  `lastUpdateTime` bigint(20) DEFAULT NULL,
  `bigMonsterInOneDay` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "city_monster"
#


#
# Structure for table "compensate_shield_record"
#

DROP TABLE IF EXISTS `compensate_shield_record`;
CREATE TABLE `compensate_shield_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensate_shield_record"
#


#
# Structure for table "compensation_record"
#

DROP TABLE IF EXISTS `compensation_record`;
CREATE TABLE `compensation_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `count` int(10) DEFAULT '0',
  `lastCompensateTime` bigint(20) DEFAULT NULL,
  `isFirstOnFire` int(2) DEFAULT '1',
  PRIMARY KEY (`uid`),
  KEY `time_index` (`lastCompensateTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensation_record"
#


#
# Structure for table "compensation_record_shield"
#

DROP TABLE IF EXISTS `compensation_record_shield`;
CREATE TABLE `compensation_record_shield` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "compensation_record_shield"
#


#
# Structure for table "crystal_cost_record"
#

DROP TABLE IF EXISTS `crystal_cost_record`;
CREATE TABLE `crystal_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goldType` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `originalGold` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remainGold` bigint(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_user` (`time`,`userId`,`type`) USING BTREE,
  KEY `index_type` (`userId`,`time`,`type`) USING BTREE,
  KEY `index_goldType` (`goldType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "crystal_cost_record"
#


#
# Structure for table "def_time"
#

DROP TABLE IF EXISTS `def_time`;
CREATE TABLE `def_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "def_time"
#


#
# Structure for table "demo"
#

DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `key_` varchar(200) COLLATE utf8_bin NOT NULL,
  `value_` mediumblob,
  PRIMARY KEY (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "demo"
#


#
# Structure for table "device_mail_record"
#

DROP TABLE IF EXISTS `device_mail_record`;
CREATE TABLE `device_mail_record` (
  `deviceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `record` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`deviceId`,`record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "device_mail_record"
#


#
# Structure for table "donate_history"
#

DROP TABLE IF EXISTS `donate_history`;
CREATE TABLE `donate_history` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `donate` int(10) DEFAULT '0',
  `progress` int(10) DEFAULT NULL,
  `donateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `aid_idx` (`allianceId`) USING BTREE,
  KEY `time_idx` (`donateTime`) USING BTREE,
  KEY `progress_idx` (`progress`) USING BTREE,
  KEY `donate_idx` (`donate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "donate_history"
#


#
# Structure for table "donate_history_record"
#

DROP TABLE IF EXISTS `donate_history_record`;
CREATE TABLE `donate_history_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `donate` int(10) DEFAULT '0',
  `progress` int(10) DEFAULT NULL,
  `donateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `aid_idx` (`allianceId`) USING BTREE,
  KEY `time_idx` (`donateTime`) USING BTREE,
  KEY `progress_idx` (`progress`) USING BTREE,
  KEY `donate_idx` (`donate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "donate_history_record"
#


#
# Structure for table "exchange"
#

DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange"
#


#
# Structure for table "exchange_activity"
#

DROP TABLE IF EXISTS `exchange_activity`;
CREATE TABLE `exchange_activity` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `reward` blob,
  `refresh` int(11) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_activity"
#


#
# Structure for table "exchange_alliance_log"
#

DROP TABLE IF EXISTS `exchange_alliance_log`;
CREATE TABLE `exchange_alliance_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`orderId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_alliance_log"
#


#
# Structure for table "exchange_gift"
#

DROP TABLE IF EXISTS `exchange_gift`;
CREATE TABLE `exchange_gift` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `receiverId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sendTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`receiverId`,`exchangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_gift"
#


#
# Structure for table "exchange_gift_log"
#

DROP TABLE IF EXISTS `exchange_gift_log`;
CREATE TABLE `exchange_gift_log` (
  `mailId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `senderId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiverId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendTime` bigint(20) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mailId`,`sendTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_gift_log"
#


#
# Structure for table "exchange_order"
#

DROP TABLE IF EXISTS `exchange_order`;
CREATE TABLE `exchange_order` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_order"
#


#
# Structure for table "exchange_time"
#

DROP TABLE IF EXISTS `exchange_time`;
CREATE TABLE `exchange_time` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `beginTime` bigint(20) DEFAULT NULL,
  `buyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_time"
#


#
# Structure for table "exchange_visible"
#

DROP TABLE IF EXISTS `exchange_visible`;
CREATE TABLE `exchange_visible` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`exchangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "exchange_visible"
#


#
# Structure for table "firstpaylog"
#

DROP TABLE IF EXISTS `firstpaylog`;
CREATE TABLE `firstpaylog` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `orderInfo` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,2) NOT NULL DEFAULT '0.00',
  `paid` double(10,2) DEFAULT '0.00',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  PRIMARY KEY (`uid`,`orderId`,`pf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "firstpaylog"
#


#
# Structure for table "fiveonlinedata"
#

DROP TABLE IF EXISTS `fiveonlinedata`;
CREATE TABLE `fiveonlinedata` (
  `timeStamp` int(11) NOT NULL DEFAULT '0',
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`timeStamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "fiveonlinedata"
#


#
# Structure for table "gold_cost_record"
#

DROP TABLE IF EXISTS `gold_cost_record`;
CREATE TABLE `gold_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goldType` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `originalGold` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remainGold` bigint(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_user` (`time`,`userId`,`type`) USING BTREE,
  KEY `index_type` (`userId`,`time`,`type`) USING BTREE,
  KEY `index_goldType` (`goldType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "gold_cost_record"
#


#
# Structure for table "goods_cost_record"
#

DROP TABLE IF EXISTS `goods_cost_record`;
CREATE TABLE `goods_cost_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `original` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remain` bigint(11) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_time` (`time`,`userId`,`itemId`) USING BTREE,
  KEY `index_user` (`userId`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "goods_cost_record"
#


#
# Structure for table "hot_buy_record"
#

DROP TABLE IF EXISTS `hot_buy_record`;
CREATE TABLE `hot_buy_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `buyCount` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`goodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "hot_buy_record"
#


#
# Structure for table "hot_goods_cost_record"
#

DROP TABLE IF EXISTS `hot_goods_cost_record`;
CREATE TABLE `hot_goods_cost_record` (
  `uuid` varchar(255) COLLATE utf8_bin NOT NULL,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `buyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `goods_idx` (`goodsId`) USING BTREE,
  KEY `time_idx` (`buyTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hot_goods_cost_record"
#


#
# Structure for table "hot_info_before_refresh"
#

DROP TABLE IF EXISTS `hot_info_before_refresh`;
CREATE TABLE `hot_info_before_refresh` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `itemId` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) NOT NULL DEFAULT '0',
  `gold` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`goodsId`,`price`,`refreshTime`),
  KEY `time_idx` (`refreshTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hot_info_before_refresh"
#


#
# Structure for table "hot_refresh_record"
#

DROP TABLE IF EXISTS `hot_refresh_record`;
CREATE TABLE `hot_refresh_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "hot_refresh_record"
#


#
# Structure for table "invite_count"
#

DROP TABLE IF EXISTS `invite_count`;
CREATE TABLE `invite_count` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "invite_count"
#


#
# Structure for table "invitee"
#

DROP TABLE IF EXISTS `invitee`;
CREATE TABLE `invitee` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `inviterUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "invitee"
#


#
# Structure for table "inviter"
#

DROP TABLE IF EXISTS `inviter`;
CREATE TABLE `inviter` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `inviteeUid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `inviter_index_001` (`uid`,`type`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "inviter"
#


#
# Structure for table "king_present_record"
#

DROP TABLE IF EXISTS `king_present_record`;
CREATE TABLE `king_present_record` (
  `toUserId` varchar(40) NOT NULL,
  `presentId` int(11) NOT NULL,
  `presentNameId` int(11) NOT NULL,
  `sendTime` bigint(20) NOT NULL,
  `abbr` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`toUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "king_present_record"
#


#
# Structure for table "kingdom_cross_fight_history"
#

DROP TABLE IF EXISTS `kingdom_cross_fight_history`;
CREATE TABLE `kingdom_cross_fight_history` (
  `serverId` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `round` int(8) NOT NULL,
  `score` bigint(20) DEFAULT '0',
  `rank` int(8) DEFAULT '0',
  PRIMARY KEY (`serverId`,`startTime`,`round`),
  KEY `kingdom_startTime` (`serverId`,`startTime`) USING BTREE,
  KEY `startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kingdom_cross_fight_history"
#


#
# Structure for table "kingdom_position"
#

DROP TABLE IF EXISTS `kingdom_position`;
CREATE TABLE `kingdom_position` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `positionId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  `chNameFlag` int(11) DEFAULT NULL,
  `preKingUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relinquishEndTime` bigint(20) DEFAULT NULL,
  `currResourceType` int(11) DEFAULT NULL,
  `chBannerFlag` int(11) DEFAULT NULL,
  `chThronePicFlag` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kingdom_position"
#


#
# Structure for table "logaction"
#

DROP TABLE IF EXISTS `logaction`;
CREATE TABLE `logaction` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `param` blob,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`action`,`code`) USING BTREE,
  KEY `index2` (`user`,`timeStamp`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logaction"
#


#
# Structure for table "logaction2"
#

DROP TABLE IF EXISTS `logaction2`;
CREATE TABLE `logaction2` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`action`,`code`) USING BTREE,
  KEY `index2` (`user`,`timeStamp`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logaction2"
#


#
# Structure for table "logrecord"
#

DROP TABLE IF EXISTS `logrecord`;
CREATE TABLE `logrecord` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `category` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(11) DEFAULT NULL,
  `param4` int(11) DEFAULT NULL,
  `data1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`category`,`type`) USING BTREE,
  KEY `index_2` (`user`,`category`,`type`,`timeStamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logrecord"
#


#
# Structure for table "logstat"
#

DROP TABLE IF EXISTS `logstat`;
CREATE TABLE `logstat` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logstat"
#


#
# Structure for table "logtemp"
#

DROP TABLE IF EXISTS `logtemp`;
CREATE TABLE `logtemp` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logtemp"
#


#
# Structure for table "logtmp"
#

DROP TABLE IF EXISTS `logtmp`;
CREATE TABLE `logtmp` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(100) DEFAULT NULL,
  `param4` int(100) DEFAULT NULL,
  `param5` int(100) DEFAULT NULL,
  `data1` int(100) DEFAULT NULL,
  `data2` int(100) DEFAULT NULL,
  `data3` int(100) DEFAULT NULL,
  `data4` int(100) DEFAULT NULL,
  `data5` int(100) DEFAULT NULL,
  `data6` int(100) DEFAULT NULL,
  `data7` int(100) DEFAULT NULL,
  `data8` int(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index` (`timeStamp`,`user`,`type`,`param1`,`param2`,`param3`) USING BTREE,
  KEY `index2` (`type`,`timeStamp`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "logtmp"
#


#
# Structure for table "lottery_log"
#

DROP TABLE IF EXISTS `lottery_log`;
CREATE TABLE `lottery_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `superMode` tinyint(2) DEFAULT NULL,
  `lotteryId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lotteryInfo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "lottery_log"
#


#
# Structure for table "lottery_record"
#

DROP TABLE IF EXISTS `lottery_record`;
CREATE TABLE `lottery_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `superMode` int(2) NOT NULL,
  `step` int(11) NOT NULL,
  `times1` int(11) NOT NULL,
  `times2` int(11) NOT NULL,
  `multiple` int(11) NOT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryInfo1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lotteryInfo2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `times3` int(10) DEFAULT '0',
  `times4` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "lottery_record"
#


#
# Structure for table "mail"
#

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  `reply` int(2) NOT NULL DEFAULT '0',
  `translationId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE,
  KEY `index_toUserTime` (`toUser`,`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail"
#


#
# Structure for table "mail_1016"
#

DROP TABLE IF EXISTS `mail_1016`;
CREATE TABLE `mail_1016` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_1016"
#


#
# Structure for table "mail_20141030"
#

DROP TABLE IF EXISTS `mail_20141030`;
CREATE TABLE `mail_20141030` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contentsId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_20141030"
#


#
# Structure for table "mail_20150212"
#

DROP TABLE IF EXISTS `mail_20150212`;
CREATE TABLE `mail_20150212` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fromUser` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `status` int(2) DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1',
  `rewardStatus` int(2) NOT NULL DEFAULT '0',
  `saveFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  `reply` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_toFrom` (`toUser`,`type`,`fromUser`) USING BTREE,
  KEY `index_toUserTime` (`toUser`,`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_20150212"
#


#
# Structure for table "mail_contents_1016"
#

DROP TABLE IF EXISTS `mail_contents_1016`;
CREATE TABLE `mail_contents_1016` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_contents_1016"
#


#
# Structure for table "mail_contents_20141030"
#

DROP TABLE IF EXISTS `mail_contents_20141030`;
CREATE TABLE `mail_contents_20141030` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contents` blob NOT NULL,
  `rewardId` blob,
  `itemIdFlag` int(4) DEFAULT '0',
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_contents_20141030"
#


#
# Structure for table "mail_group"
#

DROP TABLE IF EXISTS `mail_group`;
CREATE TABLE `mail_group` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `groupType` int(4) NOT NULL DEFAULT '1',
  `groupIndex` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`groupType`,`groupIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_group"
#


#
# Structure for table "mail_group_20150212"
#

DROP TABLE IF EXISTS `mail_group_20150212`;
CREATE TABLE `mail_group_20150212` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `groupType` int(4) NOT NULL DEFAULT '1',
  `groupIndex` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`groupType`,`groupIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mail_group_20150212"
#


#
# Structure for table "material_control"
#

DROP TABLE IF EXISTS `material_control`;
CREATE TABLE `material_control` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(8) NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "material_control"
#


#
# Structure for table "mod_authorize"
#

DROP TABLE IF EXISTS `mod_authorize`;
CREATE TABLE `mod_authorize` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `authorize` int(2) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "mod_authorize"
#


#
# Structure for table "mod_record"
#

DROP TABLE IF EXISTS `mod_record`;
CREATE TABLE `mod_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `toUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailType` int(5) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_idx` (`fromUser`) USING BTREE,
  KEY `to_idx` (`toUser`) USING BTREE,
  KEY `time_Idx` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "mod_record"
#


#
# Structure for table "monitor_test"
#

DROP TABLE IF EXISTS `monitor_test`;
CREATE TABLE `monitor_test` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monitor_test"
#


#
# Structure for table "monster_siege"
#

DROP TABLE IF EXISTS `monster_siege`;
CREATE TABLE `monster_siege` (
  `allianceId` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `monsterCastleId` int(8) DEFAULT '0',
  `startTime` bigint(20) DEFAULT '0',
  `endTime` bigint(20) DEFAULT '0',
  `state` int(8) NOT NULL DEFAULT '0',
  `currPhase` int(8) DEFAULT '0',
  `currRoundIndex` int(8) DEFAULT '0',
  `currRoundStartTime` bigint(20) DEFAULT '0',
  `currMemberUidListInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `memberUidListInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `allianceKillCount` bigint(20) DEFAULT '0',
  `currMonsterInfo` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `monsterCastleIds` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `monsterPerRoundNum` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`allianceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monster_siege"
#


#
# Structure for table "monster_siege_top_history"
#

DROP TABLE IF EXISTS `monster_siege_top_history`;
CREATE TABLE `monster_siege_top_history` (
  `allianceId` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` bigint(20) NOT NULL,
  `allianceAbbr` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allianceName` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `siegeRound` int(8) DEFAULT '0',
  `validMemberCount` int(8) DEFAULT '0',
  `allianceCount` int(10) DEFAULT '0',
  `activityAllianceCount` int(10) DEFAULT '0',
  `activity30AllianceCount` int(10) DEFAULT '0',
  `activity40AllianceCount` int(10) DEFAULT '0',
  `activity50AllianceCount` int(10) DEFAULT '0',
  `monsterPerRoundNum` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`allianceId`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monster_siege_top_history"
#


#
# Structure for table "monthly_card"
#

DROP TABLE IF EXISTS `monthly_card`;
CREATE TABLE `monthly_card` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `accept` int(8) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  `available` int(4) DEFAULT '0',
  `buyTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "monthly_card"
#


#
# Structure for table "move_city_time"
#

DROP TABLE IF EXISTS `move_city_time`;
CREATE TABLE `move_city_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "move_city_time"
#


#
# Structure for table "move_total"
#

DROP TABLE IF EXISTS `move_total`;
CREATE TABLE `move_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "move_total"
#


#
# Structure for table "notice_cost_log"
#

DROP TABLE IF EXISTS `notice_cost_log`;
CREATE TABLE `notice_cost_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`itemId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "notice_cost_log"
#


#
# Structure for table "oldmailinsert"
#

DROP TABLE IF EXISTS `oldmailinsert`;
CREATE TABLE `oldmailinsert` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "oldmailinsert"
#


#
# Structure for table "parse_info"
#

DROP TABLE IF EXISTS `parse_info`;
CREATE TABLE `parse_info` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `status` int(4) NOT NULL,
  `audio` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "parse_info"
#


#
# Structure for table "pay_action"
#

DROP TABLE IF EXISTS `pay_action`;
CREATE TABLE `pay_action` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `exchangeId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`exchangeId`,`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_action"
#


#
# Structure for table "pay_request"
#

DROP TABLE IF EXISTS `pay_request`;
CREATE TABLE `pay_request` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `purchaseId` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `productId` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `status` int(4) DEFAULT '0',
  `finishTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`pf`,`time`),
  KEY `index_uid_pf_productId` (`uid`,`pf`,`purchaseId`) USING BTREE,
  KEY `index_uid_pf_purchaseId` (`uid`,`pf`,`purchaseId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_request"
#


#
# Structure for table "pay_total"
#

DROP TABLE IF EXISTS `pay_total`;
CREATE TABLE `pay_total` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  `type` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_total"
#


#
# Structure for table "pay_total_log"
#

DROP TABLE IF EXISTS `pay_total_log`;
CREATE TABLE `pay_total_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `createTime` bigint(20) NOT NULL,
  `type` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`level`,`createTime`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pay_total_log"
#


#
# Structure for table "paycheck"
#

DROP TABLE IF EXISTS `paycheck`;
CREATE TABLE `paycheck` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apidata` blob,
  PRIMARY KEY (`uid`,`orderId`,`pf`),
  KEY `index_time_status` (`time`,`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paycheck"
#


#
# Structure for table "paylog"
#

DROP TABLE IF EXISTS `paylog`;
CREATE TABLE `paylog` (
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
  PRIMARY KEY (`uid`,`orderId`,`pf`),
  KEY `index_time_pf` (`time`,`pf`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paylog"
#


#
# Structure for table "paylog_back"
#

DROP TABLE IF EXISTS `paylog_back`;
CREATE TABLE `paylog_back` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `productId` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT NULL,
  `currency` int(10) DEFAULT '0',
  `spend` double(10,0) NOT NULL DEFAULT '0',
  `status` int(4) DEFAULT '0',
  `payLevel` int(10) NOT NULL,
  PRIMARY KEY (`uid`,`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "paylog_back"
#


#
# Structure for table "pic_upload_record"
#

DROP TABLE IF EXISTS `pic_upload_record`;
CREATE TABLE `pic_upload_record` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `picVer` int(11) DEFAULT '0',
  `updateTime` bigint(10) DEFAULT '9223372036854775807',
  `report` int(2) DEFAULT '0',
  `banCount` int(2) DEFAULT '0',
  `banTime` bigint(10) DEFAULT '0',
  `stat` int(2) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `time_idx` (`updateTime`) USING BTREE,
  KEY `report_idx` (`report`) USING BTREE,
  KEY `stat_idx` (`stat`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "pic_upload_record"
#


#
# Structure for table "player"
#

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "player"
#


#
# Structure for table "playerinfo"
#

DROP TABLE IF EXISTS `playerinfo`;
CREATE TABLE `playerinfo` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `battlesWin` int(8) DEFAULT '0',
  `battlesLose` int(8) DEFAULT '0',
  `attacksWin` int(8) DEFAULT '0',
  `attacksLose` int(8) DEFAULT '0',
  `defensesWin` int(8) DEFAULT '0',
  `detectNum` int(8) DEFAULT '0',
  `armyKill` int(8) DEFAULT '0',
  `armyDead` int(8) DEFAULT '0',
  `armyCure` int(8) DEFAULT '0',
  `cityDestroyed` int(8) DEFAULT '0',
  `questPower` int(8) DEFAULT '0',
  `power` bigint(20) DEFAULT '0',
  `buildingPower` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `power_index` (`power`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "playerinfo"
#


#
# Structure for table "pray_record"
#

DROP TABLE IF EXISTS `pray_record`;
CREATE TABLE `pray_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `cost` int(10) NOT NULL DEFAULT '0',
  `resource` varchar(20) COLLATE utf8_bin NOT NULL,
  `num` int(10) NOT NULL,
  `hit` int(2) DEFAULT '0',
  `prayTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `resource_idx` (`resource`) USING BTREE,
  KEY `time_idx` (`prayTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "pray_record"
#


#
# Structure for table "protect_total"
#

DROP TABLE IF EXISTS `protect_total`;
CREATE TABLE `protect_total` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "protect_total"
#


#
# Structure for table "push_log"
#

DROP TABLE IF EXISTS `push_log`;
CREATE TABLE `push_log` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `message` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "push_log"
#


#
# Structure for table "push_record"
#

DROP TABLE IF EXISTS `push_record`;
CREATE TABLE `push_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0',
  `msg` blob,
  `status` int(4) DEFAULT '0',
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "push_record"
#


#
# Structure for table "queue"
#

DROP TABLE IF EXISTS `queue`;
CREATE TABLE `queue` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `qid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `itemId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `isHelped` int(10) DEFAULT NULL,
  `para` int(10) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ownerId_index_001` (`ownerId`) USING BTREE,
  KEY `updateTime_index` (`updateTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "queue"
#


#
# Structure for table "refund_log"
#

DROP TABLE IF EXISTS `refund_log`;
CREATE TABLE `refund_log` (
  `refundId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(8) NOT NULL,
  `time` bigint(20) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `itemId` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `original` bigint(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `remain` bigint(11) NOT NULL,
  PRIMARY KEY (`refundId`,`order`),
  KEY `index_time` (`time`,`userId`,`type`,`itemId`) USING BTREE,
  KEY `index_user` (`userId`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "refund_log"
#


#
# Structure for table "report"
#

DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `report` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_time` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "report"
#


#
# Structure for table "reward_107"
#

DROP TABLE IF EXISTS `reward_107`;
CREATE TABLE `reward_107` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `version` varchar(255) COLLATE utf8_bin NOT NULL,
  `rewardLevel` int(2) DEFAULT '0',
  `rewardStatus` int(2) DEFAULT '0',
  `endTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`version`),
  KEY `time_idx` (`endTime`) USING BTREE,
  KEY `stat_idx` (`rewardStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "reward_107"
#


#
# Structure for table "score_act"
#

DROP TABLE IF EXISTS `score_act`;
CREATE TABLE `score_act` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `finishFlag` int(11) DEFAULT '0',
  `rewardFlag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "score_act"
#


#
# Structure for table "server_activity"
#

DROP TABLE IF EXISTS `server_activity`;
CREATE TABLE `server_activity` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `rewad` int(11) DEFAULT '0',
  `events` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_activity"
#


#
# Structure for table "server_announce"
#

DROP TABLE IF EXISTS `server_announce`;
CREATE TABLE `server_announce` (
  `serverId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `randomGeneral` blob,
  `lastMoniterPushTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`serverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_announce"
#


#
# Structure for table "server_config"
#

DROP TABLE IF EXISTS `server_config`;
CREATE TABLE `server_config` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `stat` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_config"
#


#
# Structure for table "server_history_top_score"
#

DROP TABLE IF EXISTS `server_history_top_score`;
CREATE TABLE `server_history_top_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `score` double DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_history_top_score"
#


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

#
# Structure for table "server_mail_record"
#

DROP TABLE IF EXISTS `server_mail_record`;
CREATE TABLE `server_mail_record` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `record` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(2) DEFAULT '0',
  KEY `index_uid` (`uid`,`record`,`state`) USING BTREE,
  KEY `index_record` (`record`,`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_mail_record"
#


#
# Structure for table "server_push"
#

DROP TABLE IF EXISTS `server_push`;
CREATE TABLE `server_push` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) DEFAULT '0',
  `mailType` int(11) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `regStartTime` bigint(20) DEFAULT NULL,
  `regEndTime` bigint(20) DEFAULT NULL,
  `lastOnlineTimeBegin` bigint(20) DEFAULT NULL,
  `lastOnlineTime` bigint(20) DEFAULT NULL,
  `levelMin` int(10) DEFAULT NULL,
  `levelMax` int(10) DEFAULT NULL,
  `title` blob,
  `contents` blob,
  `reward` blob,
  `updateVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `parse` int(11) DEFAULT NULL,
  `notification` blob,
  `reply` int(2) DEFAULT NULL,
  `likeStatus` int(2) DEFAULT NULL,
  `confirm` int(10) DEFAULT '0',
  `platform` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemIdFlag` int(2) DEFAULT '0',
  `activityId` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `countries` varchar(516) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceLimit` int(2) DEFAULT NULL,
  `CDKeySeries` int(11) DEFAULT NULL,
  `bind` int(11) DEFAULT '0',
  `bLvMin` int(11) DEFAULT '0',
  `bLvMax` int(11) DEFAULT '0',
  `HDflag` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push"
#


#
# Structure for table "server_push_20141106"
#

DROP TABLE IF EXISTS `server_push_20141106`;
CREATE TABLE `server_push_20141106` (
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
  `reply` int(2) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push_20141106"
#


#
# Structure for table "server_push_config"
#

DROP TABLE IF EXISTS `server_push_config`;
CREATE TABLE `server_push_config` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) DEFAULT '0',
  `startTime` bigint(20) DEFAULT NULL,
  `contents` blob,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_push_config"
#


#
# Structure for table "server_score"
#

DROP TABLE IF EXISTS `server_score`;
CREATE TABLE `server_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `activity` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `readyTime` bigint(20) DEFAULT NULL,
  `beginTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `rewad` int(11) DEFAULT '0',
  `round` int(11) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_score"
#


#
# Structure for table "server_top_score"
#

DROP TABLE IF EXISTS `server_top_score`;
CREATE TABLE `server_top_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceIcon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_top_score"
#


#
# Structure for table "server_update"
#

DROP TABLE IF EXISTS `server_update`;
CREATE TABLE `server_update` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `idx` int(10) NOT NULL,
  `content` blob,
  `chineseContent` blob,
  PRIMARY KEY (`uid`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_update"
#


#
# Structure for table "server_update_suggestion"
#

DROP TABLE IF EXISTS `server_update_suggestion`;
CREATE TABLE `server_update_suggestion` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `updateId` varchar(255) COLLATE utf8_bin NOT NULL,
  `idx` int(10) NOT NULL,
  `suggestion` blob,
  `real_uid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `server` int(10) DEFAULT NULL,
  `real_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reward_status` int(5) DEFAULT '0',
  PRIMARY KEY (`uid`,`updateId`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "server_update_suggestion"
#


#
# Structure for table "server_usermail"
#

DROP TABLE IF EXISTS `server_usermail`;
CREATE TABLE `server_usermail` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `toUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sendBy` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sendTime` bigint(20) NOT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents` blob,
  `reward` blob,
  `rewardStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `index_sendTime` (`sendTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "server_usermail"
#


#
# Structure for table "sign_in"
#

DROP TABLE IF EXISTS `sign_in`;
CREATE TABLE `sign_in` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` int(10) DEFAULT '0',
  `signInTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "sign_in"
#


#
# Structure for table "sign_in_feed"
#

DROP TABLE IF EXISTS `sign_in_feed`;
CREATE TABLE `sign_in_feed` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `feed` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`type`,`feed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "sign_in_feed"
#


#
# Structure for table "staff"
#

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "staff"
#


#
# Structure for table "stat_date"
#

DROP TABLE IF EXISTS `stat_date`;
CREATE TABLE `stat_date` (
  `date` date NOT NULL,
  `dau` int(11) NOT NULL DEFAULT '0',
  `pay` double(12,2) NOT NULL DEFAULT '0.00',
  `reg` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_date"
#


#
# Structure for table "stat_login"
#

DROP TABLE IF EXISTS `stat_login`;
CREATE TABLE `stat_login` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login"
#


#
# Structure for table "stat_login_2017_10"
#

DROP TABLE IF EXISTS `stat_login_2017_10`;
CREATE TABLE `stat_login_2017_10` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_10"
#


#
# Structure for table "stat_login_2017_11"
#

DROP TABLE IF EXISTS `stat_login_2017_11`;
CREATE TABLE `stat_login_2017_11` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_11"
#


#
# Structure for table "stat_login_2017_12"
#

DROP TABLE IF EXISTS `stat_login_2017_12`;
CREATE TABLE `stat_login_2017_12` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_12"
#


#
# Structure for table "stat_login_2017_6"
#

DROP TABLE IF EXISTS `stat_login_2017_6`;
CREATE TABLE `stat_login_2017_6` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_6"
#


#
# Structure for table "stat_login_2017_7"
#

DROP TABLE IF EXISTS `stat_login_2017_7`;
CREATE TABLE `stat_login_2017_7` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_7"
#


#
# Structure for table "stat_login_2017_8"
#

DROP TABLE IF EXISTS `stat_login_2017_8`;
CREATE TABLE `stat_login_2017_8` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_8"
#


#
# Structure for table "stat_login_2017_9"
#

DROP TABLE IF EXISTS `stat_login_2017_9`;
CREATE TABLE `stat_login_2017_9` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2017_9"
#


#
# Structure for table "stat_login_2018_1"
#

DROP TABLE IF EXISTS `stat_login_2018_1`;
CREATE TABLE `stat_login_2018_1` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_1"
#


#
# Structure for table "stat_login_2018_10"
#

DROP TABLE IF EXISTS `stat_login_2018_10`;
CREATE TABLE `stat_login_2018_10` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_10"
#


#
# Structure for table "stat_login_2018_11"
#

DROP TABLE IF EXISTS `stat_login_2018_11`;
CREATE TABLE `stat_login_2018_11` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_11"
#


#
# Structure for table "stat_login_2018_12"
#

DROP TABLE IF EXISTS `stat_login_2018_12`;
CREATE TABLE `stat_login_2018_12` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_12"
#


#
# Structure for table "stat_login_2018_2"
#

DROP TABLE IF EXISTS `stat_login_2018_2`;
CREATE TABLE `stat_login_2018_2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_2"
#


#
# Structure for table "stat_login_2018_3"
#

DROP TABLE IF EXISTS `stat_login_2018_3`;
CREATE TABLE `stat_login_2018_3` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_3"
#


#
# Structure for table "stat_login_2018_4"
#

DROP TABLE IF EXISTS `stat_login_2018_4`;
CREATE TABLE `stat_login_2018_4` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_4"
#


#
# Structure for table "stat_login_2018_5"
#

DROP TABLE IF EXISTS `stat_login_2018_5`;
CREATE TABLE `stat_login_2018_5` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_5"
#


#
# Structure for table "stat_login_2018_6"
#

DROP TABLE IF EXISTS `stat_login_2018_6`;
CREATE TABLE `stat_login_2018_6` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_6"
#


#
# Structure for table "stat_login_2018_7"
#

DROP TABLE IF EXISTS `stat_login_2018_7`;
CREATE TABLE `stat_login_2018_7` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_7"
#


#
# Structure for table "stat_login_2018_8"
#

DROP TABLE IF EXISTS `stat_login_2018_8`;
CREATE TABLE `stat_login_2018_8` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_8"
#


#
# Structure for table "stat_login_2018_9"
#

DROP TABLE IF EXISTS `stat_login_2018_9`;
CREATE TABLE `stat_login_2018_9` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2018_9"
#


#
# Structure for table "stat_login_2019_0"
#

DROP TABLE IF EXISTS `stat_login_2019_0`;
CREATE TABLE `stat_login_2019_0` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `disconnect` bigint(20) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `castlelevel` int(10) DEFAULT NULL,
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`),
  KEY `index_timeStamp` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login_2019_0"
#


#
# Structure for table "stat_login2"
#

DROP TABLE IF EXISTS `stat_login2`;
CREATE TABLE `stat_login2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_login2"
#


#
# Structure for table "stat_phone"
#

DROP TABLE IF EXISTS `stat_phone`;
CREATE TABLE `stat_phone` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_phone"
#


#
# Structure for table "stat_reg"
#

DROP TABLE IF EXISTS `stat_reg`;
CREATE TABLE `stat_reg` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL,
  `pf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referrer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipcountry` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`type`),
  KEY `index_time_pf_country` (`time`,`pf`,`country`) USING BTREE,
  KEY `country_index` (`country`) USING BTREE,
  KEY `type_idx` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_reg"
#


#
# Structure for table "stat_tutorial"
#

DROP TABLE IF EXISTS `stat_tutorial`;
CREATE TABLE `stat_tutorial` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`) USING BTREE,
  KEY `index_tutorial` (`tutorial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial"
#


#
# Structure for table "stat_tutorial_analyze"
#

DROP TABLE IF EXISTS `stat_tutorial_analyze`;
CREATE TABLE `stat_tutorial_analyze` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`) USING BTREE,
  KEY `index_tutorial` (`tutorial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial_analyze"
#


#
# Structure for table "stat_tutorial_v2"
#

DROP TABLE IF EXISTS `stat_tutorial_v2`;
CREATE TABLE `stat_tutorial_v2` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tutorial` bigint(20) NOT NULL,
  `time` bigint(20) DEFAULT NULL,
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`tutorial`),
  KEY `index_time` (`time`,`appVersion`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "stat_tutorial_v2"
#


#
# Structure for table "suggestion"
#

DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE `suggestion` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `castlelevel` int(11) DEFAULT NULL,
  `contents` blob NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `replyContent` blob,
  `replyTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `ownerId` (`ownerId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "suggestion"
#


#
# Structure for table "switches"
#

DROP TABLE IF EXISTS `switches`;
CREATE TABLE `switches` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stat` int(2) DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "switches"
#


#
# Structure for table "tavern"
#

DROP TABLE IF EXISTS `tavern`;
CREATE TABLE `tavern` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `free` int(4) NOT NULL,
  `firstFree` int(2) NOT NULL,
  `firstPay` int(2) NOT NULL,
  `freeTimes` int(4) NOT NULL,
  `payTimes` int(4) NOT NULL,
  `generals` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId5` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generalId6` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruit1` int(2) NOT NULL,
  `recruit2` int(2) NOT NULL,
  `recruit3` int(2) NOT NULL,
  `recruit4` int(2) NOT NULL,
  `recruit5` int(2) NOT NULL,
  `recruit6` int(2) NOT NULL,
  `addFreeTime` bigint(20) NOT NULL,
  `resetResult` int(4) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "tavern"
#


#
# Structure for table "team_atk_time"
#

DROP TABLE IF EXISTS `team_atk_time`;
CREATE TABLE `team_atk_time` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "team_atk_time"
#


#
# Structure for table "territory_user_effect"
#

DROP TABLE IF EXISTS `territory_user_effect`;
CREATE TABLE `territory_user_effect` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `pointId` int(10) NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stat` int(2) DEFAULT NULL,
  `active` int(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`pointId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "territory_user_effect"
#


#
# Structure for table "time_reward"
#

DROP TABLE IF EXISTS `time_reward`;
CREATE TABLE `time_reward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rewardId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastRewardTime` bigint(20) DEFAULT NULL,
  `nextRewardTime` bigint(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "time_reward"
#


#
# Structure for table "train"
#

DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `genUid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finishTrain` bigint(20) NOT NULL,
  `endTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "train"
#


#
# Structure for table "translation"
#

DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` blob COMMENT '发言内容',
  `en` blob,
  `originalLang` varchar(255) DEFAULT 'cn',
  PRIMARY KEY (`id`),
  KEY `index_content` (`content`(50)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "translation"
#


#
# Structure for table "translation_record"
#

DROP TABLE IF EXISTS `translation_record`;
CREATE TABLE `translation_record` (
  `date` varchar(255) NOT NULL,
  `month` int(10) DEFAULT NULL,
  `day` int(10) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `words` int(20) DEFAULT NULL,
  `countryCharacters` int(20) DEFAULT '0',
  `allianceCharacters` int(20) DEFAULT '0',
  `en` int(20) DEFAULT '0',
  `zh-Hans` int(20) DEFAULT '0',
  `zh-Hant` int(20) DEFAULT '0',
  `ja` int(20) DEFAULT '0',
  `ko` int(20) DEFAULT '0',
  `ru` int(20) DEFAULT '0',
  `es` int(20) DEFAULT '0',
  `ms` int(20) DEFAULT '0',
  `fr` int(20) DEFAULT '0',
  `de` int(20) DEFAULT '0',
  `it` int(20) DEFAULT '0',
  `pt` int(20) DEFAULT '0',
  `other` int(20) DEFAULT '0',
  `fromDB` int(20) DEFAULT '0',
  `fromMS` int(20) DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "translation_record"
#


#
# Structure for table "translationv2"
#

DROP TABLE IF EXISTS `translationv2`;
CREATE TABLE `translationv2` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en` blob,
  `zh-Hans` blob,
  `zh-Hant` blob,
  `ja` blob,
  `ko` blob,
  `ru` blob,
  `es` blob,
  `ms` blob,
  `fr` blob,
  `de` blob,
  `it` blob,
  `pt` blob,
  `count` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_en` (`en`(50)) USING BTREE,
  KEY `index_zh-Hans` (`zh-Hans`(20)) USING BTREE,
  KEY `index_zh-Hant` (`zh-Hant`(20)) USING BTREE,
  KEY `index_ja` (`ja`(20)) USING BTREE,
  KEY `index_ko` (`ko`(20)) USING BTREE,
  KEY `index_ru` (`ru`(20)) USING BTREE,
  KEY `index_es` (`es`(20)) USING BTREE,
  KEY `index_ms` (`ms`(20)) USING BTREE,
  KEY `index_fr` (`fr`(20)) USING BTREE,
  KEY `index_de` (`de`(20)) USING BTREE,
  KEY `index_it` (`it`(20)) USING BTREE,
  KEY `index_pt` (`pt`(20)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "translationv2"
#


#
# Structure for table "treasure_map"
#

DROP TABLE IF EXISTS `treasure_map`;
CREATE TABLE `treasure_map` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `treasureId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currentOwner` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originalOwner` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `colour` int(10) DEFAULT NULL,
  `marchId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `finishTime` bigint(20) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `index_o_m` (`currentOwner`,`marchId`) USING BTREE,
  KEY `index_o_t` (`currentOwner`,`targetId`) USING BTREE,
  KEY `index_o_s_c` (`currentOwner`,`state`,`colour`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "treasure_map"
#


#
# Structure for table "trial_field"
#

DROP TABLE IF EXISTS `trial_field`;
CREATE TABLE `trial_field` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `freeTrial` int(11) DEFAULT '0',
  `freeFresh` bigint(20) DEFAULT '0',
  `freeAtk` int(11) DEFAULT '0',
  `monster` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `blood` int(11) DEFAULT '0',
  `screen` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `buyTrial` int(11) DEFAULT '0',
  `buyAtk` int(11) DEFAULT '0',
  `chargeAtkTimes` int(11) DEFAULT '0',
  `rewardMonster` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "trial_field"
#


#
# Structure for table "turret_shooting_task"
#

DROP TABLE IF EXISTS `turret_shooting_task`;
CREATE TABLE `turret_shooting_task` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `turretUid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `marchUuid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `uuid_idx` (`marchUuid`) USING BTREE,
  KEY `startTime_idx` (`startTime`) USING BTREE,
  KEY `endTime_idx` (`endTime`) USING BTREE,
  KEY `uid_idx` (`turretUid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "turret_shooting_task"
#


#
# Structure for table "uid_tmp"
#

DROP TABLE IF EXISTS `uid_tmp`;
CREATE TABLE `uid_tmp` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "uid_tmp"
#


#
# Structure for table "user_14day_login"
#

DROP TABLE IF EXISTS `user_14day_login`;
CREATE TABLE `user_14day_login` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `day` int(10) DEFAULT '0',
  `lastRewardTime` bigint(20) DEFAULT '0',
  `vipRewardTime` bigint(20) DEFAULT '0',
  `reward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`type`),
  KEY `day_index` (`day`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_14day_login"
#


#
# Structure for table "user_achievement"
#

DROP TABLE IF EXISTS `user_achievement`;
CREATE TABLE `user_achievement` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `completeTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_achievement"
#


#
# Structure for table "user_activation"
#

DROP TABLE IF EXISTS `user_activation`;
CREATE TABLE `user_activation` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activation"
#


#
# Structure for table "user_activity"
#

DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `actId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activity"
#


#
# Structure for table "user_activity_new"
#

DROP TABLE IF EXISTS `user_activity_new`;
CREATE TABLE `user_activity_new` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` int(10) NOT NULL,
  `level` int(10) NOT NULL,
  `rewards` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `updateTime` bigint(20) NOT NULL,
  `reserve_1` int(10) NOT NULL,
  `reserve_2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_activity_new"
#


#
# Structure for table "user_army"
#

DROP TABLE IF EXISTS `user_army`;
CREATE TABLE `user_army` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(4) NOT NULL DEFAULT '0',
  `free` int(6) NOT NULL DEFAULT '0',
  `pve` int(6) NOT NULL DEFAULT '0',
  `march` int(6) NOT NULL DEFAULT '0',
  `defence` int(6) NOT NULL DEFAULT '0',
  `train` int(6) NOT NULL DEFAULT '0',
  `foodCostTime` bigint(20) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_army"
#


#
# Structure for table "user_assets"
#

DROP TABLE IF EXISTS `user_assets`;
CREATE TABLE `user_assets` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `winPoint` bigint(10) NOT NULL DEFAULT '0',
  `lastUpdateTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_assets"
#


#
# Structure for table "user_building"
#

DROP TABLE IF EXISTS `user_building`;
CREATE TABLE `user_building` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `opType` int(11) DEFAULT '0',
  `putId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reward` int(2) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT '0',
  `effectTime` bigint(20) DEFAULT '0',
  `star` int(11) DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `lockState` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ub_uid_index` (`uid`,`itemId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_building"
#


#
# Structure for table "user_building_exp"
#

DROP TABLE IF EXISTS `user_building_exp`;
CREATE TABLE `user_building_exp` (
  `uid` varchar(255) NOT NULL,
  `historyMax` bigint(20) DEFAULT '0',
  `currentMax` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "user_building_exp"
#


#
# Structure for table "user_collect_record"
#

DROP TABLE IF EXISTS `user_collect_record`;
CREATE TABLE `user_collect_record` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource` int(10) DEFAULT '0',
  `killPeople` int(10) DEFAULT NULL,
  `train` int(10) DEFAULT NULL,
  `lastKillTime` bigint(20) DEFAULT NULL,
  `sockByResource` int(20) DEFAULT NULL,
  `sockByKill` int(20) DEFAULT NULL,
  `sockByTrain` int(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_collect_record"
#


#
# Structure for table "user_cross_fight_history"
#

DROP TABLE IF EXISTS `user_cross_fight_history`;
CREATE TABLE `user_cross_fight_history` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `round` int(8) NOT NULL,
  `score` bigint(20) DEFAULT '0',
  `rank` int(8) DEFAULT '0',
  `serverId` int(8) NOT NULL,
  PRIMARY KEY (`uid`,`startTime`,`round`),
  KEY `user_startTime` (`uid`,`startTime`) USING BTREE,
  KEY `startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_cross_fight_history"
#


#
# Structure for table "user_daily_task"
#

DROP TABLE IF EXISTS `user_daily_task`;
CREATE TABLE `user_daily_task` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_daily_task"
#


#
# Structure for table "user_dragon"
#

DROP TABLE IF EXISTS `user_dragon`;
CREATE TABLE `user_dragon` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `place` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `uid_index` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_dragon"
#


#
# Structure for table "user_equip"
#

DROP TABLE IF EXISTS `user_equip`;
CREATE TABLE `user_equip` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `on` int(4) NOT NULL DEFAULT '0',
  `itemId` int(11) NOT NULL DEFAULT '0',
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `extraProperty` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uuid`),
  KEY `index_uid_on` (`uid`,`on`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_equip"
#


#
# Structure for table "user_general"
#

DROP TABLE IF EXISTS `user_general`;
CREATE TABLE `user_general` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `generalId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `color` int(4) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  `ability` blob,
  PRIMARY KEY (`uuid`),
  KEY `uid_index_001` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_general"
#


#
# Structure for table "user_gift"
#

DROP TABLE IF EXISTS `user_gift`;
CREATE TABLE `user_gift` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `giftId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gifttype` int(11) NOT NULL,
  `valid` int(2) NOT NULL DEFAULT '1',
  `level` int(11) DEFAULT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `para` int(11) DEFAULT '0',
  `time` bigint(20) NOT NULL,
  `expiretime` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_gift"
#


#
# Structure for table "user_honor"
#

DROP TABLE IF EXISTS `user_honor`;
CREATE TABLE `user_honor` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_honor"
#


#
# Structure for table "user_hospital"
#

DROP TABLE IF EXISTS `user_hospital`;
CREATE TABLE `user_hospital` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dead` int(6) NOT NULL DEFAULT '0',
  `heal` int(6) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hospital"
#


#
# Structure for table "user_hot_item"
#

DROP TABLE IF EXISTS `user_hot_item`;
CREATE TABLE `user_hot_item` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hot_item"
#


#
# Structure for table "user_hot_item_best"
#

DROP TABLE IF EXISTS `user_hot_item_best`;
CREATE TABLE `user_hot_item_best` (
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_bin NOT NULL,
  `color` int(10) DEFAULT '0',
  `price_type` int(10) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `price_hot` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_hot_item_best"
#


#
# Structure for table "user_hot_item_v2"
#

DROP TABLE IF EXISTS `user_hot_item_v2`;
CREATE TABLE `user_hot_item_v2` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goodsId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priceType` int(10) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `price_hot` int(10) DEFAULT '0',
  `num` int(10) DEFAULT NULL,
  `refreshTime` bigint(20) DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`,`goodsId`,`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_hot_item_v2"
#


#
# Structure for table "user_item"
#

DROP TABLE IF EXISTS `user_item`;
CREATE TABLE `user_item` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ownerId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `value` int(11) DEFAULT NULL,
  `vanishTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `uitem_ownerId_index` (`ownerId`,`itemId`,`value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_item"
#


#
# Structure for table "user_login_ip"
#

DROP TABLE IF EXISTS `user_login_ip`;
CREATE TABLE `user_login_ip` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`ip`),
  KEY `index_uid_count` (`uid`,`count`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_login_ip"
#


#
# Structure for table "user_lord"
#

DROP TABLE IF EXISTS `user_lord`;
CREATE TABLE `user_lord` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `userSign` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `levelUp` int(4) DEFAULT '1',
  `firstJoinAllianceFlag` int(11) DEFAULT '1',
  `newPlayerAwardSoldierFlag` int(11) DEFAULT '0',
  `lastPayTime` bigint(20) DEFAULT '0',
  `pveLevel` int(4) DEFAULT '0',
  `firstBindAccountRewardFlag` int(11) DEFAULT '0',
  `dailyTaskFlushTime` bigint(20) DEFAULT '0',
  `dailyTaskComplete` int(11) DEFAULT '0',
  `isHDLogin` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_lord"
#


#
# Structure for table "user_mine"
#

DROP TABLE IF EXISTS `user_mine`;
CREATE TABLE `user_mine` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `call` int(2) DEFAULT '0',
  `exp` int(11) DEFAULT NULL,
  `miner` int(11) DEFAULT '0',
  `mineTime` bigint(20) DEFAULT NULL,
  `helpInfo` blob,
  PRIMARY KEY (`uid`,`fId`),
  KEY `index_fId` (`fId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_mine"
#


#
# Structure for table "user_mixed_info"
#

DROP TABLE IF EXISTS `user_mixed_info`;
CREATE TABLE `user_mixed_info` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scoreSwitch` int(2) DEFAULT '0',
  `daliyFirstLoginTime` bigint(20) DEFAULT '0',
  `continuouslyLoginDay` int(11) DEFAULT '0',
  `activityPopup` int(11) DEFAULT '0',
  `popupTime` bigint(20) DEFAULT '0',
  `showEquip` int(11) DEFAULT '1',
  `materialBackup` int(11) DEFAULT '1',
  `taskStage` int(11) DEFAULT '0',
  `scrollEquip` int(11) DEFAULT '1',
  `colorblind` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_mixed_info"
#


#
# Structure for table "user_monster_siege"
#

DROP TABLE IF EXISTS `user_monster_siege`;
CREATE TABLE `user_monster_siege` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `failTimes` int(8) DEFAULT '0',
  `killMonsterCount` bigint(20) DEFAULT '0',
  `state` int(8) NOT NULL,
  `goalRank` int(8) DEFAULT '0',
  `failRounds` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `state_index` (`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege"
#


#
# Structure for table "user_monster_siege_history"
#

DROP TABLE IF EXISTS `user_monster_siege_history`;
CREATE TABLE `user_monster_siege_history` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceAbbr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allianceName` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `failRounds` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege_history"
#


#
# Structure for table "user_monster_siege_top_history"
#

DROP TABLE IF EXISTS `user_monster_siege_top_history`;
CREATE TABLE `user_monster_siege_top_history` (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` bigint(20) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allianceAbbr` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `allianceName` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rank` int(8) NOT NULL,
  `killCount` bigint(20) DEFAULT '0',
  `failRounds` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_monster_siege_top_history"
#


#
# Structure for table "user_onlinereward"
#

DROP TABLE IF EXISTS `user_onlinereward`;
CREATE TABLE `user_onlinereward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `online` bigint(20) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  `use` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_onlinereward"
#


#
# Structure for table "user_picture"
#

DROP TABLE IF EXISTS `user_picture`;
CREATE TABLE `user_picture` (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uploadTime` bigint(20) DEFAULT '0',
  `auditPerson` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `state` int(4) DEFAULT '0',
  `picVer` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_picture"
#


#
# Structure for table "user_pray"
#

DROP TABLE IF EXISTS `user_pray`;
CREATE TABLE `user_pray` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `freeFromItem` int(11) DEFAULT '0',
  `itemPrayCount` int(11) DEFAULT '0',
  `prayCount` int(11) DEFAULT '0',
  `lastPrayTime` bigint(20) DEFAULT '0',
  `wood` int(11) DEFAULT '0',
  `food` int(11) DEFAULT '0',
  `iron` int(11) DEFAULT '0',
  `silver` int(11) DEFAULT '0',
  `steel` int(11) DEFAULT '0',
  `goldwood` int(11) DEFAULT '0',
  `goldfood` int(11) DEFAULT '0',
  `goldiron` int(11) DEFAULT '0',
  `goldsilver` int(11) DEFAULT '0',
  `goldsteel` int(11) DEFAULT '0',
  `isFirstFree` int(5) DEFAULT '0',
  `isFirstPay` int(5) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `count_idx` (`prayCount`) USING BTREE,
  KEY `date_idx` (`lastPrayTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_pray"
#


#
# Structure for table "user_reg"
#

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_reg"
#


#
# Structure for table "user_resource"
#

DROP TABLE IF EXISTS `user_resource`;
CREATE TABLE `user_resource` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stone` int(20) NOT NULL,
  `wood` int(20) NOT NULL,
  `iron` int(20) NOT NULL,
  `food` int(20) NOT NULL,
  `silver` int(11) NOT NULL,
  `chip` int(11) NOT NULL,
  `diamond` int(11) NOT NULL,
  `dragon_food` int(11) NOT NULL,
  `dragon_gold` int(11) NOT NULL,
  `lastUpdateTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_resource"
#


#
# Structure for table "user_science"
#

DROP TABLE IF EXISTS `user_science`;
CREATE TABLE `user_science` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(6) NOT NULL DEFAULT '0',
  `cd` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  PRIMARY KEY (`uid`,`itemId`),
  KEY `Index_ownerId` (`uid`,`itemId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_science"
#


#
# Structure for table "user_score"
#

DROP TABLE IF EXISTS `user_score`;
CREATE TABLE `user_score` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '1',
  `level` int(11) DEFAULT '1',
  `score` int(11) DEFAULT '0',
  `reward` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`),
  KEY `index_actId` (`actId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_score"
#


#
# Structure for table "user_score_bak"
#

DROP TABLE IF EXISTS `user_score_bak`;
CREATE TABLE `user_score_bak` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `actId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `round` int(11) DEFAULT '1',
  `level` int(11) DEFAULT '1',
  `score` int(11) DEFAULT '0',
  `reward` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`,`actId`),
  KEY `index_actId` (`actId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_score_bak"
#


#
# Structure for table "user_skill"
#

DROP TABLE IF EXISTS `user_skill`;
CREATE TABLE `user_skill` (
  `uuid` varchar(40) COLLATE utf8_bin NOT NULL,
  `ownerId` varchar(40) COLLATE utf8_bin NOT NULL,
  `skillId` varchar(40) COLLATE utf8_bin NOT NULL,
  `startTime` bigint(20) DEFAULT '0',
  `actTime` bigint(20) DEFAULT '0',
  `endTime` bigint(20) DEFAULT NULL,
  `stat` int(10) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `ownerId_index` (`ownerId`) USING BTREE,
  KEY `starttime_index` (`startTime`) USING BTREE,
  KEY `endtime_index` (`endTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "user_skill"
#


#
# Structure for table "user_snowball"
#

DROP TABLE IF EXISTS `user_snowball`;
CREATE TABLE `user_snowball` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `curLevel` int(10) DEFAULT NULL,
  `lastThrowTime` bigint(20) DEFAULT NULL,
  `todayThrowCount` int(10) DEFAULT NULL,
  `lastBuyTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_snowball"
#


#
# Structure for table "user_sock"
#

DROP TABLE IF EXISTS `user_sock`;
CREATE TABLE `user_sock` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socks` bigint(20) DEFAULT '0',
  `reward` blob,
  `level` int(10) DEFAULT '0',
  `refreshtime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_sock"
#


#
# Structure for table "user_state"
#

DROP TABLE IF EXISTS `user_state`;
CREATE TABLE `user_state` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stateId` int(11) NOT NULL,
  `startTime` bigint(20) NOT NULL DEFAULT '0',
  `endTime` bigint(20) NOT NULL,
  `type` int(4) DEFAULT '0',
  `type2` int(10) DEFAULT '0',
  `groupType` int(10) DEFAULT '0',
  PRIMARY KEY (`uid`,`stateId`),
  KEY `index_uid_type2` (`uid`,`type2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_state"
#


#
# Structure for table "user_talent"
#

DROP TABLE IF EXISTS `user_talent`;
CREATE TABLE `user_talent` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `talent` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_talent"
#


#
# Structure for table "user_task"
#

DROP TABLE IF EXISTS `user_task`;
CREATE TABLE `user_task` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `type` int(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_task"
#


#
# Structure for table "user_territory_resource"
#

DROP TABLE IF EXISTS `user_territory_resource`;
CREATE TABLE `user_territory_resource` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wood` bigint(10) DEFAULT '0',
  `stone` bigint(10) DEFAULT '0',
  `iron` bigint(10) DEFAULT '0',
  `food` bigint(10) DEFAULT '0',
  `silver` bigint(10) DEFAULT '0',
  `lastUpdateTime` bigint(10) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `al_idx` (`allianceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_territory_resource"
#


#
# Structure for table "user_timereward"
#

DROP TABLE IF EXISTS `user_timereward`;
CREATE TABLE `user_timereward` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(8) DEFAULT '0',
  `times` int(8) DEFAULT '0',
  `refreshTime` bigint(20) DEFAULT '0',
  `receiveTime` bigint(20) DEFAULT '0',
  `rewardInfo` blob,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_timereward"
#


#
# Structure for table "user_used_item"
#

DROP TABLE IF EXISTS `user_used_item`;
CREATE TABLE `user_used_item` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_used_item"
#


#
# Structure for table "user_vip"
#

DROP TABLE IF EXISTS `user_vip`;
CREATE TABLE `user_vip` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '-1',
  `loginDays` int(11) NOT NULL,
  `lastLoginTime` bigint(20) NOT NULL,
  `vipEndTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_vip"
#


#
# Structure for table "user_wall"
#

DROP TABLE IF EXISTS `user_wall`;
CREATE TABLE `user_wall` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `armyId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(6) NOT NULL DEFAULT '0',
  `build` int(6) NOT NULL DEFAULT '0',
  `finishTime` bigint(20) NOT NULL DEFAULT '0',
  `level` int(4) NOT NULL,
  PRIMARY KEY (`uid`,`armyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_wall"
#


#
# Structure for table "user_world"
#

DROP TABLE IF EXISTS `user_world`;
CREATE TABLE `user_world` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pointId` int(11) NOT NULL,
  `color` int(11) DEFAULT NULL,
  `monsterLock` blob,
  `lastCityDefTime` bigint(11) NOT NULL,
  `attMonsterStamina` int(11) DEFAULT NULL,
  `lastStaminaTime` bigint(20) DEFAULT NULL,
  `lastMoveCityTime` bigint(20) DEFAULT '0',
  `srcServerPointId` int(11) DEFAULT NULL,
  `ckfConfirmAccessNextRound` int(4) DEFAULT NULL,
  `ckfNeedLeave` int(4) DEFAULT NULL,
  `ckfAccessTimes` int(8) DEFAULT '0',
  `ckfLastPlayRound` int(4) DEFAULT NULL,
  `ckfProtectTime` bigint(20) DEFAULT NULL,
  `ckfWinStreak` int(8) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_world"
#


#
# Structure for table "user_world_pve"
#

DROP TABLE IF EXISTS `user_world_pve`;
CREATE TABLE `user_world_pve` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pointId` int(11) NOT NULL,
  `attNum` int(11) NOT NULL,
  `buyNum` int(11) DEFAULT NULL,
  `monsterInfo` blob,
  PRIMARY KEY (`uid`,`pointId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_world_pve"
#


#
# Structure for table "userprofile"
#

DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `exp` int(11) NOT NULL,
  `gold` bigint(20) NOT NULL DEFAULT '0',
  `paidGold` bigint(20) DEFAULT '0',
  `payTotal` bigint(20) NOT NULL DEFAULT '0',
  `parseRegisterId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gcmRegisterId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `openedPos` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picVer` int(11) DEFAULT '0',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allianceId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chNameCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `worldPoint` int(11) DEFAULT NULL,
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gaid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pf` varchar(40) COLLATE utf8_unicode_ci DEFAULT 'market_global',
  `lang` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appVersion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmFlag` int(11) DEFAULT '0',
  `regTime` bigint(20) NOT NULL DEFAULT '0',
  `offLineTime` bigint(20) DEFAULT '0',
  `banTime` bigint(20) DEFAULT '0',
  `chatBanTime` bigint(20) DEFAULT '0',
  `banGMName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noticeBanTime` bigint(20) DEFAULT '0',
  `lastOnlineTime` bigint(20) DEFAULT '0',
  `gmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serverId` int(11) DEFAULT NULL,
  `crossFightSrcServerId` int(11) NOT NULL DEFAULT '-1',
  `lastModGoldGetTime` bigint(20) DEFAULT '0',
  `modGoldGetTimeInterval` bigint(20) DEFAULT '0',
  `modGoldAmount` bigint(10) DEFAULT '0',
  `beTrainingModTime` bigint(20) DEFAULT '0',
  `guideStep` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `payRiskFactor` int(11) DEFAULT '0',
  `phoneDevice` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crystal` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `name_index` (`name`) USING BTREE,
  KEY `time_level_index` (`regTime`,`level`,`lastOnlineTime`,`pf`) USING BTREE,
  KEY `allianceid_lasttime_index` (`allianceId`,`lastOnlineTime`) USING BTREE,
  KEY `lang_index` (`lang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "userprofile"
#


#
# Structure for table "world_favorite"
#

DROP TABLE IF EXISTS `world_favorite`;
CREATE TABLE `world_favorite` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server` int(11) NOT NULL DEFAULT '0',
  `createTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`,`point`,`server`),
  KEY `time_idx` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_favorite"
#


#
# Structure for table "world_field_monster_dead"
#

DROP TABLE IF EXISTS `world_field_monster_dead`;
CREATE TABLE `world_field_monster_dead` (
  `uuid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(20) NOT NULL,
  `monster` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `dead_monster_time` (`deadFinishTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_field_monster_dead"
#


#
# Structure for table "world_flush_field_monster_tmp"
#

DROP TABLE IF EXISTS `world_flush_field_monster_tmp`;
CREATE TABLE `world_flush_field_monster_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `pointItem` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` bigint(20) NOT NULL DEFAULT '0',
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "world_flush_field_monster_tmp"
#


#
# Structure for table "world_flush_monster_tmp"
#

DROP TABLE IF EXISTS `world_flush_monster_tmp`;
CREATE TABLE `world_flush_monster_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_flush_monster_tmp"
#


#
# Structure for table "world_flush_resource_tmp"
#

DROP TABLE IF EXISTS `world_flush_resource_tmp`;
CREATE TABLE `world_flush_resource_tmp` (
  `id` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resLevel` int(11) NOT NULL DEFAULT '0',
  `resCostValue` int(11) NOT NULL DEFAULT '0',
  `resInitValue` int(11) NOT NULL,
  `flushTime` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_flush_resource_tmp"
#


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


#
# Structure for table "world_res_dead"
#

DROP TABLE IF EXISTS `world_res_dead`;
CREATE TABLE `world_res_dead` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `deadFinishTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dead_res_time` (`deadFinishTime`) USING BTREE,
  KEY `areaId_index` (`areaId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_res_dead"
#


#
# Structure for table "world_res_record"
#

DROP TABLE IF EXISTS `world_res_record`;
CREATE TABLE `world_res_record` (
  `time` bigint(20) NOT NULL,
  `id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `areaId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `pointItem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`time`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_res_record"
#


#
# Structure for table "world_update_gridtype_tmp"
#

DROP TABLE IF EXISTS `world_update_gridtype_tmp`;
CREATE TABLE `world_update_gridtype_tmp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gridType` int(11) NOT NULL,
  `grid2Type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "world_update_gridtype_tmp"
#


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

