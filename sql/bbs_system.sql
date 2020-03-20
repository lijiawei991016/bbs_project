/*
MySQL Data Transfer
Source Host: localhost
Source Database: bbs_system
Target Host: localhost
Target Database: bbs_system
Date: 2020/3/20 9:33:56
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
  `invitationMessage` mediumtext NOT NULL,
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
INSERT INTO `bbs_invitation` VALUES ('abc15844344272176', '%E9%9A%8F%E4%BE%BF%E5%8F%91%E7%9A%84', '%3Cp%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F3c%2Fpcmoren_wu_org.png%22+alt%3D%22%5B%E6%B1%A1%5D%22+data-w-e%3D%221%22%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F3c%2Fpcmoren_wu_org.png%22+alt%3D%22%5B%E6%B1%A1%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F3c%2Fpcmoren_wu_org.png%22+alt%3D%22%5B%E6%B1%A1%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3Cbr%3E%3C%2Fp%3E', 'abc', '30', null, '1', '0', '0', '2020-03-17 16:40:27', '2020-03-17 16:40:27');
INSERT INTO `bbs_invitation` VALUES ('abc15844344470261', '%E9%9A%8F%E4%BE%BF%E5%8F%91%E7%9A%842', '%3Cp%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F1a963d86-e563-4384-9130-c0574bba6c04.png%22+style%3D%22max-width%3A100%25%3B%22%3E%3Cbr%3E%3C%2Fp%3E', 'abc', '31', null, '1', '0', '0', '2020-03-17 16:40:47', '2020-03-17 16:40:47');
INSERT INTO `bbs_invitation` VALUES ('abc15844344715114', '%E9%9A%8F%E4%BE%BF%E5%8F%91%E7%9A%843', '%3Cp%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft35%2Fstyle%2Fimages%2Fcommon%2Fface%2Fext%2Fnormal%2F60%2Fhorse2_thumb.gif%22+alt%3D%22%5B%E7%A5%9E%E9%A9%AC%5D%22+data-w-e%3D%221%22%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft35%2Fstyle%2Fimages%2Fcommon%2Fface%2Fext%2Fnormal%2F60%2Fhorse2_thumb.gif%22+alt%3D%22%5B%E7%A5%9E%E9%A9%AC%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft35%2Fstyle%2Fimages%2Fcommon%2Fface%2Fext%2Fnormal%2F60%2Fhorse2_thumb.gif%22+alt%3D%22%5B%E7%A5%9E%E9%A9%AC%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3Cbr%3E%3C%2Fp%3E', 'abc', '29', null, '1', '0', '0', '2020-03-17 16:41:12', '2020-03-17 16:41:12');
INSERT INTO `bbs_invitation` VALUES ('xxxx15844338220207', '%E7%89%B9%E5%A4%A7%E5%96%9C%E8%AE%AF', '%3Ch1%3E%3Cspan+style%3D%22font-weight%3A+bold%3B+color%3A+rgb%28194%2C+79%2C+74%29%3B%22%3E%E6%88%91%E8%B6%85%E7%BA%A7%E5%96%9C%E6%AC%A2%E5%90%83%E6%B0%B4%E6%9E%9C%EF%BC%81%EF%BC%81%EF%BC%81%3C%2Fspan%3E%3C%2Fh1%3E%3Cdiv%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F98c124b5-b47b-4031-bdc7-827a85f59262.png%22+style%3D%22max-width%3A100%25%3B%22%3E%3Cspan+style%3D%22font-weight%3A+bold%3B+color%3A+rgb%28194%2C+79%2C+74%29%3B%22%3E%3Cbr%3E%3C%2Fspan%3E%3C%2Fdiv%3E%3Ch1%3E%3Cspan+style%3D%22font-weight%3A+bold%3B+color%3A+rgb%2870%2C+172%2C+200%29%3B%22%3E%E5%93%88%E5%93%88%E5%93%88%E5%93%88%E5%93%88%E5%93%88%E5%93%88%E5%93%88%E5%93%88%3C%2Fspan%3E%3C%2Fh1%3E%3Cdiv%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F3c20d233-7150-4aff-85e6-4578f9b369e1.png%22+style%3D%22max-width%3A100%25%3B%22%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F916dad36-127b-4965-9c8d-fe9de5d04e83.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2Fbbafa843-eb31-4bcc-9d34-01c1bea6c184.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2Fa4e4c3bb-92c0-44dc-bedb-3743f0556c40.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F08a69859-989a-4104-840e-213b0fd7d4b1.png%22+style%3D%22font-size%3A+12px%3B+max-width%3A+100%25%3B%22%3E%3Cspan+style%3D%22font-weight%3A+bold%3B+color%3A+rgb%2870%2C+172%2C+200%29%3B%22%3E%3Cbr%3E%3C%2Fspan%3E%3C%2Fdiv%3E%3Cp%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F3c%2Fpcmoren_wu_org.png%22+alt%3D%22%5B%E6%B1%A1%5D%22+data-w-e%3D%221%22%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F40%2Fpcmoren_tian_org.png%22+alt%3D%22%5B%E8%88%94%E5%B1%8F%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%84%3C%2Fspan%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft35%2Fstyle%2Fimages%2Fcommon%2Fface%2Fext%2Fnormal%2F7a%2Fshenshou_thumb.gif%22+alt%3D%22%5B%E8%8D%89%E6%B3%A5%E9%A9%AC%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3Cbr%3E%3C%2Fp%3E', 'xxxx', '29', null, '1', '0', '0', '2020-03-17 16:30:22', '2020-03-17 16:30:22');
INSERT INTO `bbs_invitation` VALUES ('xxxx15844339047050', '%E5%98%BF%E5%98%BF%E5%95%8A', '%3Cp%3E%E4%B8%BA%E4%BA%86%E4%B8%8D%E9%80%9A%E8%BF%87%E5%AE%A1%E6%A0%B8%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F40%2Fpcmoren_tian_org.png%22+alt%3D%22%5B%E8%88%94%E5%B1%8F%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fp%3E', 'xxxx', '29', null, '0', '0', '0', '2020-03-17 16:31:45', '2020-03-17 16:31:45');
INSERT INTO `bbs_invitation` VALUES ('xxxx15844350093858', '%E9%9A%8F%E4%BE%BF%E5%8F%91%E7%9A%844', '%3Cp%3E%E5%91%B5%E5%91%B5%E5%91%B5%3C%2Fp%3E', 'xxxx', '31', null, '1', '0', '0', '2020-03-17 16:50:09', '2020-03-17 16:50:09');
INSERT INTO `bbs_invitation` VALUES ('xxxx15844350198324', '%E9%9A%8F%E4%BE%BF%E5%8F%91%E7%9A%845', '%3Cp%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F40%2Fpcmoren_tian_org.png%22+alt%3D%22%5B%E8%88%94%E5%B1%8F%5D%22+data-w-e%3D%221%22%3E%3Cbr%3E%3C%2Fp%3E', 'xxxx', '31', null, '1', '0', '0', '2020-03-17 16:50:20', '2020-03-17 16:50:20');
INSERT INTO `bbs_invitation` VALUES ('xxxx15844350363282', '%E6%97%85%E6%B8%B8%E5%8C%BA', '%3Cp%3E%E8%BF%99%E9%87%8C%E6%9C%89%E5%BE%88%E5%A4%9A%E6%97%85%E6%B8%B8%E7%9A%84%E5%9C%B0%E6%96%B9%EF%BC%81%EF%BC%81%3C%2Fp%3E', 'xxxx', '26', null, '1', '0', '0', '2020-03-17 16:50:36', '2020-03-17 16:50:36');
INSERT INTO `bbs_invitation` VALUES ('xxxx15844350470820', '%E7%BB%BF%E5%95%8A%E5%8F%8C%E6%96%B9%E7%9A%84', '%3Cp%3E%E5%A4%A7%E8%8B%8F%E6%89%93%E9%98%BF%E5%BE%B7%E9%98%BF%E6%96%AF%E9%A1%BF+%E5%A4%A7%E6%92%92%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F50%2Fpcmoren_huaixiao_org.png%22+alt%3D%22%5B%E5%9D%8F%E7%AC%91%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fp%3E', 'xxxx', '26', null, '1', '0', '0', '2020-03-17 16:50:47', '2020-03-17 16:50:47');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15844092899023', '%E6%97%85%E6%B8%B8%E7%9C%9F%E5%A5%BD', '%3Cp%3E%E6%88%91%E8%B6%85%E7%BA%A7%E5%96%9C%E6%AC%A2%E6%97%85%E6%B8%B8%EF%BC%81%3C%2Fp%3E%3Cp%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F40%2Fpcmoren_tian_org.png%22+alt%3D%22%5B%E8%88%94%E5%B1%8F%5D%22+data-w-e%3D%221%22%3E%3Cbr%3E%3C%2Fp%3E%3Cp%3E%F0%9F%98%84%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%84%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%84%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%84%3C%2Fspan%3E%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%F0%9F%98%84%3C%2Fspan%3E%3C%2Fp%3E', 'zhangSan', '26', null, '1', '0', '0', '2020-03-17 09:41:30', '2020-03-17 09:41:30');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15844095558155', '%E8%A6%81%E5%A4%A9%E6%99%B4%E4%BA%86', '%3Cp%3E%E8%A6%81%E5%87%BA%E5%A4%A7%E5%A4%AA%E9%98%B3%E4%BA%86%EF%BC%81%3C%2Fp%3E%3Cp%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F2fe2b8dc-f5c5-4ac9-9cbb-17e4fb059e5a.png%22+style%3D%22max-width%3A100%25%3B%22%3E%3Cbr%3E%3C%2Fp%3E%3Cp%3E%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F40%2Fpcmoren_tian_org.png%22+alt%3D%22%5B%E8%88%94%E5%B1%8F%5D%22+data-w-e%3D%221%22%3E%3Cbr%3E%3C%2Fp%3E', 'zhangSan', '29', null, '1', '0', '0', '2020-03-17 09:45:56', '2020-03-17 09:45:56');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15844096609954', '%E6%88%91%E8%B6%85%E7%BA%A7%E5%96%9C%E6%AC%A2%E6%97%85%E6%B8%B8', '%3Ch1%3E%3Cspan+style%3D%22font-weight%3A+bold%3B+color%3A+rgb%28194%2C+79%2C+74%29%3B+font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B%22%3E%E6%97%85%E6%B8%B8%E6%9D%A5%E8%A5%BF%E6%B9%96%E7%8E%A9%E5%90%A7%EF%BC%81%3C%2Fspan%3E%3C%2Fh1%3E%3Cdiv%3E%3Cspan+style%3D%22font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B+font-size%3A+x-large%3B+background-color%3A+rgb%28238%2C+236%2C+224%29%3B+color%3A+rgb%2870%2C+172%2C+200%29%3B%22%3E%E8%BF%99%E9%87%8C%E8%B6%85%E7%BA%A7%E5%A5%BD%E7%8E%A9%EF%BC%81%3C%2Fspan%3E%3C%2Fdiv%3E%3Cdiv%3E%3Cimg+src%3D%22%2Fbbs_project%2Fstatic%2Ffile%2F71363492-3f0e-4e7e-b2ec-bd365107b50a.gif%22+style%3D%22max-width%3A100%25%3B%22%3E%3Cspan+style%3D%22font-family%3A+%E5%8D%8E%E6%96%87%E6%96%B0%E9%AD%8F%3B+font-size%3A+x-large%3B+background-color%3A+rgb%28238%2C+236%2C+224%29%3B+color%3A+rgb%2870%2C+172%2C+200%29%3B%22%3E%3Cbr%3E%3C%2Fspan%3E%3C%2Fdiv%3E', 'zhangSan', '26', null, '1', '0', '0', '2020-03-17 09:47:41', '2020-03-17 09:47:41');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15844097017713', '%E5%86%A0%E7%8A%B6%E7%97%85%E6%AF%92', '%3Cp%3E%E4%BB%80%E4%B9%88%E6%97%B6%E5%80%99%E8%83%BD%E7%BB%93%E6%9D%9F%E5%95%8A%EF%BC%81%3Cimg+src%3D%22http%3A%2F%2Fimg.t.sinajs.cn%2Ft4%2Fappstyle%2Fexpression%2Fext%2Fnormal%2F3c%2Fpcmoren_wu_org.png%22+alt%3D%22%5B%E6%B1%A1%5D%22+data-w-e%3D%221%22+style%3D%22font-size%3A+12px%3B%22%3E%3C%2Fp%3E', 'zhangSan', '29', null, '2', '0', '0', '2020-03-17 09:48:22', '2020-03-17 09:48:22');
INSERT INTO `bbs_invitation` VALUES ('zhangSan15844097258842', '%E6%88%90%E9%83%BD%E6%96%B0%E9%97%BB', '%3Cp%3E%E6%88%90%E9%83%BD%E6%9C%80%E8%BF%91%E5%8F%88%E5%BC%80%E5%A7%8B%E7%83%AD%E9%97%B9%E8%B5%B7%E6%9D%A5%E4%BA%86%EF%BC%81%EF%BC%81***%EF%BC%81%3C%2Fp%3E', 'zhangSan', '29', null, '2', '0', '0', '2020-03-17 09:48:46', '2020-03-17 09:48:46');
INSERT INTO `bbs_level` VALUES ('1', '初级会员');
INSERT INTO `bbs_level` VALUES ('2', '中级会员');
INSERT INTO `bbs_level` VALUES ('3', '高级会员');
INSERT INTO `bbs_level` VALUES ('4', '系统管理员');
INSERT INTO `bbs_plate` VALUES ('26', '旅游', '泰国、新加坡和印度尼西亚', '0');
INSERT INTO `bbs_plate` VALUES ('29', '新闻', '国内外新闻', '0');
INSERT INTO `bbs_plate` VALUES ('30', '体育和运动', '非常多的运动', '0');
INSERT INTO `bbs_plate` VALUES ('31', '教育', '学习使我快乐！我要努力学习~~', '0');
INSERT INTO `bbs_user` VALUES ('aaa', '202cb962ac59075b964b07152d234b70', '小六', '221@qq.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-10', '1');
INSERT INTO `bbs_user` VALUES ('abc', '202cb962ac59075b964b07152d234b70', 'aaa', 'das@11.com', '男', 'xxx.jpg', '0', '1', null, null, '2020-03-16', '1');
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
