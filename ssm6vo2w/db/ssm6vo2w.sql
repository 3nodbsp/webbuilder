-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm6vo2w
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baoxianxinxi`
--

DROP TABLE IF EXISTS `baoxianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baoxianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiandanhao` varchar(200) DEFAULT NULL COMMENT '保险单号',
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `qichexinghao` varchar(200) DEFAULT NULL COMMENT '汽车型号',
  `baoxianfeiyong` int(11) DEFAULT NULL COMMENT '保险费用',
  `baoxianneirong` longtext COMMENT '保险内容',
  `shengxiaoshijian` date DEFAULT NULL COMMENT '生效时间',
  `jiezhishijian` date DEFAULT NULL COMMENT '截至时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baoxiandanhao` (`baoxiandanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='保险信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baoxianxinxi`
--

LOCK TABLES `baoxianxinxi` WRITE;
/*!40000 ALTER TABLE `baoxianxinxi` DISABLE KEYS */;
INSERT INTO `baoxianxinxi` VALUES (1,'2020-12-01 01:51:38','保险单号1','汽车编号1','汽车品牌1','车牌号1','汽车型号1',1,'保险内容1','2020-12-01','2020-12-01'),(2,'2020-12-01 01:51:38','保险单号2','汽车编号2','汽车品牌2','车牌号2','汽车型号2',2,'保险内容2','2020-12-01','2020-12-01'),(3,'2020-12-01 01:51:38','保险单号3','汽车编号3','汽车品牌3','车牌号3','汽车型号3',3,'保险内容3','2020-12-01','2020-12-01'),(4,'2020-12-01 01:51:38','保险单号4','汽车编号4','汽车品牌4','车牌号4','汽车型号4',4,'保险内容4','2020-12-01','2020-12-01'),(5,'2020-12-01 01:51:38','保险单号5','汽车编号5','汽车品牌5','车牌号5','汽车型号5',5,'保险内容5','2020-12-01','2020-12-01'),(6,'2020-12-01 01:51:38','保险单号6','汽车编号6','汽车品牌6','车牌号6','汽车型号6',6,'保险内容6','2020-12-01','2020-12-01');
/*!40000 ALTER TABLE `baoxianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm6vo2w/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm6vo2w/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm6vo2w/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssm6vo2w/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssm6vo2w/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqichexinxi`
--

DROP TABLE IF EXISTS `discussqichexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqichexinxi`
--

LOCK TABLES `discussqichexinxi` WRITE;
/*!40000 ALTER TABLE `discussqichexinxi` DISABLE KEYS */;
INSERT INTO `discussqichexinxi` VALUES (1,'2020-12-01 01:51:38',1,'评论内容1',1),(2,'2020-12-01 01:51:38',2,'评论内容2',2),(3,'2020-12-01 01:51:38',3,'评论内容3',3),(4,'2020-12-01 01:51:39',4,'评论内容4',4),(5,'2020-12-01 01:51:39',5,'评论内容5',5),(6,'2020-12-01 01:51:39',6,'评论内容6',6);
/*!40000 ALTER TABLE `discussqichexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guihaixinxi`
--

DROP TABLE IF EXISTS `guihaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guihaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `guihaishijian` date DEFAULT NULL COMMENT '归还时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='归还信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guihaixinxi`
--

LOCK TABLES `guihaixinxi` WRITE;
/*!40000 ALTER TABLE `guihaixinxi` DISABLE KEYS */;
INSERT INTO `guihaixinxi` VALUES (1,'2020-12-01 01:51:38','订单编号1','汽车编号1','车牌号1','汽车品牌1','用户名1','用户姓名1','2020-12-01','备注1'),(2,'2020-12-01 01:51:38','订单编号2','汽车编号2','车牌号2','汽车品牌2','用户名2','用户姓名2','2020-12-01','备注2'),(3,'2020-12-01 01:51:38','订单编号3','汽车编号3','车牌号3','汽车品牌3','用户名3','用户姓名3','2020-12-01','备注3'),(4,'2020-12-01 01:51:38','订单编号4','汽车编号4','车牌号4','汽车品牌4','用户名4','用户姓名4','2020-12-01','备注4'),(5,'2020-12-01 01:51:38','订单编号5','汽车编号5','车牌号5','汽车品牌5','用户名5','用户姓名5','2020-12-01','备注5'),(6,'2020-12-01 01:51:38','订单编号6','汽车编号6','车牌号6','汽车品牌6','用户名6','用户姓名6','2020-12-01','备注6');
/*!40000 ALTER TABLE `guihaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'2020-12-01 01:51:38',1,'用户名1','留言内容1','回复内容1'),(2,'2020-12-01 01:51:38',2,'用户名2','留言内容2','回复内容2'),(3,'2020-12-01 01:51:38',3,'用户名3','留言内容3','回复内容3'),(4,'2020-12-01 01:51:38',4,'用户名4','留言内容4','回复内容4'),(5,'2020-12-01 01:51:38',5,'用户名5','留言内容5','回复内容5'),(6,'2020-12-01 01:51:38',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2020-12-01 01:51:38','标题1','http://localhost:8080/ssm6vo2w/upload/news_picture1.jpg','内容1'),(2,'2020-12-01 01:51:38','标题2','http://localhost:8080/ssm6vo2w/upload/news_picture2.jpg','内容2'),(3,'2020-12-01 01:51:38','标题3','http://localhost:8080/ssm6vo2w/upload/news_picture3.jpg','内容3'),(4,'2020-12-01 01:51:38','标题4','http://localhost:8080/ssm6vo2w/upload/news_picture4.jpg','内容4'),(5,'2020-12-01 01:51:38','标题5','http://localhost:8080/ssm6vo2w/upload/news_picture5.jpg','内容5'),(6,'2020-12-01 01:51:38','标题6','http://localhost:8080/ssm6vo2w/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicheleixing`
--

DROP TABLE IF EXISTS `qicheleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicheleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='汽车类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicheleixing`
--

LOCK TABLES `qicheleixing` WRITE;
/*!40000 ALTER TABLE `qicheleixing` DISABLE KEYS */;
INSERT INTO `qicheleixing` VALUES (1,'2020-12-01 01:51:38','汽车类型1'),(2,'2020-12-01 01:51:38','汽车类型2'),(3,'2020-12-01 01:51:38','汽车类型3'),(4,'2020-12-01 01:51:38','汽车类型4'),(5,'2020-12-01 01:51:38','汽车类型5'),(6,'2020-12-01 01:51:38','汽车类型6');
/*!40000 ALTER TABLE `qicheleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qichexinxi`
--

DROP TABLE IF EXISTS `qichexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `qichexinghao` varchar(200) DEFAULT NULL COMMENT '汽车型号',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `zuowei` varchar(200) DEFAULT NULL COMMENT '座位',
  `zujin` int(11) DEFAULT NULL COMMENT '租金',
  `quchedidian` varchar(200) DEFAULT NULL COMMENT '取车地点',
  `haichedidian` varchar(200) DEFAULT NULL COMMENT '还车地点',
  `cheliangxiaodushijian` datetime DEFAULT NULL COMMENT '车辆消毒时间',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qichebianhao` (`qichebianhao`),
  UNIQUE KEY `chepaihao` (`chepaihao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='汽车信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qichexinxi`
--

LOCK TABLES `qichexinxi` WRITE;
/*!40000 ALTER TABLE `qichexinxi` DISABLE KEYS */;
INSERT INTO `qichexinxi` VALUES (1,'2020-12-01 01:51:38','汽车编号1','汽车品牌1','车牌号1','http://localhost:8080/ssm6vo2w/upload/qichexinxi_tupian1.jpg','汽车型号1','颜色1','待租','4座',1,'取车地点1','还车地点1','2020-12-01 09:51:38','详情1','2020-12-01 09:51:38',1),(2,'2020-12-01 01:51:38','汽车编号2','汽车品牌2','车牌号2','http://localhost:8080/ssm6vo2w/upload/qichexinxi_tupian2.jpg','汽车型号2','颜色2','待租','4座',2,'取车地点2','还车地点2','2020-12-01 09:51:38','详情2','2020-12-01 09:51:38',2),(3,'2020-12-01 01:51:38','汽车编号3','汽车品牌3','车牌号3','http://localhost:8080/ssm6vo2w/upload/qichexinxi_tupian3.jpg','汽车型号3','颜色3','待租','4座',3,'取车地点3','还车地点3','2020-12-01 09:51:38','详情3','2020-12-01 09:51:38',3),(4,'2020-12-01 01:51:38','汽车编号4','汽车品牌4','车牌号4','http://localhost:8080/ssm6vo2w/upload/qichexinxi_tupian4.jpg','汽车型号4','颜色4','待租','4座',4,'取车地点4','还车地点4','2020-12-01 09:51:38','详情4','2020-12-01 10:00:20',5),(5,'2020-12-01 01:51:38','汽车编号5','汽车品牌5','车牌号5','http://localhost:8080/ssm6vo2w/upload/qichexinxi_tupian5.jpg','汽车型号5','颜色5','待租','4座',5,'取车地点5','还车地点5','2020-12-01 09:51:38','详情5','2020-12-01 09:51:38',5),(6,'2020-12-01 01:51:38','汽车编号6','汽车品牌6','车牌号6','http://localhost:8080/ssm6vo2w/upload/qichexinxi_tupian6.jpg','汽车型号6','颜色6','待租','4座',6,'取车地点6','还车地点6','2020-12-01 09:51:38','详情6','2020-12-01 09:51:38',6);
/*!40000 ALTER TABLE `qichexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-12-01 01:51:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weizhangjilu`
--

DROP TABLE IF EXISTS `weizhangjilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weizhangjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `weizhangdidian` varchar(200) DEFAULT NULL COMMENT '违章地点',
  `chulijieguo` longtext COMMENT '处理结果',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='违章记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weizhangjilu`
--

LOCK TABLES `weizhangjilu` WRITE;
/*!40000 ALTER TABLE `weizhangjilu` DISABLE KEYS */;
INSERT INTO `weizhangjilu` VALUES (1,'2020-12-01 01:51:38','编号1','汽车编号1','汽车品牌1','车牌号1','用户名1','用户姓名1','违章地点1','处理结果1','否',''),(2,'2020-12-01 01:51:38','编号2','汽车编号2','汽车品牌2','车牌号2','用户名2','用户姓名2','违章地点2','处理结果2','否',''),(3,'2020-12-01 01:51:38','编号3','汽车编号3','汽车品牌3','车牌号3','用户名3','用户姓名3','违章地点3','处理结果3','否',''),(4,'2020-12-01 01:51:38','编号4','汽车编号4','汽车品牌4','车牌号4','用户名4','用户姓名4','违章地点4','处理结果4','否',''),(5,'2020-12-01 01:51:38','编号5','汽车编号5','汽车品牌5','车牌号5','用户名5','用户姓名5','违章地点5','处理结果5','否',''),(6,'2020-12-01 01:51:38','编号6','汽车编号6','汽车品牌6','车牌号6','用户名6','用户姓名6','违章地点6','处理结果6','否','');
/*!40000 ALTER TABLE `weizhangjilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuzuxinxi`
--

DROP TABLE IF EXISTS `xuzuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuzuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `zujin` int(11) DEFAULT NULL COMMENT '租金',
  `xuzutianshu` int(11) DEFAULT NULL COMMENT '续租天数',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='续租信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuzuxinxi`
--

LOCK TABLES `xuzuxinxi` WRITE;
/*!40000 ALTER TABLE `xuzuxinxi` DISABLE KEYS */;
INSERT INTO `xuzuxinxi` VALUES (1,'2020-12-01 01:51:38','订单编号1','汽车编号1','车牌号1','汽车品牌1',1,1,1,'用户名1','用户姓名1','2020-12-01','否','','未支付'),(2,'2020-12-01 01:51:38','订单编号2','汽车编号2','车牌号2','汽车品牌2',2,2,2,'用户名2','用户姓名2','2020-12-01','否','','未支付'),(3,'2020-12-01 01:51:38','订单编号3','汽车编号3','车牌号3','汽车品牌3',3,3,3,'用户名3','用户姓名3','2020-12-01','否','','未支付'),(4,'2020-12-01 01:51:38','订单编号4','汽车编号4','车牌号4','汽车品牌4',4,4,4,'用户名4','用户姓名4','2020-12-01','否','','未支付'),(5,'2020-12-01 01:51:38','订单编号5','汽车编号5','车牌号5','汽车品牌5',5,5,5,'用户名5','用户姓名5','2020-12-01','否','','未支付'),(6,'2020-12-01 01:51:38','订单编号6','汽车编号6','车牌号6','汽车品牌6',6,6,6,'用户名6','用户姓名6','2020-12-01','否','','未支付');
/*!40000 ALTER TABLE `xuzuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'2020-12-01 01:51:38','用户1','用户姓名1','123456','男','020-89819991','440300199101010001'),(2,'2020-12-01 01:51:38','用户2','用户姓名2','123456','男','020-89819992','440300199202020002'),(3,'2020-12-01 01:51:38','用户3','用户姓名3','123456','男','020-89819993','440300199303030003'),(4,'2020-12-01 01:51:38','用户4','用户姓名4','123456','男','020-89819994','440300199404040004'),(5,'2020-12-01 01:51:38','用户5','用户姓名5','123456','男','020-89819995','440300199505050005'),(6,'2020-12-01 01:51:38','用户6','用户姓名6','123456','男','020-89819996','440300199606060006');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulinxinxi`
--

DROP TABLE IF EXISTS `zulinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zulinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `zujin` int(11) DEFAULT NULL COMMENT '租金',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `zulinshijian` date DEFAULT NULL COMMENT '租赁时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='租赁信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulinxinxi`
--

LOCK TABLES `zulinxinxi` WRITE;
/*!40000 ALTER TABLE `zulinxinxi` DISABLE KEYS */;
INSERT INTO `zulinxinxi` VALUES (1,'2020-12-01 01:51:38','订单编号1','汽车编号1','车牌号1','汽车品牌1',1,1,1,'用户名1','用户姓名1','2020-12-01','未支付'),(2,'2020-12-01 01:51:38','订单编号2','汽车编号2','车牌号2','汽车品牌2',2,2,2,'用户名2','用户姓名2','2020-12-01','未支付'),(3,'2020-12-01 01:51:38','订单编号3','汽车编号3','车牌号3','汽车品牌3',3,3,3,'用户名3','用户姓名3','2020-12-01','未支付'),(4,'2020-12-01 01:51:38','订单编号4','汽车编号4','车牌号4','汽车品牌4',4,4,4,'用户名4','用户姓名4','2020-12-01','未支付'),(5,'2020-12-01 01:51:38','订单编号5','汽车编号5','车牌号5','汽车品牌5',5,5,5,'用户名5','用户姓名5','2020-12-01','未支付'),(6,'2020-12-01 01:51:38','订单编号6','汽车编号6','车牌号6','汽车品牌6',6,6,6,'用户名6','用户姓名6','2020-12-01','未支付');
/*!40000 ALTER TABLE `zulinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 10:00:55
