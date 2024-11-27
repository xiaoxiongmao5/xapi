-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: xapi
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Current Database: `xapi`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `xapi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `xapi`;

--
-- Table structure for table `interface_info`
--

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
  `host` varchar(256) NOT NULL COMMENT '域名',
  `requestParamsExample` text COMMENT '请求参数示例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='接口信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interface_info`
--

LOCK TABLES `interface_info` WRITE;
/*!40000 ALTER TABLE `interface_info` DISABLE KEYS */;
INSERT INTO `interface_info` VALUES (1,'快递100快递查询','调用快递100快递接口查询','','[\n  {\n    \"name\": \"dh\",\n    \"type\": \"string\"\n  }\n]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',1,'get',0,'2023-08-25 13:34:47','2024-11-26 13:34:51',0,'https://free.wqwlkj.cn/wqwlapi/kd100.php','{\n  \"dh\": \"78857802840948\"\n}'),(2,'获得名称by get','获得名称','/api/name','[ {\"name\":\"name\", \"type\":\"string\"} ]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2023-09-04 10:35:19','2024-11-26 13:34:44',0,'https://funclist-70311-4-1319297453.sh.run.tcloudbase.com','{\"name\":\"张三\"}'),(3,'获得名称by post','获得名称','/api/name','[ {\"name\":\"name\", \"type\":\"string\"} ]','{\"Content-Type\":\"application/json\"}','{\"Content-Type\":\"application/json\"}',0,'post',0,'2023-09-04 10:35:33','2024-11-26 13:34:45',0,'https://funclist-70311-4-1319297453.sh.run.tcloudbase.com','{\"name\":\"李四\"}'),(4,'扒站接口爬虫版','爬取目标站静态资源，接口由浑欲不胜簪维护','','[\n  {\n    \"name\": \"url\",\n    \"type\": \"string\"\n  }\n]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2024-11-26 07:57:39','2024-11-26 13:47:24',0,'https://v.api.aa1.cn/api/api-bz/temp.php','{\n  \"url\": \"https://www.baidu.com\"\n}'),(5,'有道翻译','在线中英互译','','[\n  {\n    \"name\": \"msg\",\n    \"type\": \"string\"\n  }\n]','\n{\"Content-Type\":\"application/x-www-form-urlencoded\"}','\n{\"Content-Type\":\"application/json\"}',0,'get',0,'2024-11-26 13:00:42','2024-11-26 13:47:26',0,'https://v.api.aa1.cn/api/api-fanyi-yd/index.php','{\n  \"msg\": \"中国\"\n}'),(6,'查询域名whois','域名whois查询，支持300+后缀','','[\n  {\n    \"name\": \"domain\",\n    \"type\": \"string\"\n  }\n]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2023-09-04 10:35:19','2024-11-26 13:47:30',0,'https://v.api.aa1.cn/api/whois/index.php','{\n  \"domain\": \"www.baidu.com\"\n}'),(7,'查询当前天气','天气查询','','[\n  {\n    \"name\": \"city\",\n    \"type\": \"string\"\n  }\n]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2024-11-26 13:38:21','2024-11-26 13:47:48',0,'http://www.lpv4.cn:10000/api/weather','{\n  \"city\": \"上海\"\n}'),(8,'查询一周天气','天气查询','','[\n  {\n    \"name\": \"msg\",\n    \"type\": \"string\"\n  }\n]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2024-11-26 13:39:14','2024-11-26 13:48:14',0,'https://v.api.aa1.cn/api/api-tianqi-3/index.php','{\n  \"msg\": \"上海\"\n}'),(9,'随机唱鸭歌曲','随机返回一首唱鸭歌曲','','[]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2024-11-26 13:39:42','2024-11-26 13:53:30',0,'https://v2.api-m.com/api/changya','{}'),(10,'网易云音乐随机歌曲','随机返回一首歌曲','','[]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2024-11-26 13:40:08','2024-11-27 01:32:50',0,'https://api.uomg.com/api/rand.music','{}'),(11,'IP归属地淘宝版','IP归属地查询，数据来源于淘宝','','[\n  {\n    \"name\": \"ip\",\n    \"type\": \"string\"\n  }\n]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',1,'get',0,'2024-11-26 13:41:23','2024-11-26 13:44:31',0,'https://zj.v.api.aa1.cn/api/ip-taobao/','{\n  \"ip\": \"101.145.13.33\"\n}'),(12,'IP归属地查询','ip查询暂不支持域名查询','','[\n  {\n    \"name\": \"ip\",\n    \"type\": \"string\"\n  }\n]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2024-11-26 13:41:53','2024-11-26 13:50:44',0,'http://www.lpv4.cn:10000/api/ip','{\n  \"ip\": \"101.145.13.33\"\n}'),(13,'本地IP','显示当前设备IP','','[]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2024-11-26 13:42:17','2024-11-26 13:50:03',0,'https://v.api.aa1.cn/api/myip/','{}'),(14,'每日一言','每日一言','','[]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2024-11-26 13:42:46','2024-11-26 13:50:45',0,'https://v.api.aa1.cn/api/yiyan/index.php','{}'),(15,'你说什么回什么','你说什么回什么','','[\n  {\n    \"name\": \"msg\",\n    \"type\": \"string\"\n  }\n]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',1,'get',0,'2024-11-26 13:57:44','2024-11-26 13:59:38',0,'https://zj.v.api.aa1.cn/api/unicode/','{\n  \"msg\": \"你好\"\n}');
/*!40000 ALTER TABLE `interface_info` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'xiongjie',NULL,NULL,'admin','$2a$10$HAh0ClBr9A8rwbBWxEkncej88DLojpUlshthTGDQ0npbXIqJljuPq','H6GxH5ERXL4zVZ3IJrs2EZBRO0CizHxMvDXrxbWVQmE=','6qJB6ZS3ip0FeY2ateMBkP7YlOhqzZ2mXoKD96HStQo=','2023-08-25 12:23:39','2023-09-11 02:23:17',0),(11,NULL,'xiaoding',NULL,NULL,'user','$2a$10$nNbusyTgxYVp9NUIQMZgiuM3ilYAbYbROzhOlI.vgM37lTSEWpO0i','t+AS61u58LnPVysBMYuQCt7dkqr2HKoAGQY6Mvl0MK0=','7WBby+zoRGR0nCB54jxrzRNAhoRqi3aBEkkWKBuaLEY=','2023-09-07 15:10:10','2023-09-07 15:10:10',0),(12,NULL,'xiaoding2',NULL,NULL,'user','$2a$10$VTDPRu496de1ls5S6HaAEu5jtHt74XeuVr7eQEvffHaqIweTRJ4hO','7z8mIxJBidA1pA/V5ZdBjsSVGZCx0gA00hqGHJv52V8=','3f10CWY/hPK1rTq65NKCd0GF0JbXTyr6g7StU4bDamc=','2023-09-07 16:07:43','2023-09-07 16:07:43',0),(13,NULL,'xiaoding3',NULL,NULL,'user','$2a$10$wUjp8EO1NTzggADhkqjxOuzEcsIR8FMT19sPk32rKDKFIL.QAqzX2','h1qAHpUEhd9XIoPCavUhaV+DrygQKCiXz0vz1+Zlijg=','ou8JaKS1YZrwDUmfkRqRYMK0V3DYuw0HOl8xv6Y5Knc=','2023-09-07 21:35:44','2023-09-07 21:35:44',0),(14,NULL,'dingqian',NULL,NULL,'admin','$2a$10$zQqY1Cf9prxfkD09c8xck.bdHNNnPE6W5GGHkg1ARkIKUiGcMYP7m','+lNDffLWghN2umM9C2d3OuYeobVlBe2NnIjuCfJWkeo=','8LH+Hlcwhmsq34q5rkaQ/rGtQ6TIDx1L3RANAGttVo0=','2023-09-10 11:28:05','2023-09-11 02:30:54',0),(15,NULL,'xiaoxiong',NULL,NULL,'admin','$2a$10$91nYfcoxZXslWEF4BgyC3uKObyRUkh2q7HHDtdrF2yL8ogS1xI506','orotG1w4y0mwMSR+5pVdkv501e5H83901yjEU+kcPvs=','W6Gow9GL2vv4ISAylHSY4R60k7eIpyBLZMLd8XWPJCs=','2024-11-26 07:05:06','2024-11-26 07:18:42',0),(16,NULL,'zhangsan',NULL,NULL,'user','$2a$10$90m/pj4Cp3hNB0uJfIuwiu1NLeRZTpFa9Kte61GLYCE87XEMusd7O','aAU7fa+kOezcr7Twxwm3YHgoYJdOL7M+AC9n8N3t9ds=','gPJ+G+mlxxcZBMuEjLd0E5C/cXxT4/5vXRDIewi1Z9k=','2024-11-27 02:45:47','2024-11-27 02:45:47',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户调用接口关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interface_info`
--

LOCK TABLES `user_interface_info` WRITE;
/*!40000 ALTER TABLE `user_interface_info` DISABLE KEYS */;
INSERT INTO `user_interface_info` VALUES (5,1,1,0,100,0,'2023-09-11 02:34:03','2023-09-11 02:34:03',0),(6,1,3,2,98,0,'2023-09-11 02:51:28','2023-09-11 02:54:39',0),(7,1,2,4,96,0,'2023-09-11 02:55:03','2023-09-11 03:03:44',0),(8,15,2,0,10,0,'2024-11-26 07:44:20','2024-11-26 07:44:20',0),(9,15,3,0,10,0,'2024-11-26 07:45:15','2024-11-26 07:45:15',0),(10,15,40,0,10,0,'2024-11-26 07:57:52','2024-11-26 07:57:52',0),(11,15,41,0,30,0,'2024-11-26 13:01:07','2024-11-26 13:01:08',0),(12,15,42,0,10,0,'2024-11-26 13:10:00','2024-11-26 13:10:00',0),(13,15,1,9,1,0,'2024-11-26 13:24:12','2024-11-27 02:43:45',0),(14,15,10,1,9,0,'2024-11-26 13:45:40','2024-11-26 13:45:42',0),(15,15,4,0,10,0,'2024-11-26 13:46:07','2024-11-26 13:46:07',0),(16,15,5,0,10,0,'2024-11-26 13:46:20','2024-11-26 13:46:20',0),(17,15,6,0,10,0,'2024-11-26 13:46:31','2024-11-26 13:46:31',0),(18,15,7,0,20,0,'2024-11-26 13:46:43','2024-11-26 13:47:38',0),(19,15,8,0,10,0,'2024-11-26 13:47:57','2024-11-26 13:47:57',0),(20,15,9,0,10,0,'2024-11-26 13:48:22','2024-11-26 13:48:22',0),(21,15,13,1,9,0,'2024-11-26 13:48:45','2024-11-26 13:49:13',0),(22,15,11,6,4,0,'2024-11-26 13:50:57','2024-11-27 02:43:52',0),(23,15,15,5,5,0,'2024-11-26 13:59:48','2024-11-27 02:43:59',0),(24,16,15,1,9,0,'2024-11-27 02:46:09','2024-11-27 02:46:11',0);
/*!40000 ALTER TABLE `user_interface_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-27  3:01:03
