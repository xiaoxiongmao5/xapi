-- MySQL dump 10.13  Distrib 8.1.0, for macos12.6 (arm64)
--
-- Host: 127.0.0.1    Database: xapi
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `interface_info`
--

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
GRANT ALL PRIVILEGES ON xapi.* TO 'xapiuser'@'%';
FLUSH PRIVILEGES;

use xapi;

DROP TABLE IF EXISTS `interface_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interface_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) NOT NULL COMMENT '名称',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `url` varchar(512) NOT NULL COMMENT '接口地址',
  `requestParams` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求参数',
  `requestHeader` text COMMENT '请求头',
  `responseHeader` text COMMENT '响应头',
  `status` int NOT NULL DEFAULT '0' COMMENT '接口状态（0-关闭，1-开启）',
  `method` varchar(256) NOT NULL COMMENT '请求类型',
  `userId` bigint NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除(0-未删, 1-已删)',
  `host` varchar(32) NOT NULL COMMENT '域名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='接口信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interface_info`
--

/*!40000 ALTER TABLE `interface_info` DISABLE KEYS */;
INSERT INTO `interface_info` VALUES (1,'check','获得名称','/check','[]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2023-08-25 13:34:47','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(2,'获得名称by get','获得名称','/api/name','[ {\"name\":\"name\", \"type\":\"string\"} ]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',1,'get',0,'2023-09-04 10:35:19','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(3,'获得名称by post','获得名称','/api/name','[ {\"name\":\"name\", \"type\":\"string\"} ]','{\"Content-Type\":\"application/json\"}','{\"Content-Type\":\"application/json\"}',1,'post',0,'2023-09-04 10:35:33','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(4,'彭雨泽','蔡煜祺','www.norris-bergstrom.biz','{}','董思源','田晓博',0,'潘擎宇',740,'2023-08-03 21:35:16','2023-09-09 11:07:20',1,'http://192.168.2.104:8002'),(5,'傅志强2','','www.jordan-reinger.com','','金志强','熊锦程',0,'邓睿渊',0,'2023-08-03 21:35:16','2023-09-09 11:07:20',1,'http://192.168.2.104:8002'),(6,'吕黎昕123','孔越彬','www.fe-okon.info','','万伟宸','林昊然',0,'孟荣轩',0,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(7,'夏雪松','许子骞','www.lashawna-legros.co','{}','蔡昊然','胡鹏涛',1,'钟立辉',34075514,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(8,'严钰轩','阎志泽','www.kay-funk.biz','{}','莫皓轩','郭黎昕',1,'龚天宇',70956,'2023-08-03 21:35:16','2023-09-09 11:07:20',1,'http://192.168.2.104:8002'),(9,'萧嘉懿11','','www.margarette-lindgren.biz','','田泽洋','邓睿渊',1,'梁志强',0,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(10,'杜驰','冯思源','www.vashti-auer.org','{}','黎健柏','武博文',0,'李伟宸',9,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(11,'史金鑫','蔡鹏涛','www.diann-keebler.org','{}','徐烨霖','阎建辉',0,'李烨伟',125,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(12,'林炫明','贾旭尧','www.dotty-kuvalis.io','{}','梁雨泽','龙伟泽',0,'许智渊',79998,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(13,'何钰轩','赖智宸','www.andy-adams.net','{}','崔思淼','白鸿煊',0,'邵振家',7167482751,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(14,'魏志强','于立诚','www.ione-aufderhar.biz','{}','朱懿轩','万智渊',0,'唐昊强',741098,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(15,'严君浩','金胤祥','www.duane-boyle.org','{}','雷昊焱','侯思聪',0,'郝思',580514,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(16,'姚皓轩','金鹏','www.lyda-klein.biz','{}','杜昊强','邵志泽',0,'冯鸿涛',6546,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(17,'廖驰','沈泽洋','www.consuelo-sipes.info','{}','彭昊然','邓耀杰',0,'周彬',7761037,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(18,'赖智渊','邓志泽','www.emerson-mann.co','{}','熊明哲','贺哲瀚',0,'田鹏',381422,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(19,'许涛','陆致远','www.vella-ankunding.name','{}','贾哲瀚','莫昊焱',0,'袁越彬',4218096,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(20,'吕峻熙','沈鹏飞','www.shari-reichel.org','{}','郭鸿煊','覃烨霖',0,'熊黎昕',493,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(21,'sadfg','','sag','','asg','aag',0,'sdag',0,'2023-08-17 22:41:33','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(22,'AFAS','','ASG','','ASDG','ASDG',0,'ASF',0,'2023-08-17 22:45:23','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(23,'asdf','','a','','a','a',0,'a',0,'2023-08-17 23:12:56','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(24,'aa','','a','','a','a',0,'a',0,'2023-08-17 23:13:46','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(25,'bb','','b','','','',0,'b',0,'2023-08-17 23:15:47','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(26,'cc','','','','','',0,'c',0,'2023-08-17 23:17:54','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(27,'a123','','sdf','','sdf','asdf',0,'sd',0,'2023-08-24 17:03:19','2023-09-09 11:07:20',1,'http://192.168.2.104:8002'),(28,'afwsagfs123','','sdf','','sad','sdf',0,'asfd',0,'2023-08-24 17:12:56','2023-09-09 11:07:20',1,'http://192.168.2.104:8002'),(29,'sa\'f','','saf','','asfd','asdf',0,'sfa',0,'2023-08-24 23:05:49','2023-09-09 11:07:20',1,'http://192.168.2.104:8002'),(32,'许擎宇','薛聪健','www.cary-king.net','{}','潘博涛','谭聪健',0,'石炫明',9500534531,'2023-08-03 21:35:16','2023-09-09 11:07:20',1,'http://192.168.2.104:8002'),(33,'sdfs','asdf','sdf','asdf','asd','asd',0,'sdf',0,'2023-08-25 16:53:46','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(34,'s\'d\'f','sadf','sdf','sdf','sdf','sadf',0,'sfa',0,'2023-08-25 17:49:08','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(37,'小熊123','','www.leslee-kuhn.net','','潘懿轩','马鸿涛',0,'陈峻熙',0,'2023-08-03 21:35:16','2023-09-09 11:07:20',0,'http://192.168.2.104:8002'),(38,'毛建辉2','','www.rosaria-kilback.io','','冯子默','彭哲瀚',0,'赵远航',0,'2023-08-03 21:35:16','2023-09-09 11:07:20',1,'http://192.168.2.104:8002'),(39,'s\'d\'faasdf11111','sadfsad','asd','asd','','',0,'sdfasd',0,'2023-09-05 19:51:59','2023-09-09 11:07:20',1,'http://192.168.2.104:8002');
/*!40000 ALTER TABLE `interface_info` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userName` varchar(256) DEFAULT NULL COMMENT '用户昵称',
  `userAccount` varchar(256) NOT NULL COMMENT '账号',
  `userAvatar` varchar(1024) DEFAULT NULL COMMENT '用户头像',
  `gender` tinyint DEFAULT NULL COMMENT '性别',
  `userRole` varchar(256) NOT NULL DEFAULT 'user' COMMENT '用户角色：user / admin',
  `userPassword` varchar(512) NOT NULL COMMENT '密码',
  `accessKey` varchar(512) NOT NULL COMMENT 'accessKey',
  `secretKey` varchar(512) NOT NULL COMMENT 'secretKey',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_userAccount` (`userAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'xiaoxiaoxiong',NULL,NULL,'admin','$2a$10$HAh0ClBr9A8rwbBWxEkncej88DLojpUlshthTGDQ0npbXIqJljuPq','H6GxH5ERXL4zVZ3IJrs2EZBRO0CizHxMvDXrxbWVQmE=','6qJB6ZS3ip0FeY2ateMBkP7YlOhqzZ2mXoKD96HStQo=','2023-08-25 12:23:39','2023-09-03 23:08:17',0),(2,'xj','xj','aaabbb',1,'admin','$2a$10$jL3aW5kzJlvJEmwYRbX.eeyTOYr8bx063u4sGya7o06Y7KVMRoCa2','aaa','bbb','2023-08-04 22:08:53','2023-09-03 23:08:17',0),(4,NULL,'zs','https://profile-avatar.csdnimg.cn/f36f7dd6aab345e9a71b3e6d6e8d9d46_trinityleo5.jpg!1',1,'admin','$2a$10$B9kxbtFfXftAmvtZXD12heciVgZCFyTRIp3HqdF98WU29L4IbfNga','abc','abc123','2023-08-10 21:58:35','2023-08-16 22:13:53',0),(5,NULL,'ls',NULL,0,'user','$2a$10$ky7Z38fsjvBo8WN8SeO9NePHQHreU23gA1tFQe95jqQGMPmXX3SIG','abc','abc123','2023-08-10 21:58:46','2023-08-10 21:58:46',0),(6,NULL,'zs1',NULL,1,'user','$2a$10$VgdkjBR25QsdHH2H7CXi4el8rXoQ/K5O1/FZMEZHhgcO0S99iaWhS','abc','abc123','2023-08-10 23:12:39','2023-08-19 21:21:41',0),(7,NULL,'ls1',NULL,0,'user','$2a$10$8fx9fVxc/VeOINiqm/Eai.8/sMU5K4U/40WC7Z7WGn690poamNJkO','abc','abc123','2023-08-10 23:37:59','2023-08-10 23:37:59',0),(8,'','ls2','',0,'user','$2a$10$q/NAdS8rmI5Ai9Ctveqi1usUFH/oHd8KEGj62/tTsFc7S7vhIng0y','abc','abc123','2023-08-12 21:15:58','2023-08-12 21:15:58',0),(9,'string','test1','string',0,'user','$2a$10$ZcUqU3b40E/8VS6/UxT8nO/1PqJfz/C7CukIYxSo5mgbMXUiG8J9y','string','string','2023-08-12 21:16:34','2023-08-12 21:16:34',0),(11,NULL,'xiaoding',NULL,NULL,'user','$2a$10$nNbusyTgxYVp9NUIQMZgiuM3ilYAbYbROzhOlI.vgM37lTSEWpO0i','t+AS61u58LnPVysBMYuQCt7dkqr2HKoAGQY6Mvl0MK0=','7WBby+zoRGR0nCB54jxrzRNAhoRqi3aBEkkWKBuaLEY=','2023-09-07 15:10:10','2023-09-07 15:10:10',0),(12,NULL,'xiaoding2',NULL,NULL,'user','$2a$10$VTDPRu496de1ls5S6HaAEu5jtHt74XeuVr7eQEvffHaqIweTRJ4hO','7z8mIxJBidA1pA/V5ZdBjsSVGZCx0gA00hqGHJv52V8=','3f10CWY/hPK1rTq65NKCd0GF0JbXTyr6g7StU4bDamc=','2023-09-07 16:07:43','2023-09-07 16:07:43',0),(13,NULL,'xiaoding3',NULL,NULL,'user','$2a$10$wUjp8EO1NTzggADhkqjxOuzEcsIR8FMT19sPk32rKDKFIL.QAqzX2','h1qAHpUEhd9XIoPCavUhaV+DrygQKCiXz0vz1+Zlijg=','ou8JaKS1YZrwDUmfkRqRYMK0V3DYuw0HOl8xv6Y5Knc=','2023-09-07 21:35:44','2023-09-07 21:35:44',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

--
-- Table structure for table `user_interface_info`
--

DROP TABLE IF EXISTS `user_interface_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_interface_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` bigint NOT NULL COMMENT '调用用户 id',
  `interfaceInfoId` bigint NOT NULL COMMENT '接口 id',
  `totalNum` int NOT NULL DEFAULT '0' COMMENT '总调用次数',
  `leftNum` int NOT NULL DEFAULT '0' COMMENT '剩余调用次数',
  `status` int NOT NULL DEFAULT '0' COMMENT '0-正常，1-禁用',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除(0-未删, 1-已删)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户调用接口关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interface_info`
--

/*!40000 ALTER TABLE `user_interface_info` DISABLE KEYS */;
INSERT INTO `user_interface_info` VALUES (1,1,1,2,8,0,'2023-08-29 15:15:26','2023-09-07 21:34:05',0),(2,1,2,5,95,0,'2023-09-06 15:07:42','2023-09-09 11:14:40',0),(3,1,3,0,100,0,'2023-09-06 15:07:46','2023-09-08 14:45:31',0),(4,1,7,0,10,0,'2023-09-07 18:58:49','2023-09-07 18:58:49',0);
/*!40000 ALTER TABLE `user_interface_info` ENABLE KEYS */;

--
-- Dumping routines for database 'xapi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-09 19:21:47
