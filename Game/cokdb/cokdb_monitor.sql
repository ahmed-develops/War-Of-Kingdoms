/*
Navicat MySQL Data Transfer

Source Server         : 192.168.92.131
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : cokdb_monitor

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-11-04 17:43:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for logging_event
-- ----------------------------
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

-- ----------------------------
-- Records of logging_event
-- ----------------------------

-- ----------------------------
-- Table structure for logging_event_exception
-- ----------------------------
DROP TABLE IF EXISTS `logging_event_exception`;
CREATE TABLE `logging_event_exception` (
  `event_id` bigint(20) NOT NULL,
  `i` smallint(6) NOT NULL,
  `trace_line` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`event_id`,`i`),
  KEY `trace_line_idx` (`trace_line`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of logging_event_exception
-- ----------------------------

-- ----------------------------
-- Table structure for logging_event_property
-- ----------------------------
DROP TABLE IF EXISTS `logging_event_property`;
CREATE TABLE `logging_event_property` (
  `event_id` bigint(20) NOT NULL,
  `mapped_key` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mapped_value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`event_id`,`mapped_key`),
  CONSTRAINT `logging_event_property_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `logging_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logging_event_property
-- ----------------------------

-- ----------------------------
-- Table structure for logging_event_stat
-- ----------------------------
DROP TABLE IF EXISTS `logging_event_stat`;
CREATE TABLE `logging_event_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT '0',
  `time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logging_event_stat
-- ----------------------------

-- ----------------------------
-- Table structure for user
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
