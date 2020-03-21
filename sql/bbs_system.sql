/*
MySQL Data Transfer
Source Host: localhost
Source Database: bbs_system
Target Host: localhost
Target Database: bbs_system
Date: 2020/3/21 18:50:38
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
  `invitationMessage` text NOT NULL,
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
  `ansMessage` mediumtext NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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
INSERT INTO `bbs_invitation` VALUES ('curry15845232739243', '%E7%94%B2%E9%AA%A8%E6%96%87%E7%90%83%E9%A6%86%E4%B8%80%E6%97%A5%E6%B8%B8', '%3Ch1%3E%3Cspan+style%3D%22font-style%3A+italic%3B+font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B+font-size%3A+xx-large%3B+color%3A+rgb%28139%2C+170%2C+74%29%3B%22%3E%E6%9D%A5%E6%88%91%E7%94%B2%E9%AA%A8%E6%96%87%E7%90%83%3Cspan+style%3D%22font-weight%3A+normal%3B%22%3E%E9%A6%86%EF%BC%8C%E6%88%91%E7%BB%99%E4%BD%A0%E8%A1%A8%E6%BC%94%E8%B6%85%E8%BF%9C%E4%B8%89%E5%88%86%EF%BC%81%EF%BC%81%EF%BC%81%EF%BC%81%EF%BC%81%EF%BC%81%EF%BC%81%EF%BC%81%3C%2Fspan%3E%3C%2Fspan%3E%3C%2Fh1%3E%3Cdiv%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F35e086c8-462d-48c6-9eab-09d799b928d7.png%22+style%3D%22max-width%3A100%25%3B%22%3E%3Cspan+style%3D%22font-style%3A+italic%3B+font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B+font-size%3A+xx-large%3B+color%3A+rgb%28139%2C+170%2C+74%29%3B%22%3E%3Cspan+style%3D%22font-weight%3A+normal%3B%22%3E%3Cbr%3E%3C%2Fspan%3E%3C%2Fspan%3E%3C%2Fdiv%3E', 'curry', '26', null, '1', '0', '0', '2020-03-18 17:21:13', '2020-03-18 17:21:13');
INSERT INTO `bbs_invitation` VALUES ('curry15845239387211', '%E6%88%91%E5%BA%93%E9%87%8Cnb', '%3Cp%3E%F0%9F%98%81%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%26nbsp%3B%3C%2Fspan%3E%3C%2Fp%3E%3Cp%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%3Cbr%3E%3C%2Fspan%3E%3C%2Fp%3E', 'curry', '29', null, '1', '0', '0', '2020-03-18 17:32:18', '2020-03-18 17:32:18');
INSERT INTO `bbs_invitation` VALUES ('curry15845240556794', '%E6%88%91%E5%BA%93%E9%87%8Cnb%E7%88%B1%E4%BD%A0%E5%93%9F', '%3Cp%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%26nbsp%3B+%26nbsp%3B+%26nbsp%3B+%26nbsp%3B%F0%9F%98%81%26nbsp%3B+%26nbsp%3B%26nbsp%3B%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%81%3C%2Fspan%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F7d4a6958-b364-45b6-b716-61bcd386c222.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%3C%2Fp%3E', 'curry', '31', null, '1', '0', '0', '2020-03-18 17:34:15', '2020-03-18 17:34:15');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15845188825214', '%E7%B1%B3%E5%88%87%E5%B0%94%E6%95%99%E8%82%B2%E9%83%AD%E8%89%BE%E4%BC%A6', '%3Ch1%3E%3Cspan+style%3D%22font-weight%3A+bold%3B+font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B%22%3E%E7%B1%B3%E5%88%87%E5%B0%94%E6%82%A3%E4%B8%8A%E4%BA%86%E6%96%B0%E5%86%A0%E8%82%BA%E7%82%8E%EF%BC%81%EF%BC%81%EF%BC%81%3C%2Fspan%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2Fef891dc4-a986-4a35-98d8-aeb2ddbf5cec.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%F0%9F%98%81%3C%2Fh1%3E', 'zhangSan', '31', null, '1', '0', '1', '2020-03-18 16:08:02', '2020-03-18 16:08:02');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15845191435860', 'NBA%E5%81%9C%E6%91%86', '%3Ch1%3E%3Cspan+style%3D%22font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B+font-style%3A+italic%3B+text-decoration-line%3A+underline%3B+color%3A+rgb%28139%2C+170%2C+74%29%3B%22%3E%E6%9D%9C%E5%85%B0%E7%89%B9%E6%96%B0%E5%86%A0%E8%82%BA%E7%82%8E%E7%A1%AE%E8%AF%8A%EF%BC%81%EF%BC%81%EF%BC%81%3C%2Fspan%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2Fede67d49-9400-4df0-9341-731c1b23a7a8.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%F0%9F%99%83%3C%2Fh1%3E', 'zhangSan', '30', null, '1', '0', '1', '2020-03-18 16:12:23', '2020-03-18 16:12:23');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15845192562037', '%E4%B8%AD%E5%9B%BD%E8%93%9D%E5%9D%9B%E7%AC%AC%E4%B8%80%E4%BA%BA%E9%83%AD%E8%89%BE%E4%BC%A6', '%3Ch1%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2Fa581650f-fd5b-4349-b580-d6eda411c8e9.jpg%22+style%3D%22max-width%3A100%25%3B%22%3E%3Cbr%3E%3C%2Fh1%3E', 'zhangSan', '29', null, '0', '0', '0', '2020-03-18 16:14:16', '2020-03-18 16:14:16');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15845193241934', '%E5%8B%87%E5%A3%AB%E7%94%B2%E9%AA%A8%E6%96%87%E7%90%83%E9%A6%86%E4%B8%80%E6%97%A5%E6%B8%B8', '%3Ch1%3E%3Cspan+style%3D%22font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B%22%3E%E5%BA%93%E9%87%8C%EF%BC%9A%3Cspan+style%3D%22color%3A+rgb%2877%2C+128%2C+191%29%3B%22%3E%E5%8B%87%E5%A3%AB%E6%80%BB%E5%86%A0%E5%86%9B%EF%BC%81%EF%BC%81%3C%2Fspan%3E%3C%2Fspan%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F737c75af-f86c-44c1-8ad1-be06fc7b44d7.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F50%2Fpcmoren_huaixiao_org.png%22+alt%3D%22%5B%E5%9D%8F%E7%AC%91%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fh1%3E', 'zhangSan', '26', null, '1', '0', '0', '2020-03-18 16:15:24', '2020-03-18 16:15:24');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15845193916692', '%E6%B9%96%E4%BA%BA%E6%80%BB%E5%86%A0%E5%86%9B', '%3Ch1%3E%3Cspan+style%3D%22color%3A+rgb%2870%2C+172%2C+200%29%3B%22%3E%3Cspan+style%3D%22text-decoration-line%3A+underline%3B%22%3E%E6%B1%A4%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Arial%3B%22%3E%3Cspan+style%3D%22text-decoration-line%3A+underline%3B%22%3E%E6%99%AE%E6%A3%AE%E7%88%B8%E7%88%B8%E5%BB%BA%E8%AE%AE%3C%2Fspan%3E%3Cspan+style%3D%22font-style%3A+italic%3B%22%3E%E6%9C%AC%E8%B5%9B%E5%AD%A3%E7%9B%B4%E6%8E%A5%E6%B9%96%E4%BA%BA%E6%80%BB%E5%86%A0%E5%86%9B%EF%BC%81%EF%BC%81%3C%2Fspan%3E%3C%2Fspan%3E%3C%2Fspan%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F808c4bc4-69f9-451b-9c71-7620f4d06946.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%F0%9F%98%B4%3C%2Fh1%3E', 'zhangSan', '30', null, '2', '0', '0', '2020-03-18 16:16:31', '2020-03-18 16:16:31');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15845194564287', '%E8%A9%B9%E5%A7%86%E6%96%AF%E6%B6%88%E7%81%AD%E6%96%B0%E5%86%A0%E8%82%BA%E7%82%8E', '%3Cp%3E%E6%B9%96%E4%BA%BA%E5%90%8D%E5%AE%BF%E8%A9%B9%E5%A7%86%E6%96%AF%E6%B6%88%E7%81%AD%E4%BA%86%E6%96%B0%E5%86%A0%E8%82%BA%E7%82%8E%EF%BC%81%EF%BC%81*%EF%BC%81*%E7%89%9B%E9%80%BC%EF%BC%81%EF%BC%81%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F1d668c96-adfd-4f81-981f-169708124dc9.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%8A%3C%2Fspan%3E%3C%2Fp%3E', 'zhangSan', '29', null, '1', '0', '0', '2020-03-18 16:17:36', '2020-03-18 16:17:36');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15847870149208', '%E5%87%AF%E5%B0%94%E7%89%B9%E4%BA%BA%E6%96%AF%E7%8E%9B%E7%89%B9%E6%84%9F%E6%9F%93%E6%96%B0%E5%86%A0%E8%82%BA%E7%82%8E', '%3Ch1%3E%3Cspan+style%3D%22font-weight%3A+bold%3B+font-size%3A+xx-large%3B+font-style%3A+italic%3B+font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B+color%3A+rgb%2870%2C+172%2C+200%29%3B%22%3E%E5%87%AF%E5%B0%94%E7%89%B9%E4%BA%BA%E6%96%AF%E7%8E%9B%E7%89%B9%E5%9D%9A%E6%8C%81%E4%BD%8F%E5%95%8A%EF%BC%81%EF%BC%81%EF%BC%81%3C%2Fspan%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F3c%2Fpcmoren_wu_org.png%22+alt%3D%22%5B%E6%B1%A1%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fh1%3E', 'zhangSan', '32', null, '1', '0', '0', '2020-03-21 18:36:54', '2020-03-21 18:36:54');
INSERT INTO `bbs_invitation_ans` VALUES ('curry15845232739243zhangSan15847796921058', '%3Cp%3E%E6%88%91%E8%A9%B9%E5%A7%86%E6%96%AF%E6%80%BB%E5%86%A0%E5%86%9B%EF%BC%81%EF%BC%81%E4%BD%A0%E5%BA%93%E9%87%8C%E7%AE%97%E4%B8%AA%E6%AF%9B%EF%BC%81**%EF%BC%81%EF%BC%81%EF%BC%81%3C%2Fp%3E', 'curry15845232739243', 'zhangSan', '2020-03-21 16:34:52');
INSERT INTO `bbs_invitation_ans` VALUES ('curry15845232739243zhangSan15847797237702', '%3Cp%3E%E5%91%B5%E5%91%B5%E5%BA%93%E9%87%8C%3C%2Fp%3E', 'curry15845232739243', 'zhangSan', '2020-03-21 16:35:23');
INSERT INTO `bbs_invitation_ans` VALUES ('curry15845232739243zhangSan15847798107044', '%3Cp%3E%3Cbr%3E%3C%2Fp%3E', 'curry15845232739243', 'zhangSan', '2020-03-21 16:36:50');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15845194564287curry15847790500460', '%3Cp%3E%E8%A9%B9%E5%A7%86%E6%96%AF%E7%89%9B%E9%80%BC%3C%2Fp%3E', 'zhangSan15845194564287', 'curry', '2020-03-21 16:24:10');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15845194564287curry15847792138161', '%3Cp%3E%E8%A9%B9%E5%A7%86%E6%96%AF%E6%98%AF%E6%88%91%E7%9A%84%E5%A5%BD%E6%95%8C%E4%BA%BA%EF%BC%81%EF%BC%81%3C%2Fp%3E', 'zhangSan15845194564287', 'curry', '2020-03-21 16:26:53');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15845194564287curry15847794504325', '%3Cp%3E%E5%93%88%E5%93%88%E5%93%88%E5%93%88%3C%2Fp%3E', 'zhangSan15845194564287', 'curry', '2020-03-21 16:30:50');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15845194564287curry15847823274602', '%3Cp%3E%E5%8E%89%E5%AE%B3%E7%9A%84%E8%A9%B9%E5%A7%86%E6%96%AF%EF%BC%81%EF%BC%81%E5%8A%A0%E6%B2%B9%3C%2Fp%3E', 'zhangSan15845194564287', 'curry', '2020-03-21 17:18:47');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15845194564287curry15847849490075', '%3Cp%3E%E6%9D%A5%E8%87%AA%E5%BA%93%E9%87%8C%E5%AF%B9%E8%A9%B9%E5%A7%86%E6%96%AF%E7%9A%84%E5%85%B3%E5%BF%83%3C%2Fp%3E', 'zhangSan15845194564287', 'curry', '2020-03-21 18:02:29');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15845194564287zhangSan15847790320230', '%3Cp%3E%E8%A9%B9%E5%A7%86%E6%96%AF%E7%89%9B%E9%80%BC%3C%2Fp%3E', 'zhangSan15845194564287', 'zhangSan', '2020-03-21 16:23:52');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15845194564287zhangSan15847795026405', '%3Cp%3E%E6%88%91%E5%B0%8F%E4%B8%89%E5%AD%90%E7%A5%9D%E7%A6%8F%E4%BD%A0%3C%2Fp%3E', 'zhangSan15845194564287', 'zhangSan', '2020-03-21 16:31:42');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15845194564287zhangSan15847799277608', '%3Cp%3E%E6%B9%96%E4%BA%BA%E6%80%BB%E5%86%A0%E5%86%9B%EF%BC%8C%E8%A9%B9%E5%A7%86%E6%96%AF%E5%8A%A0%E6%B2%B9%3C%2Fp%3E', 'zhangSan15845194564287', 'zhangSan', '2020-03-21 16:38:47');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15845194564287zhangSan15847822846204', '%3Cp%3ENBA%E9%83%BD%E5%81%9C%E6%91%86%E4%BA%86%26nbsp%3B+%26nbsp%3B%E6%B9%96%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%80%BB%E5%86%A0%E5%86%9B%E5%90%A7%EF%BC%81%EF%BC%81%EF%BC%81*%3C%2Fp%3E%3Cp%3E%F0%9F%98%85%3Cbr%3E%3C%2Fp%3E', 'zhangSan15845194564287', 'zhangSan', '2020-03-21 17:18:04');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15847870149208zhangSan15847871418040', '%3Cp%3E%3Cspan+style%3D%22font-weight%3A+bold%3B+font-size%3A+xx-large%3B+font-style%3A+italic%3B+font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B%22%3E%E5%8A%A0%E6%B2%B9%EF%BC%81%EF%BC%81%E5%A5%A5%E5%88%A9%E7%BB%99%F0%9F%98%81%3C%2Fspan%3E%3C%2Fp%3E', 'zhangSan15847870149208', 'zhangSan', '2020-03-21 18:39:01');
INSERT INTO `bbs_invitation_ans` VALUES ('zhangSan15847870149208zhangSan15847872128245', '%3Cp%3E%3Cbr%3E%3C%2Fp%3E', 'zhangSan15847870149208', 'zhangSan', '2020-03-21 18:40:12');
INSERT INTO `bbs_level` VALUES ('1', '初级会员');
INSERT INTO `bbs_level` VALUES ('2', '中级会员');
INSERT INTO `bbs_level` VALUES ('3', '高级会员');
INSERT INTO `bbs_level` VALUES ('4', '系统管理员');
INSERT INTO `bbs_plate` VALUES ('26', '旅游', '泰国、新加坡和印度尼西亚', '0');
INSERT INTO `bbs_plate` VALUES ('29', '新闻', '国内外新闻', '0');
INSERT INTO `bbs_plate` VALUES ('30', '体育和运动', '非常多的运动', '0');
INSERT INTO `bbs_plate` VALUES ('31', '教育', '学习使我快乐！我要努力学习~~', '0');
INSERT INTO `bbs_plate` VALUES ('32', 'NBA2KOL2', '篮球游戏版块', '0');
INSERT INTO `bbs_user` VALUES ('aaa', '202cb962ac59075b964b07152d234b70', '小六', '221@qq.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-10', '1');
INSERT INTO `bbs_user` VALUES ('abc', '202cb962ac59075b964b07152d234b70', 'aaa', 'das@11.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
INSERT INTO `bbs_user` VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', '系统管理员', 'xxx@qq.com', '男', 'xxx.jpg', '0', '4', null, null, null, null);
INSERT INTO `bbs_user` VALUES ('ccvc', '202cb962ac59075b964b07152d234b70', 'vcv', 'dasfdas@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
INSERT INTO `bbs_user` VALUES ('curry', '76d80224611fc919a5d54f0ff9fba446', '库里忘了爱', 'curry@110.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-18', '1');
INSERT INTO `bbs_user` VALUES ('cvcxvcv', 'ba248c985ace94863880921d8900c53f', 'dsad', '121d@qq.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
INSERT INTO `bbs_user` VALUES ('erwa', '47bce5c74f589f4867dbd57e9ca9f808', '小娃娃', 'fsdf@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
INSERT INTO `bbs_user` VALUES ('liSi', '202cb962ac59075b964b07152d234b70', '李四', 'dasd@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('mbk', '202cb962ac59075b964b07152d234b70', 'dsad', '121@183.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('mnm', '698d51a19d8a121ce581499d7b701668', '111', '1111@111.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('nnn', 'a1931ec126bbad3fa7a3fc64209fd921', 'nnn', 'dada@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
INSERT INTO `bbs_user` VALUES ('wangWu', 'b7f6593421d9f21bdd5caef01b24f5c8', '王五', '76gf@11.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('xiaoEr', '202cb962ac59075b964b07152d234b70', '小二', 'fgdg@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('xxxx', '202cb962ac59075b964b07152d234b70', 'xxxx', 'dsaf@qq.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '0');
INSERT INTO `bbs_user` VALUES ('zhangSan', '202cb962ac59075b964b07152d234b70', '小三子', '111@qq.com', '女', 'xxx.jpg', '0', '1', null, null, '2020-03-10', '1');
