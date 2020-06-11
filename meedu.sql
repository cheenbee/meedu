-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: meedu
-- ------------------------------------------------------
-- Server version	5.7.30

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
-- Table structure for table `ad_from`
--

DROP TABLE IF EXISTS `ad_from`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_from` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_from`
--

LOCK TABLES `ad_from` WRITE;
/*!40000 ALTER TABLE `ad_from` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_from` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_from_number`
--

DROP TABLE IF EXISTS `ad_from_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_from_number` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL,
  `day` date NOT NULL,
  `num` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_from_number`
--

LOCK TABLES `ad_from_number` WRITE;
/*!40000 ALTER TABLE `ad_from_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_from_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_menus`
--

DROP TABLE IF EXISTS `administrator_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1' COMMENT '升序',
  `permission_id` int(11) NOT NULL COMMENT '权限',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_menus`
--

LOCK TABLES `administrator_menus` WRITE;
/*!40000 ALTER TABLE `administrator_menus` DISABLE KEYS */;
INSERT INTO `administrator_menus` VALUES (1,0,0,0,'主面板','','2020-05-22 09:27:56','2020-05-22 09:27:56'),(2,1,0,0,'主面板','/backend/dashboard','2020-05-22 09:27:56','2020-05-22 09:27:56'),(3,0,1,0,'运营','','2020-05-22 09:27:56','2020-05-22 09:27:56'),(4,3,0,51,'公告','/backend/announcement','2020-05-22 09:27:56','2020-05-22 09:27:56'),(5,3,1,57,'VIP会员','/backend/role','2020-05-22 09:27:56','2020-05-22 09:27:56'),(6,3,2,63,'友情链接','/backend/link','2020-05-22 09:27:56','2020-05-22 09:27:56'),(7,3,3,69,'推广链接','/backend/adfrom','2020-05-22 09:27:56','2020-05-22 09:27:56'),(8,3,4,36,'课程评论','/backend/course/comment/index','2020-05-22 09:27:56','2020-05-22 09:27:56'),(9,3,5,44,'视频评论','/backend/video/comment/index','2020-05-22 09:27:56','2020-05-22 09:27:56'),(10,0,2,0,'财务','','2020-05-22 09:27:56','2020-05-22 09:27:56'),(11,10,0,46,'订单列表','/backend/orders','2020-05-22 09:27:56','2020-05-22 09:27:56'),(12,0,3,0,'会员','','2020-05-22 09:27:56','2020-05-22 09:27:56'),(13,12,0,47,'会员','/backend/member','2020-05-22 09:27:56','2020-05-22 09:27:56'),(14,0,4,0,'视频','','2020-05-22 09:27:56','2020-05-22 09:27:56'),(15,14,0,30,'课程','/backend/course','2020-05-22 09:27:56','2020-05-22 09:27:56'),(16,14,1,38,'视频','/backend/video','2020-05-22 09:27:56','2020-05-22 09:27:56'),(17,0,5,0,'系统','','2020-05-22 09:27:56','2020-05-22 09:27:56'),(18,17,0,28,'全站配置','/backend/setting','2020-05-22 09:27:56','2020-05-22 09:27:56'),(19,17,1,22,'管理员','/backend/administrator','2020-05-22 09:27:56','2020-05-22 09:27:56'),(20,17,2,14,'角色','/backend/administrator_role','2020-05-22 09:27:56','2020-05-22 09:27:56'),(21,17,3,8,'权限','/backend/administrator_permission','2020-05-22 09:27:56','2020-05-22 09:27:56'),(22,17,4,1,'后台菜单','/backend/administrator_menu','2020-05-22 09:27:56','2020-05-22 09:27:56'),(23,17,5,76,'首页导航','/backend/nav','2020-05-22 09:27:56','2020-05-22 09:27:56'),(24,17,6,82,'插件','/backend/addons/index','2020-05-22 09:27:56','2020-05-22 09:27:56');
/*!40000 ALTER TABLE `administrator_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_permissions`
--

DROP TABLE IF EXISTS `administrator_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'slug',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP动作',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_permissions`
--

LOCK TABLES `administrator_permissions` WRITE;
/*!40000 ALTER TABLE `administrator_permissions` DISABLE KEYS */;
INSERT INTO `administrator_permissions` VALUES (1,'后台菜单界面','backend.administrator_menu.index','','GET','/backend/administrator_menu','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(2,'后台菜单创建界面','backend.administrator_menu.create','','GET','/backend/administrator_menu/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(3,'是否可以创建新后台菜单','backend.administrator_menu.create','','POST','/backend/administrator_menu/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(4,'后台菜单编辑界面','backend.administrator_menu.edit','','GET','/backend/administrator_menu/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(5,'是否可以保存编辑后的后台菜单','backend.administrator_menu.edit','','PUT','/backend/administrator_menu/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(6,'删除后台菜单','backend.administrator_menu.destroy','','GET','/backend/administrator_menu/\\d+/delete','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(7,'后台菜单批量修改','backend.administrator_menu.save_change','','GET','/backend/administrator_menu/change/save','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(8,'管理员权限界面','backend.administrator_permission.index','','GET','/backend/administrator_permission','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(9,'管理员权限创建界面','backend.administrator_permission.create','','GET','/backend/administrator_permission/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(10,'是否可以创建新管理员权限','backend.administrator_permission.create','','POST','/backend/administrator_permission/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(11,'管理员权限编辑界面','backend.administrator_permission.edit','','GET','/backend/administrator_permission/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(12,'是否可以保存编辑后的管理员权限','backend.administrator_permission.edit','','PUT','/backend/administrator_permission/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(13,'删除管理员权限','backend.administrator_permission.destroy','','GET','/backend/administrator_permission/\\d+/destroy','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(14,'管理员角色界面','backend.administrator_role.index','','GET','/backend/administrator_role','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(15,'管理员角色创建界面','backend.administrator_role.create','','GET','/backend/administrator_role/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(16,'是否可以创建新管理员角色','backend.administrator_role.create','','POST','/backend/administrator_role/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(17,'管理员角色编辑界面','backend.administrator_role.edit','','GET','/backend/administrator_role/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(18,'是否可以保存编辑后的管理员角色','backend.administrator_role.edit','','PUT','/backend/administrator_role/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(19,'删除管理员角色','backend.administrator_role.destroy','','GET','/backend/administrator_role/\\d+/destroy','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(20,'管理员角色授权页面','backend.administrator_role.permission','','GET','/backend/administrator_role/\\d+/permission','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(21,'管理员角色授权保存','backend.administrator_role.permission','','POST','/backend/administrator_role/\\d+/permission','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(22,'管理员界面','backend.administrator.index','','GET','/backend/administrator','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(23,'管理员创建界面','backend.administrator.create','','GET','/backend/administrator/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(24,'是否可以创建新管理员','backend.administrator.create','','POST','/backend/administrator/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(25,'管理员编辑界面','backend.administrator.edit','','GET','/backend/administrator/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(26,'是否可以保存编辑后的管理员','backend.administrator.edit','','PUT','/backend/administrator/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(27,'删除管理员','backend.administrator.destroy','','GET','/backend/administrator/\\d+/destroy','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(28,'全站配置','backend.setting.index','','GET','/backend/setting','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(29,'全站配置保存','backend.setting.index','','POST','/backend/setting','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(30,'课程列表界面','backend.course.index','','GET','/backend/course','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(31,'课程创建界面','backend.course.create','','GET','/backend/course/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(32,'是否可以创建新课程','backend.course.create','','POST','/backend/course/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(33,'课程编辑界面','backend.course.edit','','GET','/backend/course/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(34,'是否可以保存编辑后的课程','backend.course.edit','','PUT','/backend/course/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(35,'删除课程','backend.course.destroy','','GET','/backend/course/\\d+/delete','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(36,'课程评论列表界面','backend.course.comment.index','','GET','/backend/course/comment/index','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(37,'删除课程评论','backend.course.comment.destroy','','GET','/backend/course/comment/\\d+/destroy','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(38,'视频列表界面','backend.video.index','','GET','/backend/video','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(39,'视频创建界面','backend.video.create','','GET','/backend/video/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(40,'是否可以创建新视频','backend.video.create','','POST','/backend/video/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(41,'视频编辑界面','backend.video.edit','','GET','/backend/video/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(42,'是否可以保存编辑后的视频','backend.video.edit','','PUT','/backend/video/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(43,'删除视频','backend.video.destroy','','GET','/backend/video/\\d+/delete','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(44,'视频评论列表界面','backend.video.comment.index','','GET','/backend/video/comment/index','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(45,'删除视频评论','backend.video.comment.destroy','','GET','/backend/video/comment/\\d+/destroy','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(46,'订单列表','backend.orders','','GET','/backend/orders','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(47,'会员列表','backend.member.index','','GET','/backend/member','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(48,'会员详情','backend.member.show','','GET','/backend/member/\\d+/show','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(49,'添加会员页面','backend.member.create','','GET','/backend/member/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(50,'添加会员','backend.member.create','','POST','/backend/member/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(51,'公告列表界面','backend.announcement.index','','GET','/backend/announcement','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(52,'公告创建界面','backend.announcement.create','','GET','/backend/announcement/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(53,'是否可以创建新公告','backend.announcement.create','','POST','/backend/announcement/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(54,'公告编辑界面','backend.announcement.edit','','GET','/backend/announcement/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(55,'是否可以保存编辑后的公告','backend.announcement.edit','','PUT','/backend/announcement/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(56,'删除公告','backend.announcement.destroy','','GET','/backend/announcement/\\d+/delete','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(57,'VIP列表界面','backend.role.index','','GET','/backend/role','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(58,'VIP创建界面','backend.role.create','','GET','/backend/role/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(59,'是否可以创建新VIP','backend.role.create','','POST','/backend/role/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(60,'VIP编辑界面','backend.role.edit','','GET','/backend/role/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(61,'是否可以保存编辑后的VIP','backend.role.edit','','PUT','/backend/role/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(62,'删除VIP','backend.role.destroy','','GET','/backend/role/\\d+/delete','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(63,'友情链接列表','backend.link.index','','GET','/backend/link','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(64,'创建友情链接界面','backend.link.create','','GET','/backend/link/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(65,'创建友情链接','backend.link.create','','POST','/backend/link/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(66,'编辑友情链接界面','backend.link.edit','','GET','/backend/link/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(67,'保存友情链接的变动','backend.link.edit','','PUT','/backend/link/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(68,'删除友情链接','backend.link.destroy','','GET','/backend/link/\\d+/delete','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(69,'推广链接首页','backend.adfrom.index','','GET','/backend/adfrom','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(70,'创建推广链接界面','backend.adfrom.create','','GET','/backend/adfrom/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(71,'创建推广链接','backend.adfrom.create','','POST','/backend/adfrom/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(72,'编辑推广链接界面','backend.adfrom.edit','','GET','/backend/adfrom/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(73,'保存推广链接的变动','backend.adfrom.edit','','PUT','/backend/adfrom/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(74,'删除推广链接','backend.adfrom.destroy','','GET','/backend/adfrom/\\d+/delete','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(75,'查看推广链接推广效果','backend.adfrom.number','','GET','/backend/adfrom/\\d+/number','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(76,'首页导航首页','backend.nav.index','','GET','/backend/nav','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(77,'创建首页导航界面','backend.nav.create','','GET','/backend/nav/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(78,'创建首页导航','backend.nav.create','','POST','/backend/nav/create','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(79,'编辑首页导航界面','backend.nav.edit','','GET','/backend/nav/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(80,'保存首页导航的变动','backend.nav.edit','','PUT','/backend/nav/\\d+/edit','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(81,'删除首页导航','backend.nav.destroy','','GET','/backend/nav/\\d+/delete','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(82,'插件','backend.addons.index','','GET','/backend/addons/index','2020-05-22 09:26:53','2020-05-22 09:26:53','',''),(83,'插件generateProvidersMap','backend.addons.generateProvidersMap','','GET','/backend/addons/generateProvidersMap','2020-05-22 09:26:53','2020-05-22 09:26:53','','');
/*!40000 ALTER TABLE `administrator_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_role_permission_relation`
--

DROP TABLE IF EXISTS `administrator_role_permission_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator_role_permission_relation` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  KEY `administrator_role_permission_relation_role_id_index` (`role_id`),
  KEY `administrator_role_permission_relation_permission_id_index` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_role_permission_relation`
--

LOCK TABLES `administrator_role_permission_relation` WRITE;
/*!40000 ALTER TABLE `administrator_role_permission_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrator_role_permission_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_role_relation`
--

DROP TABLE IF EXISTS `administrator_role_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator_role_relation` (
  `administrator_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `administrator_role_relation_administrator_id_index` (`administrator_id`),
  KEY `administrator_role_relation_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_role_relation`
--

LOCK TABLES `administrator_role_relation` WRITE;
/*!40000 ALTER TABLE `administrator_role_relation` DISABLE KEYS */;
INSERT INTO `administrator_role_relation` VALUES (1,1);
/*!40000 ALTER TABLE `administrator_role_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_roles`
--

DROP TABLE IF EXISTS `administrator_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'slug',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_roles`
--

LOCK TABLES `administrator_roles` WRITE;
/*!40000 ALTER TABLE `administrator_roles` DISABLE KEYS */;
INSERT INTO `administrator_roles` VALUES (1,'超级管理员','administrator','创世角色','2020-05-22 09:26:53','2020-05-22 09:26:53');
/*!40000 ALTER TABLE `administrator_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `email` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_date` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_ban_login` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1禁止登录,0否',
  `login_times` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `administrators_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES (1,'超级管理员','hsfx','$2y$10$orcgpwzb1DCwM93y0JKlU.VFsFqp31Qk7c7ZT2.W3.N2U/DswF29i','123.120.43.121','2020-05-22 10:15:16',NULL,'2020-05-22 09:27:19','2020-05-22 10:15:16',0,0);
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告标题',
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `announcement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_times` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('meedu_cache321a456cd1517ce14869cc97d4c0571bce5fa9d2','i:24;',1590142541),('meedu_cache321a456cd1517ce14869cc97d4c0571bce5fa9d2:timer','i:1590142541;',1590142541),('meedu_cache7fa32a261f488fb3aed6265716467fe9d951ca4d','i:12;',1590145543),('meedu_cache7fa32a261f488fb3aed6265716467fe9d951ca4d:timer','i:1590145543;',1590145543),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40000','b:1;',1591722002),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40030','b:1;',1591723801),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40100','b:1;',1591725602),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40130','b:1;',1591727402),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40200','b:1;',1591729202),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40230','b:1;',1591731002),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40300','b:1;',1591732801),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40330','b:1;',1591734602),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40400','b:1;',1591736401),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40430','b:1;',1591738202),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40500','b:1;',1591740002),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40530','b:1;',1591741801),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40600','b:1;',1591743601),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40630','b:1;',1591745402),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40700','b:1;',1591747201),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40730','b:1;',1591749001),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40800','b:1;',1591750802),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40830','b:1;',1591752602),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40900','b:1;',1591754401),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda40930','b:1;',1591756201),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41000','b:1;',1591758002),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41030','b:1;',1591759802),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41100','b:1;',1591761601),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41130','b:1;',1591763402),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41200','b:1;',1591678802),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41230','b:1;',1591767001),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41300','b:1;',1591768802),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41330','b:1;',1591770602),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41400','b:1;',1591772401),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41430','b:1;',1591774202),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41500','b:1;',1591776001),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41530','b:1;',1591777801),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41600','b:1;',1591779602),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41630','b:1;',1591781402),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41700','b:1;',1591783202),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41730','b:1;',1591698602),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41800','b:1;',1591700402),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41830','b:1;',1591702201),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41900','b:1;',1591704002),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda41930','b:1;',1591705801),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda42000','b:1;',1591707601),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda42030','b:1;',1591709401),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda42100','b:1;',1591711202),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda42130','b:1;',1591713002),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda42200','b:1;',1591714802),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda42230','b:1;',1591716601),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda42300','b:1;',1591718402),('meedu_cacheframework/schedule-5adb32dfba72ab2b292742a4a85ab65f3b19eda42330','b:1;',1591720201);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_categories`
--

DROP TABLE IF EXISTS `course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类名',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `parent_chain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '父链',
  `is_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示,1显示,0不显示',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '升序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_categories`
--

LOCK TABLES `course_categories` WRITE;
/*!40000 ALTER TABLE `course_categories` DISABLE KEYS */;
INSERT INTO `course_categories` VALUES (1,'摄影摄像',0,'',1,1,'2020-05-22 10:56:34','2020-05-22 10:56:34',NULL);
/*!40000 ALTER TABLE `course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_chapter`
--

DROP TABLE IF EXISTS `course_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_chapter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_chapter`
--

LOCK TABLES `course_chapter` WRITE;
/*!40000 ALTER TABLE `course_chapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_comments`
--

DROP TABLE IF EXISTS `course_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `original_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原始内容',
  `render_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渲染后的内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_comments`
--

LOCK TABLES `course_comments` WRITE;
/*!40000 ALTER TABLE `course_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_user_records`
--

DROP TABLE IF EXISTS `course_user_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_user_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_watched` tinyint(4) NOT NULL DEFAULT '0' COMMENT '看完,0否,1是',
  `watched_at` timestamp NULL DEFAULT NULL,
  `progress` tinyint(4) NOT NULL DEFAULT '0' COMMENT '进度',
  PRIMARY KEY (`id`),
  KEY `course_user_records_user_id_index` (`user_id`),
  KEY `course_user_records_course_id_index` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_user_records`
--

LOCK TABLES `course_user_records` WRITE;
/*!40000 ALTER TABLE `course_user_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_user_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'slug',
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '收费',
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简短介绍',
  `original_desc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简介原始内容',
  `render_desc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简介渲染后的内容',
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `published_at` timestamp NULL DEFAULT NULL COMMENT '上线时间',
  `is_show` tinyint(4) NOT NULL COMMENT '1显示,-1隐藏',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `is_rec` tinyint(4) NOT NULL DEFAULT '0' COMMENT '推荐,0否,1是',
  `user_count` int(11) NOT NULL DEFAULT '0' COMMENT '学习人数',
  `is_free` tinyint(4) NOT NULL DEFAULT '0' COMMENT '免费,0否,1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_subscriptions`
--

DROP TABLE IF EXISTS `email_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_subscriptions`
--

LOCK TABLES `email_subscriptions` WRITE;
/*!40000 ALTER TABLE `email_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_banners`
--

DROP TABLE IF EXISTS `index_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'banner名称',
  `sort` int(11) NOT NULL COMMENT '升序',
  `course_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '课程id,英文逗号分隔',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_banners`
--

LOCK TABLES `index_banners` WRITE;
/*!40000 ALTER TABLE `index_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2018_06_10_093350_create_course_table',1),(3,'2018_06_10_093941_create_video_table',1),(4,'2018_06_11_140429_create_administrators_table',1),(5,'2018_06_11_140557_create_administrator_roles_table',1),(6,'2018_06_11_140702_create_administrator_role_relation_tbale',1),(7,'2018_06_11_140936_create_administrator_permissions_table',1),(8,'2018_06_11_141132_create_administrator_role_permission_relation_table',1),(9,'2018_06_24_055643_add_charge_column_for_videos_table',1),(10,'2018_08_24_111310_create_sms_records_table',1),(11,'2018_08_25_122014_create_course_comments_table',1),(12,'2018_08_25_122026_create_video_comments_table',1),(13,'2018_08_28_194051_create_user_course_table',1),(14,'2018_08_28_201555_create_roles_table',1),(15,'2018_08_28_201633_add_role_id_column_for_users_table',1),(16,'2018_08_28_202328_create_user_join_role_records_table',1),(17,'2018_08_29_202834_create_notifications_table',1),(18,'2018_08_29_203905_create_jobs_table',1),(19,'2018_08_30_200622_add_charge_column_for_user_course_table',1),(20,'2018_08_30_202222_create_user_video_table',1),(21,'2018_09_03_202544_create_orders_table',1),(22,'2018_09_16_110336_create_email_subscriptions_table',1),(23,'2018_09_16_113005_create_announcements_table',1),(24,'2018_10_07_101347_add_aliyun_video_id_column_for_videos',1),(25,'2018_10_23_101556_create_administrator_menus_table',1),(26,'2018_10_26_102622_create_order_goods_table',1),(27,'2018_10_26_102656_adjust_orders_table',1),(28,'2018_11_22_194642_create_ad_froms_table',1),(29,'2018_11_22_194828_create_ad_from_number_table',1),(30,'2018_11_24_205824_create_links_table',1),(31,'2018_12_06_082850_create_course_chapter_table',1),(32,'2018_12_06_192345_add_sort_column_for_course_chapter_table',1),(33,'2018_12_06_192755_add_chapter_id_for_videos_table',1),(34,'2018_12_12_214600_create_navs_table',1),(35,'2018_12_12_221538_create_socialite_table',1),(36,'2018_12_22_112124_add_duration_column_for_videos_table',1),(37,'2018_12_25_222045_add_is_show_column_for_roles_table',1),(38,'2019_02_19_200047_add_payment_column_for_orders_table',1),(39,'2019_02_23_130633_create_failed_jobs_table',1),(40,'2019_03_26_222210_add_tencent_video_id_column_for_videos',1),(41,'2019_12_22_120342_change_course_comment_content_field',1),(42,'2019_12_22_120357_change_video_comment_content_field',1),(43,'2019_12_22_121813_change_course_description_field',1),(44,'2019_12_22_121825_change_video_description_field',1),(45,'2019_12_27_194525_alter_order_goods_table',1),(46,'2020_01_08_121811_add_invite_column_for_users',1),(47,'2020_01_08_122439_create_promo_codes_table',1),(48,'2020_01_08_145811_create_order_paid_records_table',1),(49,'2020_01_08_161753_create_user_invite_balance_records_table',1),(50,'2020_01_11_162610_create_course_categories_table',1),(51,'2020_01_11_165825_add_category_id_for_course_table',1),(52,'2020_01_15_122836_create_invite_balance_withdraw_records_table',1),(53,'2020_01_30_170310_create_cache_table',1),(54,'2020_02_05_164322_add_is_recom_column_for_courses_table',1),(55,'2020_02_21_145619_create_sliders_table',1),(56,'2020_02_21_152347_add_title_column_for_announcement_table',1),(57,'2020_02_24_140733_add_user_count_column_for_course_table',1),(58,'2020_02_24_140813_create_course_user_records_table',1),(59,'2020_02_28_145527_add_is_password_set_column_for_users_table',1),(60,'2020_03_02_095800_add_is_set_nickname_column_for_users_table',1),(61,'2020_03_04_133129_create_user_like_courses_table',1),(62,'2020_03_07_175130_create_index_banners_table',1),(63,'2020_05_02_112023_create_user_video_watch_records_table',1),(64,'2020_05_02_112648_add_is_watched_column_for_user_course_records_table',1),(65,'2020_05_10_161748_add_is_free_column_courses_table',1),(66,'2020_05_10_161807_add_is_ban_sell_column_videos_table',1),(67,'2020_05_21_110416_add_is_used_promo_code_column_for_users',2),(68,'2020_05_21_135128_add_register_ip_column_for_users',2),(69,'2020_05_24_221058_add_progress_column_for_course_user_records_table',2),(70,'2020_06_08_153953_add_column_administrator_tables',2),(71,'2020_06_08_154009_add_column_adm_permissions_tables',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navs`
--

DROP TABLE IF EXISTS `navs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接名',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navs`
--

LOCK TABLES `navs` WRITE;
/*!40000 ALTER TABLE `navs` DISABLE KEYS */;
/*!40000 ALTER TABLE `navs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_goods`
--

DROP TABLE IF EXISTS `order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` int(10) unsigned NOT NULL COMMENT '订单id',
  `user_id` int(11) NOT NULL,
  `order_id` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单编号',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品类型标识符',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `charge` int(11) NOT NULL COMMENT '商品价格',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_goods`
--

LOCK TABLES `order_goods` WRITE;
/*!40000 ALTER TABLE `order_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_paid_records`
--

DROP TABLE IF EXISTS `order_paid_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_paid_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `paid_total` int(11) NOT NULL DEFAULT '0' COMMENT '支付金额',
  `paid_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付类型，0默认支付,1优惠码,2余额支付',
  `paid_type_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_paid_records`
--

LOCK TABLES `order_paid_records` WRITE;
/*!40000 ALTER TABLE `order_paid_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_paid_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未处理,9已处理',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order_id` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单编号',
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付网关',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo_codes`
--

DROP TABLE IF EXISTS `promo_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `code` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '优惠码',
  `expired_at` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  `invite_user_reward` int(11) NOT NULL DEFAULT '0' COMMENT '邀请用户奖励',
  `invited_user_reward` int(11) NOT NULL DEFAULT '0' COMMENT '邀请用户奖励',
  `use_times` int(11) NOT NULL DEFAULT '0' COMMENT '可使用次数，0表示不限制',
  `used_times` int(11) NOT NULL DEFAULT '0' COMMENT '已使用次数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promo_codes_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_codes`
--

LOCK TABLES `promo_codes` WRITE;
/*!40000 ALTER TABLE `promo_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `promo_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名',
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '价格，单位：元',
  `expire_days` int(11) NOT NULL DEFAULT '0' COMMENT '有效期，单位：天',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重，升序',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '详细描述，一行一个',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0不显示,1显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_records`
--

DROP TABLE IF EXISTS `sms_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `send_data` text COLLATE utf8mb4_unicode_ci COMMENT '发送数据',
  `response_data` text COLLATE utf8mb4_unicode_ci COMMENT '响应数据',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_records`
--

LOCK TABLES `sms_records` WRITE;
/*!40000 ALTER TABLE `sms_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialite`
--

DROP TABLE IF EXISTS `socialite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `app` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_user_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(2222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialite`
--

LOCK TABLES `socialite` WRITE;
/*!40000 ALTER TABLE `socialite` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_course`
--

DROP TABLE IF EXISTS `user_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_course` (
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '收费'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_course`
--

LOCK TABLES `user_course` WRITE;
/*!40000 ALTER TABLE `user_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_ib_withdraw_orders`
--

DROP TABLE IF EXISTS `user_ib_withdraw_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_ib_withdraw_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL COMMENT '提现金额,单位：元',
  `before_balance` int(11) NOT NULL DEFAULT '0' COMMENT '提现前账户余额',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态,0已提交,1提现成功,2拒绝',
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '提现渠道',
  `channel_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道姓名',
  `channel_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道账号',
  `channel_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道地址',
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_ib_withdraw_orders`
--

LOCK TABLES `user_ib_withdraw_orders` WRITE;
/*!40000 ALTER TABLE `user_ib_withdraw_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_ib_withdraw_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invite_balance_records`
--

DROP TABLE IF EXISTS `user_invite_balance_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_invite_balance_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0邀请奖励',
  `total` int(11) NOT NULL DEFAULT '0',
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invite_balance_records`
--

LOCK TABLES `user_invite_balance_records` WRITE;
/*!40000 ALTER TABLE `user_invite_balance_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invite_balance_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_join_role_records`
--

DROP TABLE IF EXISTS `user_join_role_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_join_role_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_join_role_records`
--

LOCK TABLES `user_join_role_records` WRITE;
/*!40000 ALTER TABLE `user_join_role_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_join_role_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_like_courses`
--

DROP TABLE IF EXISTS `user_like_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_like_courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_like_courses_user_id_course_id_index` (`user_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_like_courses`
--

LOCK TABLES `user_like_courses` WRITE;
/*!40000 ALTER TABLE `user_like_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_like_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_video`
--

DROP TABLE IF EXISTS `user_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_video` (
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '收费',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_video`
--

LOCK TABLES `user_video` WRITE;
/*!40000 ALTER TABLE `user_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_video_watch_records`
--

DROP TABLE IF EXISTS `user_video_watch_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_video_watch_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `watch_seconds` int(11) NOT NULL DEFAULT '0' COMMENT '已观看秒数',
  `watched_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_video_watch_records_user_id_course_id_video_id_index` (`user_id`,`course_id`,`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_video_watch_records`
--

LOCK TABLES `user_video_watch_records` WRITE;
/*!40000 ALTER TABLE `user_video_watch_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_video_watch_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nick_name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit1` int(11) NOT NULL DEFAULT '0',
  `credit2` int(11) NOT NULL DEFAULT '0',
  `credit3` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL COMMENT '1:active,-1:unactive',
  `is_lock` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '1:lock,-1:unlock',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `role_expired_at` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  `invite_balance` int(11) NOT NULL DEFAULT '0' COMMENT '邀请奖励余额',
  `invite_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '邀请人id',
  `invite_user_expired_at` timestamp NULL DEFAULT NULL COMMENT '邀请过期时间',
  `is_password_set` tinyint(4) NOT NULL DEFAULT '0' COMMENT '密码是否配置,0否,1是',
  `is_set_nickname` tinyint(4) NOT NULL DEFAULT '0' COMMENT '配置昵称,1是,0否',
  `is_used_promo_code` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1已使用，0否',
  `register_ip` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '注册ip',
  `register_area` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '注册地区',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_mobile_unique` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_comments`
--

DROP TABLE IF EXISTS `video_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `original_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原始内容',
  `render_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渲染后的内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_comments`
--

LOCK TABLES `video_comments` WRITE;
/*!40000 ALTER TABLE `video_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'slug',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '播放地址',
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `view_num` int(11) NOT NULL DEFAULT '0' COMMENT '观看次数',
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简短介绍',
  `original_desc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简介原始内容',
  `render_desc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简介渲染后的内容',
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `published_at` timestamp NULL DEFAULT NULL COMMENT '上线时间',
  `is_show` tinyint(4) NOT NULL COMMENT '1显示,-1隐藏',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `aliyun_video_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `chapter_id` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0' COMMENT '时长，单位：秒',
  `tencent_video_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '腾讯云video_id',
  `is_ban_sell` tinyint(4) NOT NULL DEFAULT '0' COMMENT '禁止售卖,0否,1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-11 17:57:18
