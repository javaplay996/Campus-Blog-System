-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot60zv5
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
-- Table structure for table `bozhu`
--

DROP TABLE IF EXISTS `bozhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bozhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bozhuzhanghao` varchar(200) NOT NULL COMMENT '博主账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `bozhuxingming` varchar(200) NOT NULL COMMENT '博主姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bozhuzhanghao` (`bozhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615810580607 DEFAULT CHARSET=utf8 COMMENT='博主';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bozhu`
--

LOCK TABLES `bozhu` WRITE;
/*!40000 ALTER TABLE `bozhu` DISABLE KEYS */;
INSERT INTO `bozhu` VALUES (11,'2021-03-15 11:55:17','博主1','123456','博主姓名1','http://localhost:8080/springboot60zv5/upload/bozhu_touxiang1.jpg','男',1,'13823888881','773890001@qq.com'),(12,'2021-03-15 11:55:17','博主2','123456','博主姓名2','http://localhost:8080/springboot60zv5/upload/bozhu_touxiang2.jpg','男',2,'13823888882','773890002@qq.com'),(13,'2021-03-15 11:55:17','博主3','123456','博主姓名3','http://localhost:8080/springboot60zv5/upload/bozhu_touxiang3.jpg','男',3,'13823888883','773890003@qq.com'),(14,'2021-03-15 11:55:17','博主4','123456','博主姓名4','http://localhost:8080/springboot60zv5/upload/bozhu_touxiang4.jpg','男',4,'13823888884','773890004@qq.com'),(15,'2021-03-15 11:55:17','博主5','123456','博主姓名5','http://localhost:8080/springboot60zv5/upload/bozhu_touxiang5.jpg','男',5,'13823888885','773890005@qq.com'),(16,'2021-03-15 11:55:17','博主6','123456','博主姓名6','http://localhost:8080/springboot60zv5/upload/bozhu_touxiang6.jpg','男',6,'13823888886','773890006@qq.com'),(1615810391925,'2021-03-15 12:13:11','1','1','陈一','http://localhost:8080/springboot60zv5/upload/1615810405246.jpg','女',22,'12345678978','123@qq.com'),(1615810580606,'2021-03-15 12:16:20','2','2','王明','http://localhost:8080/springboot60zv5/upload/1615810595054.jpg','男',25,'12345645612','159@qq.com');
/*!40000 ALTER TABLE `bozhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615810724029 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-15 11:55:17',1,1,'提问1','回复1',1),(52,'2021-03-15 11:55:17',2,2,'提问2','回复2',2),(53,'2021-03-15 11:55:17',3,3,'提问3','回复3',3),(54,'2021-03-15 11:55:17',4,4,'提问4','回复4',4),(55,'2021-03-15 11:55:17',5,5,'提问5','回复5',5),(56,'2021-03-15 11:55:17',6,6,'提问6','回复6',6),(1615810114904,'2021-03-15 12:08:34',1615809946983,NULL,'可以与管理员进行实时聊天沟通',NULL,0),(1615810158625,'2021-03-15 12:09:18',1615809946983,1,NULL,'1',NULL),(1615810685689,'2021-03-15 12:18:05',1615810580606,NULL,'可以与管理员进行实时沟通',NULL,0),(1615810724028,'2021-03-15 12:18:44',1615810580606,1,NULL,'1',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot60zv5/upload/1615809593916.jpg'),(2,'picture2','http://localhost:8080/springboot60zv5/upload/1615810325069.jpg'),(3,'picture3','http://localhost:8080/springboot60zv5/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusswenzhangxinxi`
--

DROP TABLE IF EXISTS `discusswenzhangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusswenzhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615810665573 DEFAULT CHARSET=utf8 COMMENT='文章信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusswenzhangxinxi`
--

LOCK TABLES `discusswenzhangxinxi` WRITE;
/*!40000 ALTER TABLE `discusswenzhangxinxi` DISABLE KEYS */;
INSERT INTO `discusswenzhangxinxi` VALUES (81,'2021-03-15 11:55:17',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-03-15 11:55:17',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-03-15 11:55:17',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-03-15 11:55:17',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-03-15 11:55:17',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-03-15 11:55:17',6,6,'用户名6','评论内容6','回复内容6'),(1615810093599,'2021-03-15 12:08:12',1615809871262,1615809946983,'2','感情真挚，很不错的文章','多谢捧场'),(1615810665572,'2021-03-15 12:17:45',1615810493025,1615810580606,'2','写得不错，情感真挚流露','多谢捧场');
/*!40000 ALTER TABLE `discusswenzhangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jubaotousu`
--

DROP TABLE IF EXISTS `jubaotousu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jubaotousu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jubaoneirong` longtext NOT NULL COMMENT '举报内容',
  `jubaoshijian` date DEFAULT NULL COMMENT '举报时间',
  `bozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '博主账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615810544100 DEFAULT CHARSET=utf8 COMMENT='举报投诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jubaotousu`
--

LOCK TABLES `jubaotousu` WRITE;
/*!40000 ALTER TABLE `jubaotousu` DISABLE KEYS */;
INSERT INTO `jubaotousu` VALUES (41,'2021-03-15 11:55:17','标题1','类型1','http://localhost:8080/springboot60zv5/upload/jubaotousu_tupian1.jpg','举报内容1','2021-03-15','博主账号1','手机1','是',''),(42,'2021-03-15 11:55:17','标题2','类型2','http://localhost:8080/springboot60zv5/upload/1615809561966.jpg','举报内容2','2021-03-15','博主账号2','手机2','是',''),(43,'2021-03-15 11:55:17','标题3','类型3','http://localhost:8080/springboot60zv5/upload/jubaotousu_tupian3.jpg','举报内容3','2021-03-15','博主账号3','手机3','是',''),(44,'2021-03-15 11:55:17','标题4','类型4','http://localhost:8080/springboot60zv5/upload/jubaotousu_tupian4.jpg','举报内容4','2021-03-15','博主账号4','手机4','是',''),(45,'2021-03-15 11:55:17','标题5','类型5','http://localhost:8080/springboot60zv5/upload/jubaotousu_tupian5.jpg','举报内容5','2021-03-15','博主账号5','手机5','是',''),(46,'2021-03-15 11:55:17','标题6','类型6','http://localhost:8080/springboot60zv5/upload/1615809576579.jpg','举报内容6','2021-03-15','博主账号6','手机6','是',''),(1615810544099,'2021-03-15 12:15:43','举报违规内容','不良言论','http://localhost:8080/springboot60zv5/upload/1615810518881.jpg','博主账号为UFGRD的博主发布不良言论的博客文章','2021-03-15','1','12345678978','是','ok');
/*!40000 ALTER TABLE `jubaotousu` ENABLE KEYS */;
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
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615810366418 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (71,'2021-03-15 11:55:17','标题1','简介1','http://localhost:8080/springboot60zv5/upload/news_picture1.jpg','内容1'),(72,'2021-03-15 11:55:17','标题2','简介2','http://localhost:8080/springboot60zv5/upload/news_picture2.jpg','内容2'),(73,'2021-03-15 11:55:17','标题3','简介3','http://localhost:8080/springboot60zv5/upload/1615809620404.jpg','<p>内容3</p>'),(74,'2021-03-15 11:55:17','标题4','简介4','http://localhost:8080/springboot60zv5/upload/1615809629841.jpg','<p>内容4</p>'),(75,'2021-03-15 11:55:17','标题5','简介5','http://localhost:8080/springboot60zv5/upload/news_picture5.jpg','内容5'),(76,'2021-03-15 11:55:17','标题6','简介6','http://localhost:8080/springboot60zv5/upload/1615809640209.jpg','<p>内容6</p>'),(1615810366417,'2021-03-15 12:12:45','关于校园博客规范使用通知','规范使用博客','http://localhost:8080/springboot60zv5/upload/1615810344631.jpg','<p>不得发布不良言论的博客文章</p><p><img src=\"http://localhost:8080/springboot60zv5/upload/1615810363830.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1615810646850 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615810646849,'2021-03-15 12:17:26',1615810580606,1615810493025,'wenzhangxinxi','关于一个电影的日记','http://localhost:8080/springboot60zv5/upload/1615810470786.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'博主1','bozhu','博主','sw34jgn7tcyav6hr1wn6s89xpqt4kei7','2021-03-15 11:56:13','2021-03-15 12:56:13'),(2,1,'abo','users','管理员','24jtn4dk5krhacgpnswglxh4yfmj28vd','2021-03-15 11:56:45','2021-03-15 13:18:13'),(3,1615809794300,'1','bozhu','博主','x2il9laxqr5hyvq9pxvtalfm90ofq38u','2021-03-15 12:03:19','2021-03-15 13:09:26'),(4,1615809946983,'2','bozhu','博主','hh6fi8j7son5fnqu3itadcylizjca2uh','2021-03-15 12:05:52','2021-03-15 13:09:57'),(5,1615810391925,'1','bozhu','博主','80hftvdmx0jc1pqg5xnns7jtj099b7zq','2021-03-15 12:13:17','2021-03-15 13:18:50'),(6,1615810580606,'2','bozhu','博主','bfg0335nnzq48p88ka2p3kd8jgcqwnp4','2021-03-15 12:16:25','2021-03-15 13:16:26');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-15 11:55:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenzhangfenlei`
--

DROP TABLE IF EXISTS `wenzhangfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenzhangfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615810309446 DEFAULT CHARSET=utf8 COMMENT='文章分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenzhangfenlei`
--

LOCK TABLES `wenzhangfenlei` WRITE;
/*!40000 ALTER TABLE `wenzhangfenlei` DISABLE KEYS */;
INSERT INTO `wenzhangfenlei` VALUES (21,'2021-03-15 11:55:17','生活场景'),(22,'2021-03-15 11:55:17','城镇景观'),(23,'2021-03-15 11:55:17','旅游休闲'),(24,'2021-03-15 11:55:17','美食'),(25,'2021-03-15 11:55:17','服饰'),(26,'2021-03-15 11:55:17','电影'),(1615810309445,'2021-03-15 12:11:48','军训有感');
/*!40000 ALTER TABLE `wenzhangfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenzhangxinxi`
--

DROP TABLE IF EXISTS `wenzhangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenzhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `bozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '博主账号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615810493026 DEFAULT CHARSET=utf8 COMMENT='文章信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenzhangxinxi`
--

LOCK TABLES `wenzhangxinxi` WRITE;
/*!40000 ALTER TABLE `wenzhangxinxi` DISABLE KEYS */;
INSERT INTO `wenzhangxinxi` VALUES (31,'2021-03-15 11:55:17','文章标题1','城镇景观','http://localhost:8080/springboot60zv5/upload/1615809478115.jpg','<p>文章内容1</p>','2021-03-15','博主账号1','邮箱1','2021-03-15 19:57:42',2),(32,'2021-03-15 11:55:17','文章标题2','旅游休闲','http://localhost:8080/springboot60zv5/upload/1615809487708.jpg','<p>文章内容2</p>','2021-03-15','博主账号2','邮箱2','2021-03-15 19:58:02',3),(33,'2021-03-15 11:55:17','文章标题3','服饰','http://localhost:8080/springboot60zv5/upload/1615809501958.jpg','<p>文章内容3</p>','2021-03-15','博主账号3','邮箱3','2021-03-15 19:58:11',4),(34,'2021-03-15 11:55:17','文章标题4','生活场景','http://localhost:8080/springboot60zv5/upload/1615809522103.jpg','<p>文章内容4</p>','2021-03-15','博主账号4','邮箱4','2021-03-15 19:58:25',5),(35,'2021-03-15 11:55:17','文章标题5','电影','http://localhost:8080/springboot60zv5/upload/1615809537763.jpg','<p>文章内容5</p>','2021-03-15','博主账号5','邮箱5','2021-03-15 20:16:54',11),(36,'2021-03-15 11:55:17','文章标题6','美食','http://localhost:8080/springboot60zv5/upload/wenzhangxinxi_tupian6.jpg','<p>文章内容6</p>','2021-03-15','博主账号6','邮箱6','2021-03-15 20:13:37',9),(1615810493025,'2021-03-15 12:14:52','关于一个电影的日记','电影','http://localhost:8080/springboot60zv5/upload/1615810470786.jpg','<p><br></p><p>我喜爱的电影，寻找总是要费很大的功夫，得到却都显得极为偶然，应了一句古话“踏破铁鞋无觅处，得来全不费工夫”。</p><p><br></p><p>&nbsp;上一个寒假，也是无聊的小憩中，无聊地打开电视，看到了我希冀以久的电影“牧马人”，今天早晨起床很迟，想不能错过电视的好节目，一旦有自己想看的“城南旧事”错过了怎能不让人痛心——然而终于没有失去这次机会。我爱的这些个电影，在音像店里是找不到的。想我过去花了多大的功夫，从满怀希望到希望慢慢的消灭，走进一家音像店，又走出来，收获的只是梦寐难以成真的感慨。</p><p><br></p><p>&nbsp;大概像这样的好电影，人生难得拥有，它只能像过客，在你的珍视的目光下溜走，留下的只是那或清晰或模糊但一辈子都难忘一辈子都追寻的感情。</p><p><br></p><p>&nbsp;其实，像“牧马人”也好“城南旧事”也好，与我这偶然的聚首实是重逢。我第一次看“城南旧事”还是小学六年级的事情呢，那年给乡下爷爷奶奶买的彩色电视机还没有带回去，就停靠在我们一家拥挤的宿舍里。我只是看了一点点片断，但从此难忘。脑海里常常浮现出电影的一幕幕：黑黑的夜里风雨交加，马车踏着水声驶过，那个破旧的小院里，年轻人真挚的无奈的眼神···这次六七年前的邂逅，并没有使我对这部影片的情节懂得清楚，今天看来我那时留下来的印象是如此模糊，我的印象竟至忽略了秀贞的命运，忽略了宋妈的悲恸，忽略了英子爸爸的伤逝···我的脑海中只有模糊的荒园里面年轻人的形象，还有模糊的风雨的情景，旧庭院里昏黄的灯光，只此而已，但是却总难忘。</p>','2021-03-15','1','123@qq.com','2021-03-15 20:17:48',3);
/*!40000 ALTER TABLE `wenzhangxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 15:16:50
