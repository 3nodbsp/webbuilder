/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : ssmu643g

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 23/11/2020 15:08:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/ssmu643g/upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/ssmu643g/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/ssmu643g/upload/picture3.jpg');
INSERT INTO `config` VALUES (4, 'picture4', 'http://localhost:8080/ssmu643g/upload/picture4.jpg');
INSERT INTO `config` VALUES (5, 'picture5', 'http://localhost:8080/ssmu643g/upload/picture5.jpg');
INSERT INTO `config` VALUES (6, 'homepage', 'http://localhost:8080/ssmu643g/upload/1606114380536.png');

-- ----------------------------
-- Table structure for feiyongxinxi
-- ----------------------------
DROP TABLE IF EXISTS `feiyongxinxi`;
CREATE TABLE `feiyongxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `qingjiefangjian` int(11) NULL DEFAULT NULL COMMENT '清洁房间',
  `xiyifuwu` int(11) NULL DEFAULT NULL COMMENT '洗衣服务',
  `jiaoxingfuwu` int(11) NULL DEFAULT NULL COMMENT '叫醒服务',
  `jiachuangfuwu` int(11) NULL DEFAULT NULL COMMENT '加床服务',
  `songcanfuwu` int(11) NULL DEFAULT NULL COMMENT '送餐服务',
  `baomufuwu` int(11) NULL DEFAULT NULL COMMENT '保姆服务',
  `zongfeiyong` int(11) NULL DEFAULT NULL COMMENT '总费用',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `dengjishijian` date NULL DEFAULT NULL COMMENT '登记时间',
  `beizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606114890409 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '费用信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feiyongxinxi
-- ----------------------------
INSERT INTO `feiyongxinxi` VALUES (1, '2020-11-23 14:01:02', '客房类型1', 1, 1, 1, 1, 1, 1, 1, '用户名1', '2020-11-23', '备注1', '未支付');
INSERT INTO `feiyongxinxi` VALUES (2, '2020-11-23 14:01:02', '客房类型2', 2, 2, 2, 2, 2, 2, 2, '用户名2', '2020-11-23', '备注2', '未支付');
INSERT INTO `feiyongxinxi` VALUES (3, '2020-11-23 14:01:02', '客房类型3', 3, 3, 3, 3, 3, 3, 3, '用户名3', '2020-11-23', '备注3', '未支付');
INSERT INTO `feiyongxinxi` VALUES (1606114889507, '2020-11-23 15:01:29', '总统套房', 100, 0, 0, 0, 100, 100, 300, '456', '2020-11-23', '无', '未支付');
INSERT INTO `feiyongxinxi` VALUES (1606114890408, '2020-11-23 15:01:29', '总统套房', 100, 0, 0, 0, 100, 100, 300, '456', '2020-11-23', '无', '已支付');

-- ----------------------------
-- Table structure for huanfangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `huanfangxinxi`;
CREATE TABLE `huanfangxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `shuliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `huanfangyuanyin` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '换房原因',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `dengjishijian` date NULL DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606114532596 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '换房信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huanfangxinxi
-- ----------------------------
INSERT INTO `huanfangxinxi` VALUES (1, '2020-11-23 14:01:02', '订单编号1', '客房类型1', '数量1', '换房原因1', '用户名1', '用户姓名1', '2020-11-23', '否', '');
INSERT INTO `huanfangxinxi` VALUES (2, '2020-11-23 14:01:02', '订单编号2', '客房类型2', '数量2', '换房原因2', '用户名2', '用户姓名2', '2020-11-23', '否', '');
INSERT INTO `huanfangxinxi` VALUES (3, '2020-11-23 14:01:02', '订单编号3', '客房类型3', '数量3', '换房原因3', '用户名3', '用户姓名3', '2020-11-23', '否', '');
INSERT INTO `huanfangxinxi` VALUES (1606114532595, '2020-11-23 14:55:31', '1606114497312', '总统套房', '3', '太吵', '456', '胡月', '2020-11-23', '是', '04房');

-- ----------------------------
-- Table structure for kefangku
-- ----------------------------
DROP TABLE IF EXISTS `kefangku`;
CREATE TABLE `kefangku`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `bianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) NULL DEFAULT NULL COMMENT '数量',
  `qingjiefangjian` int(11) NULL DEFAULT NULL COMMENT '清洁房间',
  `xiyifuwu` int(11) NULL DEFAULT NULL COMMENT '洗衣服务',
  `jiaoxingfuwu` int(11) NULL DEFAULT NULL COMMENT '叫醒服务',
  `jiachuangfuwu` int(11) NULL DEFAULT NULL COMMENT '加床服务',
  `songcanfuwu` int(11) NULL DEFAULT NULL COMMENT '送餐服务',
  `baomufuwu` int(11) NULL DEFAULT NULL COMMENT '保姆服务',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606114351139 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客房库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kefangku
-- ----------------------------
INSERT INTO `kefangku` VALUES (1, '2020-11-23 14:01:02', '001', '单人房', 'http://localhost:8080/ssmu643g/upload/1606112742174.jpg', 265, 100, 100, 100, 100, 100, 100, '<p>酒店客房部</p><p>服务项目</p><p>酒店客房部的服务项目有哪些? ；2．清洁房间进→撤→铺→洗→抹→补→吸→检&nbsp;&nbsp;&nbsp;&nbsp;3．借物服务&nbsp;&nbsp;4．洗衣服务11：00之前收集洗衣①房号要写清；②件数要写清；③口袋要掏清；④衣物要检查；⑤洗涤类型，并对客人讲明客衣几点钟送回；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5．叫醒服务确认房号，确认时间，自己做好记录，并告知总机叫醒无效：①客人已外出；②睡得太沉；③房间噪间大；④电话线拔⑤客人出现异常最后的结果必须报告总机；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6．加床服务；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8．送餐服务；</p><p>10．保姆服务；</p><p><img src=\"http://localhost:8080/ssmu643g/upload/1606112778131.jpg\"></p>', '否', '', '2020-11-23 14:27:02');
INSERT INTO `kefangku` VALUES (2, '2020-11-23 14:01:02', '002', '双人房', 'http://localhost:8080/ssmu643g/upload/kefangku_tupian2.jpg', 15, 100, 100, 100, 100, 100, 100, '<p>酒店客房部</p><p>服务项目</p><p>酒店客房部的服务项目有哪些? ；2．清洁房间进→撤→铺→洗→抹→补→吸→检&nbsp;&nbsp;&nbsp;&nbsp;3．借物服务&nbsp;&nbsp;4．洗衣服务11：00之前收集洗衣①房号要写清；②件数要写清；③口袋要掏清；④衣物要检查；⑤洗涤类型，并对客人讲明客衣几点钟送回；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5．叫醒服务确认房号，确认时间，自己做好记录，并告知总机叫醒无效：①客人已外出；②睡得太沉；③房间噪间大；④电话线拔⑤客人出现异常最后的结果必须报告总机；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6．加床服务；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8．送餐服务；</p><p>10．保姆服务；</p><p><br></p>', '否', '', '2020-11-23 14:26:22');
INSERT INTO `kefangku` VALUES (3, '2020-11-23 14:01:02', '123', '总统套房', 'http://localhost:8080/ssmu643g/upload/kefangku_tupian3.jpg', 25, 100, 100, 100, 100, 100, 100, '<p>酒店客房部</p><p>服务项目</p><p>酒店客房部的服务项目有哪些? ；2．清洁房间进→撤→铺→洗→抹→补→吸→检&nbsp;&nbsp;&nbsp;&nbsp;3．借物服务&nbsp;&nbsp;4．洗衣服务11：00之前收集洗衣①房号要写清；②件数要写清；③口袋要掏清；④衣物要检查；⑤洗涤类型，并对客人讲明客衣几点钟送回；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5．叫醒服务确认房号，确认时间，自己做好记录，并告知总机叫醒无效：①客人已外出；②睡得太沉；③房间噪间大；④电话线拔⑤客人出现异常最后的结果必须报告总机；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6．加床服务；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8．送餐服务；</p><p>10．保姆服务；</p><p><br></p>', '否', '', '2020-11-23 14:55:31');
INSERT INTO `kefangku` VALUES (1606114351138, '2020-11-23 14:52:30', '商务房', '商务房', 'http://localhost:8080/ssmu643g/upload/1606114326707.jpg', 20, 100, 100, 100, 100, 100, 100, '<p>的NSA科技发达还是打警方打开拉萨就反抗类毒素就克里夫觉得萨卡浪费角度上考虑分开了大厦的<img src=\"http://localhost:8080/ssmu643g/upload/1606114350109.jpg\"></p>', '否', '', NULL);

-- ----------------------------
-- Table structure for kefangleixing
-- ----------------------------
DROP TABLE IF EXISTS `kefangleixing`;
CREATE TABLE `kefangleixing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606114302654 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客房类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kefangleixing
-- ----------------------------
INSERT INTO `kefangleixing` VALUES (1606112453284, '2020-11-23 14:20:52', '单人房');
INSERT INTO `kefangleixing` VALUES (1606112463512, '2020-11-23 14:21:03', '双人房');
INSERT INTO `kefangleixing` VALUES (1606112499114, '2020-11-23 14:21:38', '总统套房');
INSERT INTO `kefangleixing` VALUES (1606114302653, '2020-11-23 14:51:42', '商务房');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606114418532 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '2020-11-23 14:01:02', '标题1', 'http://localhost:8080/ssmu643g/upload/1606112891982.jpg', '<p>内容1范德萨范德萨范德萨范德萨放大撒范德萨士大夫<img src=\"http://localhost:8080/ssmu643g/upload/1606112897986.jpg\"></p>');
INSERT INTO `news` VALUES (2, '2020-11-23 14:01:02', '标题2', 'http://localhost:8080/ssmu643g/upload/1606112909855.jpg', '<p>内容2范德萨范德萨范德萨范德萨富士达范德萨<img src=\"http://localhost:8080/ssmu643g/upload/1606112915750.jpg\"></p>');
INSERT INTO `news` VALUES (1606114418531, '2020-11-23 14:53:37', '最新活动', 'http://localhost:8080/ssmu643g/upload/1606114408205.png', '<p>发的卡解放大卡就撒娇弗兰克收到 反抗类毒素解放考虑觉得萨卡了飞机迪斯科浪费就看来是大就罚款决定书<img src=\"http://localhost:8080/ssmu643g/upload/1606114417029.png\"></p>');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1606111338128, '123', 'yonghu', '用户', 'xm3yhjkkk4sp9w60qhbtsmr2kq5q5zi3', '2020-11-23 14:02:30', '2020-11-23 15:50:07');
INSERT INTO `token` VALUES (2, 1, 'abo', 'users', '管理员', 'tzu47tzaxi7ybjvb3wohnz0jx4ln4sha', '2020-11-23 14:17:00', '2020-11-23 16:03:04');
INSERT INTO `token` VALUES (3, 1606114438081, '456', 'yonghu', '用户', '78odhroatb2ur02mzm7pnyhiu0in9v58', '2020-11-23 14:54:04', '2020-11-23 16:03:37');

-- ----------------------------
-- Table structure for tuidingxinxi
-- ----------------------------
DROP TABLE IF EXISTS `tuidingxinxi`;
CREATE TABLE `tuidingxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `shuliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `tuidingyuanyin` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '退订原因',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `dengjishijian` date NULL DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606114521965 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退订信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tuidingxinxi
-- ----------------------------
INSERT INTO `tuidingxinxi` VALUES (1, '2020-11-23 14:01:02', '订单编号1', '客房类型1', '数量1', '退订原因1', '用户名1', '用户姓名1', '2020-11-23', '否', '');
INSERT INTO `tuidingxinxi` VALUES (2, '2020-11-23 14:01:02', '订单编号2', '客房类型2', '数量2', '退订原因2', '用户名2', '用户姓名2', '2020-11-23', '否', '');
INSERT INTO `tuidingxinxi` VALUES (3, '2020-11-23 14:01:02', '订单编号3', '客房类型3', '数量3', '退订原因3', '用户名3', '用户姓名3', '2020-11-23', '否', '');
INSERT INTO `tuidingxinxi` VALUES (1606114521964, '2020-11-23 14:55:21', '1606114497312', '总统套房', '3', '<p>来不了</p>', '456', '胡月', '2020-11-23', '是', '好的');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2020-11-23 14:01:02');

-- ----------------------------
-- Table structure for xuzuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `xuzuxinxi`;
CREATE TABLE `xuzuxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `xuzutianshu` int(11) NULL DEFAULT NULL COMMENT '续租天数',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `dengjishijian` date NULL DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606114542089 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '续租信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuzuxinxi
-- ----------------------------
INSERT INTO `xuzuxinxi` VALUES (1, '2020-11-23 14:01:02', '订单编号1', '客房类型1', 1, '用户名1', '2020-11-23', '否', '');
INSERT INTO `xuzuxinxi` VALUES (2, '2020-11-23 14:01:02', '订单编号2', '客房类型2', 2, '用户名2', '2020-11-23', '否', '');
INSERT INTO `xuzuxinxi` VALUES (3, '2020-11-23 14:01:02', '订单编号3', '客房类型3', 3, '用户名3', '2020-11-23', '否', '');
INSERT INTO `xuzuxinxi` VALUES (1606114542088, '2020-11-23 14:55:41', '1606114497312', '总统套房', 3, '456', '2020-11-23', '是', '已经续住');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606114438082 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '2020-11-23 14:01:02', '用户1', '用户姓名1', '123456', '男', '13823888881', '440300199101010001');
INSERT INTO `yonghu` VALUES (2, '2020-11-23 14:01:02', '用户2', '用户姓名2', '123456', '男', '13823888882', '440300199202020002');
INSERT INTO `yonghu` VALUES (3, '2020-11-23 14:01:02', '用户3', '用户姓名3', '123456', '男', '13823888883', '440300199303030003');
INSERT INTO `yonghu` VALUES (1606111338128, '2020-11-23 14:02:18', '123', 'hujin', '123', NULL, '12345678978', '123456789789456');
INSERT INTO `yonghu` VALUES (1606114438081, '2020-11-23 14:53:58', '456', '胡月', '456', '女', '12345678978', '123456789789456');

-- ----------------------------
-- Table structure for yudingxinxi
-- ----------------------------
DROP TABLE IF EXISTS `yudingxinxi`;
CREATE TABLE `yudingxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `shuliang` int(11) NULL DEFAULT NULL COMMENT '数量',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `dengjishijian` date NULL DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606114502898 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预定信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yudingxinxi
-- ----------------------------
INSERT INTO `yudingxinxi` VALUES (1, '2020-11-23 14:01:02', '订单编号1', '客房类型1', 1, '用户名1', '用户姓名1', '联系电话1', '2020-11-23', '否', '');
INSERT INTO `yudingxinxi` VALUES (2, '2020-11-23 14:01:02', '订单编号2', '客房类型2', 2, '用户名2', '用户姓名2', '联系电话2', '2020-11-23', '否', '');
INSERT INTO `yudingxinxi` VALUES (3, '2020-11-23 14:01:02', '订单编号3', '客房类型3', 3, '用户名3', '用户姓名3', '联系电话3', '2020-11-23', '否', '');
INSERT INTO `yudingxinxi` VALUES (1606114473912, '2020-11-23 14:54:33', '1606114466651', '总统套房', 2, '456', '胡月', '12345678978', '2020-11-23', '否', '');
INSERT INTO `yudingxinxi` VALUES (1606114502897, '2020-11-23 14:55:02', '1606114497312', '总统套房', 3, '456', '胡月', '12345678978', '2020-11-23', '是', '01.011.02房号');

SET FOREIGN_KEY_CHECKS = 1;
