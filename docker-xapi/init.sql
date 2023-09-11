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
  `host` varchar(256) NOT NULL COMMENT '域名',
  `requestParamsExample` text COMMENT '请求参数示例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='接口信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interface_info`
--

/*!40000 ALTER TABLE `interface_info` DISABLE KEYS */;
INSERT INTO `interface_info` VALUES (1,'check','check','/check','[]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',0,'get',0,'2023-08-25 13:34:47','2023-09-11 03:04:56',0,'https://funclist-70311-4-1319297453.sh.run.tcloudbase.com','{}'),(2,'获得名称by get','获得名称','/api/name','[ {\"name\":\"name\", \"type\":\"string\"} ]','{\"Content-Type\":\"application/x-www-form-urlencoded\"}','{\"Content-Type\":\"application/json\"}',1,'get',0,'2023-09-04 10:35:19','2023-09-11 02:28:37',0,'https://funclist-70311-4-1319297453.sh.run.tcloudbase.com','{\"name\":\"张三\"}'),(3,'获得名称by post','获得名称','/api/name','[ {\"name\":\"name\", \"type\":\"string\"} ]','{\"Content-Type\":\"application/json\"}','{\"Content-Type\":\"application/json\"}',1,'post',0,'2023-09-04 10:35:33','2023-09-11 02:28:44',0,'https://funclist-70311-4-1319297453.sh.run.tcloudbase.com','{\"name\":\"李四\"}');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'xiongjie',NULL,NULL,'admin','$2a$10$HAh0ClBr9A8rwbBWxEkncej88DLojpUlshthTGDQ0npbXIqJljuPq','H6GxH5ERXL4zVZ3IJrs2EZBRO0CizHxMvDXrxbWVQmE=','6qJB6ZS3ip0FeY2ateMBkP7YlOhqzZ2mXoKD96HStQo=','2023-08-25 12:23:39','2023-09-11 02:23:17',0),(11,NULL,'xiaoding',NULL,NULL,'user','$2a$10$nNbusyTgxYVp9NUIQMZgiuM3ilYAbYbROzhOlI.vgM37lTSEWpO0i','t+AS61u58LnPVysBMYuQCt7dkqr2HKoAGQY6Mvl0MK0=','7WBby+zoRGR0nCB54jxrzRNAhoRqi3aBEkkWKBuaLEY=','2023-09-07 15:10:10','2023-09-07 15:10:10',0),(12,NULL,'xiaoding2',NULL,NULL,'user','$2a$10$VTDPRu496de1ls5S6HaAEu5jtHt74XeuVr7eQEvffHaqIweTRJ4hO','7z8mIxJBidA1pA/V5ZdBjsSVGZCx0gA00hqGHJv52V8=','3f10CWY/hPK1rTq65NKCd0GF0JbXTyr6g7StU4bDamc=','2023-09-07 16:07:43','2023-09-07 16:07:43',0),(13,NULL,'xiaoding3',NULL,NULL,'user','$2a$10$wUjp8EO1NTzggADhkqjxOuzEcsIR8FMT19sPk32rKDKFIL.QAqzX2','h1qAHpUEhd9XIoPCavUhaV+DrygQKCiXz0vz1+Zlijg=','ou8JaKS1YZrwDUmfkRqRYMK0V3DYuw0HOl8xv6Y5Knc=','2023-09-07 21:35:44','2023-09-07 21:35:44',0),(14,NULL,'dingqian',NULL,NULL,'admin','$2a$10$zQqY1Cf9prxfkD09c8xck.bdHNNnPE6W5GGHkg1ARkIKUiGcMYP7m','+lNDffLWghN2umM9C2d3OuYeobVlBe2NnIjuCfJWkeo=','8LH+Hlcwhmsq34q5rkaQ/rGtQ6TIDx1L3RANAGttVo0=','2023-09-10 11:28:05','2023-09-11 02:30:54',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户调用接口关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interface_info`
--

/*!40000 ALTER TABLE `user_interface_info` DISABLE KEYS */;
INSERT INTO `user_interface_info` VALUES (5,1,1,0,100,0,'2023-09-11 02:34:03','2023-09-11 02:34:03',0),(6,1,3,2,98,0,'2023-09-11 02:51:28','2023-09-11 02:54:39',0),(7,1,2,4,96,0,'2023-09-11 02:55:03','2023-09-11 03:03:44',0);
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

-- Dump completed on 2023-09-11 11:06:06
