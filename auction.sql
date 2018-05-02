/*
Navicat MySQL Data Transfer

Source Server         : 远程服务器
Source Server Version : 50720
Source Host           : 115.159.151.134:3306
Source Database       : auction

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-02 21:36:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `org_ware`
-- ----------------------------
DROP TABLE IF EXISTS `org_ware`;
CREATE TABLE `org_ware` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `create` varchar(50) DEFAULT NULL COMMENT '商品所属人（uuid）',
  `identifier` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `commodity` varchar(50) DEFAULT NULL COMMENT '名称',
  `category` int(3) DEFAULT '0' COMMENT '类别',
  `image` varchar(50) DEFAULT NULL COMMENT '图片',
  `intro` varchar(200) DEFAULT NULL COMMENT '物品介绍',
  `price` float(50,2) DEFAULT '0.00' COMMENT '起始价格',
  `transaction` float(50,2) DEFAULT '0.00' COMMENT '成交价',
  `state` int(1) DEFAULT '1' COMMENT '状态(0 未售出　１已售出)',
  `buyer_buff` longtext,
  `buy_mobile` varchar(11) DEFAULT NULL COMMENT '购买者手机号',
  `buy_uuid` varchar(50) DEFAULT NULL COMMENT '成交方uuid',
  `endtime` datetime DEFAULT NULL COMMENT '竞价截止时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of org_ware
-- ----------------------------
INSERT INTO `org_ware` VALUES ('21', '85491008df7848b68d2623940f999f6d', '2018-04-09 22:13:13', '3532a5f9cc1a4adb9b505cd2ab35b8e2', 'No20180409221313472', 'woshishei', '1', null, null, '100.00', '171.04', '1', null, null, '95743840e5e64252934aecac35de826f', '2018-04-10 00:00:00');
INSERT INTO `org_ware` VALUES ('22', '8f89a9061bb94baf999a05319648b529', '2018-04-10 00:10:48', '6f7e303c364c43a682c9d9d5773ea5cb', 'No20180410001048001', '清明上河图', '2', null, null, '1390.00', '1459.50', '1', null, null, '6f7e303c364c43a682c9d9d5773ea5cb', '2018-04-10 00:00:00');
INSERT INTO `org_ware` VALUES ('23', '1b6f465e867f4de4a2812c04a917f4d3', '2018-04-10 13:40:44', '6f7e303c364c43a682c9d9d5773ea5cb', 'No20180410134043572', '步辇图', '3', 'images/timg-1.jpg', null, '10000000.00', '10500000.00', '1', null, null, '6f7e303c364c43a682c9d9d5773ea5cb', '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('24', '1355fc0c0b4e4c6385cbec8ed62c3c33', '2018-04-10 17:14:14', '6f7e303c364c43a682c9d9d5773ea5cb', 'No20180410171414450', '博弈论', '2', 'images/timg.jpg', null, '100.00', '105.00', '1', null, null, '312eb2e838fe40198cb4625837f8fda2', '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('25', '5d9c3e0d6b704c65abfa5286693440b3', '2018-04-10 17:15:39', '6f7e303c364c43a682c9d9d5773ea5cb', 'No20180410171538720', '辩证法', '1', 'images/timg-1.jpg', null, '900.00', '900.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('26', '00d7944e2df6478591095eba21a6488e', '2018-04-10 17:16:03', '6f7e303c364c43a682c9d9d5773ea5cb', 'No20180410171602688', '唯物论', '2', null, null, '700.00', '771.75', '1', null, null, '0ca663a4de1a4b5899e8d865bb4cdd51', '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('27', '3289642a7f1d4c43bdc44b97f1a7a159', '2018-04-10 17:27:58', '2c087041ba1d493b87c8ec2681027598', 'No20180410172757542', '最后的战役', '3', 'images/timg.txt', null, '5.00', '6.08', '1', null, null, '95743840e5e64252934aecac35de826f', '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('28', 'd4bcd8828cc04d4aa1deeb1724d84571', '2018-04-10 17:28:37', '2c087041ba1d493b87c8ec2681027598', 'No20180410172837479', '泰坦尼克号', '2', 'images/timg-1.jpg', null, '90.00', '94.50', '1', null, null, '95743840e5e64252934aecac35de826f', '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('29', 'dead4bcd3e964164895510aa7b6cd8d7', '2018-04-10 17:43:03', '2c087041ba1d493b87c8ec2681027598', 'No20180410174302975', '阳光与苦难之间', '3', null, null, '36.20', '36.20', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('30', 'f4a60e7be89c45429ac034ac6e6da575', '2018-04-10 17:43:17', '2c087041ba1d493b87c8ec2681027598', 'No20180410174316699', '123', '2', null, null, '123.00', '123.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('31', '240adfd684d4477e9dc19f84695e3c47', '2018-04-10 21:00:47', '95743840e5e64252934aecac35de826f', 'No20180410210046875', '1', '1', '222', null, '1.00', '1.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('32', '28367b57180b4986bcbe08f918b3dc64', '2018-04-10 21:01:30', '95743840e5e64252934aecac35de826f', 'No20180410210130059', '1', '1', '222', null, '1.00', '1.05', '1', null, null, '4dd25d2c011f45d7ae3274ee2968662f', '2018-04-11 21:01:30');
INSERT INTO `org_ware` VALUES ('33', 'b64e85a4796f43728c71690cc837c346', '2018-04-10 21:13:26', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410211326438', '两瓶', '1', null, null, '50.00', '50.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('34', 'c7071ec154fd4500b2ce91b218ffc0a5', '2018-04-10 21:14:26', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410211425675', '手机', '2', 'images/Screenshot_2018-04-01-09-33-20-247_探探.png', null, '100.00', '100.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('35', 'bdff89de6e3a419a8ae3bbfeb5f630c8', '2018-04-10 21:16:11', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410211611432', '看看', '2', null, null, '48.00', '48.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('36', 'f079829e328146f88d5db500ffb1bf00', '2018-04-10 21:19:20', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410211920499', 'woshishei', '1', null, null, '100.00', '100.00', '1', null, null, null, '2018-04-11 21:19:20');
INSERT INTO `org_ware` VALUES ('37', '100ff97f06aa483198339ceb62b4376d', '2018-04-10 21:20:50', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410212049689', '笔记本', '0', null, null, '100.00', '100.00', '1', null, null, null, '2018-04-11 21:20:49');
INSERT INTO `org_ware` VALUES ('38', '204d690a1c1546cd88278247c2f3dccc', '2018-04-10 21:22:57', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410212256640', '最新的', '2', null, null, '125.00', '125.00', '1', null, null, null, '2018-04-11 21:22:56');
INSERT INTO `org_ware` VALUES ('39', '3899adce781d48748964eaf075623a6e', '2018-04-10 21:24:13', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410212412593', '123', '0', 'images/Screenshot_2018-04-10-19-14-19-076_携程旅行.png', null, '100.00', '100.00', '1', null, null, null, '2018-04-11 21:24:12');
INSERT INTO `org_ware` VALUES ('40', '3e2f3e24594940ff9e8c0e4f7114be82', '2018-04-10 21:32:49', '95743840e5e64252934aecac35de826f', 'No20180410213249191', 'JAVA从入门到放弃', '3', 'images/58354c729a1aa37a29bd69bd.jpg', null, '1.00', '1.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('41', 'ea69b42d3a524d20a968ca60304322b3', '2018-04-10 21:54:04', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410215404151', 'woshishei', '0', null, null, '123.00', '123.00', '1', null, null, null, '2018-04-11 21:54:04');
INSERT INTO `org_ware` VALUES ('42', 'b5b2a331fab64b81afc6f5c22750e8bb', '2018-04-10 21:57:09', '95743840e5e64252934aecac35de826f', 'No20180410215708533', '1', '1', '222', null, '1.00', '1.00', '1', null, null, null, '2018-04-11 21:57:08');
INSERT INTO `org_ware` VALUES ('43', 'f21bf4a6eb574faa8b70abaa16b0d943', '2018-04-10 22:03:43', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410220342919', '你看', '1', null, null, '300.00', '300.00', '1', null, null, null, '2018-04-11 22:03:42');
INSERT INTO `org_ware` VALUES ('44', '5b875064e4694d31bce93949d6144ab2', '2018-04-10 22:04:42', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410220441960', '咯关键', '0', 'images/Screenshot_2018-04-09-03-29-54-998_小米AI.png', null, '200.00', '200.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('45', '1705130856094c9eb05efbadea58ac62', '2018-04-10 22:05:15', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410220514699', 'bug', '0', null, null, '123456.00', '123456.00', '1', null, null, null, '2018-04-11 22:05:14');
INSERT INTO `org_ware` VALUES ('46', '830df59f777246358b42557dbf8bff31', '2018-04-10 22:12:00', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410221200082', 'nihso', '0', 'images/Screenshot_2018-04-09-03-29-11-425_小米AI.png', null, '1258.00', '1258.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('47', '9551b3584ef24b78ad504cbe601a5330', '2018-04-10 22:12:20', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410221219662', '568', '3', 'images/Screenshot_2018-04-09-03-30-01-281_小米AI.png', null, '1245.00', '1307.25', '1', null, null, '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-11 22:12:19');
INSERT INTO `org_ware` VALUES ('48', '1040302f10a743b0890d8c67c51dd1c5', '2018-04-10 23:24:21', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410232420575', 'jdjdj', '2', null, null, '50.00', '52.50', '1', null, null, '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-11 23:24:20');
INSERT INTO `org_ware` VALUES ('49', '1b07eec0eed24510b012a3e78a243811', '2018-04-10 23:24:33', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410232433430', 'jdjjd', '3', null, null, '800.00', '840.00', '1', null, null, '5461a8ed5173495eb7079d480a763002', '2018-04-11 23:24:33');
INSERT INTO `org_ware` VALUES ('50', '9fb88a08f96d445799b97a6c05ffc108', '2018-04-10 23:24:52', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410232452406', '蒙娜丽莎', '2', null, null, '600.00', '600.00', '1', null, null, null, '2018-04-11 23:24:52');
INSERT INTO `org_ware` VALUES ('51', '40cdf1c8beba405a814c944d9508f35b', '2018-04-10 23:25:40', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410232540128', '电脑', '0', null, null, '8000.00', '8400.00', '1', null, null, '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-11 23:25:40');
INSERT INTO `org_ware` VALUES ('52', '85915b62fc5649e38b8aabc4c60c42fe', '2018-04-10 23:35:38', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410233537803', '咯关键', '0', 'images/Screenshot_2018-04-09-03-29-40-212_小米AI.png', null, '800.00', '800.00', '1', null, null, null, '2018-04-11 23:35:37');
INSERT INTO `org_ware` VALUES ('53', 'df8d99ba4345449c9651a7dbd1d5b8df', '2018-04-10 23:48:20', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410234820459', '电脑么', '0', 'images/Screenshot_2018-04-09-03-30-28-482_小米AI.png', null, '8000.00', '8000.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('54', '202ca098a05748f6af6ce0ca6452b528', '2018-04-10 23:48:37', '072ea41d8b9f4557aa0ad43286c6ae7f', 'No20180410234836711', '电脑么', '0', 'images/Screenshot_2018-04-09-03-30-28-482_小米AI.png', null, '8000.00', '8000.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('55', '2a0337a2b3ac47daa0f9bb669e367adc', '2018-04-10 23:49:00', '95743840e5e64252934aecac35de826f', 'No20180410234900093', '啤酒瓶', '0', 'images/58354c729a1aa37a29bd69bd.jpg', null, '100.00', '110.25', '1', null, null, '95743840e5e64252934aecac35de826f', '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('56', '90ad29dce3984bdf95b279e4d7284fcc', '2018-04-11 00:15:23', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180411001522976', 'php', '0', 'images/Screenshot_20180411-000349.jpg', null, '25.89', '25.89', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('57', 'd8a9569b153b4aad8f7ad453bf6b157b', '2018-04-11 00:16:03', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180411001603404', '睡觉', '1', 'images/Screenshot_20180411-000349.jpg', null, '122.00', '122.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('58', 'ab4917170f35408e9862a39e9f5e4ccf', '2018-04-11 00:17:27', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180411001726824', 'php', '0', 'images/Screenshot_20180411-000349.jpg', null, '120.00', '126.00', '1', null, null, '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-12 00:17:26');
INSERT INTO `org_ware` VALUES ('59', '190312eb77bc4e28936fe6dc115d1652', '2018-04-11 00:20:56', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180411002056185', '徘徊', '0', 'images/Screenshot_20180411-000349.jpg', null, '10.00', '10.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('60', '27e738e11aba4908a7e508a6831b94a6', '2018-04-11 00:23:10', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180411002309832', '冬天24时', '0', 'images/Screenshot_20180411-000349.jpg', null, '13.00', '13.00', '1', null, null, null, '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('61', '8fa919fba0af4cf7835d40b0391854c4', '2018-04-11 01:18:03', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180411011803483', '更好', '0', 'images/Screenshot_20180411-000349.jpg', null, '12.00', '12.60', '1', null, null, '4dd25d2c011f45d7ae3274ee2968662f', '2018-04-11 00:00:00');
INSERT INTO `org_ware` VALUES ('62', '671d6ff712e74682b43276a2d0ace4b8', '2018-04-11 09:28:38', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180411092837508', 'test', '0', 'images/Screenshot_20180410-175317.jpg', null, '100.00', '140.71', '1', null, null, 'ed69dc83cb4d433a80a05718a3ebdc75', '2018-04-12 00:00:00');
INSERT INTO `org_ware` VALUES ('63', 'fc76fd61f2fc4129af9e7bc2ce80994c', '2018-04-11 11:02:27', '5461a8ed5173495eb7079d480a763002', 'No20180411110226965', '测试', '3', null, null, '100.00', '105.00', '1', null, null, 'ed69dc83cb4d433a80a05718a3ebdc75', '2018-04-12 00:00:00');
INSERT INTO `org_ware` VALUES ('64', 'f0f2fd38a3bc4b589f80d71247ad352d', '2018-04-12 00:36:28', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180412003628494', '食尸鬼', '0', 'images/5a893cdde7bce735ab45cc86.jpg', null, '10.00', '10.00', '1', null, null, null, '2018-04-12 00:00:00');
INSERT INTO `org_ware` VALUES ('65', '8af6c5b51ca747e1b65b3e39112460ad', '2018-04-12 08:53:20', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180412085319692', '今日头条', '0', 'images/90000002_thumb.jpg', null, '1.00', '1.41', '1', null, null, 'dbac6afd564c45159a25647c5769d581', '2018-04-13 08:53:19');
INSERT INTO `org_ware` VALUES ('66', '497aee20718b4f16a1c0c4a64aba346b', '2018-04-12 16:20:02', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180412162001631', '暂无', '0', 'images/5a893cdde7bce735ab45cc86.jpg', null, '1.00', '1.00', '1', null, null, null, '2018-04-13 00:00:00');
INSERT INTO `org_ware` VALUES ('67', '3a725f78845943d3a39faedd71b143a5', '2018-04-12 19:29:04', '750046fd28c94cd199e984c7aed3cef9', 'No20180412192903642', '手表', '0', null, null, '2.00', '2.10', '1', null, null, 'dbac6afd564c45159a25647c5769d581', '2018-04-13 00:00:00');
INSERT INTO `org_ware` VALUES ('68', '2b36d529d91d4c4288556b54a35dce46', '2018-04-12 19:29:54', '750046fd28c94cd199e984c7aed3cef9', 'No20180412192953985', '手机', '0', null, null, '3.00', '4.02', '1', null, null, 'be802fce34354d0b965cdda51a1016db', '2018-04-13 19:29:53');
INSERT INTO `org_ware` VALUES ('69', 'f15f391e0cb44e399e8f05c3f3b54b9b', '2018-04-14 18:02:18', 'b4366834ca6d49dc9dde0728371c2ff4', 'No20180414180217782', '111', '0', 'images/text.jpg', null, '1.00', '1.05', '1', null, null, '4dd25d2c011f45d7ae3274ee2968662f', '2018-04-15 00:00:00');
INSERT INTO `org_ware` VALUES ('70', '886bd0fa9ac04fb5b3d52196279f53a9', '2018-04-14 19:51:43', 'b4366834ca6d49dc9dde0728371c2ff4', 'No20180414195142882', '222', '1', 'images/text.jpg', null, '2.00', '2.56', '1', null, null, 'b4366834ca6d49dc9dde0728371c2ff4', '2018-04-15 19:51:42');
INSERT INTO `org_ware` VALUES ('71', '1b773b4ab3a943c08649dff5719863ef', '2018-04-14 23:01:48', 'b4366834ca6d49dc9dde0728371c2ff4', 'No20180414230148121', '333', '2', 'images/OnePlus 2017 春季校招真题-推文1.jpg', null, '3.00', '3.00', '1', null, null, null, '2018-04-15 00:00:00');
INSERT INTO `org_ware` VALUES ('72', '5f108763cd9246e483b8ecc7323e92f7', '2018-04-14 23:06:08', 'b4366834ca6d49dc9dde0728371c2ff4', 'No20180414230607868', '666', '3', 'images/text1.jpg', null, '6.00', '7.30', '1', null, null, 'b4366834ca6d49dc9dde0728371c2ff4', '2018-04-15 23:06:07');
INSERT INTO `org_ware` VALUES ('73', 'f7280229cee64ad0803ce7555956301e', '2018-04-15 00:56:35', 'b4366834ca6d49dc9dde0728371c2ff4', 'No20180415005635487', '888', '3', 'images/text.jpg', null, '8.00', '8.00', '1', null, null, null, '2018-04-16 00:56:35');
INSERT INTO `org_ware` VALUES ('74', 'd4ef9c49c238441e997108ae23ccb7de', '2018-04-17 09:11:38', '5461a8ed5173495eb7079d480a763002', 'No20180417091137858', '测试用品1', '0', null, null, '100.00', '115.76', '1', null, null, '95743840e5e64252934aecac35de826f', '2018-04-18 00:00:00');
INSERT INTO `org_ware` VALUES ('75', '7e69d2b575224ba4b971798cb78bea4b', '2018-04-18 17:01:22', '1ea36a684c1c484e8f5ed9ee22efe4c2', 'No20180418170122307', '测试', '0', 'images/用户.jpg', null, '122.00', '134.50', '1', null, null, '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-19 00:00:00');
INSERT INTO `org_ware` VALUES ('76', 'eb762cd495a34b99ad278649ad4d28a1', '2018-04-22 20:53:41', '5461a8ed5173495eb7079d480a763002', 'No20180422205340772', '固态硬盘', '0', null, null, '300.00', '364.65', '1', null, null, '4c0541d6b1f44355b97de900eadd9098', '2018-04-23 20:53:40');
INSERT INTO `org_ware` VALUES ('77', 'ff75abe7b8d04d25a600a1725ca048ca', '2018-04-22 21:05:18', '1c27ef944ec24c41958f9518e1f2e968', 'No20180422210517639', '移动电源', '0', 'images/vuserpic_2_HD.png', null, '500.00', '551.25', '1', null, null, '5461a8ed5173495eb7079d480a763002', '2018-04-23 00:00:00');
INSERT INTO `org_ware` VALUES ('78', '25d895c8f93448f2809a893ca724b6fd', '2018-04-23 12:26:34', '5461a8ed5173495eb7079d480a763002', 'No20180423122633657', '测试1', '0', 'images/QQ截图20180420000134.png', null, '500.00', '500.00', '1', null, null, null, '2018-04-24 00:00:00');
INSERT INTO `org_ware` VALUES ('79', '201efd3157414581a4c19bdf43094bea', '2018-04-23 12:27:14', '5461a8ed5173495eb7079d480a763002', 'No20180423122713575', '测试2', '0', 'images/1523611706056.jpg', null, '600.00', '600.00', '1', null, null, null, '2018-04-24 00:00:00');
INSERT INTO `org_ware` VALUES ('80', '38e530010b2446a3a39a4a792c4d3da3', '2018-04-23 12:27:36', '5461a8ed5173495eb7079d480a763002', 'No20180423122735837', '测试3', '0', 'images/IMG_20180420_111425.jpg', null, '600.00', '600.00', '1', null, null, null, '2018-04-24 00:00:00');
INSERT INTO `org_ware` VALUES ('81', '1295914f863241dba2c6031680429710', '2018-04-23 12:49:00', '5461a8ed5173495eb7079d480a763002', 'No20180423124859529', '鼠标', '0', 'images/4345acc23b45d6bf.jpg', null, '80.00', '80.00', '1', null, null, null, '2018-04-24 12:48:59');
INSERT INTO `org_ware` VALUES ('82', 'cf41551b84bc46bfbb5880b09a15e4bc', '2018-04-23 12:49:16', '5461a8ed5173495eb7079d480a763002', 'No20180423124915905', '耳机', '0', 'images/2e3b8b004745dd9e.jpg', null, '100.00', '100.00', '1', null, null, null, '2018-04-24 00:00:00');
INSERT INTO `org_ware` VALUES ('83', 'c0e71ff3ccec464eb853c3ac641cf746', '2018-04-23 12:49:36', '5461a8ed5173495eb7079d480a763002', 'No20180423124935633', '路由器', '0', 'images/-3a5f60f7af062d41.jpg', null, '300.00', '330.75', '1', null, null, '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-24 00:00:00');
INSERT INTO `org_ware` VALUES ('84', '5c62b6c8d0504f9caa872542c65596d3', '2018-04-23 12:49:56', '5461a8ed5173495eb7079d480a763002', 'No20180423124956128', '键盘', '0', 'images/392d11ff2e9260cd.jpg', null, '800.00', '882.00', '1', null, null, '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-24 00:00:00');
INSERT INTO `org_ware` VALUES ('85', 'db396025bb5e484b99cd2d97e02cae78', '2018-04-23 13:15:31', '5461a8ed5173495eb7079d480a763002', 'No20180423131530666', '键盘', '0', 'images/392d11ff2e9260cd.jpg', null, '800.00', '800.00', '1', null, null, null, '2018-04-24 13:15:30');
INSERT INTO `org_ware` VALUES ('86', 'c68773ea311148418e66b68f56442aeb', '2018-04-23 13:16:05', '5461a8ed5173495eb7079d480a763002', 'No20180423131605313', '显卡', '0', 'images/349fc2ac69569b7f.jpg', null, '1200.00', '1200.00', '1', null, null, null, '2018-04-24 00:00:00');
INSERT INTO `org_ware` VALUES ('87', 'b5eed8c03e7e46edb9aacd4d0a9542e4', '2018-04-23 16:09:33', '5461a8ed5173495eb7079d480a763002', 'No20180423160933398', '显卡', '0', 'images/349fc2ac69569b7f.jpg', null, '1000.00', '1050.00', '1', null, null, '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-24 00:00:00');
INSERT INTO `org_ware` VALUES ('88', 'e52576347a0c4317aeeed948243d4b05', '2018-04-23 17:40:33', '4dd25d2c011f45d7ae3274ee2968662f', 'No20180423174032535', 'test', '0', 'images/232343_3444587857_8_1000_1000.jpg', null, '100.00', '105.00', '1', null, null, '80aabfffbf6946efbbf70d58c3f7bc0d', '2018-04-24 00:00:00');
INSERT INTO `org_ware` VALUES ('89', '11ebbe6c426b4039809c3c9a90112a3d', '2018-04-23 17:59:16', '1', 'No20180423175916220', '1', '1', 'adf', null, '1.00', '1.00', '1', null, null, null, '2018-04-24 17:59:16');
INSERT INTO `org_ware` VALUES ('90', 'd012187f5ff6459180ffb1ebd65a16b9', '2018-04-23 17:59:51', '1', 'No20180423175950660', '1', '1', 'adf', null, '1.00', '1.00', '1', null, null, null, '2018-04-24 17:59:50');
INSERT INTO `org_ware` VALUES ('91', '0ed22b0158334efd923bdc0bda6702f5', '2018-04-23 17:59:54', '1', 'No20180423175953683', '1', '1', 'adf', null, '1.00', '1.00', '1', null, null, null, '2018-04-24 17:59:53');
INSERT INTO `org_ware` VALUES ('92', '4ffecf234b5c46529aadb5f6144595dd', '2018-04-24 21:02:41', '95743840e5e64252934aecac35de826f', 'No20180424210241440', '1', '1', 'adf', 'afadfeeee', '1.00', '1.22', '1', '6220d3fe230f4e5aad32566ec6914024/6220d3fe230f4e5aad32566ec6914024/6220d3fe230f4e5aad32566ec6914024/7b0c2369a3524f8ca19949ae2fda3eae/', '17699887766', '7b0c2369a3524f8ca19949ae2fda3eae', '2018-04-25 21:02:41');
INSERT INTO `org_ware` VALUES ('93', '1422d7eee18049fe9ee8b74d82655397', '2018-04-24 21:55:18', '7b0c2369a3524f8ca19949ae2fda3eae', 'No20180424215517885', '角色扮演', '0', null, '24小时候见分晓', '1000.00', '1157.62', '1', '7b0c2369a3524f8ca19949ae2fda3eae/95743840e5e64252934aecac35de826f/80aabfffbf6946efbbf70d58c3f7bc0d/', '18356759118', '80aabfffbf6946efbbf70d58c3f7bc0d', '2018-04-25 00:00:00');
INSERT INTO `org_ware` VALUES ('94', '899b81acca7a47a480f78c00aa17a876', '2018-04-24 21:57:57', '7b0c2369a3524f8ca19949ae2fda3eae', 'No20180424215756618', '我不知道该说什么，关于死亡还是爱情', '3', 'images/timg-1.jpg', '讲述了前苏联核泄漏候，人民的世间百态', '800.00', '972.40', '1', '681fc9705d3c448e9b7b97c9667e2b7d/95743840e5e64252934aecac35de826f/95743840e5e64252934aecac35de826f/72e8050d81314f14ae73b4a32d857ac4/', '13699988877', '72e8050d81314f14ae73b4a32d857ac4', '2018-04-25 00:00:00');
INSERT INTO `org_ware` VALUES ('95', '11df4528dec548bdbb31e7909f5c0195', '2018-04-24 22:12:40', '95743840e5e64252934aecac35de826f', 'No20180424221239566', '这是一个测试', '0', 'images/232344_3444587857_9_1000_1000.jpg', '你以为呢，这就是内容', '100.00', '105.00', '1', '80aabfffbf6946efbbf70d58c3f7bc0d/', '18356759118', '80aabfffbf6946efbbf70d58c3f7bc0d', '2018-04-25 00:00:00');
INSERT INTO `org_ware` VALUES ('96', '37865f190b1742a5a75cbbcd4394e062', '2018-04-25 09:35:25', '5461a8ed5173495eb7079d480a763002', 'No20180425093525233', '测试0', '1', null, '测试0', '500.00', '1693.18', '1', '9bda78d82ce74cdcb5c33397a48a2001/a99231c9fd2b4385bd0ce6d39166e7ef/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/', '15956951692', '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-26 09:35:25');
INSERT INTO `org_ware` VALUES ('97', 'f90ee874cd544f22bcc80be210fa82c4', '2018-04-25 09:36:56', '5461a8ed5173495eb7079d480a763002', 'No20180425093656023', '测试2', '0', 'images/截屏_20171009_145440.jpg', '测试2', '500.00', '578.81', '1', '9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/a99231c9fd2b4385bd0ce6d39166e7ef/', '18057804667', 'a99231c9fd2b4385bd0ce6d39166e7ef', '2018-04-26 00:00:00');
INSERT INTO `org_ware` VALUES ('98', '0e0827f6c51547e884fd6349f09e6bd4', '2018-04-27 20:04:35', 'c9b7535347d24b7da88d8793d2b871d2', 'No20180427200435282', '病变', '3', 'images/timg-1.jpg', '有天我醒来发现我的身边没有你，', '1000.00', '1102.50', '1', 'bf3b26d5430e4c24b28e0303822a23f5/2013b3dfa1b94a139f3330fed6554019/', '18022334455', '2013b3dfa1b94a139f3330fed6554019', '2018-04-28 00:00:00');
INSERT INTO `org_ware` VALUES ('99', '524fc340b7674ce6b92daa2237e874ec', '2018-04-27 20:20:19', 'bf3b26d5430e4c24b28e0303822a23f5', 'No20180427202019426', '《雷雨》', '3', null, '乱伦', '90.00', '90.00', '1', '', '', null, '2018-04-28 00:00:00');
INSERT INTO `org_ware` VALUES ('100', '7dd3459fec42443dbbd8a8fbbdb8754b', '2018-04-28 09:53:36', '5461a8ed5173495eb7079d480a763002', 'No20180428095336207', '电脑', '0', 'images/IMG_20180416_204403.jpg', '无', '4000.00', '4862.02', '1', '9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/eaf7d59fc5e4407fa51533fa9f7b2a43/', '18057804668', 'eaf7d59fc5e4407fa51533fa9f7b2a43', '2018-04-29 00:00:00');
INSERT INTO `org_ware` VALUES ('101', '8ef0927ad1604030a39409c3959d9a45', '2018-04-29 20:26:17', '5461a8ed5173495eb7079d480a763002', 'No20180429202617132', '人性的弱点', '3', 'images/12683d388fac3914.png', '书', '100.00', '105.00', '1', '9bda78d82ce74cdcb5c33397a48a2001/', '15956951692', '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-30 20:26:17');
INSERT INTO `org_ware` VALUES ('102', '840fb02166144f15a272a2ccdd034de6', '2018-04-29 22:14:04', '5461a8ed5173495eb7079d480a763002', 'No20180429221404268', '键盘', '2', 'images/-7ccecf76ae82c61a.png', '我就睡觉还是', '200.00', '200.00', '1', '', '', null, '2018-04-30 00:00:00');
INSERT INTO `org_ware` VALUES ('103', 'e18655f15f494b398c241fb0e67e054a', '2018-04-30 06:34:03', '0ddea66165fc4227b5b3d8f3337e331f', 'No20180430063403331', '网球球拍', '2', 'images/-6b8c722a9801ff9e.png', '网球球拍', '540.00', '540.00', '1', '', '', null, '2018-04-30 00:00:00');
INSERT INTO `org_ware` VALUES ('104', '3b92d9f350594f40a03d739ca78fef97', '2018-04-30 06:34:41', '0ddea66165fc4227b5b3d8f3337e331f', 'No20180430063440818', '球拍', '0', 'images/-6b8c722a9801ff9e.png', '球拍', '500.00', '525.00', '1', '9bda78d82ce74cdcb5c33397a48a2001/', '15956951692', '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-30 00:00:00');
INSERT INTO `org_ware` VALUES ('105', 'd528155f234141ba949418da3e220992', '2018-04-30 06:37:10', '5461a8ed5173495eb7079d480a763002', 'No20180430063709875', '相机', '0', 'images/-64935c0d9f344c3a.png', '相机', '600.00', '600.00', '1', '', '', null, '2018-04-30 00:00:00');
INSERT INTO `org_ware` VALUES ('106', '26f0d7ac10a54c899b0a340387cb93b9', '2018-04-30 06:40:29', '5461a8ed5173495eb7079d480a763002', 'No20180430064029306', '1', '0', 'images/-7ccecf76ae82c61a.png', '@', '500.00', '500.00', '1', '', '', null, '2018-04-30 00:00:00');
INSERT INTO `org_ware` VALUES ('108', '9008c730e4e04fe28ed5c23c3198d873', '2018-04-30 06:43:42', '5461a8ed5173495eb7079d480a763002', 'No20180430064342318', '球拍', '0', null, '球拍', '300.00', '315.00', '1', '9bda78d82ce74cdcb5c33397a48a2001/', '15956951692', '9bda78d82ce74cdcb5c33397a48a2001', '2018-04-30 00:00:00');
INSERT INTO `org_ware` VALUES ('109', '6adf5198e15b4f028cc210db05106525', '2018-04-30 06:46:38', '5461a8ed5173495eb7079d480a763002', 'No20180430064637580', '键盘', '0', 'images/-7ccecf76ae82c61a.png', '红光背景', '600.00', '600.00', '1', '', '', null, '2018-05-01 06:46:37');
INSERT INTO `org_ware` VALUES ('110', '99364c3879884beda7921295327c95fb', '2018-04-30 06:47:20', '5461a8ed5173495eb7079d480a763002', 'No20180430064719502', '手机', '0', 'images/-52b3157ee9dc4b74.png', 'ipone 6p', '3000.00', '3472.88', '1', '9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/9bda78d82ce74cdcb5c33397a48a2001/', '15956951692', '9bda78d82ce74cdcb5c33397a48a2001', '2018-05-01 06:47:19');
INSERT INTO `org_ware` VALUES ('111', 'de69f95ae7bd4285a147ab7daecabb1f', '2018-04-30 06:47:46', '5461a8ed5173495eb7079d480a763002', 'No20180430064746123', '相机', '0', 'images/-64935c0d9f344c3a.png', '', '1200.00', '1323.00', '1', '9bda78d82ce74cdcb5c33397a48a2001/00d2ddcc0bfe40b9b4b7216d6484941f/', '15956951691', '00d2ddcc0bfe40b9b4b7216d6484941f', '2018-05-01 06:47:46');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(50) DEFAULT NULL COMMENT '全球唯一码',
  `passwd` varchar(100) DEFAULT NULL COMMENT '密码',
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `state` int(1) DEFAULT '0' COMMENT '状态（0买家 1卖家）',
  `isdelete` int(1) DEFAULT '1' COMMENT '是否删除（1删除 0未删除）',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('9', 'ea10bdc197c640e2bd6f7cd76230e000', 'e10adc3949ba59abbe56e057f20f883e', '安徽省', '15797638911', '624647769@qq.com', '上海市', '1', '0', '爱的反馈');
INSERT INTO `sys_user` VALUES ('10', '8e9d09d0df084ea68a1c8327171e26d2', '96e79218965eb72c92a549dd5a330112', '', '17621923695', '', '', '1', '0', '');
INSERT INTO `sys_user` VALUES ('11', 'ccc860784fbd4055b1d2d17998a7a5a9', '827ccb0eea8a706c4c34a16891f84e7b', '', '12345', '', '', '1', '0', '');
INSERT INTO `sys_user` VALUES ('12', 'a88013ead0aa43789df4d4dc3ef55478', 'e10adc3949ba59abbe56e057f20f883e', null, '17505673522', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('13', '83f4370187844c59be7efb1fca7e4558', '96e79218965eb72c92a549dd5a330112', null, '15797638910', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('14', '70f40c0e651847f6837de458fd850422', '96e79218965eb72c92a549dd5a330112', null, '15712345678', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('15', '4b122b6ec8174b78a349e295b3295f8d', '96e79218965eb72c92a549dd5a330112', null, '18011111111', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('16', '7b285b29a92e489fa91af747c99777e7', '96e79218965eb72c92a549dd5a330112', null, '18022222222', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('17', '8eca3ab65d9b43ddae42508f82791230', '96e79218965eb72c92a549dd5a330112', null, '18033333333', null, null, '1', '0', null);
INSERT INTO `sys_user` VALUES ('18', '3532a5f9cc1a4adb9b505cd2ab35b8e2', '96e79218965eb72c92a549dd5a330112', null, '18099999999', null, null, '1', '0', null);
INSERT INTO `sys_user` VALUES ('19', '6f7e303c364c43a682c9d9d5773ea5cb', '96e79218965eb72c92a549dd5a330112', null, '17600000000', null, null, '1', '0', null);
INSERT INTO `sys_user` VALUES ('20', '662a4f0d681944b383897344594bab01', '96e79218965eb72c92a549dd5a330112', null, '15712345670', null, null, '1', '0', null);
INSERT INTO `sys_user` VALUES ('21', '95743840e5e64252934aecac35de826f', 'e10adc3949ba59abbe56e057f20f883e', null, '18356759119', '624647769@qq.com', null, '1', '0', null);
INSERT INTO `sys_user` VALUES ('22', 'fc23824593384140bd9c94d93d376b9e', '00c66aaf5f2c3f49946f15c1ad2ea0d3', null, '18340836866', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('23', 'bc591d0def8c4a08a97acb2987db371f', '56adc4df421bf0885b0d4ab010019e45', null, 'ada', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('24', '212663feba9147ae9f47c92855c05ad1', 'ab233b682ec355648e7891e66c54191b', null, '654y', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('25', '312eb2e838fe40198cb4625837f8fda2', '202cb962ac59075b964b07152d234b70', null, '13511111111', null, null, '0', '0', null);
INSERT INTO `sys_user` VALUES ('26', 'b2c8d5f421d3465fb038ef1b4c51257c', '95b5f346d5feef26f7fa4eb17356bb78', null, 'fes', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('27', '2c087041ba1d493b87c8ec2681027598', '96e79218965eb72c92a549dd5a330112', null, '18066666666', null, null, '1', '0', '无经费');
INSERT INTO `sys_user` VALUES ('28', '0ca663a4de1a4b5899e8d865bb4cdd51', '96e79218965eb72c92a549dd5a330112', '上海中国', '18077777777', null, null, '0', '0', null);
INSERT INTO `sys_user` VALUES ('29', '313bc52499fe4a06acd71d3242373d0a', '96e79218965eb72c92a549dd5a330112', null, '18912345678', null, null, '0', '0', null);
INSERT INTO `sys_user` VALUES ('30', '072ea41d8b9f4557aa0ad43286c6ae7f', '96e79218965eb72c92a549dd5a330112', null, '17612306888', null, null, '1', '0', '咯莫');
INSERT INTO `sys_user` VALUES ('31', '059ee0f20ee64e96847e839c44b761f5', 'fa1b865d9280d4a488afa30fd60216e7', null, 'ccasfcasc', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('32', 'b4366834ca6d49dc9dde0728371c2ff4', '96e79218965eb72c92a549dd5a330112', 'fs', '18340836888', 'efs', 'efs', null, null, '22');
INSERT INTO `sys_user` VALUES ('33', 'd7f6cbd59cc9480ea4ae419a6c0f2e8b', 'a2cbb75e3937b7cd712ce32b839705d1', null, '5tytyh', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('34', '4dd25d2c011f45d7ae3274ee2968662f', 'e10adc3949ba59abbe56e057f20f883e', '安徽省', '17505673520', '624647769@qq.com', 'tom', '1', '0', '赛赛');
INSERT INTO `sys_user` VALUES ('35', '9bda78d82ce74cdcb5c33397a48a2001', 'a4b109379c4ca468bf6469eb49ccd4de', '111', '15956951692', '549535221@qq.com', '1111', '0', '0', '张三');
INSERT INTO `sys_user` VALUES ('36', '5461a8ed5173495eb7079d480a763002', 'a4b109379c4ca468bf6469eb49ccd4de', '测试1', '15956951693', null, null, '1', '0', '张三');
INSERT INTO `sys_user` VALUES ('37', 'cbbb23619f174be9a13a3550c070e204', '96e79218965eb72c92a549dd5a330112', null, '18340836666', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('38', 'ed69dc83cb4d433a80a05718a3ebdc75', 'e3ceb5881a0a1fdaad01296d7554868d', null, '18322222222', null, null, '1', null, null);
INSERT INTO `sys_user` VALUES ('39', '530c104091da41d38d49b8da8776e66b', 'e10adc3949ba59abbe56e057f20f883e', null, '18312345678', null, null, '1', null, null);
INSERT INTO `sys_user` VALUES ('40', 'baa3db50879a428b86a093fce81d0f96', '96e79218965eb72c92a549dd5a330112', null, '18340831234', null, null, '1', null, null);
INSERT INTO `sys_user` VALUES ('41', '750046fd28c94cd199e984c7aed3cef9', 'd41d8cd98f00b204e9800998ecf8427e', null, '18841140662', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('42', 'dbac6afd564c45159a25647c5769d581', 'd41d8cd98f00b204e9800998ecf8427e', null, '13545646546', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('43', '474cc7f632324f77aafba5347e2309b7', 'd41d8cd98f00b204e9800998ecf8427e', null, '13512345614', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('44', 'b6a9cc03528a4433a5d7aae0a363f864', '96e79218965eb72c92a549dd5a330112', null, '18312322222', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('45', '50a561f9d2e54bf6869a9689d49a653f', '5b1b68a9abf4d2cd155c81a9225fd158', null, '1234566666', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('46', 'd0d11bdd6dea436baea750a003e55ac4', '83a70cef3ffe9b6912fc04da82bf8d3f', null, 'tertette', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('47', '5826b5dc782340b3afde99f8971ee413', '96e79218965eb72c92a549dd5a330112', null, 'shabzi', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('48', '2b5a38dca6c84c6f80c1ab41e8641934', '96e79218965eb72c92a549dd5a330112', 'daw', '5641564156', 'awd', 'awd', null, null, 'sdf');
INSERT INTO `sys_user` VALUES ('49', 'd46e94de997649948856899eec83a1cf', '21ad0bd836b90d08f4cf640b4c298e7c', null, '18340888888', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('50', 'be802fce34354d0b965cdda51a1016db', '96e79218965eb72c92a549dd5a330112', null, '18312345666', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('51', '1ea36a684c1c484e8f5ed9ee22efe4c2', 'b53e471bad6182e27c20bd0776929c51', null, '15956951695', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('52', 'aa43aa57949e4e918d75a91c66dea5e0', 'e47a1e0d7a2516375df2bf21a9ea39a6', null, '15956951600', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('53', '4c0541d6b1f44355b97de900eadd9098', 'bd1a3607248f7e3b1e945f5aa9caf8f9', null, '15956951601', null, null, '1', null, null);
INSERT INTO `sys_user` VALUES ('54', '1c27ef944ec24c41958f9518e1f2e968', 'a4b109379c4ca468bf6469eb49ccd4de', null, '15956951694', null, null, '1', null, null);
INSERT INTO `sys_user` VALUES ('55', '80aabfffbf6946efbbf70d58c3f7bc0d', 'e10adc3949ba59abbe56e057f20f883e', null, '18356759118', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('56', '6220d3fe230f4e5aad32566ec6914024', 'e10adc3949ba59abbe56e057f20f883e', null, '18099887766', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('57', '7b0c2369a3524f8ca19949ae2fda3eae', 'e10adc3949ba59abbe56e057f20f883e', null, '17699887766', null, null, '1', null, null);
INSERT INTO `sys_user` VALUES ('58', '681fc9705d3c448e9b7b97c9667e2b7d', 'e10adc3949ba59abbe56e057f20f883e', null, '15399887766', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('59', '72e8050d81314f14ae73b4a32d857ac4', 'e10adc3949ba59abbe56e057f20f883e', null, '13699988877', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('60', 'a99231c9fd2b4385bd0ce6d39166e7ef', 'e10adc3949ba59abbe56e057f20f883e', null, '18057804667', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('61', 'e9739db87e8145598212f86d9c759f56', 'b59c67bf196a4758191e42f76670ceba', null, '13586565235', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('62', 'ef0f2fbf96274c8b886b95fe35c99777', '827ccb0eea8a706c4c34a16891f84e7b', null, '18044556677', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('63', 'c9b7535347d24b7da88d8793d2b871d2', 'e10adc3949ba59abbe56e057f20f883e', '广东东莞', '18097654321', 'bitch@sb.com', 'zss', '1', null, '朱赛赛');
INSERT INTO `sys_user` VALUES ('64', 'bf3b26d5430e4c24b28e0303822a23f5', 'e10adc3949ba59abbe56e057f20f883e', null, '18033445566', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('65', '2013b3dfa1b94a139f3330fed6554019', 'e10adc3949ba59abbe56e057f20f883e', null, '18022334455', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('66', 'c8c31525192349d6b180dcd13001e85c', 'e10adc3949ba59abbe56e057f20f883e', null, '18356759117', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('67', 'eaf7d59fc5e4407fa51533fa9f7b2a43', '96e79218965eb72c92a549dd5a330112', null, '18057804668', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('68', 'eb223fa93ef5416f9a9053d75ace30bb', 'a4b109379c4ca468bf6469eb49ccd4de', null, '15856979195', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('69', '0ddea66165fc4227b5b3d8f3337e331f', 'a4b109379c4ca468bf6469eb49ccd4de', null, '15856979196', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('70', '00d2ddcc0bfe40b9b4b7216d6484941f', 'a4b109379c4ca468bf6469eb49ccd4de', null, '15956951691', null, null, null, null, null);

-- ----------------------------
-- Event structure for `updateState`
-- ----------------------------
DROP EVENT IF EXISTS `updateState`;
DELIMITER ;;
CREATE DEFINER=`rencai`@`%` EVENT `updateState` ON SCHEDULE EVERY 60 SECOND STARTS '2018-04-10 20:18:36' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE org_ware SET state = 1 WHERE endtime < (SELECT NOW())
;;
DELIMITER ;
