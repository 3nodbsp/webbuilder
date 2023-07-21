DROP DATABASE IF EXISTS ssmu643g;

CREATE DATABASE ssmu643g default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmu643g;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)  UNIQUE   COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`mima` varchar(200)    COMMENT '密码',
	`xingbie` varchar(200)    COMMENT '性别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,yonghuxingming,mima,xingbie,lianxidianhua,shenfenzheng) VALUES('用户1','用户姓名1','123456','男','13823888881','440300199101010001');
INSERT INTO yonghu(yonghuming,yonghuxingming,mima,xingbie,lianxidianhua,shenfenzheng) VALUES('用户2','用户姓名2','123456','男','13823888882','440300199202020002');
INSERT INTO yonghu(yonghuming,yonghuxingming,mima,xingbie,lianxidianhua,shenfenzheng) VALUES('用户3','用户姓名3','123456','男','13823888883','440300199303030003');

DROP TABLE IF EXISTS `kefangku`;

CREATE TABLE `kefangku` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`bianhao` varchar(200)    COMMENT '编号',
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`tupian` varchar(200)    COMMENT '图片',
	`shuliang` int    COMMENT '数量',
	`qingjiefangjian` int    COMMENT '清洁房间',
	`xiyifuwu` int    COMMENT '洗衣服务',
	`jiaoxingfuwu` int    COMMENT '叫醒服务',
	`jiachuangfuwu` int    COMMENT '加床服务',
	`songcanfuwu` int    COMMENT '送餐服务',
	`baomufuwu` int    COMMENT '保姆服务',
	`xiangqing` longtext    COMMENT '详情',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`clicktime` datetime    COMMENT '最近点击时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客房库';

INSERT INTO kefangku(bianhao,kefangleixing,tupian,shuliang,qingjiefangjian,xiyifuwu,jiaoxingfuwu,jiachuangfuwu,songcanfuwu,baomufuwu,xiangqing,sfsh,shhf,clicktime) VALUES('编号1','客房类型1','http://localhost:8080/ssmu643g/upload/kefangku_tupian1.jpg',1,1,1,1,1,1,1,'详情1','否','',CURRENT_TIMESTAMP);
INSERT INTO kefangku(bianhao,kefangleixing,tupian,shuliang,qingjiefangjian,xiyifuwu,jiaoxingfuwu,jiachuangfuwu,songcanfuwu,baomufuwu,xiangqing,sfsh,shhf,clicktime) VALUES('编号2','客房类型2','http://localhost:8080/ssmu643g/upload/kefangku_tupian2.jpg',2,2,2,2,2,2,2,'详情2','否','',CURRENT_TIMESTAMP);
INSERT INTO kefangku(bianhao,kefangleixing,tupian,shuliang,qingjiefangjian,xiyifuwu,jiaoxingfuwu,jiachuangfuwu,songcanfuwu,baomufuwu,xiangqing,sfsh,shhf,clicktime) VALUES('编号3','客房类型3','http://localhost:8080/ssmu643g/upload/kefangku_tupian3.jpg',3,3,3,3,3,3,3,'详情3','否','',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `kefangleixing`;

CREATE TABLE `kefangleixing` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客房类型';

INSERT INTO kefangleixing(kefangleixing) VALUES('客房类型1');
INSERT INTO kefangleixing(kefangleixing) VALUES('客房类型2');
INSERT INTO kefangleixing(kefangleixing) VALUES('客房类型3');

DROP TABLE IF EXISTS `yudingxinxi`;

CREATE TABLE `yudingxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`dingdanbianhao` varchar(200)  UNIQUE   COMMENT '订单编号',
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`shuliang` int    COMMENT '数量',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dengjishijian` date    COMMENT '登记时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预定信息';

INSERT INTO yudingxinxi(dingdanbianhao,kefangleixing,shuliang,yonghuming,yonghuxingming,lianxidianhua,dengjishijian,sfsh,shhf) VALUES('订单编号1','客房类型1',1,'用户名1','用户姓名1','联系电话1',CURRENT_TIMESTAMP,'否','');
INSERT INTO yudingxinxi(dingdanbianhao,kefangleixing,shuliang,yonghuming,yonghuxingming,lianxidianhua,dengjishijian,sfsh,shhf) VALUES('订单编号2','客房类型2',2,'用户名2','用户姓名2','联系电话2',CURRENT_TIMESTAMP,'否','');
INSERT INTO yudingxinxi(dingdanbianhao,kefangleixing,shuliang,yonghuming,yonghuxingming,lianxidianhua,dengjishijian,sfsh,shhf) VALUES('订单编号3','客房类型3',3,'用户名3','用户姓名3','联系电话3',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `tuidingxinxi`;

CREATE TABLE `tuidingxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`dingdanbianhao` varchar(200)    COMMENT '订单编号',
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`shuliang` varchar(200)    COMMENT '数量',
	`tuidingyuanyin` longtext    COMMENT '退订原因',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`dengjishijian` date    COMMENT '登记时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退订信息';

INSERT INTO tuidingxinxi(dingdanbianhao,kefangleixing,shuliang,tuidingyuanyin,yonghuming,yonghuxingming,dengjishijian,sfsh,shhf) VALUES('订单编号1','客房类型1','数量1','退订原因1','用户名1','用户姓名1',CURRENT_TIMESTAMP,'否','');
INSERT INTO tuidingxinxi(dingdanbianhao,kefangleixing,shuliang,tuidingyuanyin,yonghuming,yonghuxingming,dengjishijian,sfsh,shhf) VALUES('订单编号2','客房类型2','数量2','退订原因2','用户名2','用户姓名2',CURRENT_TIMESTAMP,'否','');
INSERT INTO tuidingxinxi(dingdanbianhao,kefangleixing,shuliang,tuidingyuanyin,yonghuming,yonghuxingming,dengjishijian,sfsh,shhf) VALUES('订单编号3','客房类型3','数量3','退订原因3','用户名3','用户姓名3',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `xuzuxinxi`;

CREATE TABLE `xuzuxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`dingdanbianhao` varchar(200)    COMMENT '订单编号',
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`xuzutianshu` int    COMMENT '续住天数',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`dengjishijian` date    COMMENT '登记时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='续住信息';

INSERT INTO xuzuxinxi(dingdanbianhao,kefangleixing,xuzutianshu,yonghuming,dengjishijian,sfsh,shhf) VALUES('订单编号1','客房类型1',1,'用户名1',CURRENT_TIMESTAMP,'否','');
INSERT INTO xuzuxinxi(dingdanbianhao,kefangleixing,xuzutianshu,yonghuming,dengjishijian,sfsh,shhf) VALUES('订单编号2','客房类型2',2,'用户名2',CURRENT_TIMESTAMP,'否','');
INSERT INTO xuzuxinxi(dingdanbianhao,kefangleixing,xuzutianshu,yonghuming,dengjishijian,sfsh,shhf) VALUES('订单编号3','客房类型3',3,'用户名3',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `feiyongxinxi`;

CREATE TABLE `feiyongxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`qingjiefangjian` int    COMMENT '清洁房间',
	`xiyifuwu` int    COMMENT '洗衣服务',
	`jiaoxingfuwu` int    COMMENT '叫醒服务',
	`jiachuangfuwu` int    COMMENT '加床服务',
	`songcanfuwu` int    COMMENT '送餐服务',
	`baomufuwu` int    COMMENT '保姆服务',
	`zongfeiyong` int    COMMENT '总费用',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`dengjishijian` date    COMMENT '登记时间',
	`beizhu` longtext    COMMENT '备注',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='费用信息';

INSERT INTO feiyongxinxi(kefangleixing,qingjiefangjian,xiyifuwu,jiaoxingfuwu,jiachuangfuwu,songcanfuwu,baomufuwu,zongfeiyong,yonghuming,dengjishijian,beizhu,ispay) VALUES('客房类型1',1,1,1,1,1,1,1,'用户名1',CURRENT_TIMESTAMP,'备注1','未支付');
INSERT INTO feiyongxinxi(kefangleixing,qingjiefangjian,xiyifuwu,jiaoxingfuwu,jiachuangfuwu,songcanfuwu,baomufuwu,zongfeiyong,yonghuming,dengjishijian,beizhu,ispay) VALUES('客房类型2',2,2,2,2,2,2,2,'用户名2',CURRENT_TIMESTAMP,'备注2','未支付');
INSERT INTO feiyongxinxi(kefangleixing,qingjiefangjian,xiyifuwu,jiaoxingfuwu,jiachuangfuwu,songcanfuwu,baomufuwu,zongfeiyong,yonghuming,dengjishijian,beizhu,ispay) VALUES('客房类型3',3,3,3,3,3,3,3,'用户名3',CURRENT_TIMESTAMP,'备注3','未支付');

DROP TABLE IF EXISTS `huanfangxinxi`;

CREATE TABLE `huanfangxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`dingdanbianhao` varchar(200)  UNIQUE   COMMENT '订单编号',
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`shuliang` varchar(200)    COMMENT '数量',
	`huanfangyuanyin` longtext    COMMENT '换房原因',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`dengjishijian` date    COMMENT '登记时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='换房信息';

INSERT INTO huanfangxinxi(dingdanbianhao,kefangleixing,shuliang,huanfangyuanyin,yonghuming,yonghuxingming,dengjishijian,sfsh,shhf) VALUES('订单编号1','客房类型1','数量1','换房原因1','用户名1','用户姓名1',CURRENT_TIMESTAMP,'否','');
INSERT INTO huanfangxinxi(dingdanbianhao,kefangleixing,shuliang,huanfangyuanyin,yonghuming,yonghuxingming,dengjishijian,sfsh,shhf) VALUES('订单编号2','客房类型2','数量2','换房原因2','用户名2','用户姓名2',CURRENT_TIMESTAMP,'否','');
INSERT INTO huanfangxinxi(dingdanbianhao,kefangleixing,shuliang,huanfangyuanyin,yonghuming,yonghuxingming,dengjishijian,sfsh,shhf) VALUES('订单编号3','客房类型3','数量3','换房原因3','用户名3','用户姓名3',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','http://localhost:8080/ssmu643g/upload/news_picture1.jpg','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','http://localhost:8080/ssmu643g/upload/news_picture2.jpg','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','http://localhost:8080/ssmu643g/upload/news_picture3.jpg','内容3');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssmu643g/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssmu643g/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssmu643g/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/ssmu643g/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/ssmu643g/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

