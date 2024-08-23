/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t391`;
CREATE DATABASE IF NOT EXISTS `t391` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t391`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图11111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-03 01:31:25'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-03 01:31:25'),
	(3, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-03 01:31:25'),
	(4, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-03 01:31:25'),
	(5, 'yangzhiquyu_types', '养殖区域类型', 1, '养殖区域类型1', NULL, NULL, '2023-04-03 01:31:25'),
	(6, 'yangzhiquyu_types', '养殖区域类型', 2, '养殖区域类型2', NULL, NULL, '2023-04-03 01:31:25'),
	(7, 'yangzhiquyu_types', '养殖区域类型', 3, '养殖区域类型3', NULL, NULL, '2023-04-03 01:31:25'),
	(8, 'yangzhiquyu_types', '养殖区域类型', 4, '养殖区域类型4', NULL, NULL, '2023-04-03 01:31:25'),
	(9, 'yangzhiquyu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-03 01:31:25'),
	(10, 'shuichan_types', '水产类型', 1, '水产类型1', NULL, NULL, '2023-04-03 01:31:25'),
	(11, 'shuichan_types', '水产类型', 2, '水产类型2', NULL, NULL, '2023-04-03 01:31:25'),
	(12, 'shuichan_types', '水产类型', 3, '水产类型3', NULL, NULL, '2023-04-03 01:31:25'),
	(13, 'shuichan_types', '水产类型', 4, '水产类型4', NULL, NULL, '2023-04-03 01:31:25'),
	(14, 'shuichan_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-03 01:31:25'),
	(15, 'siliao_types', '饲料类型', 1, '饲料类型1', NULL, NULL, '2023-04-03 01:31:25'),
	(16, 'siliao_types', '饲料类型', 2, '饲料类型2', NULL, NULL, '2023-04-03 01:31:25'),
	(17, 'siliao_types', '饲料类型', 3, '饲料类型3', NULL, NULL, '2023-04-03 01:31:25'),
	(18, 'siliao_types', '饲料类型', 4, '饲料类型4', NULL, NULL, '2023-04-03 01:31:25'),
	(19, 'siliao_shiyong_types', '饲料使用类型', 1, '饲料使用类型1', NULL, NULL, '2023-04-03 01:31:25'),
	(20, 'siliao_shiyong_types', '饲料使用类型', 2, '饲料使用类型2', NULL, NULL, '2023-04-03 01:31:25'),
	(21, 'siliao_shiyong_types', '饲料使用类型', 3, '饲料使用类型3', NULL, NULL, '2023-04-03 01:31:26'),
	(22, 'siliao_shiyong_types', '饲料使用类型', 4, '饲料使用类型4', NULL, NULL, '2023-04-03 01:31:26'),
	(23, 'shuizhi_types', '水质类型', 1, '非常好', NULL, NULL, '2023-04-03 01:31:26'),
	(24, 'shuizhi_types', '水质类型', 2, '好', NULL, NULL, '2023-04-03 01:31:26'),
	(25, 'shuizhi_types', '水质类型', 3, '一般', NULL, NULL, '2023-04-03 01:31:26'),
	(26, 'shuizhi_types', '水质类型', 4, '差', NULL, NULL, '2023-04-03 01:31:26'),
	(27, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-03 01:31:26'),
	(28, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-03 01:31:26'),
	(29, 'news_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2023-04-03 01:31:26'),
	(30, 'news_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2023-04-03 01:31:26'),
	(31, 'yangzhiquyu_types', '养殖区域类型', 5, '养殖区域类型5', NULL, '', '2023-04-03 02:39:39');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-04-03 01:32:34', '公告详情1', '2023-04-03 01:32:34'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-04-03 01:32:34', '公告详情2', '2023-04-03 01:32:34'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-03 01:32:34', '公告详情3', '2023-04-03 01:32:34'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-04-03 01:32:34', '公告详情4', '2023-04-03 01:32:34'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-04-03 01:32:34', '公告详情5', '2023-04-03 01:32:34'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-03 01:32:34', '公告详情6', '2023-04-03 01:32:34'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-04-03 01:32:34', '公告详情7', '2023-04-03 01:32:34'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-03 01:32:34', '公告详情8', '2023-04-03 01:32:34'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-03 01:32:34', '公告详情9', '2023-04-03 01:32:34'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-03 01:32:34', '公告详情10', '2023-04-03 01:32:34'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-04-03 01:32:34', '公告详情11', '2023-04-03 01:32:34'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 1, '2023-04-03 01:32:34', '公告详情12', '2023-04-03 01:32:34'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-04-03 01:32:34', '公告详情13', '2023-04-03 01:32:34'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-04-03 01:32:34', '公告详情14', '2023-04-03 01:32:34');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='水产资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '新闻名称1', 'upload/news1.jpg', 1, '2023-04-03 01:32:34', '新闻详情1', '2023-04-03 01:32:34'),
	(2, '新闻名称2', 'upload/news2.jpg', 1, '2023-04-03 01:32:34', '新闻详情2', '2023-04-03 01:32:34'),
	(3, '新闻名称3', 'upload/news3.jpg', 2, '2023-04-03 01:32:34', '新闻详情3', '2023-04-03 01:32:34'),
	(4, '新闻名称4', 'upload/news4.jpg', 1, '2023-04-03 01:32:34', '新闻详情4', '2023-04-03 01:32:34'),
	(5, '新闻名称5', 'upload/news5.jpg', 2, '2023-04-03 01:32:34', '新闻详情5', '2023-04-03 01:32:34'),
	(6, '新闻名称6', 'upload/news6.jpg', 2, '2023-04-03 01:32:34', '新闻详情6', '2023-04-03 01:32:34'),
	(7, '新闻名称7', 'upload/news7.jpg', 1, '2023-04-03 01:32:34', '新闻详情7', '2023-04-03 01:32:34'),
	(8, '新闻名称8', 'upload/news8.jpg', 2, '2023-04-03 01:32:34', '新闻详情8', '2023-04-03 01:32:34'),
	(9, '新闻名称9', 'upload/news9.jpg', 1, '2023-04-03 01:32:34', '新闻详情9', '2023-04-03 01:32:34'),
	(10, '新闻名称10', 'upload/news10.jpg', 2, '2023-04-03 01:32:34', '新闻详情10', '2023-04-03 01:32:34'),
	(11, '新闻名称11', 'upload/news11.jpg', 2, '2023-04-03 01:32:34', '新闻详情11', '2023-04-03 01:32:34'),
	(12, '新闻名称12', 'upload/news12.jpg', 1, '2023-04-03 01:32:34', '新闻详情12', '2023-04-03 01:32:34'),
	(13, '新闻名称13', 'upload/news13.jpg', 2, '2023-04-03 01:32:34', '新闻详情13', '2023-04-03 01:32:34'),
	(14, '新闻名称14', 'upload/news14.jpg', 1, '2023-04-03 01:32:34', '<p>新闻详情14个第三个十多个第三个</p>', '2023-04-03 01:32:34');

DROP TABLE IF EXISTS `shuichan`;
CREATE TABLE IF NOT EXISTS `shuichan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yangzhiquyu_id` int DEFAULT NULL COMMENT '养殖区域',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shuichan_name` varchar(200) DEFAULT NULL COMMENT '水产名称  Search111 ',
  `shuichan_uuid_number` varchar(200) DEFAULT NULL COMMENT '水产编号',
  `shuichan_photo` varchar(200) DEFAULT NULL COMMENT '水产照片',
  `shuichan_file` varchar(200) DEFAULT NULL COMMENT '水产附件',
  `shuichan_types` int DEFAULT NULL COMMENT '水产类型 Search111',
  `shuichan_number` int DEFAULT NULL COMMENT '养殖数量',
  `toufang_time` timestamp NULL DEFAULT NULL COMMENT '投放日期',
  `laochu_time` timestamp NULL DEFAULT NULL COMMENT '捞出日期',
  `shuichan_content` longtext COMMENT '水产介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='水产';

DELETE FROM `shuichan`;
INSERT INTO `shuichan` (`id`, `yangzhiquyu_id`, `yonghu_id`, `shuichan_name`, `shuichan_uuid_number`, `shuichan_photo`, `shuichan_file`, `shuichan_types`, `shuichan_number`, `toufang_time`, `laochu_time`, `shuichan_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '水产名称1', '1680485555067', 'upload/shuichan1.jpg', 'upload/file.rar', 4, 436, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍1', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(2, 2, 1, '水产名称2', '1680485555046', 'upload/shuichan2.jpg', 'upload/file.rar', 4, 143, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍2', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(3, 3, 1, '水产名称3', '1680485555051', 'upload/shuichan3.jpg', 'upload/file.rar', 3, 161, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍3', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(4, 4, 2, '水产名称4', '1680485555064', 'upload/shuichan4.jpg', 'upload/file.rar', 2, 26, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍4', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(5, 5, 1, '水产名称5', '1680485555057', 'upload/shuichan5.jpg', 'upload/file.rar', 1, 203, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍5', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(6, 6, 1, '水产名称6', '1680485555029', 'upload/shuichan6.jpg', 'upload/file.rar', 3, 121, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍6', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(7, 7, 2, '水产名称7', '1680485555004', 'upload/shuichan7.jpg', 'upload/file.rar', 1, 143, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍7', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(8, 8, 3, '水产名称8', '1680485555019', 'upload/shuichan8.jpg', 'upload/file.rar', 2, 370, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍8', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(9, 9, 3, '水产名称9', '1680485555092', 'upload/shuichan9.jpg', 'upload/file.rar', 1, 432, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍9', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(10, 10, 3, '水产名称10', '1680485555049', 'upload/shuichan10.jpg', 'upload/file.rar', 1, 8, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍10', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(11, 11, 3, '水产名称11', '1680485555014', 'upload/shuichan11.jpg', 'upload/file.rar', 3, 418, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍11', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(12, 12, 1, '水产名称12', '1680485555073', 'upload/shuichan12.jpg', 'upload/file.rar', 1, 353, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍12', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(13, 13, 3, '水产名称13', '1680485555047', 'upload/shuichan13.jpg', 'upload/file.rar', 2, 468, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍13', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(14, 14, 1, '水产名称14', '1680485555062', 'upload/shuichan14.jpg', 'upload/file.rar', 2, 461, '2023-04-03 01:32:34', '2023-04-03 01:32:34', '水产介绍14', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(15, 13, 1, '水产1111', '1680488375354', 'upload/1680488390687.jpg', 'upload/1680488393096.doc', 3, 999, '2023-04-03 16:00:00', '2023-04-21 16:00:00', '地方时个第三个十多个', '2023-04-03 02:20:03', '2023-04-03 02:20:03'),
	(16, 12, 5, '水产111', '1680489419561', 'upload/1680489427902.jpg', 'upload/1680489430674.doc', 4, 88, '2023-03-27 16:00:00', '2023-04-04 16:00:00', '广东省广东省固定是', '2023-04-03 02:37:20', '2023-04-03 02:37:20');

DROP TABLE IF EXISTS `shuichan_collection`;
CREATE TABLE IF NOT EXISTS `shuichan_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuichan_id` int DEFAULT NULL COMMENT '水产',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shuichan_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='水产收藏';

DELETE FROM `shuichan_collection`;
INSERT INTO `shuichan_collection` (`id`, `shuichan_id`, `yonghu_id`, `shuichan_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(2, 2, 2, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(3, 3, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(4, 4, 1, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(5, 5, 1, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(6, 6, 1, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(7, 7, 1, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(8, 8, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(9, 9, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(10, 10, 1, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(11, 11, 2, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(12, 12, 1, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(13, 13, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(14, 14, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(15, 12, 5, 1, '2023-04-03 02:36:50', '2023-04-03 02:36:50'),
	(16, 8, 5, 1, '2023-04-03 02:36:53', '2023-04-03 02:36:53'),
	(17, 14, 1, 1, '2024-08-13 07:00:56', '2024-08-13 07:00:56');

DROP TABLE IF EXISTS `shuizhi`;
CREATE TABLE IF NOT EXISTS `shuizhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yangzhiquyu_id` int DEFAULT NULL COMMENT '养殖区域',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shuizhi_uuid_number` varchar(200) DEFAULT NULL COMMENT '水质编号',
  `shuizhi_photo` varchar(200) DEFAULT NULL COMMENT '水质照片',
  `shuizhi_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `shuizhi_types` int DEFAULT NULL COMMENT '水质状态 Search111',
  `shuizhi_time` date DEFAULT NULL COMMENT '所属日期',
  `shuizhi_content` longtext COMMENT '水质详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='水质';

DELETE FROM `shuizhi`;
INSERT INTO `shuizhi` (`id`, `yangzhiquyu_id`, `yonghu_id`, `shuizhi_uuid_number`, `shuizhi_photo`, `shuizhi_file`, `shuizhi_types`, `shuizhi_time`, `shuizhi_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, '1680485555008', 'upload/shuizhi1.jpg', 'upload/file.rar', 1, '2023-04-03', '水质详情1', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(2, 2, 2, '1680485555018', 'upload/shuizhi2.jpg', 'upload/file.rar', 3, '2023-04-03', '水质详情2', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(3, 3, 2, '1680485555090', 'upload/shuizhi3.jpg', 'upload/file.rar', 1, '2023-04-03', '水质详情3', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(4, 4, 2, '1680485555030', 'upload/shuizhi4.jpg', 'upload/file.rar', 3, '2023-04-03', '水质详情4', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(5, 5, 1, '1680485555081', 'upload/shuizhi5.jpg', 'upload/file.rar', 1, '2023-04-03', '水质详情5', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(6, 6, 2, '1680485555024', 'upload/shuizhi6.jpg', 'upload/file.rar', 1, '2023-04-03', '水质详情6', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(7, 7, 1, '1680485555067', 'upload/shuizhi7.jpg', 'upload/file.rar', 2, '2023-04-03', '水质详情7', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(8, 8, 2, '1680485555030', 'upload/shuizhi8.jpg', 'upload/file.rar', 2, '2023-04-03', '水质详情8', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(9, 9, 3, '1680485555046', 'upload/shuizhi9.jpg', 'upload/file.rar', 3, '2023-04-03', '水质详情9', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(10, 10, 1, '1680485555019', 'upload/shuizhi10.jpg', 'upload/file.rar', 4, '2023-04-03', '水质详情10', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(11, 11, 3, '1680485555091', 'upload/shuizhi11.jpg', 'upload/file.rar', 1, '2023-04-03', '水质详情11', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(12, 12, 3, '1680485555075', 'upload/shuizhi12.jpg', 'upload/file.rar', 4, '2023-04-03', '水质详情12', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(13, 13, 3, '1680485555069', 'upload/shuizhi13.jpg', 'upload/file.rar', 2, '2023-04-03', '水质详情13', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(14, 14, 2, '1680485555073', 'upload/shuizhi14.jpg', 'upload/file.rar', 3, '2023-04-03', '水质详情14', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(18, 13, 1, '1680488558108', 'upload/1680488561951.jpg', 'upload/1680488567413.doc', 2, '2023-04-02', '广东省广东省固定是', '2023-04-03 02:22:54', '2023-04-03 02:22:54'),
	(19, 14, 5, '1680489459888', 'upload/1680489464275.jpg', 'upload/1680489466978.doc', 1, '2023-04-02', '郭德纲是个第三个', '2023-04-03 02:37:53', '2023-04-03 02:37:53'),
	(20, 14, 5, '1680489478605', 'upload/1680489483602.jpg', 'upload/1680489485842.doc', 4, '2023-04-01', '个第三个第三个', '2023-04-03 02:38:17', '2023-04-03 02:38:17');

DROP TABLE IF EXISTS `siliao`;
CREATE TABLE IF NOT EXISTS `siliao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `siliao_uuid_number` varchar(200) DEFAULT NULL COMMENT '饲料编号',
  `siliao_name` varchar(200) DEFAULT NULL COMMENT '饲料名称  Search111 ',
  `siliao_photo` varchar(200) DEFAULT NULL COMMENT '饲料照片',
  `siliao_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `siliao_number` int DEFAULT NULL COMMENT '数量',
  `siliao_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `siliao_types` int DEFAULT NULL COMMENT '饲料类型 Search111',
  `siliao_content` longtext COMMENT '饲料介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='饲料';

DELETE FROM `siliao`;
INSERT INTO `siliao` (`id`, `siliao_uuid_number`, `siliao_name`, `siliao_photo`, `siliao_file`, `siliao_number`, `siliao_danwei`, `siliao_types`, `siliao_content`, `insert_time`, `create_time`) VALUES
	(1, '1680485555057', '饲料名称1', 'upload/siliao1.jpg', 'upload/file.rar', 82, '个', 4, '饲料介绍1', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(2, '1680485555045', '饲料名称2', 'upload/siliao2.jpg', 'upload/file.rar', 430, '个', 3, '饲料介绍2', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(3, '1680485555094', '饲料名称3', 'upload/siliao3.jpg', 'upload/file.rar', 368, '个', 1, '饲料介绍3', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(4, '1680485555079', '饲料名称4', 'upload/siliao4.jpg', 'upload/file.rar', 298, '个', 3, '饲料介绍4', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(5, '1680485555101', '饲料名称5', 'upload/siliao5.jpg', 'upload/file.rar', 134, '个', 3, '饲料介绍5', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(6, '1680485555070', '饲料名称6', 'upload/siliao6.jpg', 'upload/file.rar', 208, '个', 3, '饲料介绍6', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(7, '1680485555020', '饲料名称7', 'upload/siliao7.jpg', 'upload/file.rar', 201, '个', 2, '饲料介绍7', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(8, '1680485555087', '饲料名称8', 'upload/siliao8.jpg', 'upload/file.rar', 330, '个', 4, '饲料介绍8', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(9, '1680485555014', '饲料名称9', 'upload/siliao9.jpg', 'upload/file.rar', 182, '个', 3, '饲料介绍9', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(10, '1680485555005', '饲料名称10', 'upload/siliao10.jpg', 'upload/file.rar', 41, '个', 3, '饲料介绍10', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(11, '1680485555018', '饲料名称11', 'upload/siliao11.jpg', 'upload/file.rar', 276, '个', 4, '饲料介绍11', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(12, '1680485555095', '饲料名称12', 'upload/siliao12.jpg', 'upload/file.rar', 305, '个', 3, '饲料介绍12', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(13, '1680485555104', '饲料名称13', 'upload/siliao13.jpg', 'upload/file.rar', 487, '个', 3, '饲料介绍13', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(14, '1680485555095', '饲料名称14', 'upload/siliao14.jpg', 'upload/file.rar', 206, '个', 4, '饲料介绍14', '2023-04-03 01:32:34', '2023-04-03 01:32:34');

DROP TABLE IF EXISTS `siliao_shiyong`;
CREATE TABLE IF NOT EXISTS `siliao_shiyong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `siliao_id` int DEFAULT NULL COMMENT '饲料',
  `shuichan_id` int DEFAULT NULL COMMENT '水产',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `siliao_shiyong_number` int DEFAULT NULL COMMENT '使用数量',
  `siliao_shiyong_types` int DEFAULT NULL COMMENT '使用类型 Search111',
  `siliao_shiyong_content` longtext COMMENT '使用缘由',
  `siliao_shiyong_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `siliao_shiyong_time` timestamp NULL DEFAULT NULL COMMENT '使用时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='饲料使用';

DELETE FROM `siliao_shiyong`;
INSERT INTO `siliao_shiyong` (`id`, `siliao_id`, `shuichan_id`, `yonghu_id`, `siliao_shiyong_number`, `siliao_shiyong_types`, `siliao_shiyong_content`, `siliao_shiyong_file`, `siliao_shiyong_time`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 2, 189, 2, '使用缘由1', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(2, 2, 2, 3, 480, 3, '使用缘由2', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(3, 3, 3, 1, 39, 3, '使用缘由3', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(4, 4, 4, 3, 36, 3, '使用缘由4', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(5, 5, 5, 3, 206, 1, '使用缘由5', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(6, 6, 6, 2, 233, 4, '使用缘由6', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(7, 7, 7, 1, 414, 2, '使用缘由7', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(8, 8, 8, 3, 340, 2, '使用缘由8', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(9, 9, 9, 3, 159, 1, '使用缘由9', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(10, 10, 10, 1, 356, 4, '使用缘由10', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(11, 11, 11, 1, 287, 1, '使用缘由11', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(12, 12, 12, 3, 200, 2, '使用缘由12', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(13, 13, 13, 3, 297, 3, '使用缘由13', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(14, 14, 14, 1, 416, 4, '使用缘由14', 'upload/file.rar', '2023-04-03 01:32:34', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(16, 14, 14, 1, 989, 4, '个第三个第三个', 'upload/1680488735058.doc', '2023-04-19 16:00:00', '2023-04-03 02:25:40', '2023-04-03 02:25:40'),
	(17, 14, 16, 5, 99, 2, '高士大夫广东省归属感是广东省格式', 'upload/1680489517330.doc', '2023-04-01 16:00:00', '2023-04-03 02:38:44', '2023-04-03 02:38:44'),
	(18, 14, 16, 5, 1, 4, '<p>给第三方孤独颂歌是的公司单号感受到</p>', 'upload/1680489543667.doc', '2023-03-31 16:00:00', '2023-04-03 02:39:13', '2023-04-03 02:39:13');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'sgkudm87ydrk1p2xou5j7rtfx34gy39q', '2023-04-03 01:36:01', '2024-08-13 08:00:29'),
	(2, 1, 'admin', 'users', '管理员', 'pchup1kgill5r966ajuopg2wlpjul23z', '2023-04-03 02:26:20', '2024-08-13 07:59:07'),
	(3, 4, 'a5', 'yonghu', '用户', 'zqp3ij2503xvw9vqlaxe782oz8rp9crr', '2023-04-03 02:34:17', '2023-04-03 03:34:17'),
	(4, 5, 'a5', 'yonghu', '用户', '04na95t43nehlrvtpfby966i1hn996v2', '2023-04-03 02:36:04', '2023-04-03 03:36:05');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-03 01:31:25');

DROP TABLE IF EXISTS `yangzhiquyu`;
CREATE TABLE IF NOT EXISTS `yangzhiquyu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yangzhiquyu_name` varchar(200) DEFAULT NULL COMMENT '区域名称  Search111 ',
  `yangzhiquyu_uuid_number` varchar(200) DEFAULT NULL COMMENT '养殖区域编号',
  `yangzhiquyu_photo` varchar(200) DEFAULT NULL COMMENT '养殖区域照片',
  `yangzhiquyu_address` varchar(200) DEFAULT NULL COMMENT '养殖区域地点',
  `yangzhiquyu_types` int DEFAULT NULL COMMENT '养殖区域类型 Search111',
  `yangzhiquyu_content` longtext COMMENT '养殖区域介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='养殖区域';

DELETE FROM `yangzhiquyu`;
INSERT INTO `yangzhiquyu` (`id`, `yangzhiquyu_name`, `yangzhiquyu_uuid_number`, `yangzhiquyu_photo`, `yangzhiquyu_address`, `yangzhiquyu_types`, `yangzhiquyu_content`, `insert_time`, `create_time`) VALUES
	(1, '区域名称1', '1680485555084', 'upload/yangzhiquyu1.jpg', '养殖区域地点1', 4, '养殖区域介绍1', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(2, '区域名称2', '1680485555028', 'upload/yangzhiquyu2.jpg', '养殖区域地点2', 4, '养殖区域介绍2', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(3, '区域名称3', '1680485555054', 'upload/yangzhiquyu3.jpg', '养殖区域地点3', 1, '养殖区域介绍3', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(4, '区域名称4', '1680485555049', 'upload/yangzhiquyu4.jpg', '养殖区域地点4', 1, '养殖区域介绍4', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(5, '区域名称5', '1680485555073', 'upload/yangzhiquyu5.jpg', '养殖区域地点5', 3, '养殖区域介绍5', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(6, '区域名称6', '1680485555026', 'upload/yangzhiquyu6.jpg', '养殖区域地点6', 3, '养殖区域介绍6', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(7, '区域名称7', '1680485555097', 'upload/yangzhiquyu7.jpg', '养殖区域地点7', 4, '养殖区域介绍7', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(8, '区域名称8', '1680485555094', 'upload/yangzhiquyu8.jpg', '养殖区域地点8', 3, '养殖区域介绍8', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(9, '区域名称9', '1680485555098', 'upload/yangzhiquyu9.jpg', '养殖区域地点9', 4, '养殖区域介绍9', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(10, '区域名称10', '1680485555082', 'upload/yangzhiquyu10.jpg', '养殖区域地点10', 4, '养殖区域介绍10', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(11, '区域名称11', '1680485555061', 'upload/yangzhiquyu11.jpg', '养殖区域地点11', 3, '养殖区域介绍11', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(12, '区域名称12', '1680485555080', 'upload/yangzhiquyu12.jpg', '养殖区域地点12', 2, '养殖区域介绍12', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(13, '区域名称13', '1680485555084', 'upload/yangzhiquyu13.jpg', '养殖区域地点13', 1, '养殖区域介绍13', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(14, '区域名称14', '1680485555084', 'upload/yangzhiquyu14.jpg', '养殖区域地点14', 1, '养殖区域介绍14', '2023-04-03 01:32:34', '2023-04-03 01:32:34');

DROP TABLE IF EXISTS `yangzhiquyu_collection`;
CREATE TABLE IF NOT EXISTS `yangzhiquyu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yangzhiquyu_id` int DEFAULT NULL COMMENT '养殖区域',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yangzhiquyu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='养殖区域收藏';

DELETE FROM `yangzhiquyu_collection`;
INSERT INTO `yangzhiquyu_collection` (`id`, `yangzhiquyu_id`, `yonghu_id`, `yangzhiquyu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(2, 2, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(3, 3, 2, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(4, 4, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(5, 5, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(6, 6, 2, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(7, 7, 1, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(8, 8, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(9, 9, 2, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(10, 10, 1, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(11, 11, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(12, 12, 2, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(13, 13, 3, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(14, 14, 2, 1, '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(15, 12, 1, 1, '2023-04-03 01:37:33', '2023-04-03 01:37:33'),
	(16, 13, 5, 1, '2023-04-03 02:36:46', '2023-04-03 02:36:46');

DROP TABLE IF EXISTS `yangzhiquyu_liuyan`;
CREATE TABLE IF NOT EXISTS `yangzhiquyu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yangzhiquyu_id` int DEFAULT NULL COMMENT '养殖区域',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yangzhiquyu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='养殖区域留言';

DELETE FROM `yangzhiquyu_liuyan`;
INSERT INTO `yangzhiquyu_liuyan` (`id`, `yangzhiquyu_id`, `yonghu_id`, `yangzhiquyu_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-04-03 01:32:34', '回复信息1', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(2, 2, 3, '留言内容2', '2023-04-03 01:32:34', '回复信息2', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(3, 3, 3, '留言内容3', '2023-04-03 01:32:34', '回复信息3', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(4, 4, 1, '留言内容4', '2023-04-03 01:32:34', '回复信息4', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(5, 5, 2, '留言内容5', '2023-04-03 01:32:34', '回复信息5', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(6, 6, 1, '留言内容6', '2023-04-03 01:32:34', '回复信息6', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(7, 7, 2, '留言内容7', '2023-04-03 01:32:34', '回复信息7', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(8, 8, 2, '留言内容8', '2023-04-03 01:32:34', '回复信息8', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(9, 9, 1, '留言内容9', '2023-04-03 01:32:34', '回复信息9', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(10, 10, 1, '留言内容10', '2023-04-03 01:32:34', '回复信息10', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(11, 11, 1, '留言内容11', '2023-04-03 01:32:34', '回复信息11', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(12, 12, 3, '留言内容12', '2023-04-03 01:32:34', '回复信息12', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(13, 13, 2, '留言内容13', '2023-04-03 01:32:34', '回复信息13', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(14, 14, 3, '留言内容14', '2023-04-03 01:32:34', '回复信息14', '2023-04-03 01:32:34', '2023-04-03 01:32:34'),
	(15, 13, 5, 'gdsgdsgs风格的三个', '2023-04-03 02:36:42', '哼哼唧唧军军军军军', '2023-04-03 02:40:17', '2023-04-03 02:36:42'),
	(16, 13, 5, '哈哈哈哈', '2023-04-03 02:40:27', NULL, NULL, '2023-04-03 02:40:27'),
	(17, 12, 1, '666', '2024-08-13 07:01:07', NULL, NULL, '2024-08-13 07:01:07');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `jinyong_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 1, '2023-04-03 01:32:34'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', 1, '2023-04-03 01:32:34'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 2, '2023-04-03 01:32:34'),
	(5, '用户4', '123456', '张5', '17788889999', '444555888899999999', 'upload/1680489370672.jpg', 2, '5@qq.com', 1, '2023-04-03 02:36:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
