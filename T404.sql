-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.38 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 t404 的数据库结构
DROP DATABASE IF EXISTS `t404`;
CREATE DATABASE IF NOT EXISTS `t404` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t404`;

-- 导出  表 t404.address 结构
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

-- 正在导出表  t404.address 的数据：~14 rows (大约)
DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 1, '收货人2', '17703786902', '地址2', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, 2, '收货人3', '17703786903', '地址3', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 1, '收货人4', '17703786904', '地址4', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 1, '收货人5', '17703786905', '地址5', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 3, '收货人6', '17703786906', '地址6', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 3, '收货人7', '17703786907', '地址7', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 3, '收货人8', '17703786908', '地址8', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 1, '收货人9', '17703786909', '地址9', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 2, '收货人10', '17703786910', '地址10', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 1, '收货人11', '17703786911', '地址11', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 3, '收货人12', '17703786912', '地址12', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 2, '收货人13', '17703786913', '地址13', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 1, '收货人14', '17703786914', '地址14', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05', '2023-04-10 02:54:05');

-- 导出  表 t404.cart 结构
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

-- 正在导出表  t404.cart 的数据：~0 rows (大约)
DELETE FROM `cart`;

-- 导出  表 t404.config 结构
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

-- 正在导出表  t404.config 的数据：~3 rows (大约)
DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

-- 导出  表 t404.dictionary 结构
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

-- 正在导出表  t404.dictionary 的数据：~45 rows (大约)
DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-10 02:53:37'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-10 02:53:37'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-10 02:53:37'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-10 02:53:37'),
	(5, 'jingdian_types', '景点类型', 1, '景点类型1', NULL, NULL, '2023-04-10 02:53:37'),
	(6, 'jingdian_types', '景点类型', 2, '景点类型2', NULL, NULL, '2023-04-10 02:53:37'),
	(7, 'jingdian_types', '景点类型', 3, '景点类型3', NULL, NULL, '2023-04-10 02:53:37'),
	(8, 'jingdian_types', '景点类型', 4, '景点类型4', NULL, NULL, '2023-04-10 02:53:37'),
	(9, 'jingdian_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-10 02:53:37'),
	(10, 'jingdian_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-10 02:53:37'),
	(11, 'jingdian_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-10 02:53:37'),
	(12, 'jingdian_order_types', '订单类型', 101, '已预约', NULL, NULL, '2023-04-10 02:53:37'),
	(13, 'jingdian_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-04-10 02:53:37'),
	(14, 'jingdian_order_types', '订单类型', 103, '已同意', NULL, NULL, '2023-04-10 02:53:37'),
	(15, 'jingdian_order_types', '订单类型', 104, '已使用', NULL, NULL, '2023-04-10 02:53:37'),
	(16, 'jingdian_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-04-10 02:53:37'),
	(17, 'jiudian_types', '酒店类型', 1, '酒店类型1', NULL, NULL, '2023-04-10 02:53:37'),
	(18, 'jiudian_types', '酒店类型', 2, '酒店类型2', NULL, NULL, '2023-04-10 02:53:37'),
	(19, 'jiudian_types', '酒店类型', 3, '酒店类型3', NULL, NULL, '2023-04-10 02:53:37'),
	(20, 'jiudian_types', '酒店类型', 4, '酒店类型4', NULL, NULL, '2023-04-10 02:53:37'),
	(21, 'jiudian_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-10 02:53:37'),
	(22, 'jiudian_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-10 02:53:37'),
	(23, 'jiudian_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-10 02:53:37'),
	(24, 'jiudian_order_types', '订单类型', 101, '已预约', NULL, NULL, '2023-04-10 02:53:37'),
	(25, 'jiudian_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-04-10 02:53:37'),
	(26, 'jiudian_order_types', '订单类型', 103, '已同意', NULL, NULL, '2023-04-10 02:53:37'),
	(27, 'jiudian_order_types', '订单类型', 104, '已入住', NULL, NULL, '2023-04-10 02:53:37'),
	(28, 'jiudian_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-04-10 02:53:37'),
	(29, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-04-10 02:53:37'),
	(30, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-04-10 02:53:37'),
	(31, 'shangpin_types', '商品类型', 1, '商品类型1', NULL, NULL, '2023-04-10 02:53:37'),
	(32, 'shangpin_types', '商品类型', 2, '商品类型2', NULL, NULL, '2023-04-10 02:53:37'),
	(33, 'shangpin_types', '商品类型', 3, '商品类型3', NULL, NULL, '2023-04-10 02:53:37'),
	(34, 'shangpin_types', '商品类型', 4, '商品类型4', NULL, NULL, '2023-04-10 02:53:37'),
	(35, 'shangpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-10 02:53:37'),
	(36, 'shangpin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-10 02:53:38'),
	(37, 'shangpin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-10 02:53:38'),
	(38, 'shangpin_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-04-10 02:53:38'),
	(39, 'shangpin_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-04-10 02:53:38'),
	(40, 'shangpin_order_types', '订单类型', 103, '已发货', NULL, NULL, '2023-04-10 02:53:38'),
	(41, 'shangpin_order_types', '订单类型', 104, '已收货', NULL, NULL, '2023-04-10 02:53:38'),
	(42, 'shangpin_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-04-10 02:53:38'),
	(43, 'luxian_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-10 02:53:38'),
	(44, 'luxian_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-10 02:53:38'),
	(45, 'luxian_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-10 02:53:38');

-- 导出  表 t404.gonggao 结构
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

-- 正在导出表  t404.gonggao 的数据：~14 rows (大约)
DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-04-10 02:54:05', '公告详情1', '2023-04-10 02:54:05'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-04-10 02:54:05', '公告详情2', '2023-04-10 02:54:05'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-10 02:54:05', '公告详情3', '2023-04-10 02:54:05'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-04-10 02:54:05', '公告详情4', '2023-04-10 02:54:05'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-10 02:54:05', '公告详情5', '2023-04-10 02:54:05'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 2, '2023-04-10 02:54:05', '公告详情6', '2023-04-10 02:54:05'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-04-10 02:54:05', '公告详情7', '2023-04-10 02:54:05'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-04-10 02:54:05', '公告详情8', '2023-04-10 02:54:05'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-10 02:54:05', '公告详情9', '2023-04-10 02:54:05'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-10 02:54:05', '公告详情10', '2023-04-10 02:54:05'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-04-10 02:54:05', '公告详情11', '2023-04-10 02:54:05'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 1, '2023-04-10 02:54:05', '公告详情12', '2023-04-10 02:54:05'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-04-10 02:54:05', '公告详情13', '2023-04-10 02:54:05'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-04-10 02:54:05', '公告详情14', '2023-04-10 02:54:05');

-- 导出  表 t404.jingdian 结构
DROP TABLE IF EXISTS `jingdian`;
CREATE TABLE IF NOT EXISTS `jingdian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名称  Search111 ',
  `jingdian_uuid_number` varchar(200) DEFAULT NULL COMMENT '景点编号',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点照片',
  `jingdian_address` varchar(200) DEFAULT NULL COMMENT '景点地点',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `jingdian_video` varchar(200) DEFAULT NULL COMMENT '景点视频',
  `jingdian_types` int DEFAULT NULL COMMENT '景点类型 Search111',
  `jingdian_kucun_number` int DEFAULT NULL COMMENT '景点门票',
  `jingdian_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `jingdian_content` longtext COMMENT '景点介绍 ',
  `jingdian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='景点';

-- 正在导出表  t404.jingdian 的数据：~14 rows (大约)
DELETE FROM `jingdian`;
INSERT INTO `jingdian` (`id`, `jingdian_name`, `jingdian_uuid_number`, `jingdian_photo`, `jingdian_address`, `zan_number`, `cai_number`, `jingdian_video`, `jingdian_types`, `jingdian_kucun_number`, `jingdian_new_money`, `jingdian_content`, `jingdian_delete`, `insert_time`, `create_time`) VALUES
	(1, '景点名称1', '1681095245283', 'upload/jingdian1.jpg', '景点地点1', 347, 12, 'upload/video.mp4', 3, 101, 135.31, '景点介绍1', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, '景点名称2', '1681095245244', 'upload/jingdian2.jpg', '景点地点2', 16, 415, 'upload/video.mp4', 2, 102, 365.20, '景点介绍2', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, '景点名称3', '1681095245294', 'upload/jingdian3.jpg', '景点地点3', 40, 381, 'upload/video.mp4', 4, 103, 272.92, '景点介绍3', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, '景点名称4', '1681095245313', 'upload/jingdian4.jpg', '景点地点4', 149, 302, 'upload/video.mp4', 1, 104, 19.81, '景点介绍4', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, '景点名称5', '1681095245273', 'upload/jingdian5.jpg', '景点地点5', 36, 433, 'upload/video.mp4', 2, 105, 373.36, '景点介绍5', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, '景点名称6', '1681095245263', 'upload/jingdian6.jpg', '景点地点6', 348, 152, 'upload/video.mp4', 3, 106, 229.07, '景点介绍6', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, '景点名称7', '1681095245318', 'upload/jingdian7.jpg', '景点地点7', 322, 31, 'upload/video.mp4', 1, 107, 236.71, '景点介绍7', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, '景点名称8', '1681095245284', 'upload/jingdian8.jpg', '景点地点8', 292, 364, 'upload/video.mp4', 2, 108, 186.86, '景点介绍8', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, '景点名称9', '1681095245324', 'upload/jingdian9.jpg', '景点地点9', 207, 321, 'upload/video.mp4', 1, 109, 449.64, '景点介绍9', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, '景点名称10', '1681095245299', 'upload/jingdian10.jpg', '景点地点10', 302, 323, 'upload/video.mp4', 4, 1010, 95.27, '景点介绍10', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, '景点名称11', '1681095245319', 'upload/jingdian11.jpg', '景点地点11', 28, 291, 'upload/video.mp4', 4, 1011, 89.91, '景点介绍11', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, '景点名称12', '1681095245320', 'upload/jingdian12.jpg', '景点地点12', 417, 444, 'upload/video.mp4', 2, 1011, 59.52, '景点介绍12', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, '景点名称13', '1681095245301', 'upload/jingdian13.jpg', '景点地点13', 202, 120, 'upload/video.mp4', 2, 1013, 342.19, '景点介绍13', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, '景点名称14', '1681095245283', 'upload/jingdian14.jpg', '景点地点14', 456, 69, 'upload/video.mp4', 2, 1014, 269.64, '景点介绍14', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05');

-- 导出  表 t404.jingdian_collection 结构
DROP TABLE IF EXISTS `jingdian_collection`;
CREATE TABLE IF NOT EXISTS `jingdian_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int DEFAULT NULL COMMENT '景点',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingdian_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='景点收藏';

-- 正在导出表  t404.jingdian_collection 的数据：~16 rows (大约)
DELETE FROM `jingdian_collection`;
INSERT INTO `jingdian_collection` (`id`, `jingdian_id`, `yonghu_id`, `jingdian_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 2, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, 3, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 4, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 5, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 6, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 7, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 8, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 9, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 10, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 11, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 12, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 13, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 14, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(18, 12, 1, 2, '2023-04-10 03:17:45', '2023-04-10 03:17:45'),
	(19, 12, 1, 1, '2023-04-10 03:17:50', '2023-04-10 03:17:50'),
	(20, 14, 1, 1, '2024-09-26 06:34:48', '2024-09-26 06:34:48');

-- 导出  表 t404.jingdian_commentback 结构
DROP TABLE IF EXISTS `jingdian_commentback`;
CREATE TABLE IF NOT EXISTS `jingdian_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int DEFAULT NULL COMMENT '景点',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingdian_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='景点评价';

-- 正在导出表  t404.jingdian_commentback 的数据：~15 rows (大约)
DELETE FROM `jingdian_commentback`;
INSERT INTO `jingdian_commentback` (`id`, `jingdian_id`, `yonghu_id`, `jingdian_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '评价内容1', '2023-04-10 02:54:05', '回复信息1', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 2, 3, '评价内容2', '2023-04-10 02:54:05', '回复信息2', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, 3, 1, '评价内容3', '2023-04-10 02:54:05', '回复信息3', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 4, 2, '评价内容4', '2023-04-10 02:54:05', '回复信息4', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 5, 1, '评价内容5', '2023-04-10 02:54:05', '回复信息5', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 6, 2, '评价内容6', '2023-04-10 02:54:05', '回复信息6', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 7, 1, '评价内容7', '2023-04-10 02:54:05', '回复信息7', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 8, 2, '评价内容8', '2023-04-10 02:54:05', '回复信息8', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 9, 3, '评价内容9', '2023-04-10 02:54:05', '回复信息9', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 10, 3, '评价内容10', '2023-04-10 02:54:05', '回复信息10', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 11, 2, '评价内容11', '2023-04-10 02:54:05', '回复信息11', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 12, 1, '评价内容12', '2023-04-10 02:54:05', '回复信息12', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 13, 1, '评价内容13', '2023-04-10 02:54:05', '回复信息13', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 14, 1, '评价内容14', '2023-04-10 02:54:05', '回复信息14', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(15, 12, 1, '6666', '2023-04-10 03:22:38', '45656', '2023-04-10 03:23:01', '2023-04-10 03:22:38');

-- 导出  表 t404.jingdian_order 结构
DROP TABLE IF EXISTS `jingdian_order`;
CREATE TABLE IF NOT EXISTS `jingdian_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `jingdian_id` int DEFAULT NULL COMMENT '景点',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `jingdian_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `jingdian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `jingdian_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='景点订单';

-- 正在导出表  t404.jingdian_order 的数据：~2 rows (大约)
DELETE FROM `jingdian_order`;
INSERT INTO `jingdian_order` (`id`, `jingdian_order_uuid_number`, `jingdian_id`, `yonghu_id`, `buy_number`, `jingdian_order_time`, `jingdian_order_true_price`, `jingdian_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1681096558334', 12, 1, 3, '2023-04-10 03:15:56', 178.56, 102, '2023-04-10 03:15:58', '2023-04-10 03:15:58'),
	(2, '1681096677822', 12, 1, 1, '2023-04-10 03:17:52', 59.52, 105, '2023-04-10 03:17:58', '2023-04-10 03:17:58');

-- 导出  表 t404.jiudian 结构
DROP TABLE IF EXISTS `jiudian`;
CREATE TABLE IF NOT EXISTS `jiudian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiudian_name` varchar(200) DEFAULT NULL COMMENT '酒店名称  Search111 ',
  `jiudian_uuid_number` varchar(200) DEFAULT NULL COMMENT '酒店编号',
  `jiudian_photo` varchar(200) DEFAULT NULL COMMENT '酒店照片',
  `jiudian_address` varchar(200) DEFAULT NULL COMMENT '酒店地点',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `jiudian_video` varchar(200) DEFAULT NULL COMMENT '酒店视频',
  `jiudian_types` int DEFAULT NULL COMMENT '酒店类型 Search111',
  `jiudian_kucun_number` int DEFAULT NULL COMMENT '酒店入住人数',
  `jiudian_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `jiudian_content` longtext COMMENT '酒店介绍 ',
  `jiudian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='酒店';

-- 正在导出表  t404.jiudian 的数据：~14 rows (大约)
DELETE FROM `jiudian`;
INSERT INTO `jiudian` (`id`, `jiudian_name`, `jiudian_uuid_number`, `jiudian_photo`, `jiudian_address`, `zan_number`, `cai_number`, `jiudian_video`, `jiudian_types`, `jiudian_kucun_number`, `jiudian_new_money`, `jiudian_content`, `jiudian_delete`, `insert_time`, `create_time`) VALUES
	(1, '酒店名称1', '1681095245309', 'upload/jiudian1.jpg', '酒店地点1', 284, 38, 'upload/video.mp4', 2, 101, 390.61, '酒店介绍1', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, '酒店名称2', '1681095245250', 'upload/jiudian2.jpg', '酒店地点2', 382, 483, 'upload/video.mp4', 2, 102, 51.49, '酒店介绍2', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, '酒店名称3', '1681095245307', 'upload/jiudian3.jpg', '酒店地点3', 67, 487, 'upload/video.mp4', 3, 103, 207.95, '酒店介绍3', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, '酒店名称4', '1681095245279', 'upload/jiudian4.jpg', '酒店地点4', 283, 197, 'upload/video.mp4', 2, 104, 450.54, '酒店介绍4', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, '酒店名称5', '1681095245314', 'upload/jiudian5.jpg', '酒店地点5', 154, 351, 'upload/video.mp4', 2, 105, 77.17, '酒店介绍5', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, '酒店名称6', '1681095245250', 'upload/jiudian6.jpg', '酒店地点6', 419, 436, 'upload/video.mp4', 4, 106, 47.23, '酒店介绍6', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, '酒店名称7', '1681095245276', 'upload/jiudian7.jpg', '酒店地点7', 231, 161, 'upload/video.mp4', 4, 107, 161.42, '酒店介绍7', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, '酒店名称8', '1681095245305', 'upload/jiudian8.jpg', '酒店地点8', 144, 355, 'upload/video.mp4', 3, 108, 254.31, '酒店介绍8', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, '酒店名称9', '1681095245326', 'upload/jiudian9.jpg', '酒店地点9', 189, 201, 'upload/video.mp4', 4, 109, 185.84, '酒店介绍9', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, '酒店名称10', '1681095245247', 'upload/jiudian10.jpg', '酒店地点10', 326, 250, 'upload/video.mp4', 3, 1010, 413.23, '酒店介绍10', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, '酒店名称11', '1681095245286', 'upload/jiudian11.jpg', '酒店地点11', 105, 250, 'upload/video.mp4', 4, 1011, 306.09, '酒店介绍11', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, '酒店名称12', '1681095245261', 'upload/jiudian12.jpg', '酒店地点12', 132, 136, 'upload/video.mp4', 2, 1012, 89.33, '酒店介绍12', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, '酒店名称13', '1681095245260', 'upload/jiudian13.jpg', '酒店地点13', 485, 476, 'upload/video.mp4', 2, 1010, 16.83, '酒店介绍13', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, '酒店名称14', '1681095245308', 'upload/jiudian14.jpg', '酒店地点14', 20, 453, 'upload/video.mp4', 3, 1014, 63.56, '酒店介绍14', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05');

-- 导出  表 t404.jiudian_collection 结构
DROP TABLE IF EXISTS `jiudian_collection`;
CREATE TABLE IF NOT EXISTS `jiudian_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int DEFAULT NULL COMMENT '酒店',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiudian_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='酒店收藏';

-- 正在导出表  t404.jiudian_collection 的数据：~14 rows (大约)
DELETE FROM `jiudian_collection`;
INSERT INTO `jiudian_collection` (`id`, `jiudian_id`, `yonghu_id`, `jiudian_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 2, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, 3, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 4, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 5, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 6, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 7, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 8, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 9, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 10, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 11, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 12, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 13, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 14, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(15, 12, 1, 1, '2024-09-26 06:34:57', '2024-09-26 06:34:57');

-- 导出  表 t404.jiudian_commentback 结构
DROP TABLE IF EXISTS `jiudian_commentback`;
CREATE TABLE IF NOT EXISTS `jiudian_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int DEFAULT NULL COMMENT '酒店',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiudian_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='酒店评价';

-- 正在导出表  t404.jiudian_commentback 的数据：~15 rows (大约)
DELETE FROM `jiudian_commentback`;
INSERT INTO `jiudian_commentback` (`id`, `jiudian_id`, `yonghu_id`, `jiudian_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '评价内容1', '2023-04-10 02:54:05', '回复信息1', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 2, 2, '评价内容2', '2023-04-10 02:54:05', '回复信息2', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, 3, 2, '评价内容3', '2023-04-10 02:54:05', '回复信息3', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 4, 2, '评价内容4', '2023-04-10 02:54:05', '回复信息4', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 5, 1, '评价内容5', '2023-04-10 02:54:05', '回复信息5', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 6, 1, '评价内容6', '2023-04-10 02:54:05', '回复信息6', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 7, 2, '评价内容7', '2023-04-10 02:54:05', '回复信息7', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 8, 1, '评价内容8', '2023-04-10 02:54:05', '回复信息8', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 9, 3, '评价内容9', '2023-04-10 02:54:05', '回复信息9', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 10, 1, '评价内容10', '2023-04-10 02:54:05', '回复信息10', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 11, 2, '评价内容11', '2023-04-10 02:54:05', '回复信息11', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 12, 1, '评价内容12', '2023-04-10 02:54:05', '回复信息12', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 13, 3, '评价内容13', '2023-04-10 02:54:05', '回复信息13', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 14, 2, '评价内容14', '2023-04-10 02:54:05', '回复信息14', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(15, 13, 1, '环境不错', '2023-04-10 03:22:46', '54654', '2023-04-10 03:23:12', '2023-04-10 03:22:46');

-- 导出  表 t404.jiudian_order 结构
DROP TABLE IF EXISTS `jiudian_order`;
CREATE TABLE IF NOT EXISTS `jiudian_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `jiudian_id` int DEFAULT NULL COMMENT '酒店',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '人数',
  `jiudian_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `jiudian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `jiudian_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='酒店订单';

-- 正在导出表  t404.jiudian_order 的数据：~2 rows (大约)
DELETE FROM `jiudian_order`;
INSERT INTO `jiudian_order` (`id`, `jiudian_order_uuid_number`, `jiudian_id`, `yonghu_id`, `buy_number`, `jiudian_order_time`, `jiudian_order_true_price`, `jiudian_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1681096614302', 13, 1, 1, '2023-04-10 03:16:53', 16.83, 102, '2023-04-10 03:16:54', '2023-04-10 03:16:54'),
	(2, '1681096713961', 13, 1, 3, '2023-04-10 03:18:32', 50.49, 105, '2023-04-10 03:18:34', '2023-04-10 03:18:34');

-- 导出  表 t404.liuyan 结构
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

-- 正在导出表  t404.liuyan 的数据：~15 rows (大约)
DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '2023-04-10 02:54:05', '回复信息1', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 3, '留言标题2', '留言内容2', '2023-04-10 02:54:05', '回复信息2', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, 2, '留言标题3', '留言内容3', '2023-04-10 02:54:05', '回复信息3', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 3, '留言标题4', '留言内容4', '2023-04-10 02:54:05', '回复信息4', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 2, '留言标题5', '留言内容5', '2023-04-10 02:54:05', '回复信息5', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 3, '留言标题6', '留言内容6', '2023-04-10 02:54:05', '回复信息6', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 3, '留言标题7', '留言内容7', '2023-04-10 02:54:05', '回复信息7', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 1, '留言标题8', '留言内容8', '2023-04-10 02:54:05', '回复信息8', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 3, '留言标题9', '留言内容9', '2023-04-10 02:54:05', '回复信息9', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 1, '留言标题10', '留言内容10', '2023-04-10 02:54:05', '回复信息10', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 3, '留言标题11', '留言内容11', '2023-04-10 02:54:05', '回复信息11', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 3, '留言标题12', '留言内容12', '2023-04-10 02:54:05', '回复信息12', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 3, '留言标题13', '留言内容13', '2023-04-10 02:54:05', '回复信息13', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 3, '留言标题14', '留言内容14', '2023-04-10 02:54:05', '回复信息14', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(15, 1, '留言', '留言丫丫', '2023-04-10 03:18:49', '提到过 ', '2023-04-10 03:22:09', '2023-04-10 03:18:49'),
	(16, 1, '66', '666', '2024-09-26 06:35:02', NULL, NULL, '2024-09-26 06:35:02');

-- 导出  表 t404.luxian 结构
DROP TABLE IF EXISTS `luxian`;
CREATE TABLE IF NOT EXISTS `luxian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `luxian_name` varchar(200) DEFAULT NULL COMMENT '旅游路线名称  Search111 ',
  `luxian_uuid_number` varchar(200) DEFAULT NULL COMMENT '旅游路线编号',
  `luxian_photo` varchar(200) DEFAULT NULL COMMENT '旅游路线照片',
  `luxian_chufa` varchar(200) DEFAULT NULL COMMENT '旅游出发地',
  `luxian_tujing` varchar(200) DEFAULT NULL COMMENT '旅游途径地',
  `luxian_mudi` varchar(200) DEFAULT NULL COMMENT '旅游目的地',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `luxian_content` longtext COMMENT '旅游路线介绍 ',
  `luxian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='旅游路线';

-- 正在导出表  t404.luxian 的数据：~14 rows (大约)
DELETE FROM `luxian`;
INSERT INTO `luxian` (`id`, `luxian_name`, `luxian_uuid_number`, `luxian_photo`, `luxian_chufa`, `luxian_tujing`, `luxian_mudi`, `zan_number`, `cai_number`, `luxian_content`, `luxian_delete`, `insert_time`, `create_time`) VALUES
	(1, '旅游路线名称1', '1681095245345', 'upload/luxian1.jpg', '旅游出发地1', '旅游途径地1', '旅游目的地1', 469, 156, '旅游路线介绍1', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, '旅游路线名称2', '1681095245274', 'upload/luxian2.jpg', '旅游出发地2', '旅游途径地2', '旅游目的地2', 184, 285, '旅游路线介绍2', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, '旅游路线名称3', '1681095245349', 'upload/luxian3.jpg', '旅游出发地3', '旅游途径地3', '旅游目的地3', 500, 325, '旅游路线介绍3', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, '旅游路线名称4', '1681095245266', 'upload/luxian4.jpg', '旅游出发地4', '旅游途径地4', '旅游目的地4', 98, 115, '旅游路线介绍4', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, '旅游路线名称5', '1681095245312', 'upload/luxian5.jpg', '旅游出发地5', '旅游途径地5', '旅游目的地5', 389, 432, '旅游路线介绍5', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, '旅游路线名称6', '1681095245303', 'upload/luxian6.jpg', '旅游出发地6', '旅游途径地6', '旅游目的地6', 65, 49, '旅游路线介绍6', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, '旅游路线名称7', '1681095245277', 'upload/luxian7.jpg', '旅游出发地7', '旅游途径地7', '旅游目的地7', 133, 399, '旅游路线介绍7', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, '旅游路线名称8', '1681095245253', 'upload/luxian8.jpg', '旅游出发地8', '旅游途径地8', '旅游目的地8', 331, 174, '旅游路线介绍8', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, '旅游路线名称9', '1681095245257', 'upload/luxian9.jpg', '旅游出发地9', '旅游途径地9', '旅游目的地9', 34, 189, '旅游路线介绍9', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, '旅游路线名称10', '1681095245324', 'upload/luxian10.jpg', '旅游出发地10', '旅游途径地10', '旅游目的地10', 233, 173, '旅游路线介绍10', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, '旅游路线名称11', '1681095245293', 'upload/luxian11.jpg', '旅游出发地11', '旅游途径地11', '旅游目的地11', 398, 425, '旅游路线介绍11', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, '旅游路线名称12', '1681095245286', 'upload/luxian12.jpg', '旅游出发地12', '旅游途径地12', '旅游目的地12', 155, 290, '旅游路线介绍12', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, '旅游路线名称13', '1681095245254', 'upload/luxian13.jpg', '旅游出发地13', '旅游途径地13', '旅游目的地13', 86, 356, '旅游路线介绍13', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, '旅游路线名称14', '1681095245331', 'upload/luxian14.jpg', '旅游出发地14', '旅游途径地14', '旅游目的地14', 274, 11, '旅游路线介绍14', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05');

-- 导出  表 t404.luxian_collection 结构
DROP TABLE IF EXISTS `luxian_collection`;
CREATE TABLE IF NOT EXISTS `luxian_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_id` int DEFAULT NULL COMMENT '旅游路线',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `luxian_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='旅游路线收藏';

-- 正在导出表  t404.luxian_collection 的数据：~16 rows (大约)
DELETE FROM `luxian_collection`;
INSERT INTO `luxian_collection` (`id`, `luxian_id`, `yonghu_id`, `luxian_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 2, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, 3, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 4, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 5, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 6, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 7, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 8, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 9, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 10, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 11, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 12, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 13, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 14, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(16, 13, 1, 1, '2023-04-10 03:18:20', '2023-04-10 03:18:20'),
	(17, 13, 1, 2, '2023-04-10 03:18:59', '2023-04-10 03:18:59');

-- 导出  表 t404.luxian_liuyan 结构
DROP TABLE IF EXISTS `luxian_liuyan`;
CREATE TABLE IF NOT EXISTS `luxian_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_id` int DEFAULT NULL COMMENT '旅游路线',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `luxian_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='旅游路线评论';

-- 正在导出表  t404.luxian_liuyan 的数据：~15 rows (大约)
DELETE FROM `luxian_liuyan`;
INSERT INTO `luxian_liuyan` (`id`, `luxian_id`, `yonghu_id`, `luxian_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2023-04-10 02:54:05', '回复信息1', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 2, 3, '留言内容2', '2023-04-10 02:54:05', '回复信息2', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, 3, 3, '留言内容3', '2023-04-10 02:54:05', '回复信息3', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 4, 3, '留言内容4', '2023-04-10 02:54:05', '回复信息4', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 5, 2, '留言内容5', '2023-04-10 02:54:05', '回复信息5', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 6, 3, '留言内容6', '2023-04-10 02:54:05', '回复信息6', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 7, 3, '留言内容7', '2023-04-10 02:54:05', '回复信息7', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 8, 2, '留言内容8', '2023-04-10 02:54:05', '回复信息8', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 9, 3, '留言内容9', '2023-04-10 02:54:05', '回复信息9', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 10, 3, '留言内容10', '2023-04-10 02:54:05', '回复信息10', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 11, 1, '留言内容11', '2023-04-10 02:54:05', '回复信息11', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 12, 3, '留言内容12', '2023-04-10 02:54:05', '回复信息12', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 13, 2, '留言内容13', '2023-04-10 02:54:05', '回复信息13', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 14, 3, '留言内容14', '2023-04-10 02:54:05', '回复信息14', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(15, 13, 1, '呀呀呀', '2023-04-10 03:19:06', '阿萨德sad', '2023-04-10 03:21:53', '2023-04-10 03:19:06'),
	(16, 14, 1, '66', '2024-09-26 06:35:12', NULL, NULL, '2024-09-26 06:35:12');

-- 导出  表 t404.shangpin 结构
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE IF NOT EXISTS `shangpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_address` varchar(200) DEFAULT NULL COMMENT '商品地点',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `shangpin_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '金额 ',
  `shangpin_clicknum` int DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

-- 正在导出表  t404.shangpin 的数据：~14 rows (大约)
DELETE FROM `shangpin`;
INSERT INTO `shangpin` (`id`, `shangpin_name`, `shangpin_uuid_number`, `shangpin_photo`, `shangpin_address`, `zan_number`, `cai_number`, `shangpin_types`, `shangpin_kucun_number`, `shangpin_new_money`, `shangpin_clicknum`, `shangpin_content`, `shangpin_delete`, `insert_time`, `create_time`) VALUES
	(1, '商品名称1', '1681095245356', 'upload/shangpin1.jpg', '商品地点1', 32, 73, 4, 101, 340.28, 152, '商品介绍1', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, '商品名称2', '1681095245354', 'upload/shangpin2.jpg', '商品地点2', 382, 441, 1, 102, 347.08, 265, '商品介绍2', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, '商品名称3', '1681095245317', 'upload/shangpin3.jpg', '商品地点3', 393, 22, 2, 102, 393.26, 500, '商品介绍3', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, '商品名称4', '1681095245338', 'upload/shangpin4.jpg', '商品地点4', 92, 188, 3, 104, 27.36, 265, '商品介绍4', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, '商品名称5', '1681095245261', 'upload/shangpin5.jpg', '商品地点5', 428, 408, 3, 104, 268.58, 453, '商品介绍5', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, '商品名称6', '1681095245347', 'upload/shangpin6.jpg', '商品地点6', 358, 154, 1, 106, 107.89, 227, '商品介绍6', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, '商品名称7', '1681095245329', 'upload/shangpin7.jpg', '商品地点7', 157, 430, 3, 107, 422.08, 76, '商品介绍7', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, '商品名称8', '1681095245299', 'upload/shangpin8.jpg', '商品地点8', 435, 43, 3, 108, 174.46, 229, '商品介绍8', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, '商品名称9', '1681095245298', 'upload/shangpin9.jpg', '商品地点9', 51, 9, 4, 109, 444.25, 234, '商品介绍9', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, '商品名称10', '1681095245334', 'upload/shangpin10.jpg', '商品地点10', 466, 283, 2, 1010, 120.61, 190, '商品介绍10', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, '商品名称11', '1681095245282', 'upload/shangpin11.jpg', '商品地点11', 371, 494, 3, 1011, 393.05, 263, '商品介绍11', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, '商品名称12', '1681095245284', 'upload/shangpin12.jpg', '商品地点12', 28, 198, 4, 1012, 67.02, 414, '商品介绍12', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, '商品名称13', '1681095245280', 'upload/shangpin13.jpg', '商品地点13', 394, 6, 3, 1013, 275.01, 349, '商品介绍13', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, '商品名称14', '1681095245348', 'upload/shangpin14.jpg', '商品地点14', 459, 114, 1, 1014, 452.48, 452, '商品介绍14', 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05');

-- 导出  表 t404.shangpin_collection 结构
DROP TABLE IF EXISTS `shangpin_collection`;
CREATE TABLE IF NOT EXISTS `shangpin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='商品收藏';

-- 正在导出表  t404.shangpin_collection 的数据：~15 rows (大约)
DELETE FROM `shangpin_collection`;
INSERT INTO `shangpin_collection` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 2, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 4, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 5, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 6, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 7, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 8, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 9, 3, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 10, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 11, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 12, 1, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 13, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 14, 2, 1, '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(15, 3, 1, 2, '2023-04-10 03:19:29', '2023-04-10 03:19:29'),
	(16, 3, 1, 1, '2023-04-10 03:19:33', '2023-04-10 03:19:33');

-- 导出  表 t404.shangpin_commentback 结构
DROP TABLE IF EXISTS `shangpin_commentback`;
CREATE TABLE IF NOT EXISTS `shangpin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

-- 正在导出表  t404.shangpin_commentback 的数据：~15 rows (大约)
DELETE FROM `shangpin_commentback`;
INSERT INTO `shangpin_commentback` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2023-04-10 02:54:05', '回复信息1', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(2, 2, 3, '评价内容2', '2023-04-10 02:54:05', '回复信息2', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(3, 3, 2, '评价内容3', '2023-04-10 02:54:05', '回复信息3', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(4, 4, 3, '评价内容4', '2023-04-10 02:54:05', '回复信息4', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(5, 5, 1, '评价内容5', '2023-04-10 02:54:05', '回复信息5', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(6, 6, 2, '评价内容6', '2023-04-10 02:54:05', '回复信息6', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(7, 7, 2, '评价内容7', '2023-04-10 02:54:05', '回复信息7', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(8, 8, 2, '评价内容8', '2023-04-10 02:54:05', '回复信息8', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(9, 9, 2, '评价内容9', '2023-04-10 02:54:05', '回复信息9', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(10, 10, 1, '评价内容10', '2023-04-10 02:54:05', '回复信息10', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(11, 11, 3, '评价内容11', '2023-04-10 02:54:05', '回复信息11', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(12, 12, 3, '评价内容12', '2023-04-10 02:54:05', '回复信息12', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(13, 13, 2, '评价内容13', '2023-04-10 02:54:05', '回复信息13', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(14, 14, 1, '评价内容14', '2023-04-10 02:54:05', '回复信息14', '2023-04-10 02:54:05', '2023-04-10 02:54:05'),
	(15, 3, 1, '不错', '2023-04-10 03:22:54', '谢谢', '2023-04-10 03:23:21', '2023-04-10 03:22:54');

-- 导出  表 t404.shangpin_order 结构
DROP TABLE IF EXISTS `shangpin_order`;
CREATE TABLE IF NOT EXISTS `shangpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

-- 正在导出表  t404.shangpin_order 的数据：~1 rows (大约)
DELETE FROM `shangpin_order`;
INSERT INTO `shangpin_order` (`id`, `shangpin_order_uuid_number`, `address_id`, `shangpin_id`, `yonghu_id`, `buy_number`, `shangpin_order_true_price`, `shangpin_order_courier_name`, `shangpin_order_courier_number`, `shangpin_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1681096779739', 4, 3, 1, 1, 393.26, '123', '456', 105, '2023-04-10 03:19:40', '2023-04-10 03:19:40'),
	(2, '1727332531644', 14, 5, 1, 1, 268.58, NULL, NULL, 101, '2024-09-26 06:35:32', '2024-09-26 06:35:32');

-- 导出  表 t404.token 结构
DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

-- 正在导出表  t404.token 的数据：~2 rows (大约)
DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', '3imod8a6bgz8ags7nech0m4299sukt32', '2023-04-10 03:02:46', '2024-09-26 07:34:32'),
	(2, 1, 'admin', 'users', '管理员', 'xpw63fc6o6plyo568jcesmm98afky5x5', '2023-04-10 03:06:37', '2024-09-26 07:32:18');

-- 导出  表 t404.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

-- 正在导出表  t404.users 的数据：~1 rows (大约)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-10 02:53:37');

-- 导出  表 t404.yonghu 结构
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
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

-- 正在导出表  t404.yonghu 的数据：~3 rows (大约)
DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `new_money`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, 857.61, '1@qq.com', '2023-04-10 02:54:05'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, 835.83, '2@qq.com', '2023-04-10 02:54:05'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, 313.91, '3@qq.com', '2023-04-10 02:54:05');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
