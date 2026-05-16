-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: manager
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货人',
  `useraddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地址信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (2,30,'卢本伟','中国科学技术大学软件学院','18669024313'),(3,33,'aaa','asda','123123'),(4,34,'aadasd','adad','dasda'),(5,49,'卢','四川大学','18669024313'),(6,50,'王龙','齐鲁工业大学','11232'),(7,50,'王鹰','清华大学','22233'),(8,50,'hsdj','qewe','133'),(9,53,'xiao','东南大学','231231'),(10,56,'12312','323123','23123123'),(11,57,'111','23123','23123');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin','卢奥','http://localhost:9090/files/1717382761475-C76C987263FCE9DE32BE98EDDF3CF408.jpg','ADMIN','13677889922','admin@xm.com'),(2,'boos','123','周润发','http://localhost:9090/files/1716884576274-1.jpg','ADMIN','18669024313','1635374917@qq.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `back`
--

DROP TABLE IF EXISTS `back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `back` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `supplier_id` int DEFAULT NULL COMMENT '供应商ID',
  `goods_id` int DEFAULT NULL COMMENT '商品ID',
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '退货时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人',
  `num` int DEFAULT NULL COMMENT '退货数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品规格',
  `price` double(10,2) DEFAULT NULL COMMENT '退货价格',
  `total` double(10,2) DEFAULT NULL COMMENT '退货总价格',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品退货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back`
--

LOCK TABLES `back` WRITE;
/*!40000 ALTER TABLE `back` DISABLE KEYS */;
INSERT INTO `back` VALUES (7,30,51,'微信','2024-04-12','奥特曼',4,'123123',2313.00,16191.00,''),(8,30,51,'微信','2024-04-12','奥特曼',2,'123123',2313.00,16191.00,''),(9,30,51,'微信','2024-04-12','奥特曼',7,'123123',2313.00,16191.00,''),(10,32,37,'银联','2024-03-09','管理员',2,'一件',89.00,712.00,'多了'),(11,31,750,'支付宝','2024-05-06','卢奥',3,'台',4999.00,19996.00,''),(12,29,32,'微信','2024-05-24','卢奥',3,'件',222.00,1110.00,''),(13,32,747,'微信','2024-05-08','卢奥',2,'件',10.00,20.00,'111'),(14,31,750,'微信','2024-06-01','卢奥',3,'台',1000.00,3000.00,''),(15,30,737,'微信','2024-06-02','卢奥',3,'件',55.00,165.00,''),(16,31,750,'微信','2024-06-02','卢奥',2,'件',666.00,1332.00,'多了');
/*!40000 ALTER TABLE `back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int DEFAULT NULL COMMENT '用户ID',
  `goods_id` int DEFAULT NULL COMMENT '商品ID',
  `business_id` int DEFAULT NULL COMMENT '店铺ID',
  `num` int DEFAULT NULL COMMENT '数量',
  `goods_num` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (23,30,47,NULL,1,100),(24,45,719,NULL,1,786),(38,49,17,NULL,1,999),(43,50,17,NULL,1,999),(45,51,36,NULL,1,999),(46,51,17,NULL,1,999),(47,51,30,NULL,1,999);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collect` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int DEFAULT NULL COMMENT '用户ID',
  `goods_id` int DEFAULT NULL COMMENT '商品ID',
  `supplier_id` int DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收藏信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
INSERT INTO `collect` VALUES (1,30,18,NULL),(2,30,16,NULL),(3,30,29,NULL),(4,30,22,NULL),(5,30,26,NULL),(6,30,17,NULL),(7,33,45,NULL),(8,34,38,NULL),(10,49,17,NULL),(12,53,37,NULL),(13,56,630,NULL),(15,57,745,NULL);
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客户名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客户地址',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客户电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客户邮箱',
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客户邮编',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人电话',
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户银行',
  `bank_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户行账号',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'CUSTOMER',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='客户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (48,'测试用3',NULL,NULL,NULL,NULL,'333','333',NULL,NULL,'202cb962ac59075b964b07152d234b70','CUSTOMER',NULL),(49,'卢本伟','中国科学技术大学软件学院','18669024313','1635374917@qq.com','222','鲁本','444','11','333','550a141f12de6341fba65b0ad0433500','CUSTOMER',NULL),(50,'测试用例2','22222','222','1222222','222','222111','222','222','222','bcbe3365e6ac95ea2c0343a2395834dd','CUSTOMER','http://localhost:9090/files/1716884132381-bg5.jpg'),(51,'彼得帕克','河南新乡','5555555555','12312@qq.com','555','比帕克','555','工商','5555555555','15de21c670ae7c3f6f3f1f37029303c9','CUSTOMER','http://localhost:9090/files/1717374470690-avatar.jpg'),(52,'盖亚','山东蓝翔','1877777','187777@163.com','2323','蓝精灵','111','农行','23123','202cb962ac59075b964b07152d234b70','CUSTOMER',NULL),(53,'l8','23123','4342','2313','4124124','2312','666','241234','24142','fae0b27c451c728867a567e8c1bb4e53','CUSTOMER','http://localhost:9090/files/1717375294699-65480001_p0.png'),(55,'ji',NULL,NULL,'23123',NULL,'231231','777',NULL,NULL,'f1c1592588411002af340cbaedd6fc33','CUSTOMER','http://localhost:9090/files/1717382001826-C76C987263FCE9DE32BE98EDDF3CF408.jpg'),(57,'2132',NULL,NULL,'3123',NULL,NULL,'888',NULL,NULL,'0a113ef6b61820daa5611c870ed8d5ee','CUSTOMER','http://localhost:9090/files/1717382555573-1.jpg');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '部门地址',
  `pid` int DEFAULT NULL COMMENT '父级ID',
  `level` int DEFAULT NULL COMMENT '层级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (5,'2','2',3,2),(7,'暗杀部','3',9,3),(8,'分部采购部','齐鲁工业大小',9,3),(9,'下设分部','珠江',4,2),(10,'总部','北京天安门',NULL,1),(11,'分公司','杭州',10,2),(12,'采购部','杭州',11,3),(13,'人事部','杭州',14,3),(14,'法务部','北京',10,2),(15,'销售部','杭州',11,3),(16,'推广部','河南新乡',11,3);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `supplier_id` int DEFAULT NULL COMMENT '供应商ID',
  `producer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品产地',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品描述',
  `price` double(10,2) DEFAULT NULL COMMENT '销售价格',
  `num` int DEFAULT NULL COMMENT '数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品规格',
  `pack` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '包装单位',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品图片',
  `product_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产批号',
  `approve_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '批准文号',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '可用' COMMENT '状态',
  `type_id` int DEFAULT NULL,
  `sale_cnt` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=756 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (15,'笔记本电脑',31,'中国','高性能笔记本电脑',1999.00,5,'台','包装单位A','http://localhost:9090/files/1711091469896-电脑.jpg','20210301','批准文号A','可用',1,1099),(16,'手机',31,'中国','智能手机',999.00,0,'部','包装单位B','http://localhost:9090/files/1711091463552-手机.jpg','20210302','批准文号B','可用',1,1099),(17,'电视',31,'韩国','智能电视',1499.00,999,'台','包装单位A','http://localhost:9090/files/1711091457147-电视.jpg','20210303','批准文号C','可用',1,1099),(18,'耳机',31,'美国','无线耳机',199.00,0,'副','包装单位B','http://localhost:9090/files/1711091240804-耳机.jpg','20210304','批准文号D','可用',1,1099),(19,'相机',31,'日本','专业相机',2999.00,0,'台','包装单位A','http://localhost:9090/files/1711091436338-相机.jpg','20210305','批准文号E','可用',1,1099),(20,'音箱',31,'中国','蓝牙音箱',99.00,0,'个','包装单位B','http://localhost:9090/files/1711091446272-音箱.jpg','20210306','批准文号F','可用',1,1099),(21,'路由器',31,'美国','无线路由器',149.00,999,'个','包装单位A','http://localhost:9090/files/1709620380365-9.png','20210307','批准文号G','可用',1,1099),(22,'手表',31,'瑞士','智能手表',499.00,999,'个','包装单位B','http://localhost:9090/files/1709620372591-8.jpg','20210308','批准文号H','可用',1,1099),(23,'游戏机',31,'日本','家用游戏机',399.00,0,'台','包装单位A','http://localhost:9090/files/1709620368522-7.jpg','20210309','批准文号I','可用',1,1002),(24,'空调',31,'中国','家用空调',799.00,0,'台','包装单位B','http://localhost:9090/files/1709620362579-6.jpg','20210310','批准文号J','可用',1,1002),(25,'洗衣机',31,'韩国','滚筒洗衣机',699.00,0,'台','包装单位A','http://localhost:9090/files/1709620358094-5.png','20210311','批准文号K','可用',1,1002),(26,'冰箱',31,'中国','双门冰箱',899.00,999,'台','包装单位B','http://localhost:9090/files/1709620353217-4.png','20210312','批准文号L','可用',2,1002),(27,'电饭煲',31,'中国','智能电饭煲',149.00,0,'个','包装单位A','http://localhost:9090/files/1709620347737-3.jpg','20210313','批准文号M','可用',1,1002),(28,'电动车',31,'中国','电动摩托车',1999.00,995,'辆','包装单位B','http://localhost:9090/files/1709620341578-2.png','20210314','批准文号N','可用',1,1002),(29,'电吹风',31,'美国','负离子电吹风',79.00,0,'个','包装单位A','http://localhost:9090/files/1709620336539-吹风.png','20210315','批准文号O','可用',1,1002),(30,'双人床垫',29,'中国','舒适的双人床垫',299.00,995,'个','包装单位','http://localhost:9090/files/1711091815039-床垫.jpg','P123456','A789012','可用',2,999),(31,'餐桌',29,'中国','实木餐桌，适合家庭用餐',599.00,999,'个','包装单位','http://localhost:9090/files/1711091796296-餐桌.jpg','P654321','A210987','可用',2,999),(32,'沙发',29,'中国','舒适的布艺沙发，适合客厅使用',899.00,0,'个','包装单位','http://localhost:9090/files/1711091781958-沙发.jpg','P987654','A123456','可用',2,999),(33,'吸尘器',29,'德国','高效清洁吸尘器，方便家居清扫',199.00,997,'个','包装单位','http://localhost:9090/files/1711091768730-吸尘器.jpg','P567890','A654321','可用',2,999),(34,'床头柜',29,'中国','实用的床头柜，方便存放物品',149.00,999,'个','包装单位','http://localhost:9090/files/1711091745788-床头柜.jpg','P098765','A432109','可用',2,999),(35,'男士夹克',32,'中国','时尚男士夹克外套',599.00,999,'件','包装单位','http://localhost:9090/files/1711092328435-夹克.jpg','P111111','A222222','可用',3,992),(36,'女士连衣裙',32,'中国','优雅女士连衣裙',399.00,995,'件','包装单位','http://localhost:9090/files/1711092307594-连衣裙.jpg','P333333','A444444','可用',3,992),(37,'帆布鞋',32,'中国','休闲时尚帆布鞋',199.00,996,'双','包装单位','http://localhost:9090/files/1711092288532-帆布鞋.jpg','P555555','A666666','可用',3,992),(38,'运动帽',32,'中国','时尚运动帽子',59.00,999,'顶','包装单位','http://localhost:9090/files/1711092281477-帽子.jpg','P777777','A888888','可用',3,992),(39,'女士高跟鞋',32,'中国','迷人女士高跟鞋',299.00,999,'双','包装单位','http://localhost:9090/files/1711092271468-高跟鞋.jpg','P999999','A000000','可用',3,992),(40,'小说《追风筝的人》',28,'出版社A','畅销小说《追风筝的人》',55.00,999,'本','包装单位','http://localhost:9090/files/1711092881189-追风筝的人.jpg','P111111','A222222','可用',4,992),(41,'音乐CD《经典回忆》',28,'唱片公司A','经典音乐合辑《经典回忆》',78.00,999,'张','包装单位','http://localhost:9090/files/1711092868785-经典回忆.jpg','P333333','A444444','可用',4,992),(42,'电影DVD《肖申克的救赎》',28,'影视公司A','经典电影《肖申克的救赎》',19.00,999,'张','包装单位','http://localhost:9090/files/1711092849904-肖申克的救.jpg','P555555','A666666','可用',4,992),(43,'教材《数学入门》',28,'出版社B','数学入门教材',31.00,999,'本','包装单位','http://localhost:9090/files/1711092837660-数学入门.jpg','P777777','A888888','可用',4,992),(44,'运动健身教程DVD',28,'影视公司B','运动健身教程DVD',49.00,999,'张','包装单位','http://localhost:9090/files/1711092818175-运动健身.jpg','P999999','A000000','可用',4,992),(45,'面部洁面乳',27,'中国','温和洁面乳，清洁肌肤',39.00,999,'瓶','包装单位','http://localhost:9090/files/1711093813277-洁面乳.jpg','P111111','A222222','可用',5,992),(46,'护肤精华液',27,'日本','滋养肌肤的护肤精华液',99.00,999,'瓶','包装单位','http://localhost:9090/files/1711093807492-护肤.jpg','P333333','A444444','可用',5,992),(47,'面膜',27,'美国','滋润肌肤的面膜',19.00,999,'片','包装单位','http://localhost:9090/files/1711093788796-面膜.jpg','P555555','A666666','可用',5,992),(48,'身体乳',27,'澳大利亚','滋养身体的乳液',69.00,999,'瓶','包装单位','http://localhost:9090/files/1711093774155-身体乳.jpg','P777777','A888888','可用',5,992),(49,'口红',27,'泰国','时尚口红，妆容必备',29.00,999,'支','包装单位','http://localhost:9090/files/1711093751280-口红.jpg','P999999','A000000','可用',5,992),(50,'苹果',30,'昭通','新鲜甜蜜的苹果',5.00,999,'斤','包装单位','http://localhost:9090/files/1711094208671-苹果.jpg','P111111','A222222','可用',6,992),(51,'香蕉',30,'非洲','新鲜可口的香蕉',3.00,990,'斤','包装单位','http://localhost:9090/files/1711094191348-香蕉.jpg','P333333','A444444','可用',6,992),(52,'西红柿',30,'中国','新鲜营养的西红柿',2.00,999,'斤','包装单位','http://localhost:9090/files/1711094178112-西红柿.jpg','P555555','A666666','可用',6,992),(53,'鲜牛肉',26,'澳洲','新鲜优质的牛肉',40.00,994,'斤','包装单位','http://localhost:9090/files/1711094161318-牛肉.jpg','P777777','A888888','可用',6,992),(54,'新鲜鱼',26,'日本','新鲜可口的鱼类',30.00,0,'斤','包装单位','http://localhost:9090/files/1711094143853-鱼.jpg','P999999','A000000','可用',6,992),(556,'小米手环',31,'法国','高品质小米手环',711.10,91,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P635549','A315699','可用',1,992),(557,'便携式充电宝',31,'印度','小巧轻便，随身携带，为您的移动设备提供可靠电力。',50.20,91,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P491084','A557309','可用',1,992),(558,'金色丰收谷物',26,'美国','新鲜收获的丰富谷物，富含营养，为您提供全天活力。',360.40,834,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P964897','A169555','可用',6,992),(559,'时尚休闲T恤',32,'法国','休闲简约设计，舒适透气，打造潮流时尚LOOK。',421.00,413,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P934043','A203230','可用',3,992),(560,'迷你投影仪',31,'美国','小巧便携，随时随地享受影视娱乐，打造私人影院。',760.10,176,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P246270','A236597','可用',1,992),(561,'雪域山花蜂蜜',26,'英国','来自雪山之巅的纯天然蜂蜜，清甜芳香，滋补养生。',675.70,0,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P379924','A376415','可用',6,992),(562,'智能家居控制中心',31,'澳洲','连接家中智能设备，一键控制，智能生活从此开始。',562.30,545,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P501237','A210709','可用',1,992),(563,'轻薄笔记本电脑',31,'日本','轻巧便携，性能强劲，满足您的办公和娱乐需求。',298.90,0,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P406064','A274354','可用',1,992),(564,'汉堡包',30,'澳洲','高品质汉堡包',763.00,91,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P405649','A129180','可用',6,992),(565,'VR虚拟现实眼镜',31,'日本','沉浸式视觉体验，带您进入虚拟世界的奇妙旅程。',710.60,684,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P625808','A379012','可用',1,992),(566,'优雅连衣裙',32,'澳洲','精选面料，修身版型，展现优雅女性魅力。',346.50,616,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P429392','A191145','可用',5,992),(567,'百事可乐',30,'法国','高品质百事可乐',326.30,212,'件','包装单位D','http://localhost:9090/files/1714356488981-水果万能.jpg','P470384','A732908','可用',6,992),(568,'4K高清显示器',31,'韩国','清晰细腻的画面，色彩真实，呈现更多细节。',214.90,738,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P257731','A123725','可用',1,992),(569,'香浓咖啡豆',26,'德国','精选优质咖啡豆，香醇浓郁，唤醒您每一个清晨。',125.10,148,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P117387','A436519','可用',6,992),(570,'可口可乐',30,'中国','高品质可口可乐',927.50,828,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P165899','A385192','可用',6,992),(571,'智能音箱',31,'法国','AI语音助手，音质清晰，打造智能家居音乐空间。',775.00,531,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P618170','A977234','可用',1,992),(572,'个性印花衬衫',32,'日本','时尚印花图案，个性张扬，彰显独特品味。',549.90,489,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P459433','A205613','可用',3,992),(573,'双模无线路由器',31,'英国','支持有线和无线连接，信号稳定，网络畅通无阻。',852.50,893,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P481436','A545466','可用',1,992),(574,'智能手环',31,'美国','多功能健康监测，运动数据实时记录，关注健康生活。',888.00,693,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P677375','A689856','可用',1,992),(575,'柠檬清凉果酱',26,'澳洲','新鲜柠檬制成的果酱，口感清爽，让您夏日清凉一夏。',151.90,207,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P722057','A229788','可用',6,992),(576,'奥特七兄弟',28,'英国','高品质日本动漫周边',898.80,91,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P747181','A169581','可用',4,992),(577,'青春果蔬拼盘',26,'英国','多种新鲜水果蔬菜组成的拼盘，丰富多彩，健康美味。',92.00,725,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P358060','A579599','可用',6,992),(578,'智能手表',31,'韩国','结合了健康监测、智能提醒等功能，时尚实用。',476.00,817,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P555257','A601240','可用',1,992),(579,'无线蓝牙耳机',31,'澳洲','无需担心纠缠的线缆，自由畅享音乐，通话更便捷。',166.50,91,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P938599','A535041','可用',1,992),(580,'数字相机',31,'英国','高清画质，精彩瞬间记录，让每一刻都留下美好回忆。',653.10,332,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P642965','A684935','可用',1,999),(581,'电竞游戏键盘',31,'澳洲','专业级机械键盘，响应灵敏，让您畅游游戏世界。',374.00,711,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P985391','A134605','可用',1,999),(582,'智能家居摄像头',31,'日本','远程监控，智能提醒，保护家庭安全，守护您的家。',487.70,325,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P569018','A689475','可用',1,999),(583,'投影电视',31,'英国','大屏幕高清投影，影音效果震撼，带来全新视听享受。',802.10,783,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P167509','A748352','可用',1,1002),(584,'雏鹰未来',28,'韩国','高品质日本动漫周边',838.50,622,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P968247','A629901','可用',4,999),(585,'休闲运动裤',32,'德国','弹力面料，舒适贴身，让您尽情享受运动时光。',753.50,91,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P410646','A869767','可用',5,999),(586,'无线充电器',31,'英国','便捷无线充电，摆脱线缆束缚，为您的设备充电更方便。',31.90,908,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P283338','A885141','可用',1,999),(587,'智能门锁',31,'中国','指纹、密码、APP远程控制，安全便捷，守护家的安全。',830.70,21,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P684285','A201445','可用',1,999),(588,'潮流牛仔裤',32,'英国','时尚修身款式，搭配多样，展现个性时尚。',451.40,219,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P115937','A531559','可用',5,999),(589,'蓝牙无线音箱',31,'英国','无需担心音频线束缚，高保真音质，随时享受音乐。',993.00,627,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P357509','A415030','可用',1,999),(592,'时尚针织衫',32,'德国','时尚流行款式，柔软舒适，时尚不凡。',284.00,789,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P265655','A901041','可用',5,999),(594,'牛欢喜',30,'德国','高品质长城红酒',816.60,625,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P878092','A795082','可用',6,999),(597,'商务西装套装',32,'中国','经典款式，精致剪裁，展现绅士风范。',538.30,353,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P602070','A680942','可用',3,999),(598,'柔软家居服',32,'日本','轻柔舒适面料，宽松休闲设计，享受惬意家居时光。',830.10,365,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P887858','A222872','可用',3,123),(600,'芳香草本茶叶',26,'英国','精选天然草本植物，清新芬芳，带您领略纯净茶香。',905.00,773,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P284329','A765270','可用',6,123),(601,'运动风夹克',32,'韩国','透气轻便面料，时尚运动款式，释放运动潜能。',505.60,595,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P426879','A414158','可用',3,123),(602,'雪纺长裙',32,'澳洲','温柔雪纺面料，轻盈飘逸，展现女性优雅气质。',897.40,281,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P486881','A341620','可用',5,123),(609,'长城红酒',30,'韩国','高品质长城红酒',557.20,44,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P505936','A508053','可用',6,123),(610,'优质羽绒服',32,'德国','保暖轻薄，时尚设计，寒冬里的最佳选择。',154.10,158,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P347028','A853941','可用',5,123),(611,'休闲拼接卫衣',32,'日本','休闲时尚设计，多彩拼接，展现个性潮流。',734.40,382,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P804338','A233601','可用',3,123),(613,'简约牛仔外套',32,'韩国','时尚百搭款式，经典不过时，彰显个性时尚品味。',857.00,49,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P502774','A744111','可用',3,123),(614,'百事可乐',30,'中国','高品质百事可乐',469.90,605,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P958836','A783512','可用',6,123),(617,'西巴老马',28,'韩国','高品质日本动漫周边',178.30,722,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P747858','A321579','可用',4,123),(619,'时尚连体裤',32,'德国','修身版型，时尚设计，展现优雅女性风采。',388.00,645,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P364835','A225659','可用',5,123),(622,'优雅丝绒连衣裙',32,'中国','柔软丝绒面料，优雅风格，展现女性柔美魅力。',263.10,864,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P708952','A940846','可用',5,123),(624,'可口可乐',30,'澳洲','高品质可口可乐',98.70,524,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P821723','A120918','可用',6,123),(626,'柔滑奶酪礼盒',26,'德国','口感细腻，奶香四溢，满足您的味蕾享受。',889.80,443,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P178490','A231323','可用',6,123),(628,'休闲棒球帽',32,'美国','时尚休闲款式，阳光帽檐，时尚百搭。',152.70,56,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P702038','A540900','可用',5,123),(630,'休闲运动鞋',32,'法国','轻盈舒适，抓地稳固，满足您的运动需求。',488.20,84,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P165769','A894915','可用',3,123),(635,'时尚拼接衬衫',32,'美国','潮流设计，多彩拼接，打造时尚个性LOOK。',525.40,12,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P881019','A377144','可用',3,123),(637,'智能手表',31,'英国','结合了健康监测、智能提醒等功能，时尚实用。',276.30,230,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P709871','A453013','可用',5,123),(638,'畅销小说合集',32,'俄罗斯','收录多部经典畅销小说，文学名著，惊险悬疑，应有尽有。',441.10,639,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P532172','A627523','可用',3,123),(640,'芬达',30,'德国','高品质百事可乐',322.50,91,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P269094','A608688','可用',6,123),(641,'无线蓝牙耳机',31,'德国','无需担心纠缠的线缆，自由畅享音乐，通话更便捷。',443.70,333,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P637293','A447682','可用',5,123),(642,'火柴人',28,'日本','高品质日本动漫周边',663.10,684,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P112771','A996874','可用',4,123),(643,'海洋鲜味海鲜',26,'俄罗斯','新鲜海鲜捕捞而来，鲜美可口，带您感受海洋的味道。',229.30,217,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P977974','A851503','可用',6,123),(645,'经典音乐CD',32,'英国','收录多款经典音乐专辑，流行、古典、摇滚，供您尽情选择。',151.70,0,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P243851','A685390','可用',3,123),(647,'汉堡包',30,'俄罗斯','高品质汉堡包',855.30,297,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P170330','A184009','可用',6,123),(649,'清新柠檬汽水',26,'日本','清新柠檬口味，汽水爽口，解渴消暑的最佳选择。',974.70,894,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P390993','A248604','可用',6,123),(651,'电影经典合集',32,'美国','收录多部经典电影，好莱坞大片，艺术影片，触动心灵。',656.90,5,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P995105','A544416','可用',3,123),(655,'数字相机',31,'澳洲','高清画质，精彩瞬间记录，让每一刻都留下美好回忆。',489.60,523,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P647208','A219199','可用',5,123),(656,'电竞游戏键盘',31,'美国','专业级机械键盘，响应灵敏，让您畅游游戏世界。',743.10,354,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P553695','A140487','可用',5,123),(657,'海贼王',28,'韩国','高品质日本动漫周边',86.60,904,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P744541','A941702','可用',4,123),(659,'智能家居摄像头',31,'印度','远程监控，智能提醒，保护家庭安全，守护您的家。',133.70,503,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P913398','A376871','可用',5,123),(660,'投影电视',31,'英国','大屏幕高清投影，影音效果震撼，带来全新视听享受。',852.90,847,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P764591','A954825','可用',5,123),(661,'无线充电器',31,'俄罗斯','便捷无线充电，摆脱线缆束缚，为您的设备充电更方便。',979.00,217,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P692827','A516127','可用',5,666),(663,'长城红酒',30,'俄罗斯','高品质长城红酒',754.40,270,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P886344','A376032','可用',6,666),(665,'汉堡包',30,'德国','高品质汉堡包',824.80,91,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P347830','A529606','可用',6,666),(670,'智能门锁',31,'韩国','指纹、密码、APP远程控制，安全便捷，守护家的安全。',398.40,276,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P532323','A599772','可用',5,666),(672,'情感励志书籍',32,'韩国','励志成长，情感情绪管理，为您提供成长与启发。',495.40,308,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P816018','A988675','可用',3,666),(673,'蓝牙无线音箱',31,'美国','无需担心音频线束缚，高保真音质，随时享受音乐。',651.20,643,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P544383','A184557','可用',5,666),(676,'香脆麦片饼干',26,'澳洲','香脆可口的麦片饼干，营养丰富，是您的健康零食。',590.20,778,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P404222','A481726','可用',6,666),(678,'乃埃斯牙膏',27,'俄罗斯','高品质高露洁牙膏',202.20,387,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P628502','A848818','可用',5,666),(683,'高露洁牙膏',27,'德国','高品质高露洁牙膏',736.50,433,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P270681','A210293','可用',5,666),(687,'名人传记',32,'日本','名人传记，成功人士故事，为您展示别样人生智慧。',193.50,659,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P507619','A373966','可用',3,666),(691,'甜蜜水果酸奶',26,'中国','新鲜水果与酸奶的完美结合，口感丰富，营养美味。',933.60,314,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P776220','A202651','可用',6,666),(692,'清爽西瓜汁',26,'法国','夏日清凉解渴的西瓜汁，鲜甜可口，一饮即爽。',353.80,132,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P801837','A734280','可用',6,666),(693,'香醇红酒套装',26,'韩国','优质红酒套装，口感浓郁，带来品质生活享受。',301.30,442,'件','包装单位D','http://localhost:9090/files/1714356562823-食物.jpg','P876642','A217230','可用',6,666),(700,'绿茶鲜果冰淇淋',26,'法国','清新绿茶口味，搭配新鲜水果，口感丰富，滋味无穷。',485.00,47,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P623491','A616171','可用',6,666),(701,'摄影技术书籍',32,'中国','摄影技巧、后期处理、构图原理，为您成为摄影大师提供指导。',645.00,363,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P728778','A917343','可用',3,666),(703,'海飞丝洗发水',27,'印度','高品质海飞丝洗发水',666.40,863,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P278696','A251430','可用',5,666),(704,'东方Project',28,'德国','高品质日本动漫周边',803.00,723,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P204996','A626994','可用',4,666),(707,'书法艺术欣赏',32,'中国','书法篆刻、历代碑帖、书法技法，让您领略中华书法魅力。',884.30,821,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P967116','A341157','可用',3,666),(711,'轻便旅行箱',32,'美国','轻松出行，多功能设计，轻盈便捷，为您的旅行保驾护航。',444.60,692,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P129446','A486636','可用',3,666),(714,'茅台',30,'法国','高品质百事可乐',216.00,10,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P110833','A484042','可用',6,666),(716,'考研408',28,'英国','高品质日本动漫周边',908.60,44,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P354796','A209695','可用',4,666),(718,'清扬洗发水',27,'日本','高品质海飞丝洗发水',205.90,91,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P116155','A498166','可用',5,666),(719,'热情火龙果拼盘',26,'俄罗斯','火龙果的多彩拼盘，色彩鲜艳，满满热情洋溢。',288.40,786,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P895549','A447645','可用',6,666),(724,'意式浓郁咖啡',26,'美国','正宗意式咖啡，香浓醇厚，为您带来浓郁的咖啡体验。',949.50,677,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P502410','A302448','可用',6,666),(730,'百事可乐',30,'中国','高品质百事可乐',382.70,620,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P639268','A355915','可用',6,666),(732,'纯棉毛巾套装',32,'美国','优质纯棉面料，柔软吸水，为您带来舒适的沐浴体验。',770.00,665,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P358166','A332892','可用',3,767),(735,'煎饼果子',30,'英国','高品质可口可乐',538.00,881,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P277856','A987663','可用',6,767),(737,'可口可乐',30,'法国','高品质可口可乐',252.60,157,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P729983','A449021','可用',6,767),(738,'魅族手机',31,'美国','高品质魅族手机',528.20,549,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P449805','A296953','可用',1,767),(739,'便携保温杯',32,'德国','随身携带，保温性能好，满足您随时随地的饮水需求。',689.50,91,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P658900','A339406','可用',3,767),(740,'日本动漫周边',28,'俄罗斯','高品质日本动漫周边',720.40,875,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P169111','A781426','可用',4,767),(741,'软毛牙刷',32,'印度','舒适柔软的刷毛，护理牙龈，给您清新口气和健康牙齿。',328.60,19,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P731252','A449042','可用',3,767),(742,'华为平板',31,'澳洲','高品质华为平板',63.70,507,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P631052','A864320','可用',1,767),(743,'百事可乐',26,'美国','高品质百事可乐',502.10,0,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P675012','A468535','可用',6,767),(744,'三星手机',31,'法国','高品质三星手机',296.10,340,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P653767','A519155','可用',1,767),(745,'小米手环',31,'英国','高品质小米手环',660.50,151,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P219211','A503172','可用',1,767),(746,'魅族手机',31,'英国','高品质魅族手机',84.50,672,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P276075','A705487','可用',1,767),(747,'保湿护手霜',32,'中国','深层保湿滋润，修护干燥肌肤，呵护您的娇嫩双手。',113.70,93,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P120569','A470067','可用',3,767),(748,'iphone手机',31,'法国','高品质三星手机',400.30,693,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P686198','A879199','可用',1,767),(749,'索尼耳机',31,'英国','高品质索尼耳机',379.20,742,'件','包装单位D','http://localhost:9090/files/1714356547963-电视.jpg','P658892','A609802','可用',1,767),(750,'iPhone',31,'美国','高品质iPhone',500.90,238,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P524117','A713791','可用',1,767),(751,'沐浴露',27,'澳洲','高品质海飞丝洗发水',22.70,268,'件','包装单位D','http://localhost:9090/files/1714356584301-美妆万能.jpg','P384298','A822301','可用',5,767),(752,'西特乐香肠',26,'德国','高品质长城红酒',29.90,527,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P952701','A347320','可用',6,767),(753,'家用养生壶',32,'韩国','一壶多用，多功能养生，为您带来健康美味的生活体验。',375.20,381,'件','包装单位D','http://localhost:9090/files/1714356531979-美妆万能.jpg','P661582','A766786','可用',3,767),(754,'三星手机',31,'印度','高品质三星手机',973.70,673,'件','包装单位D','http://localhost:9090/files/1713854679482-1.png','P889729','A480612','可用',1,223),(755,'长城红酒',30,'法国','高品质长城红酒',984.20,889,'件','包装单位D','http://localhost:9090/files/1717382851287-60666956_p0_master1200.jpg','P436342','A899305','可用',6,223);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作',
  `username` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IP地址',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (27,'用户注册','lubenwei','注册','127.0.0.1','2024-02-25 15:10:51'),(28,'用户登录','admin','登录','127.0.0.1','2024-02-25 15:11:02'),(29,'删除员工23','admin','删除','127.0.0.1','2024-02-25 15:22:51'),(30,'用户登录','admin','登录','127.0.0.1','2024-02-25 21:35:32'),(31,'删除员工1','admin','删除','127.0.0.1','2024-02-25 21:48:18'),(32,'新增员工1','admin','新增','127.0.0.1','2024-02-25 21:48:36'),(33,'删除员工1','admin','删除','127.0.0.1','2024-02-25 21:50:28'),(34,'新增员工1','admin','新增','127.0.0.1','2024-02-25 21:50:47'),(35,'删除员工1','admin','删除','127.0.0.1','2024-02-25 21:57:57'),(36,'删除员工abc','admin','删除','127.0.0.1','2024-02-25 22:01:37'),(37,'新增员工1','admin','新增','127.0.0.1','2024-02-25 22:02:52'),(38,'新增员工2','admin','新增','127.0.0.1','2024-02-25 22:06:37'),(39,'删除员工1','admin','删除','127.0.0.1','2024-02-25 22:06:40'),(40,'新增员工23','admin','新增','127.0.0.1','2024-02-25 22:06:53'),(41,'删除员工23','admin','删除','127.0.0.1','2024-02-25 22:07:35'),(42,'新增员工3','admin','新增','127.0.0.1','2024-02-25 22:07:42'),(43,'删除员工3','admin','删除','127.0.0.1','2024-02-25 22:15:23'),(44,'新增员工1','admin','新增','127.0.0.1','2024-02-25 22:15:31'),(45,'删除员工2','admin','删除','127.0.0.1','2024-02-25 22:20:52'),(46,'删除员工1','admin','删除','127.0.0.1','2024-02-25 22:20:53'),(47,'新增员工1','admin','新增','127.0.0.1','2024-02-25 22:21:04'),(48,'删除员工1','admin','删除','127.0.0.1','2024-02-25 22:27:19'),(49,'新增员工1','admin','新增','127.0.0.1','2024-02-25 22:27:27'),(50,'删除员工1','admin','删除','127.0.0.1','2024-02-25 22:27:40'),(51,'新增员工1','admin','新增','127.0.0.1','2024-02-25 22:29:17'),(52,'删除员工1','admin','删除','127.0.0.1','2024-02-25 22:29:20'),(53,'新增员工1','admin','新增','127.0.0.1','2024-02-25 22:29:23'),(54,'新增员工2','admin','新增','127.0.0.1','2024-02-25 22:52:45'),(55,'用户登录','admin','登录','127.0.0.1','2024-02-26 08:37:13'),(56,'新增员工a','admin','新增','127.0.0.1','2024-02-26 08:37:36'),(57,'用户登录','admin','登录','127.0.0.1','2024-02-26 11:02:53'),(58,'用户登录','admin','登录','127.0.0.1','2024-02-26 13:03:12'),(59,'新增员工123','admin','新增','127.0.0.1','2024-02-26 13:27:26'),(60,'用户登录','admin','登录','127.0.0.1','2024-02-26 19:13:59'),(61,'用户登录','admin','登录','127.0.0.1','2024-02-26 22:12:47'),(62,'用户登录','admin','登录','127.0.0.1','2024-02-27 09:32:30'),(63,'用户登录','3','登录','127.0.0.1','2024-02-27 11:32:56'),(64,'用户登录','3','登录','127.0.0.1','2024-02-27 11:38:07'),(65,'用户登录','3','登录','127.0.0.1','2024-02-27 11:50:18'),(66,'用户登录','admin','登录','127.0.0.1','2024-02-27 11:50:50'),(67,'新增员工1','admin','新增','127.0.0.1','2024-02-27 13:03:51'),(68,'新增员工2','admin','新增','127.0.0.1','2024-02-27 13:05:49'),(69,'用户登录','admin','登录','127.0.0.1','2024-03-04 21:38:18'),(70,'用户登录','123','登录','127.0.0.1','2024-03-04 21:39:53'),(71,'用户登录','admin','登录','127.0.0.1','2024-03-05 13:54:29'),(72,'新增员工123','admin','新增','127.0.0.1','2024-03-05 14:38:58'),(73,'新增员工234','admin','新增','127.0.0.1','2024-03-05 14:39:32'),(74,'用户登录','123','登录','127.0.0.1','2024-03-05 14:39:51'),(75,'用户登录','123','登录','127.0.0.1','2024-03-05 14:40:08'),(76,'用户注册','111','注册','127.0.0.1','2024-03-05 14:40:45'),(77,'用户注册','222','注册','127.0.0.1','2024-03-05 14:47:00'),(78,'用户注册','333','注册','127.0.0.1','2024-03-05 14:47:43'),(79,'用户注册','444','注册','127.0.0.1','2024-03-05 14:48:46'),(80,'用户登录','444','登录','127.0.0.1','2024-03-05 14:49:03'),(81,'用户登录','admin','登录','127.0.0.1','2024-03-05 14:49:34'),(82,'用户注册','111','注册','127.0.0.1','2024-03-05 15:09:52'),(83,'用户登录','admin','登录','127.0.0.1','2024-03-05 15:56:21'),(84,'用户注册','555','注册','127.0.0.1','2024-03-10 10:07:50'),(85,'用户注册','777','注册','127.0.0.1','2024-03-10 10:10:24'),(86,'用户登录','admin','登录','127.0.0.1','2024-03-10 10:16:06'),(87,'用户登录','admin','登录','127.0.0.1','2024-03-10 12:53:13'),(88,'用户登录','admin','登录','127.0.0.1','2024-03-10 13:53:09'),(89,'用户登录','admin','登录','127.0.0.1','2024-03-10 13:55:16'),(90,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:06:38'),(91,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:07:00'),(92,'用户登录','admin','登录','127.0.0.1','2024-03-10 14:13:52'),(93,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:16:04'),(94,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:20:06'),(95,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:40:25'),(96,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:40:56'),(97,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:47:45'),(98,'用户登录','admin','登录','127.0.0.1','2024-03-10 14:48:02'),(99,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:48:15'),(100,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:49:55'),(101,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:50:30'),(102,'用户登录','admin','登录','127.0.0.1','2024-03-10 14:52:29'),(103,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 14:52:42'),(104,'用户登录','111','登录','127.0.0.1','2024-03-10 15:25:22'),(105,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 15:28:45'),(106,'用户登录','admin','登录','127.0.0.1','2024-03-10 15:30:47'),(107,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 20:12:55'),(108,'用户登录','admin','登录','127.0.0.1','2024-03-10 20:23:54'),(109,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 21:02:59'),(110,'用户登录','zhangsan','登录','127.0.0.1','2024-03-10 21:10:56'),(111,'用户登录','admin','登录','127.0.0.1','2024-03-11 11:34:56'),(112,'用户登录','admin','登录','127.0.0.1','2024-03-11 13:58:52'),(113,'用户登录','admin','登录','127.0.0.1','2024-03-11 14:09:10'),(114,'用户登录','admin','登录','127.0.0.1','2024-03-11 14:42:04'),(115,'用户登录','admin','登录','127.0.0.1','2024-03-11 16:08:46'),(116,'用户登录','admin','登录','127.0.0.1','2024-03-11 16:09:09'),(117,'用户登录','admin','登录','127.0.0.1','2024-03-11 16:10:15'),(118,'用户登录','18669024313','登录','127.0.0.1','2024-03-11 16:22:03'),(119,'用户登录','admin','登录','127.0.0.1','2024-03-11 16:22:24'),(120,'用户登录','admin','登录','127.0.0.1','2024-03-12 20:51:26'),(121,'用户登录','18669024313','登录','127.0.0.1','2024-03-13 09:07:20'),(122,'用户登录','18669024313','登录','127.0.0.1','2024-03-13 09:08:39'),(123,'用户登录','111','登录','127.0.0.1','2024-03-13 10:15:30'),(124,'用户登录','111','登录','127.0.0.1','2024-03-13 10:15:43'),(125,'用户登录','18669024313','登录','127.0.0.1','2024-03-13 10:16:02'),(126,'用户登录','111','登录','127.0.0.1','2024-03-13 10:16:14'),(127,'用户登录','111','登录','127.0.0.1','2024-03-13 10:17:02'),(128,'用户登录','admin','登录','127.0.0.1','2024-03-13 10:18:21'),(129,'用户登录','111','登录','127.0.0.1','2024-03-13 10:19:29'),(130,'用户登录','111','登录','127.0.0.1','2024-03-13 10:20:00'),(131,'用户登录','admin','登录','127.0.0.1','2024-03-13 10:20:21'),(132,'用户登录','111','登录','127.0.0.1','2024-03-13 10:40:12'),(133,'用户登录','111','登录','127.0.0.1','2024-03-13 10:40:13'),(134,'用户登录','111','登录','127.0.0.1','2024-03-13 12:07:29'),(135,'用户登录','111','登录','127.0.0.1','2024-03-13 12:08:35'),(136,'用户登录','111','登录','127.0.0.1','2024-03-13 12:09:55'),(137,'用户登录','111','登录','127.0.0.1','2024-03-13 13:18:32'),(138,'用户登录','111','登录','127.0.0.1','2024-03-13 13:19:43'),(139,'用户登录','111','登录','127.0.0.1','2024-03-13 13:19:57'),(140,'用户登录','111','登录','127.0.0.1','2024-03-13 15:38:39'),(141,'用户登录','111','登录','127.0.0.1','2024-03-13 18:09:55'),(142,'用户登录','admin','登录','127.0.0.1','2024-03-13 19:09:32'),(143,'用户登录','111','登录','127.0.0.1','2024-03-13 19:10:29'),(144,'用户登录','111','登录','127.0.0.1','2024-03-14 16:25:54'),(145,'用户注册','222','注册','127.0.0.1','2024-03-14 16:49:33'),(146,'用户登录','333','登录','127.0.0.1','2024-03-14 16:57:09'),(147,'用户登录','111','登录','127.0.0.1','2024-03-15 09:51:22'),(148,'用户登录','admin','登录','127.0.0.1','2024-03-15 10:19:32'),(149,'用户登录','111','登录','127.0.0.1','2024-03-15 10:20:28'),(150,'用户登录','111','登录','127.0.0.1','2024-03-15 13:48:15'),(151,'用户登录','111','登录','127.0.0.1','2024-03-15 15:58:47'),(152,'用户登录','111','登录','127.0.0.1','2024-03-15 18:23:33'),(153,'用户登录','admin','登录','127.0.0.1','2024-03-15 18:38:10'),(154,'用户登录','111','登录','127.0.0.1','2024-03-15 19:35:29'),(155,'用户登录','111','登录','127.0.0.1','2024-03-16 09:03:30'),(156,'用户登录','111','登录','127.0.0.1','2024-03-16 11:06:41'),(157,'用户登录','111','登录','127.0.0.1','2024-03-16 13:24:18'),(158,'用户登录','admin','登录','127.0.0.1','2024-03-16 15:13:27'),(159,'用户登录','admin','登录','127.0.0.1','2024-03-16 17:23:58'),(160,'用户登录','111','登录','127.0.0.1','2024-03-16 17:35:55'),(161,'用户登录','111','登录','127.0.0.1','2024-03-16 22:29:24'),(162,'用户登录','111','登录','127.0.0.1','2024-03-17 10:36:05'),(163,'用户登录','admin','登录','127.0.0.1','2024-03-17 12:17:31'),(164,'用户登录','111','登录','127.0.0.1','2024-03-21 12:24:11'),(165,'用户登录','111','登录','127.0.0.1','2024-03-21 18:15:16'),(166,'用户登录','111','登录','127.0.0.1','2024-03-21 20:15:40'),(167,'用户登录','111','登录','127.0.0.1','2024-03-22 08:26:12'),(168,'用户登录','111','登录','127.0.0.1','2024-03-22 12:22:15'),(169,'用户登录','admin','登录','127.0.0.1','2024-03-22 14:12:09'),(170,'用户登录','111','登录','127.0.0.1','2024-03-22 16:01:33'),(171,'用户登录','111','登录','127.0.0.1','2024-03-22 16:16:46'),(172,'用户登录','111','登录','127.0.0.1','2024-03-22 16:37:56'),(173,'用户登录','admin','登录','127.0.0.1','2024-03-22 16:54:30'),(174,'用户登录','111','登录','127.0.0.1','2024-03-22 17:22:41'),(175,'用户登录','admin','登录','127.0.0.1','2024-03-22 17:26:21'),(176,'用户登录','111','登录','127.0.0.1','2024-03-22 17:35:05'),(177,'用户登录','admin','登录','127.0.0.1','2024-03-22 19:03:17'),(178,'用户登录','111','登录','127.0.0.1','2024-03-23 15:47:27'),(179,'用户登录','admin','登录','127.0.0.1','2024-03-23 15:47:52'),(180,'用户登录','111','登录','127.0.0.1','2024-03-23 15:52:15'),(181,'用户登录','admin','登录','127.0.0.1','2024-03-23 15:53:47'),(182,'删除员工111','admin','删除','127.0.0.1','2024-03-23 15:55:36'),(183,'删除员工555','admin','删除','127.0.0.1','2024-03-23 15:55:37'),(184,'删除员工777','admin','删除','127.0.0.1','2024-03-23 15:55:39'),(185,'删除员工222','admin','删除','127.0.0.1','2024-03-23 15:55:40'),(186,'用户登录','admin','登录','127.0.0.1','2024-04-10 16:56:03'),(187,'用户登录','admin','登录','127.0.0.1','2024-04-10 17:56:47'),(188,'用户登录','aaa','登录','127.0.0.1','2024-04-10 18:03:32'),(189,'用户注册','bbb','注册','127.0.0.1','2024-04-10 18:07:37'),(190,'用户登录','bbb','登录','127.0.0.1','2024-04-10 18:07:50'),(191,'用户登录','bbb','登录','127.0.0.1','2024-04-10 18:09:43'),(192,'用户登录','admin','登录','127.0.0.1','2024-04-10 18:15:48'),(193,'用户登录','admin','登录','127.0.0.1','2024-04-10 18:20:56'),(194,'用户登录','123','登录','127.0.0.1','2024-04-10 18:25:56'),(195,'用户登录','admin','登录','127.0.0.1','2024-04-11 13:29:30'),(196,'用户登录','111','登录','127.0.0.1','2024-04-17 15:03:12'),(197,'用户登录','admin','登录','127.0.0.1','2024-04-17 15:20:16'),(198,'用户登录','admin','登录','127.0.0.1','2024-04-18 12:02:00'),(199,'用户登录','111','登录','127.0.0.1','2024-04-19 17:17:29'),(200,'用户登录','bbb','登录','127.0.0.1','2024-04-19 17:19:51'),(201,'用户登录','bbb','登录','127.0.0.1','2024-04-19 17:26:16'),(202,'用户登录','admin','登录','127.0.0.1','2024-04-19 17:47:31'),(203,'用户登录','234','登录','127.0.0.1','2024-04-19 19:40:01'),(204,'用户登录','admin','登录','127.0.0.1','2024-04-19 19:46:17'),(205,'用户登录','111','登录','127.0.0.1','2024-04-20 10:31:58'),(206,'用户登录','111','登录','127.0.0.1','2024-04-22 19:19:50'),(207,'用户登录','111','登录','127.0.0.1','2024-04-23 10:07:30'),(208,'用户登录','admin','登录','127.0.0.1','2024-04-23 13:38:23'),(209,'用户登录','admin','登录','127.0.0.1','2024-04-23 13:38:23'),(210,'用户登录','111','登录','127.0.0.1','2024-04-23 14:12:36'),(211,'用户登录','admin','登录','127.0.0.1','2024-04-23 14:26:22'),(212,'用户登录','111','登录','127.0.0.1','2024-04-23 14:30:48'),(213,'用户登录','admin','登录','127.0.0.1','2024-04-23 14:43:36'),(214,'用户登录','111','登录','127.0.0.1','2024-04-23 14:45:36'),(215,'用户登录','admin','登录','127.0.0.1','2024-04-28 18:53:25'),(216,'用户登录','admin','登录','127.0.0.1','2024-04-29 08:47:36'),(217,'用户登录','111','登录','127.0.0.1','2024-04-29 10:11:31'),(218,'用户登录','admin','登录','127.0.0.1','2024-05-04 19:21:45'),(219,'用户登录','admin','登录','127.0.0.1','2024-05-06 15:39:42'),(220,'用户注册','111','注册','127.0.0.1','2024-05-06 18:38:26'),(221,'用户登录','111','登录','127.0.0.1','2024-05-06 18:38:42'),(222,'用户登录','111','登录','127.0.0.1','2024-05-06 18:43:01'),(223,'用户登录','111','登录','127.0.0.1','2024-05-06 19:04:19'),(224,'用户登录','222','登录','127.0.0.1','2024-05-06 20:34:10'),(225,'用户登录','admin','登录','127.0.0.1','2024-05-06 20:43:03'),(226,'用户登录','222','登录','127.0.0.1','2024-05-06 20:43:36'),(227,'用户登录','aaa','登录','127.0.0.1','2024-05-06 20:46:50'),(228,'用户登录','ccc','登录','127.0.0.1','2024-05-06 20:51:55'),(229,'用户登录','222','登录','127.0.0.1','2024-05-06 21:02:19'),(230,'用户登录','222','登录','127.0.0.1','2024-05-07 09:35:25'),(231,'用户登录','333','登录','127.0.0.1','2024-05-07 10:29:22'),(232,'用户登录','444','登录','127.0.0.1','2024-05-07 10:36:18'),(233,'用户登录','555','登录','127.0.0.1','2024-05-07 10:43:56'),(234,'用户登录','555','登录','127.0.0.1','2024-05-07 10:46:11'),(235,'用户登录','555','登录','127.0.0.1','2024-05-07 10:46:36'),(236,'用户登录','555','登录','127.0.0.1','2024-05-07 11:38:34'),(237,'用户登录','555','登录','127.0.0.1','2024-05-07 11:39:03'),(238,'用户登录','555','登录','127.0.0.1','2024-05-07 12:04:40'),(239,'用户登录','admin','登录','127.0.0.1','2024-05-07 12:16:43'),(240,'用户登录','555','登录','127.0.0.1','2024-05-07 12:18:34'),(241,'用户登录','555','登录','127.0.0.1','2024-05-07 12:20:55'),(242,'用户登录','555','登录','127.0.0.1','2024-05-07 12:27:40'),(243,'用户登录','555','登录','127.0.0.1','2024-05-07 12:29:57'),(244,'用户登录','555','登录','127.0.0.1','2024-05-07 12:32:54'),(245,'用户登录','555','登录','127.0.0.1','2024-05-07 12:33:28'),(246,'用户登录','555','登录','127.0.0.1','2024-05-07 12:59:53'),(247,'用户登录','admin','登录','127.0.0.1','2024-05-08 11:23:09'),(248,'用户登录','555','登录','127.0.0.1','2024-05-08 11:27:44'),(249,'用户登录','555','登录','127.0.0.1','2024-05-08 16:43:32'),(250,'用户登录','555','登录','127.0.0.1','2024-05-12 10:20:28'),(251,'用户登录','admin','登录','127.0.0.1','2024-05-12 12:09:17'),(252,'用户登录','555','登录','127.0.0.1','2024-05-12 12:13:33'),(253,'用户登录','admin','登录','127.0.0.1','2024-05-12 12:28:57'),(254,'用户登录','admin','登录','127.0.0.1','2024-05-14 20:25:00'),(255,'用户登录','admin','登录','127.0.0.1','2024-05-14 20:33:53'),(256,'用户登录','666','登录','127.0.0.1','2024-05-14 20:40:46'),(257,'用户登录','666','登录','127.0.0.1','2024-05-14 20:56:47'),(258,'用户登录','admin','登录','127.0.0.1','2024-05-14 21:08:11'),(259,'用户登录','admin','登录','127.0.0.1','2024-05-14 21:13:35'),(260,'用户登录','admin','登录','127.0.0.1','2024-05-14 21:14:26'),(261,'用户登录','admin','登录','127.0.0.1','2024-05-15 09:12:30'),(262,'用户登录','admin','登录','127.0.0.1','2024-05-15 09:34:30'),(263,'用户登录','admin','登录','127.0.0.1','2024-05-15 09:36:54'),(264,'用户登录','admin','登录','127.0.0.1','2024-05-15 09:37:33'),(265,'用户登录','admin','登录','127.0.0.1','2024-05-15 09:40:32'),(266,'用户登录','admin','登录','127.0.0.1','2024-05-24 08:36:02'),(267,'新增员工222','admin','新增','127.0.0.1','2024-05-24 10:17:33'),(268,'用户登录','111','登录','127.0.0.1','2024-05-24 10:31:57'),(269,'用户登录','admin','登录','127.0.0.1','2024-05-24 10:32:20'),(270,'用户登录','666','登录','127.0.0.1','2024-05-24 10:37:29'),(271,'用户登录','666','登录','127.0.0.1','2024-05-24 10:37:50'),(272,'用户登录','666','登录','127.0.0.1','2024-05-24 10:38:45'),(273,'用户登录','666','登录','127.0.0.1','2024-05-24 10:39:19'),(274,'用户登录','admin','登录','127.0.0.1','2024-05-24 10:44:45'),(275,'用户登录','admin','登录','127.0.0.1','2024-05-25 12:22:41'),(276,'用户登录','admin','登录','127.0.0.1','2024-05-25 12:24:28'),(277,'用户登录','admin','登录','127.0.0.1','2024-05-25 14:18:06'),(278,'用户登录','222','登录','127.0.0.1','2024-05-25 14:21:22'),(279,'用户登录','admin','登录','127.0.0.1','2024-05-25 14:24:12'),(280,'用户登录','333','登录','127.0.0.1','2024-05-25 14:25:08'),(281,'用户登录','444','登录','127.0.0.1','2024-05-25 14:26:29'),(282,'用户登录','admin','登录','127.0.0.1','2024-05-25 14:28:56'),(283,'用户登录','444','登录','127.0.0.1','2024-05-25 14:30:11'),(284,'用户登录','admin','登录','127.0.0.1','2024-05-25 14:41:45'),(285,'用户登录','444','登录','127.0.0.1','2024-05-25 14:43:19'),(286,'用户登录','admin','登录','127.0.0.1','2024-05-25 14:43:54'),(287,'用户登录','222','登录','127.0.0.1','2024-05-26 09:28:55'),(288,'用户登录','admin','登录','127.0.0.1','2024-05-26 09:49:55'),(289,'用户登录','222','登录','127.0.0.1','2024-05-26 09:51:40'),(290,'用户登录','admin','登录','127.0.0.1','2024-05-26 11:31:40'),(291,'用户登录','admin','登录','127.0.0.1','2024-05-26 14:38:17'),(292,'进null4件','admin','进货','127.0.0.1','2024-05-26 15:28:35'),(293,'批发535','admin','进货','127.0.0.1','2024-05-26 15:38:34'),(294,'批发7523','admin','进货','127.0.0.1','2024-05-26 15:41:56'),(295,'批发保湿护手霜2件','admin','进货','127.0.0.1','2024-05-26 15:45:43'),(296,'批发退货保湿护手霜1件','admin','退货','127.0.0.1','2024-05-26 15:47:09'),(297,'批发退货保湿护手霜2件','admin','退货','127.0.0.1','2024-05-26 15:48:45'),(298,'系统进iPhone4件','admin','进货','127.0.0.1','2024-05-26 16:02:14'),(299,'系统退iPhone3件','admin','退货','127.0.0.1','2024-05-26 16:02:32'),(300,'系统进三星手机3件','admin','进货','127.0.0.1','2024-05-26 16:03:43'),(301,'批发三星手机4件','admin','销售','127.0.0.1','2024-05-26 16:04:50'),(302,'批发三星手机9件','admin','销售','127.0.0.1','2024-05-26 16:05:19'),(303,'批发西特乐香肠4件','admin','销售','127.0.0.1','2024-05-26 16:11:20'),(304,'用户登录','admin','登录','127.0.0.1','2024-05-26 16:44:15'),(305,'系统进魅族手机4件','admin','进货','127.0.0.1','2024-05-26 16:53:45'),(306,'系统进保湿护手霜4件','admin','进货','127.0.0.1','2024-05-26 16:54:14'),(307,'用户登录','admin','登录','127.0.0.1','2024-05-27 09:28:26'),(308,'用户登录','222','登录','127.0.0.1','2024-05-27 12:11:36'),(309,'用户登录','admin','登录','127.0.0.1','2024-05-27 12:13:12'),(310,'用户登录','222','登录','127.0.0.1','2024-05-27 12:19:42'),(311,'用户登录','admin','登录','127.0.0.1','2024-05-27 12:36:32'),(312,'用户登录','admin','登录','127.0.0.1','2024-05-27 19:21:29'),(313,'用户登录','222','登录','127.0.0.1','2024-05-27 19:38:14'),(314,'用户登录','admin','登录','127.0.0.1','2024-05-28 15:43:13'),(315,'用户登录','admin','登录','127.0.0.1','2024-05-28 15:43:14'),(316,'用户登录','222','登录','127.0.0.1','2024-05-28 15:58:37'),(317,'用户登录','admin','登录','127.0.0.1','2024-05-28 16:03:47'),(318,'用户登录','222','登录','127.0.0.1','2024-05-28 16:14:59'),(319,'用户登录','admin','登录','127.0.0.1','2024-05-28 16:18:09'),(320,'系统进沙发5件','admin','进货','127.0.0.1','2024-05-28 16:21:05'),(321,'系统退沙发3件','admin','退货','127.0.0.1','2024-05-28 16:21:19'),(322,'批发三星手机12件','admin','销售','127.0.0.1','2024-05-28 16:21:51'),(323,'批发退货三星手机4件','admin','退货','127.0.0.1','2024-05-28 16:22:05'),(324,'用户登录','admin','登录','127.0.0.1','2024-05-28 16:24:05'),(325,'删除员工bbb','admin','删除','127.0.0.1','2024-05-28 16:24:15'),(326,'用户登录','111','登录','127.0.0.1','2024-05-28 16:25:29'),(327,'用户登录','444','登录','127.0.0.1','2024-05-28 16:27:53'),(328,'用户登录','admin','登录','127.0.0.1','2024-05-28 16:30:17'),(329,'用户登录','admin','登录','127.0.0.1','2024-06-01 16:31:44'),(330,'系统退保湿护手霜2件','admin','退货','127.0.0.1','2024-06-01 16:40:06'),(331,'系统进iPhone5件','admin','进货','127.0.0.1','2024-06-01 16:44:51'),(332,'系统退iPhone3件','admin','退货','127.0.0.1','2024-06-01 16:45:25'),(333,'用户登录','admin','登录','127.0.0.1','2024-06-01 16:50:34'),(334,'系统进保湿护手霜1件','admin','进货','127.0.0.1','2024-06-01 16:52:43'),(335,'用户登录','admin','登录','127.0.0.1','2024-06-01 16:53:29'),(336,'用户登录','222','登录','127.0.0.1','2024-06-02 10:25:56'),(337,'用户登录','admin','登录','127.0.0.1','2024-06-02 10:28:50'),(338,'系统进笔记本电脑5件','admin','进货','127.0.0.1','2024-06-02 10:30:59'),(339,'批发三星手机3件','admin','销售','127.0.0.1','2024-06-02 10:32:28'),(340,'用户登录','222','登录','127.0.0.1','2024-06-02 10:48:04'),(341,'用户登录','222','登录','127.0.0.1','2024-06-02 14:58:33'),(342,'用户登录','555','登录','127.0.0.1','2024-06-03 08:10:18'),(343,'用户登录','admin','登录','127.0.0.1','2024-06-03 08:28:44'),(344,'用户登录','111','登录','127.0.0.1','2024-06-03 08:32:14'),(345,'用户登录','666','登录','127.0.0.1','2024-06-03 08:41:10'),(346,'用户登录','admin','登录','127.0.0.1','2024-06-03 08:43:03'),(347,'系统进可口可乐9件','admin','进货','127.0.0.1','2024-06-03 08:44:58'),(348,'系统退可口可乐3件','admin','退货','127.0.0.1','2024-06-03 08:45:20'),(349,'批发三星手机5件','admin','销售','127.0.0.1','2024-06-03 08:45:57'),(350,'批发退货三星手机2件','admin','退货','127.0.0.1','2024-06-03 08:46:15'),(351,'用户登录','777','登录','127.0.0.1','2024-06-03 10:33:05'),(352,'用户登录','888','登录','127.0.0.1','2024-06-03 10:35:57'),(353,'用户登录','admin','登录','127.0.0.1','2024-06-03 10:37:28'),(354,'用户登录','888','登录','127.0.0.1','2024-06-03 10:42:21'),(355,'用户登录','admin','登录','127.0.0.1','2024-06-03 10:44:11'),(356,'用户登录','888','登录','127.0.0.1','2024-06-03 10:45:34'),(357,'用户登录','admin','登录','127.0.0.1','2024-06-03 10:45:54'),(358,'系统进iPhone3件','admin','进货','127.0.0.1','2024-06-03 10:47:52'),(359,'系统退iPhone2件','admin','退货','127.0.0.1','2024-06-03 10:48:02'),(360,'批发家用养生壶5件','admin','销售','127.0.0.1','2024-06-03 10:48:29'),(361,'批发退货家用养生壶2件','admin','退货','127.0.0.1','2024-06-03 10:48:36'),(362,'用户登录','888','登录','127.0.0.1','2024-06-03 10:50:00'),(363,'用户登录','admin','登录','127.0.0.1','2024-06-03 10:50:33'),(364,'用户登录','111','登录','127.0.0.1','2024-06-03 10:52:44'),(365,'用户登录','888','登录','127.0.0.1','2024-06-03 10:53:42'),(366,'用户登录','admin','登录','127.0.0.1','2024-06-04 09:17:35'),(367,'用户登录','888','登录','127.0.0.1','2024-06-04 10:03:35'),(368,'用户登录','888','登录','127.0.0.1','2024-06-04 10:10:25'),(369,'用户登录','888','登录','127.0.0.1','2024-06-04 12:16:39'),(370,'用户登录','admin','登录','127.0.0.1','2024-06-04 12:22:45'),(371,'系统进iPhone3件','admin','进货','127.0.0.1','2024-06-04 12:28:13'),(372,'用户登录','888','登录','127.0.0.1','2024-06-04 21:15:52'),(373,'用户登录','admin','登录','127.0.0.1','2024-06-04 21:16:23'),(374,'用户登录','888','登录','127.0.0.1','2024-06-04 22:28:28'),(375,'用户登录','admin','登录','127.0.0.1','2024-06-05 07:53:27'),(376,'用户登录','boos','登录','127.0.0.1','2024-06-05 07:54:06'),(377,'用户登录','888','登录','127.0.0.1','2024-06-05 08:52:17');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公告信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'今天系统正式上线，开始内测','今天系统正式上线，开始内测','2023-09-05','admin'),(2,'所有功能都已完成，可以正常使用','所有功能都已完成，可以正常使用','2023-09-05','admin'),(4,'爽啦爽啦，顺丰同城入住','送货上门','2024-03-23','admin'),(5,'老板儿子考上研究生了','大促销开始了','2024-03-23','admin'),(6,'老板娶老婆了','欢乐时光就要开始了','2024-03-23','admin');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `good_id` int DEFAULT NULL COMMENT '商品ID',
  `business_id` int DEFAULT NULL COMMENT '商家ID',
  `num` int DEFAULT NULL COMMENT '商品数量',
  `user_id` int DEFAULT NULL COMMENT '用户ID',
  `price` double(10,2) DEFAULT NULL COMMENT '订单价格',
  `address_id` int DEFAULT NULL COMMENT '地址ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单状态',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (36,'20240602105937',33,NULL,2,50,398.00,7,'已发货','2024-06-02 10:59:37'),(37,'20240603084243',36,NULL,4,53,1596.00,9,'已发货','2024-06-03 08:42:43'),(38,'20240603084243',37,NULL,1,53,199.00,9,'已发货','2024-06-03 08:42:43'),(42,'20240603105018',28,NULL,4,57,7996.00,11,'已发货','2024-06-03 10:50:18'),(43,'20240604101159',583,NULL,3,57,2406.30,11,'待发货','2024-06-04 10:11:59');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `customer_id` int DEFAULT NULL COMMENT '客户ID',
  `goods_id` int DEFAULT NULL COMMENT '商品ID',
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '销售时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人',
  `price` double DEFAULT NULL COMMENT '销售单价',
  `num` int DEFAULT NULL COMMENT '销售数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品规格',
  `total` double(10,2) DEFAULT NULL COMMENT '销售总价',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品销售';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (12,28,27,'微信','2024-02-28 22:00:00','管理员',1888,4,'1888元一件',7552.00,NULL),(13,27,29,'微信','2024-03-04 00:00:00','管理员',1111,10,'222',11110.00,NULL),(14,27,52,'微信','2024-03-22 00:00:00','管理员',123,6,NULL,738.00,NULL),(15,25,53,'微信','2024-03-22 20:01:47','管理员',111,3,NULL,333.00,NULL),(16,27,51,'微信','2024-03-20 00:00:00','管理员',66,5,NULL,330.00,NULL),(19,28,52,'银联','2024-04-08 00:00:00','卢奥',123123,5,NULL,615615.00,NULL),(20,50,754,'微信','2024-05-07 01:00:00','卢奥',222,4,NULL,888.00,NULL),(21,49,53,'微信','2024-05-08 00:00:00','卢奥',222,5,NULL,1110.00,NULL),(22,49,752,'微信','2024-05-22 00:00:00','卢奥',66,3,NULL,198.00,NULL),(23,49,747,'支付宝','2024-05-12 00:00:00','卢奥',22,2,NULL,44.00,NULL),(24,49,747,'支付宝','2024-05-13 00:00:00','卢奥',22,2,NULL,44.00,NULL),(25,49,754,'微信','2024-05-07 00:00:00','卢奥',100,4,NULL,400.00,NULL),(26,48,754,'支付宝','2024-05-02 00:00:00','卢奥',1100,9,NULL,9900.00,NULL),(27,49,752,'银联','2024-05-24 00:00:00','卢奥',1000,4,NULL,4000.00,NULL),(28,49,754,'微信','2024-05-27 00:00:00','卢奥',222,12,NULL,2664.00,NULL),(29,49,754,'支付宝','2024-06-02 00:00:00','卢奥',100,3,'件',300.00,'测试'),(30,51,754,'微信','2024-06-02 00:00:00','卢奥',100000,5,'件',500000.00,'测试用例'),(31,55,753,'微信','2024-06-02 00:00:00','卢奥',2313,5,'2312',11565.00,NULL);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_back`
--

DROP TABLE IF EXISTS `sale_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_back` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `customer_id` int DEFAULT NULL COMMENT '客户ID',
  `goods_id` int DEFAULT NULL COMMENT '商品ID',
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '退货时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人',
  `price` double DEFAULT NULL COMMENT '退货单价',
  `num` int DEFAULT NULL COMMENT '退货数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品规格',
  `total` double(10,2) DEFAULT NULL COMMENT '退货总价',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品销售';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_back`
--

LOCK TABLES `sale_back` WRITE;
/*!40000 ALTER TABLE `sale_back` DISABLE KEYS */;
INSERT INTO `sale_back` VALUES (4,49,747,'支付宝',NULL,'卢奥',22,1,NULL,44.00,''),(5,49,747,'支付宝','2024-05-12 00:00:00','卢奥',22,2,NULL,44.00,'多了'),(6,49,754,'微信','2024-05-27 00:00:00','卢奥',222,4,NULL,2664.00,''),(7,51,754,'微信','2024-06-02 00:00:00','卢奥',100000,2,'件',500000.00,'太多了'),(8,55,753,'微信','2024-06-02 00:00:00','卢奥',2313,2,'2312',11565.00,'测试用例');
/*!40000 ALTER TABLE `sale_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色标识',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出生年月',
  `department_id` int DEFAULT NULL COMMENT '所属部门ID',
  `status` tinyint(1) DEFAULT '0' COMMENT '禁用状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (25,'123','2000','小王','http://localhost:9090/files/1709620713241-1.jpg','STAFF','男','123123123123','123123@QQ.COM','2024-03-19',10,1),(26,'234','123','小李','http://localhost:9090/files/1709620742735-3.jpg','STAFF','女','234234252','2342342@163.com','2020-06-23',14,0),(36,'111','111','111','http://localhost:9090/files/1716517780523-哆啦小熙_掟上今日子の備忘録_53398245_p0.jpg','STAFF',NULL,NULL,NULL,NULL,13,0),(37,'222','123','222','http://localhost:9090/files/1716517862604-哆啦小熙_掟上今日子の備忘録_53398245_p1.jpg','STAFF',NULL,'18669024313','1635374917@qq.com',NULL,NULL,0);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `supplier_id` int DEFAULT NULL COMMENT '供应商ID',
  `goods_id` int DEFAULT NULL COMMENT '商品ID',
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '进货时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人',
  `num` int DEFAULT NULL COMMENT '进货数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品规格',
  `price` double(10,2) DEFAULT NULL COMMENT '进货价格',
  `total` double(10,2) DEFAULT NULL COMMENT '进货总价格',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品进货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (16,32,37,'银联','2024-03-09','管理员',8,'一件',89.00,712.00,NULL),(17,30,51,'微信','2024-04-12','奥特曼',7,'123123',2313.00,16191.00,NULL),(18,31,673,'微信','2024-05-09','卢奥',5,'个',24.00,120.00,'3133'),(19,31,750,'支付宝','2024-05-06','卢奥',4,'台',4999.00,19996.00,NULL),(20,31,754,'微信','2021-02-03','卢奥',3,'件',100.00,300.00,NULL),(21,31,746,'微信','2024-05-01','卢奥',4,'22',3333.00,13332.00,NULL),(22,32,747,'微信','2024-05-08','卢奥',4,'件',10.00,40.00,NULL),(23,29,32,'微信','2024-05-24','卢奥',5,'件',222.00,1110.00,NULL),(24,31,750,'微信','2024-06-01','卢奥',5,'台',1000.00,5000.00,'测试bug'),(26,31,15,'微信','2024-06-01','卢奥',5,'台',10000.00,50000.00,'测试机'),(27,30,737,'微信','2024-06-02','卢奥',9,'件',55.00,495.00,NULL),(28,31,750,'微信','2024-06-02','卢奥',3,'件',666.00,1998.00,'测试'),(29,31,750,'支付宝','2024-06-03','卢奥',3,'件',8800.00,26400.00,NULL);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商地址',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商邮箱',
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮编',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人电话',
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户银行',
  `bank_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户行账号',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '可用' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='供应商表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (26,'恐怖屠宰厂—最新鲜的肉','深圳市南山区南海大道1001号','0755-88889999','supplierN@example.com','518054','李四','13988889999','中国银行','6210987654321098','可用'),(27,'泰国妈妈桑美丽自然OKBUY','上海市虹口区四川北路888号','021-33334444','supplierO@example.com','200080','波多野空','13633334444','农业银行','6210987654321098','可用'),(28,'爱情买卖音像店','广州市荔湾区中山六路1号','020-99998888','supplierP@example.com','510145','赵六','13799998888','招商银行','6210987654321098','可用'),(29,'高档家居小霸王','北京市东城区东长安街1号','010-55556666','supplierQ@example.com','100010','刘七','13855556666','建设银行','6210987654321098','可用'),(30,'奥德彪非洲水果','深圳市罗湖区深南中路1001号','0755-77779999','supplierR@example.com','518002','张三','13577779999','中国银行','6210987654321098','可用'),(31,'中国电商找男翔','上海市黄浦区南京东路100号','021-22223333','supplierS@example.com','200001','李四','13922223333','农业银行','6210987654321098','可用'),(32,'衣裳王','广州市番禺区广州大道北1号','020-88889999','supplierT@example.com','6273','欧阳凤','23123','工商银行','6210987654321098','可用');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) DEFAULT NULL COMMENT '分类描述',
  `img` varchar(255) DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'电子产品','包括手机、电脑、平板等电子设备','http://localhost:9090/files/1713852697686-相机,拍照,单反,相机,camera.png'),(2,'家居用品','包括家具、厨具、家装等用品','http://localhost:9090/files/1713852692864-椅子,沙发,桌椅,休息,等待.png'),(3,'服装鞋帽','包括衣服、鞋子、帽子等服装配件','http://localhost:9090/files/1713852687889-裙子,婚礼,礼服,dress.png'),(4,'图书音像','包括图书、音乐、电影等娱乐产品','http://localhost:9090/files/1713852680797-书,BOOK,书籍,阅读.png'),(5,'美容护肤','包括化妆品、护肤品、个人护理产品','http://localhost:9090/files/1713852667941-口红,化妆,紫罗兰,MAC,迪奥,YSL.png'),(6,'生鲜水果','包括鲜肉、海鲜、蔬菜水果等','http://localhost:9090/files/1713852675647-樱桃,车厘子,水果.png');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10 20:42:55
