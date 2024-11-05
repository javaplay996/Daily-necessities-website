/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - riyongpinwangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`riyongpinwangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `riyongpinwangzhan`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616118959675 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-19 09:11:57',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-19 09:11:57',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-19 09:11:57',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-19 09:11:57',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-19 09:11:57',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-19 09:11:57',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616118959674,'2021-03-19 09:55:59',1616118886395,'广东省梅州市梅县区新城街道国商二街恒基广场','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'tejiashangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378339554 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/riyongpinwangzhan/upload/1616118638504.jpg'),(2,'picture2','http://localhost:8080/riyongpinwangzhan/upload/1616118646137.jpg'),(3,'picture3','http://localhost:8080/riyongpinwangzhan/upload/1616118839452.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `pingjiabiaoti` varchar(200) DEFAULT NULL COMMENT '评价标题',
  `dingdanpingfen` varchar(200) DEFAULT NULL COMMENT '订单评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616119209272 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`pingjiabiaoti`,`dingdanpingfen`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (61,'2021-03-19 09:11:57','订单编号1','评价标题1','1','评价内容1','2021-03-19','用户名1','联系电话1','是',''),(62,'2021-03-19 09:11:57','订单编号2','评价标题2','1','评价内容2','2021-03-19','用户名2','联系电话2','是',''),(63,'2021-03-19 09:11:57','订单编号3','评价标题3','1','评价内容3','2021-03-19','用户名3','联系电话3','是',''),(64,'2021-03-19 09:11:57','订单编号4','评价标题4','1','评价内容4','2021-03-19','用户名4','联系电话4','是',''),(65,'2021-03-19 09:11:57','订单编号5','评价标题5','1','评价内容5','2021-03-19','用户名5','联系电话5','是',''),(66,'2021-03-19 09:11:57','订单编号6','评价标题6','1','评价内容6','2021-03-19','用户名6','联系电话6','是',''),(1616119209271,'2021-03-19 10:00:08','2021319957575457690','精华露30ml','5','很不错的精华','2021-03-19','1','12312312312','是','感谢支持');

/*Table structure for table `discussrexiaoshangpin` */

DROP TABLE IF EXISTS `discussrexiaoshangpin`;

CREATE TABLE `discussrexiaoshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616119142717 DEFAULT CHARSET=utf8 COMMENT='热销商品评论表';

/*Data for the table `discussrexiaoshangpin` */

insert  into `discussrexiaoshangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-03-19 09:11:57',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-19 09:11:57',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-19 09:11:57',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-19 09:11:57',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-19 09:11:57',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-19 09:11:57',6,6,'用户名6','评论内容6','回复内容6'),(1616119142716,'2021-03-19 09:59:02',1616118761844,1616118886395,'1','很不错的商品',NULL);

/*Table structure for table `discusstejiashangpin` */

DROP TABLE IF EXISTS `discusstejiashangpin`;

CREATE TABLE `discusstejiashangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616119156140 DEFAULT CHARSET=utf8 COMMENT='特价商品评论表';

/*Data for the table `discusstejiashangpin` */

insert  into `discusstejiashangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-03-19 09:11:57',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-19 09:11:57',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-19 09:11:57',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-19 09:11:57',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-19 09:11:57',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-19 09:11:57',6,6,'用户名6','评论内容6','回复内容6'),(1616119156139,'2021-03-19 09:59:15',1616118801519,1616118886395,'1','很不错的商品',NULL);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616119060189 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-03-19 09:11:57',1,'用户名1','留言内容1','回复内容1'),(122,'2021-03-19 09:11:57',2,'用户名2','留言内容2','回复内容2'),(123,'2021-03-19 09:11:57',3,'用户名3','留言内容3','回复内容3'),(124,'2021-03-19 09:11:57',4,'用户名4','留言内容4','回复内容4'),(125,'2021-03-19 09:11:57',5,'用户名5','留言内容5','回复内容5'),(126,'2021-03-19 09:11:57',6,'用户名6','留言内容6','回复内容6'),(1616119060188,'2021-03-19 09:57:39',1616118886395,'1','请问有宠物用品吗','有的');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616118824698 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-19 09:11:57','标题1','简介1','http://localhost:8080/riyongpinwangzhan/upload/1616118580139.jpg','<p>内容1</p>'),(112,'2021-03-19 09:11:57','标题2','简介2','http://localhost:8080/riyongpinwangzhan/upload/1616118587381.jpg','<p>内容2</p>'),(113,'2021-03-19 09:11:57','标题3','简介3','http://localhost:8080/riyongpinwangzhan/upload/1616118597231.jpg','<p>内容3</p>'),(114,'2021-03-19 09:11:57','标题4','简介4','http://localhost:8080/riyongpinwangzhan/upload/1616118608393.jpg','<p>内容4</p>'),(115,'2021-03-19 09:11:57','标题5','简介5','http://localhost:8080/riyongpinwangzhan/upload/1616118622879.jpg','<p>内容5</p>'),(116,'2021-03-19 09:11:57','标题6','简介6','http://localhost:8080/riyongpinwangzhan/upload/1616118630912.jpg','<p>内容6</p>'),(1616118824697,'2021-03-19 09:53:44','商品优惠资讯','商品优惠','http://localhost:8080/riyongpinwangzhan/upload/1616118813157.jpg','<p>资讯内容</p><p><img src=\"http://localhost:8080/riyongpinwangzhan/upload/1616118823538.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'tejiashangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378354859 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616119078218,'2021-03-19 09:57:57','2021319957575457690','rexiaoshangpin',1616118886395,1616118761844,'娇韵诗双萃精华露30ml','http://localhost:8080/riyongpinwangzhan/upload/1616118746365.jpg',2,690,690,1380,1380,1,'已完成','广东省梅州市梅县区新城街道国商二街恒基广场'),(1618378354840,'2021-04-14 13:32:34','20214141332343548130','rexiaoshangpin',1616118886395,1616118761844,'娇韵诗双萃精华露30ml','http://localhost:8080/riyongpinwangzhan/upload/1616118746365.jpg',1,690,690,1290,690,1,'已完成','广东省梅州市梅县区新城街道国商二街恒基广场'),(1618378354858,'2021-04-14 13:32:34','20214141332343892939','rexiaoshangpin',1616118886395,1618378267299,'商品名称1111','http://localhost:8080/riyongpinwangzhan/upload/1618378253100.jpg',6,100,100,1290,600,1,'已支付','广东省梅州市梅县区新城街道国商二街恒基广场');

/*Table structure for table `pinpai` */

DROP TABLE IF EXISTS `pinpai`;

CREATE TABLE `pinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pinpai` varchar(200) NOT NULL COMMENT '品牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pinpai` (`pinpai`)
) ENGINE=InnoDB AUTO_INCREMENT=1616118723721 DEFAULT CHARSET=utf8 COMMENT='品牌';

/*Data for the table `pinpai` */

insert  into `pinpai`(`id`,`addtime`,`pinpai`) values (31,'2021-03-19 09:11:57','品牌1'),(32,'2021-03-19 09:11:57','品牌2'),(33,'2021-03-19 09:11:57','品牌3'),(34,'2021-03-19 09:11:57','品牌4'),(35,'2021-03-19 09:11:57','品牌5'),(36,'2021-03-19 09:11:57','品牌6');

/*Table structure for table `rexiaoshangpin` */

DROP TABLE IF EXISTS `rexiaoshangpin`;

CREATE TABLE `rexiaoshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378267452 DEFAULT CHARSET=utf8 COMMENT='热销商品';

/*Data for the table `rexiaoshangpin` */

insert  into `rexiaoshangpin`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (41,'2021-03-19 09:11:57','商品名称1','休闲食品','http://localhost:8080/riyongpinwangzhan/upload/1616118349291.jpg','品牌1','规格1','<p>商品详情1</p>','2021-04-14 11:45:44',3,99.9),(42,'2021-03-19 09:11:57','商品名称2','日常用品','http://localhost:8080/riyongpinwangzhan/upload/1616118379665.jpg','品牌2','规格2','<p>商品详情2</p>','2021-04-14 13:37:19',5,99.9),(43,'2021-03-19 09:11:57','商品名称3','日常用品','http://localhost:8080/riyongpinwangzhan/upload/1616118401399.jpg','品牌3','规格3','<p>商品详情3</p>','2021-04-14 11:48:19',6,99.9),(44,'2021-03-19 09:11:57','商品名称4','日常用品','http://localhost:8080/riyongpinwangzhan/upload/1616118417391.jpg','品牌4','规格4','<p>商品详情4</p>','2021-04-14 11:48:29',6,99.9),(45,'2021-03-19 09:11:57','商品名称5','家电','http://localhost:8080/riyongpinwangzhan/upload/1616118430009.jpg','品牌5','规格5','<p>商品详情5</p>','2021-04-14 11:48:36',11,99.9),(46,'2021-03-19 09:11:57','商品名称6','家电','http://localhost:8080/riyongpinwangzhan/upload/1616118443458.jpg','品牌6','规格6','<p>商品详情6</p>','2021-04-14 11:48:47',10,99.9),(1616118761844,'2021-03-19 09:52:40','娇韵诗双萃精华露30ml','日常用品','http://localhost:8080/riyongpinwangzhan/upload/1616118746365.jpg','娇韵诗','30ml','<p>保湿修复</p><p><img src=\"http://localhost:8080/riyongpinwangzhan/upload/1616118759369.jpg\"></p>','2021-04-14 13:32:34',9,690),(1618378267299,'2021-04-14 13:31:06','商品名称1111','家具','http://localhost:8080/riyongpinwangzhan/upload/1618378253100.jpg','品牌3','10克','<p><span style=\"color: rgb(96, 98, 102);\">商品详情商品详情商品详情</span></p>','2021-04-14 13:32:50',4,100);

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378227269 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-19 09:11:57','床上用品'),(22,'2021-03-19 09:11:57','厨卫用品'),(23,'2021-03-19 09:11:57','休闲食品'),(24,'2021-03-19 09:11:57','家电'),(25,'2021-03-19 09:11:57','家具'),(26,'2021-03-19 09:11:57','日常用品');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378369290 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616119006130,'2021-03-19 09:56:45',1616118886395,1616118761844,'rexiaoshangpin','娇韵诗双萃精华露30ml','http://localhost:8080/riyongpinwangzhan/upload/1616118746365.jpg'),(1618378369289,'2021-04-14 13:32:49',1616118886395,1618378267299,'rexiaoshangpin','商品名称1111','http://localhost:8080/riyongpinwangzhan/upload/1618378253100.jpg');

/*Table structure for table `tejiashangpin` */

DROP TABLE IF EXISTS `tejiashangpin`;

CREATE TABLE `tejiashangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616118801520 DEFAULT CHARSET=utf8 COMMENT='特价商品';

/*Data for the table `tejiashangpin` */

insert  into `tejiashangpin`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`price`) values (51,'2021-03-19 09:11:57','商品名称1','休闲食品','http://localhost:8080/riyongpinwangzhan/upload/1616118477420.jpg','品牌1','规格1','<p>商品详情1</p>',99.9),(52,'2021-03-19 09:11:57','商品名称2','体育用品','http://localhost:8080/riyongpinwangzhan/upload/1616118497061.jpg','品牌2','规格2','<p>商品详情2</p>',99.9),(53,'2021-03-19 09:11:57','商品名称3','日用品','http://localhost:8080/riyongpinwangzhan/upload/1616118516146.jpg','品牌3','规格3','<p>商品详情3</p>',99.9),(54,'2021-03-19 09:11:57','商品名称4','服装','http://localhost:8080/riyongpinwangzhan/upload/1616118538394.jpg','品牌4','规格4','<p>商品详情4</p>',99.9),(55,'2021-03-19 09:11:57','商品名称5','电器','http://localhost:8080/riyongpinwangzhan/upload/1616118556331.jpg','品牌5','规格5','<p>商品详情5</p>',99.9),(56,'2021-03-19 09:11:57','商品名称6','电子产品','http://localhost:8080/riyongpinwangzhan/upload/1616118570560.jpg','品牌6','规格6','<p>商品详情6</p>',99.9),(1616118801519,'2021-03-19 09:53:21','楼上泰国芒果干','休闲食品','http://localhost:8080/riyongpinwangzhan/upload/1616118783546.jpg','香港楼上','454g','<p>芒果干介绍</p><p><img src=\"http://localhost:8080/riyongpinwangzhan/upload/1616118800504.jpg\"></p>',29);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','s6sfoqr1s2qusd0yt7rlndwmnjs00lhq','2021-03-19 09:25:41','2021-04-14 14:32:58'),(2,11,'用户1','yonghu','用户','9plgdodhsj8hvxyzv0tkvjpldsg9iv59','2021-03-19 09:25:53','2021-03-19 10:25:54'),(3,1616118886395,'1','yonghu','用户','x0sos55u2gru47patb8jxtuqmluygs5x','2021-03-19 09:54:52','2021-04-14 14:33:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-19 09:11:57');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378201596 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (11,'2021-03-19 09:11:57','用户1','123456','姓名1','http://localhost:8080/riyongpinwangzhan/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-03-19 09:11:57','用户2','123456','姓名2','http://localhost:8080/riyongpinwangzhan/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-03-19 09:11:57','用户3','123456','姓名3','http://localhost:8080/riyongpinwangzhan/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-03-19 09:11:57','用户4','123456','姓名4','http://localhost:8080/riyongpinwangzhan/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-03-19 09:11:57','用户5','123456','姓名5','http://localhost:8080/riyongpinwangzhan/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-03-19 09:11:57','用户6','123456','姓名6','http://localhost:8080/riyongpinwangzhan/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1616118886395,'2021-03-19 09:54:46','1','1','陈一','http://localhost:8080/riyongpinwangzhan/upload/1616118931127.jpg','女','12312312312',12312300000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
