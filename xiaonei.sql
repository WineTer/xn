/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : xiaonei

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-06-13 17:18:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) default NULL,
  `name` varchar(128) default NULL,
  `descript` varchar(256) default NULL,
  `photo` varchar(64) default 'main.jpg',
  `creTime` datetime default NULL,
  `updTime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL auto_increment,
  `blogName` varchar(256) default NULL,
  `userId` int(11) default NULL,
  `descript` varchar(256) default NULL,
  `creTime` datetime default NULL,
  `updTime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------

-- ----------------------------
-- Table structure for blogcomment
-- ----------------------------
DROP TABLE IF EXISTS `blogcomment`;
CREATE TABLE `blogcomment` (
  `id` int(11) NOT NULL auto_increment,
  `blog_id` int(11) default NULL,
  `userid` int(11) default NULL,
  `content` varchar(256) default NULL,
  `comTime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `blog_id` (`blog_id`),
  KEY `userid` (`userid`),
  CONSTRAINT `blogcomment_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`),
  CONSTRAINT `blogcomment_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogcomment
-- ----------------------------

-- ----------------------------
-- Table structure for blog_main
-- ----------------------------
DROP TABLE IF EXISTS `blog_main`;
CREATE TABLE `blog_main` (
  `blogId` int(11) NOT NULL auto_increment,
  `blog` text,
  PRIMARY KEY  (`blogId`),
  CONSTRAINT `blog_main_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_main
-- ----------------------------

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `f_id` int(11) NOT NULL auto_increment,
  `user1` int(11) default NULL,
  `user1_n` varchar(255) default NULL,
  `user2` int(11) default NULL,
  `user2_n` varchar(255) default NULL,
  PRIMARY KEY  (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friends
-- ----------------------------

-- ----------------------------
-- Table structure for guestbook
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `g_id` int(11) NOT NULL auto_increment,
  `v_id` int(11) default NULL,
  `v_name` varchar(255) default NULL,
  `a_id` int(11) default NULL,
  `a_name` varchar(255) default NULL,
  `gusetbook` text,
  `creTime` datetime default NULL,
  PRIMARY KEY  (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL auto_increment,
  `photo` varchar(64) default NULL,
  `albumId` int(11) default NULL,
  `descript` varchar(256) default NULL,
  `rtime` int(11) default '0',
  `addTime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `albumId` (`albumId`),
  CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `album` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for photocomment
-- ----------------------------
DROP TABLE IF EXISTS `photocomment`;
CREATE TABLE `photocomment` (
  `id` int(11) NOT NULL auto_increment,
  `photo` varchar(64) default NULL,
  `albumId` int(11) default NULL,
  `descript` varchar(256) default NULL,
  `rtime` int(11) default '0',
  `addTime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `albumId` (`albumId`),
  CONSTRAINT `photocomment_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `album` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photocomment
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `pwd` varchar(128) NOT NULL,
  `photo` varchar(128) default 'default.gif',
  `sex` varchar(16) default NULL,
  `visited` int(11) default '0',
  `loginDate` datetime default NULL,
  `level` tinyint(4) default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
