/*
MySQL Data Transfer
Source Host: localhost
Source Database: bbs_system
Target Host: localhost
Target Database: bbs_system
Date: 2020/3/16 15:51:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for bbs_category
-- ----------------------------
CREATE TABLE `bbs_category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbs_follow
-- ----------------------------
CREATE TABLE `bbs_follow` (
  `userId` varchar(32) NOT NULL,
  `beUserId` varchar(32) NOT NULL,
  `followDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`,`beUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbs_invitation
-- ----------------------------
CREATE TABLE `bbs_invitation` (
  `invitationId` varchar(128) NOT NULL,
  `invitationTitle` varchar(128) NOT NULL,
  `invitationMessage` varchar(2048) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `plateId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `isPass` int(11) DEFAULT '0',
  `isEnable` int(11) DEFAULT '0',
  `isCream` int(11) DEFAULT '0',
  `invitationCreate` datetime DEFAULT NULL,
  `invitationModify` datetime DEFAULT NULL,
  PRIMARY KEY (`invitationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbs_invitation_ans
-- ----------------------------
CREATE TABLE `bbs_invitation_ans` (
  `ansId` varchar(128) NOT NULL,
  `ansMessage` varchar(512) NOT NULL,
  `invitationId` varchar(128) NOT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `ansDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ansId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbs_level
-- ----------------------------
CREATE TABLE `bbs_level` (
  `levelId` int(11) NOT NULL AUTO_INCREMENT,
  `levelMessage` varchar(8) NOT NULL,
  PRIMARY KEY (`levelId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbs_plate
-- ----------------------------
CREATE TABLE `bbs_plate` (
  `plateId` int(11) NOT NULL AUTO_INCREMENT,
  `plateTitle` varchar(32) NOT NULL,
  `plateMessage` varchar(128) DEFAULT NULL,
  `isEnable` int(11) DEFAULT '0',
  PRIMARY KEY (`plateId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbs_store
-- ----------------------------
CREATE TABLE `bbs_store` (
  `userId` varchar(32) NOT NULL,
  `invitationId` varchar(128) NOT NULL,
  `storeDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`,`invitationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbs_system_ans
-- ----------------------------
CREATE TABLE `bbs_system_ans` (
  `id` varchar(128) NOT NULL,
  `systemId` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `isRead` int(11) DEFAULT '0',
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbs_user
-- ----------------------------
CREATE TABLE `bbs_user` (
  `userId` varchar(32) NOT NULL,
  `userPsw` varchar(32) NOT NULL,
  `userAlice` varchar(64) NOT NULL,
  `userEmail` varchar(64) NOT NULL,
  `userSex` varchar(1) DEFAULT '男',
  `userPhoto` varchar(128) DEFAULT 'xxx.jpg',
  `userScore` double DEFAULT '0',
  `userLevel` int(11) DEFAULT '1',
  `levelDown` date DEFAULT NULL,
  `userLock` date DEFAULT NULL,
  `userCreateDate` date DEFAULT NULL,
  `isPass` int(11) DEFAULT '0',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `bbs_level` VALUES ('1', '初级会员');
INSERT INTO `bbs_level` VALUES ('2', '中级会员');
INSERT INTO `bbs_level` VALUES ('3', '高级会员');
INSERT INTO `bbs_level` VALUES ('4', '系统管理员');
INSERT INTO `bbs_plate` VALUES ('26', '旅游', '泰国、新加坡和印度尼西亚', '0');
INSERT INTO `bbs_plate` VALUES ('29', '新闻', '国内外新闻', '0');
INSERT INTO `bbs_plate` VALUES ('30', '体育和运动', '非常多的运动', '0');
INSERT INTO `bbs_plate` VALUES ('31', '教育', '学习使我快乐！我要努力学习~~', '0');
INSERT INTO `bbs_user` VALUES ('aaa', '202cb962ac59075b964b07152d234b70', '小六', '221@qq.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-10', '1');
INSERT INTO `bbs_user` VALUES ('abc', '202cb962ac59075b964b07152d234b70', 'aaa', 'das@11.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', '系统管理员', 'xxx@qq.com', '男', 'xxx.jpg', '0', '4', null, null, null, '0');
INSERT INTO `bbs_user` VALUES ('ccvc', '202cb962ac59075b964b07152d234b70', 'vcv', 'dasfdas@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('cvcxvcv', 'ba248c985ace94863880921d8900c53f', 'dsad', '121d@qq.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('erwa', '47bce5c74f589f4867dbd57e9ca9f808', '小娃娃', 'fsdf@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('liSi', '202cb962ac59075b964b07152d234b70', '李四', 'dasd@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('mbk', '202cb962ac59075b964b07152d234b70', 'dsad', '121@183.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
INSERT INTO `bbs_user` VALUES ('mnm', '698d51a19d8a121ce581499d7b701668', '111', '1111@111.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
INSERT INTO `bbs_user` VALUES ('nnn', 'a1931ec126bbad3fa7a3fc64209fd921', 'nnn', 'dada@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('wangWu', 'b7f6593421d9f21bdd5caef01b24f5c8', '王五', '76gf@11.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
INSERT INTO `bbs_user` VALUES ('xiaoEr', '202cb962ac59075b964b07152d234b70', '小二', 'fgdg@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('xxxx', '202cb962ac59075b964b07152d234b70', 'xxxx', 'dsaf@qq.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
INSERT INTO `bbs_user` VALUES ('zhangSan', '202cb962ac59075b964b07152d234b70', '小三子', '111@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-10', '1');
