-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mall
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `mall_ad`
--

DROP TABLE IF EXISTS `mall_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_ad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '广告标题',
  `link` varchar(255) NOT NULL DEFAULT '' COMMENT '所广告的商品页面或者活动页面链接地址',
  `url` varchar(255) NOT NULL COMMENT '广告宣传图片',
  `position` tinyint(3) DEFAULT '1' COMMENT '广告位置：1则是首页',
  `content` varchar(255) DEFAULT '' COMMENT '活动内容',
  `start_time` datetime DEFAULT NULL COMMENT '广告开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '广告结束时间',
  `is_enabled` tinyint(1) DEFAULT '0' COMMENT '是否启动',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
 `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `is_enabled` (`is_enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='广告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_address`
--

DROP TABLE IF EXISTS `mall_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '收货人名称',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `province` varchar(63) NOT NULL COMMENT '行政区域表的省ID',
  `city` varchar(63) NOT NULL COMMENT '行政区域表的市ID',
  `county` varchar(63) NOT NULL COMMENT '行政区域表的区县ID',
  `address_detail` varchar(127) NOT NULL DEFAULT '' COMMENT '详细收货地址',
  `area_code` char(6) DEFAULT NULL COMMENT '地区编码',
  `postal_code` char(6) DEFAULT NULL COMMENT '邮政编码',
  `phone_number` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='收货地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_admin`
--

DROP TABLE IF EXISTS `mall_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(63) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `password` varchar(63) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `last_login_ip` varchar(63) DEFAULT '' COMMENT '最近一次登录IP地址',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近一次登录时间',
  `avatar` varchar(255) DEFAULT '''' COMMENT '头像图片',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  `role_ids` varchar(127) DEFAULT '[]' COMMENT '角色列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_brand`
--

DROP TABLE IF EXISTS `mall_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌商名称',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌商简介',
  `pic_url` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌商页的品牌商图片',
  `sort_order` tinyint(3) DEFAULT '50' COMMENT '品牌排序号',
  `floor_price` decimal(10,2) DEFAULT '0.00' COMMENT '品牌商的商品低价，仅用于页面展示',
  `logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
  `big_pic` varchar(255) DEFAULT NULL COMMENT '专区大图',
  `brand_story` text COMMENT '品牌故事',
  `show_status` int(1) DEFAULT NULL COMMENT '展示状态,0->不展示，1->展示',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88888 DEFAULT CHARSET=utf8mb4 COMMENT='品牌商表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_cart`
--

DROP TABLE IF EXISTS `mall_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户表的用户ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品表的商品ID',
  `goods_sn` char(32) DEFAULT NULL COMMENT '商品编号',
  `goods_name` varchar(127) DEFAULT NULL COMMENT '商品名称',
  `product_id` int(11) DEFAULT NULL COMMENT '商品货品表的货品ID',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '商品货品的价格',
  `number` smallint(5) DEFAULT '0' COMMENT '商品货品的数量',
  `specifications` varchar(1023) DEFAULT NULL COMMENT '商品规格值列表，采用JSON数组格式',
  `checked` tinyint(1) DEFAULT '1' COMMENT '购物车中商品是否选择状态',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '商品图片或者商品货品图片',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='购物车商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_category`
--

DROP TABLE IF EXISTS `mall_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '类目名称',
  `keywords` varchar(1023) NOT NULL DEFAULT '' COMMENT '类目关键字，以JSON数组格式',
  `desc` varchar(255) DEFAULT '' COMMENT '类目广告语介绍',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父类目ID',
  `icon_url` varchar(255) DEFAULT '' COMMENT '类目图标',
  `pic_url` varchar(255) DEFAULT '' COMMENT '类目图片',
  `level` varchar(255) DEFAULT 'L1',
  `sort_order` tinyint(3) DEFAULT '50' COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COMMENT='类目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_collect`
--

DROP TABLE IF EXISTS `mall_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_collect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `value_id` int(11) NOT NULL DEFAULT '0' COMMENT '如果type=0，则是商品ID；如果type=1，则是专题ID',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '收藏类型，如果type=0，则是商品ID；如果type=1，则是专题ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_comment`
--

DROP TABLE IF EXISTS `mall_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '浏览商品ID',
  `value_id` int(11) NOT NULL DEFAULT '0' COMMENT '如果type=0，则是商品评论；如果是type=1，则是专题评论。',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '评论类型，如果type=0，则是商品评论；如果是type=1，则是专题评论；如果type=3，则是订单商品评论。',
  `content` varchar(1023) NOT NULL COMMENT '评论内容',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `user_nickname` varchar(63) NOT NULL DEFAULT '' COMMENT '用户昵称或网络名称',
  `user_icon` varchar(255) DEFAULT NULL COMMENT '评论用户头像',
  `has_picture` tinyint(1) DEFAULT '0' COMMENT '是否含有图片',
  `pic_urls` varchar(1023) DEFAULT NULL COMMENT '图片地址列表，采用JSON数组格式',
  `star` smallint(6) DEFAULT '1' COMMENT '评分， 1-5',
  `member_ip` varchar(64) DEFAULT NULL COMMENT '评价的ip',
  `is_show` tinyint(1) DEFAULT '0' COMMENT '是否展示，0-不展示，1-展示',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `id_value` (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8mb4 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_coupon`
--

DROP TABLE IF EXISTS `mall_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL COMMENT '优惠券名称',
  `desc` varchar(127) DEFAULT '' COMMENT '优惠券介绍，通常是显示优惠券使用限制文字',
  `tag` varchar(63) DEFAULT '' COMMENT '优惠券标签，例如新人专用',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券数量，如果是0，则是无限量',
  `discount` decimal(10,2) DEFAULT '0.00' COMMENT '优惠金额，',
  `min` decimal(10,2) DEFAULT '0.00' COMMENT '最少消费金额才能使用优惠券。',
  `limit` smallint(6) DEFAULT '1' COMMENT '用户领券限制数量，如果是0，则是不限制；默认是1，限领一张.',
  `type` smallint(6) DEFAULT '0' COMMENT '优惠券赠送类型，如果是0则通用券，用户领取；如果是1，则是注册赠券；如果是2，则是优惠券码兑换；',
  `status` smallint(6) DEFAULT '0' COMMENT '优惠券状态，如果是0则是正常可用；如果是1则是过期; 如果是2则是下架。',
  `goods_type` smallint(6) DEFAULT '0' COMMENT '商品限制类型，如果0则全商品，如果是1则是类目限制，如果是2则是商品限制。',
  `goods_value` varchar(1023) DEFAULT '[]' COMMENT '商品限制值，goods_type如果是0则空集合，如果是1则是类目集合，如果是2则是商品集合。',
  `code` varchar(63) DEFAULT NULL COMMENT '优惠券兑换码',
  `time_type` smallint(6) DEFAULT '0' COMMENT '有效时间限制，如果是0，则基于领取时间的有效天数days；如果是1，则start_time和end_time是优惠券有效期；',
  `days` smallint(6) DEFAULT '0' COMMENT '基于领取时间的有效天数days。',
  `start_time` datetime DEFAULT NULL COMMENT '使用券开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '使用券截至时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='优惠券信息及规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_coupon_user`
--

DROP TABLE IF EXISTS `mall_coupon_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_coupon_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `coupon_id` int(11) NOT NULL COMMENT '优惠券ID',
  `status` smallint(6) DEFAULT '0' COMMENT '使用状态, 如果是0则未使用；如果是1则已使用；如果是2则已过期；如果是3则已经下架；',
  `used_time` datetime DEFAULT NULL COMMENT '使用时间',
  `start_time` datetime DEFAULT NULL COMMENT '有效期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '有效期截至时间',
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='优惠券用户使用表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_feedback`
--

DROP TABLE IF EXISTS `mall_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `username` varchar(63) NOT NULL DEFAULT '' COMMENT '用户名称',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `feed_type` varchar(63) NOT NULL DEFAULT '' COMMENT '反馈类型',
  `content` varchar(1023) NOT NULL COMMENT '反馈内容',
  `status` int(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `has_picture` tinyint(1) DEFAULT '0' COMMENT '是否含有图片',
  `pic_urls` varchar(1023) DEFAULT NULL COMMENT '图片地址列表，采用JSON数组格式',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `id_value` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='意见反馈表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_footprint`
--

DROP TABLE IF EXISTS `mall_footprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_footprint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `goods_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '浏览商品ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户浏览足迹表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_goods`
--

DROP TABLE IF EXISTS `mall_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_sn` char(32) NOT NULL DEFAULT '' COMMENT '商品编号',
  `name` varchar(127) NOT NULL DEFAULT '' COMMENT '商品名称',
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_attribute_category_id` bigint(20) DEFAULT NULL,
  `brand_id` int(11) DEFAULT '0' COMMENT '品牌ID',
  `gallery` varchar(2048) DEFAULT NULL COMMENT '商品宣传图片列表，采用JSON数组格式',
  `keywords` varchar(255) DEFAULT '' COMMENT '商品关键字，采用逗号间隔',
  `description` text COMMENT '商品描述',
  `is_on_sale` tinyint(1) DEFAULT '1' COMMENT '是否上架：0->下架；1->上架',
  `sort_order` smallint(4) DEFAULT '100' COMMENT '排序号',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '列表页商品图片',
  `share_url` varchar(255) DEFAULT NULL COMMENT '商品分享朋友圈图片',
  `is_new` tinyint(1) DEFAULT '0' COMMENT '是否新品首发，如果设置则可以在新品首发页面展示:0->不是新品；1->新品',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否人气推荐，如果设置则可以在人气推荐页面展示；0->不推荐；1->推荐',
  `verify_status` tinyint(1) DEFAULT NULL COMMENT '审核状态：0->未审核；1->审核通过',
  `unit` varchar(31) DEFAULT '’件‘' COMMENT '商品单位，例如件、盒',
  `counter_price` decimal(10,2) DEFAULT '0.00' COMMENT '专柜价格',
  `retail_price` decimal(10,2) DEFAULT '100000.00' COMMENT '零售价格',
  `discount_price` decimal(10,2) DEFAULT '0.00' COMMENT '折扣价格',
  `gift_growth` int(11) DEFAULT '0' COMMENT '赠送的成长值',
  `gift_point` int(11) DEFAULT '0' COMMENT '赠送的积分',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '副标题',
  `description` text COMMENT '商品描述',
  `detail` text COMMENT '商品详细介绍，是富文本格式',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除,0->未删除；1->已删除',
  PRIMARY KEY (`id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8mb4 COMMENT='商品基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_goods_product`
--

DROP TABLE IF EXISTS `mall_goods_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_goods_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品表的商品ID',
  `specifications` varchar(1023) NOT NULL COMMENT '商品规格值列表，采用JSON数组格式',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品货品价格',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '商品货品数量',
  `url` varchar(125) DEFAULT NULL COMMENT '商品货品图片',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COMMENT='商品货品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_goods_attribute`
--

DROP TABLE IF EXISTS `mall_goods_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_goods_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_attribute_category_id` bigint(20) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `select_type` int(1) DEFAULT NULL COMMENT '属性选择类型：0->唯一；1->单选；2->多选',
  `input_type` int(1) DEFAULT NULL COMMENT '属性录入方式：0->手工录入；1->从列表中选取',
  `input_list` varchar(255) DEFAULT NULL COMMENT '可选值列表，以逗号隔开',
  `sort` int(11) DEFAULT NULL COMMENT '排序字段：最高的可以单独上传图片',
  `filter_type` int(1) DEFAULT NULL COMMENT '分类筛选样式：1->普通；1->颜色',
  `search_type` int(1) DEFAULT NULL COMMENT '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
  `related_status` int(1) DEFAULT NULL COMMENT '相同属性产品是否关联；0->不关联；1->关联',
  `hand_add_status` int(1) DEFAULT NULL COMMENT '是否支持手动新增；0->不支持；1->支持',
  `type` int(1) DEFAULT NULL COMMENT '属性的类型；0->规格；1->参数',
  PRIMARY KEY (`id`),
  KEY `product_attribute_category_id` (`product_attribute_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=666 DEFAULT CHARSET=utf8mb4 COMMENT='商品参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

-- ----------------------------
-- Table structure for mall_product_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `mall_product_attribute_category`;
CREATE TABLE `mall_product_attribute_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `attribute_count` int(11) DEFAULT '0' COMMENT '属性数量',
  `param_count` int(11) DEFAULT '0' COMMENT '参数数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品属性分类表';

-- ----------------------------
-- Table structure for mall_product_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `mall_product_attribute_value`;
CREATE TABLE `mall_product_attribute_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_attribute_id` bigint(20) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL COMMENT '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8 COMMENT='存储产品参数信息的表';


-- ----------------------------
-- Table structure for mall_product_category
-- ----------------------------
DROP TABLE IF EXISTS `mall_product_category`;
CREATE TABLE `mall_product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上机分类的编号：0表示一级分类',
  `name` varchar(64) DEFAULT NULL,
  `level` int(1) DEFAULT NULL COMMENT '分类级别：0->1级；1->2级',
  `product_count` int(11) DEFAULT NULL,
  `product_unit` varchar(64) DEFAULT NULL,
  `nav_status` int(1) DEFAULT NULL COMMENT '是否显示在导航栏：0->不显示；1->显示',
  `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `sort` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `keywords` varchar(255) DEFAULT NULL,
  `description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='产品分类';


-- ----------------------------
-- Table structure for mall_product_category_attribute_relation
-- ----------------------------
DROP TABLE IF EXISTS `mall_product_category_attribute_relation`;
CREATE TABLE `mall_product_category_attribute_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_attribute_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）';
--
-- Table structure for table `mall_groupon`
--

-- DROP TABLE IF EXISTS `mall_groupon`;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE `mall_groupon` (
--   `id` bigint(20) NOT NULL AUTO_INCREMENT,
--   `order_id` int(11) NOT NULL COMMENT '关联的订单ID',
--   `groupon_id` int(11) DEFAULT '0' COMMENT '参与的团购ID，仅当user_type不是1',
--   `rules_id` int(11) NOT NULL COMMENT '团购规则ID，关联mall_groupon_rules表ID字段',
--   `user_id` int(11) NOT NULL COMMENT '用户ID',
--   `creator_user_id` int(11) NOT NULL COMMENT '创建者ID',
--   `create_time` datetime NOT NULL COMMENT '创建时间',
--   `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
--   `share_url` varchar(255) DEFAULT NULL COMMENT '团购分享图片地址',
--   `payed` tinyint(1) NOT NULL COMMENT '是否已经支付',
--   `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
--   PRIMARY KEY (`id`) USING BTREE
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `mall_groupon_rules`
-- --
--
-- DROP TABLE IF EXISTS `mall_groupon_rules`;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE `mall_groupon_rules` (
--   `id` bigint(20) NOT NULL AUTO_INCREMENT,
--   `goods_id` int(11) NOT NULL COMMENT '商品表的商品ID',
--   `goods_name` varchar(127) NOT NULL COMMENT '商品名称',
--   `pic_url` varchar(255) DEFAULT NULL COMMENT '商品图片或者商品货品图片',
--   `discount` decimal(63,0) NOT NULL COMMENT '优惠金额',
--   `discount_member` int(11) NOT NULL COMMENT '达到优惠条件的人数',
--   `create_time` datetime NOT NULL COMMENT '创建时间',
--   `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
--   `expire_time` datetime DEFAULT NULL COMMENT '团购过期时间',
--   `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
--   PRIMARY KEY (`id`) USING BTREE
-- ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
-- /*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_issue`
--

DROP TABLE IF EXISTS `mall_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_issue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL COMMENT '问题标题',
  `answer` varchar(255) DEFAULT NULL COMMENT '问题答案',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='常见问题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_keyword`
--

DROP TABLE IF EXISTS `mall_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_keyword` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(127) NOT NULL DEFAULT '' COMMENT '关键字',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字的跳转链接',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是热门关键字',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是默认关键字',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='关键字表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_log`
--

DROP TABLE IF EXISTS `mall_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理员',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理员地址',
  `type` int(11) DEFAULT NULL COMMENT '操作分类',
  `action` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作动作',
  `status` tinyint(1) DEFAULT NULL COMMENT '操作状态',
  `result` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作结果，或者成功消息，或者失败消息',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '补充信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_order`
--

DROP TABLE IF EXISTS `mall_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户表的用户ID',
  `order_sn` varchar(63) NOT NULL COMMENT '订单编号',
  `order_status` smallint(6) NOT NULL COMMENT '订单状态，0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `consignee` varchar(63) NOT NULL COMMENT '收货人名称',
  `mobile` varchar(63) NOT NULL COMMENT '收货人手机号',
  `address` varchar(127) NOT NULL COMMENT '收货具体地址',
  `message` varchar(512) NOT NULL DEFAULT '' COMMENT '用户订单留言',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品总费用',
  `freight_price` decimal(10,2) NOT NULL COMMENT '配送费用',
  `coupon_price` decimal(10,2) NOT NULL COMMENT '优惠券减免',
  `integral_price` decimal(10,2) NOT NULL COMMENT '用户积分减免',
  `order_price` decimal(10,2) NOT NULL COMMENT '订单费用， = goods_price + freight_price - coupon_price',
  `actual_price` decimal(10,2) NOT NULL COMMENT '实付费用， = order_price - integral_price',
  `pay_id` varchar(63) DEFAULT NULL COMMENT '微信付款编号',
  `pay_time` datetime DEFAULT NULL COMMENT '微信付款时间',
  `ship_sn` varchar(63) DEFAULT NULL COMMENT '物流编号',
  `ship_channel` varchar(63) DEFAULT NULL COMMENT '发货快递公司',
  `ship_time` datetime NOT NULL COMMENT '发货开始时间',
  `auto_confirm_day` int(11) DEFAULT NULL COMMENT '自动确认时间（天）',
  `confirm_time` datetime DEFAULT NULL COMMENT '用户确认收货时间',
  `comments` smallint(6) DEFAULT '0' COMMENT '待评价订单商品数量',
  `bill_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发票类型：0->不开发票；1->电子发票；2->纸质发票',
  `bill_header` varchar(255) DEFAULT NULL COMMENT '发票抬头',
  `bill_content` varchar(255) DEFAULT NULL COMMENT '发票内容',
  `bill_receiver_phone` varchar(32) DEFAULT NULL COMMENT '收票人电话',
  `bill_receiver_email` varchar(64) DEFAULT NULL COMMENT '收票人邮箱',
  `end_time` datetime DEFAULT NULL COMMENT '订单关闭时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_order_goods`
--

DROP TABLE IF EXISTS `mall_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_order_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单表的订单ID',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品表的商品ID',
  `goods_name` varchar(127) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_sn` char(32) NOT NULL DEFAULT '' COMMENT '商品编号',
  `product_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品货品表的货品ID',
  `number` smallint(5) NOT NULL DEFAULT '0' COMMENT '商品货品的购买数量',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品货品的售价',
  `specifications` varchar(1023) NOT NULL COMMENT '商品货品的规格列表',
  `pic_url` varchar(255) NOT NULL DEFAULT '' COMMENT '商品货品图片或者商品图片',
  `comment` int(11) DEFAULT '0' COMMENT '订单商品评论，如果是-1，则超期不能评价；如果是0，则可以评价；如果其他值，则是comment表里面的评论ID。',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

-- ----------------------------
-- Table structure for oms_order_operate_history
-- ----------------------------
DROP TABLE IF EXISTS `mall_order_operate_log`;
CREATE TABLE `mall_order_operate_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `operate_id` bigint(20) DEFAULT NULL COMMENT '操作人id',
  `operate_type` tinyint(2) DEFAULT NULL COMMENT '操作人类型，10->用户，20->管理员',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  `order_status` int(1) DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='订单操作历史记录';

-- ----------------------------
-- Table structure for oms_order_return_apply
-- ----------------------------
DROP TABLE IF EXISTS `mall_order_return_apply`;
CREATE TABLE `mall_order_return_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `company_address_id` bigint(20) DEFAULT NULL COMMENT '收货地址表id',
  `product_id` bigint(20) DEFAULT NULL COMMENT '退货商品id',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '申请时间',
  `username` varchar(64) DEFAULT NULL COMMENT '会员用户名',
  `return_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `return_name` varchar(100) DEFAULT NULL COMMENT '退货人姓名',
  `return_phone` varchar(100) DEFAULT NULL COMMENT '退货人电话',
  `status` int(1) DEFAULT NULL COMMENT '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
  `handle_time` datetime DEFAULT NULL COMMENT '处理时间',
  `product_pic` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `product_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `product_brand` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性：颜色：红色；尺码：xl;',
  `product_count` int(11) DEFAULT NULL COMMENT '退货数量',
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '商品单价',
  `product_real_price` decimal(10,2) DEFAULT NULL COMMENT '商品实际支付单价',
  `reason` varchar(200) DEFAULT NULL COMMENT '原因',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `proof_pics` varchar(1000) DEFAULT NULL COMMENT '凭证图片，以逗号隔开',
  `handle_note` varchar(500) DEFAULT NULL COMMENT '处理备注',
  `handle_man` varchar(100) DEFAULT NULL COMMENT '处理人员',
  `receive_man` varchar(100) DEFAULT NULL COMMENT '收货人',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `receive_note` varchar(500) DEFAULT NULL COMMENT '收货备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='订单退货申请';

-- ----------------------------
-- Table structure for oms_order_setting
-- ----------------------------
DROP TABLE IF EXISTS `mall_order_setting`;
CREATE TABLE `mall_order_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flash_order_overtime` int(11) DEFAULT NULL COMMENT '秒杀订单超时关闭时间(分)',
  `normal_order_overtime` int(11) DEFAULT NULL COMMENT '正常订单超时时间(分)',
  `confirm_overtime` int(11) DEFAULT NULL COMMENT '发货后自动确认收货时间（天）',
  `finish_overtime` int(11) DEFAULT NULL COMMENT '自动完成交易时间，不能申请售后（天）',
  `comment_overtime` int(11) DEFAULT NULL COMMENT '订单完成后自动好评时间（天）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单设置表';


--
-- Table structure for table `mall_permission`
--

DROP TABLE IF EXISTS `mall_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `permission` varchar(63) DEFAULT NULL COMMENT '权限',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_region`
--

DROP TABLE IF EXISTS `mall_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_region` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '行政区域父ID，例如区县的pid指向市，市的pid指向省，省的pid则是0',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '行政区域名称',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '行政区域类型，如如1则是省， 如果是2则是市，如果是3则是区县',
  `code` int(11) NOT NULL DEFAULT '0' COMMENT '行政区域编码',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`pid`),
  KEY `region_type` (`type`),
  KEY `agency_id` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3232 DEFAULT CHARSET=utf8mb4 COMMENT='行政区域表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_role`
--

DROP TABLE IF EXISTS `mall_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL COMMENT '角色名称',
  `desc` varchar(1023) DEFAULT NULL COMMENT '角色描述',
  `is_enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_search_history`
--

DROP TABLE IF EXISTS `mall_search_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_search_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户表的用户ID',
  `keyword` varchar(63) NOT NULL COMMENT '搜索关键字',
  `from` varchar(63) NOT NULL DEFAULT '' COMMENT '搜索来源，如pc、wx、app',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='搜索历史表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_storage`
--

DROP TABLE IF EXISTS `mall_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_storage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(63) NOT NULL COMMENT '文件的唯一索引',
  `name` varchar(255) NOT NULL COMMENT '文件名',
  `type` varchar(20) NOT NULL COMMENT '文件类型',
  `size` int(11) NOT NULL COMMENT '文件大小',
  `url` varchar(255) DEFAULT NULL COMMENT '文件访问链接',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文件存储表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_system`
--

DROP TABLE IF EXISTS `mall_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_system` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_name` varchar(255) NOT NULL COMMENT '系统配置名',
  `key_value` varchar(255) NOT NULL COMMENT '系统配置值',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_topic`
--

DROP TABLE IF EXISTS `mall_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''' COMMENT '专题标题',
  `subtitle` varchar(255) DEFAULT '''' COMMENT '专题子标题',
  `content` text COMMENT '专题内容，富文本格式',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '专题相关商品最低价',
  `read_count` varchar(255) DEFAULT '1k' COMMENT '专题阅读量',
  `pic_url` varchar(255) DEFAULT '' COMMENT '专题图片',
  `sort_order` int(11) DEFAULT '100' COMMENT '排序',
  `goods` varchar(1023) DEFAULT '' COMMENT '专题相关商品，采用JSON数组格式',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `topic_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8mb4 COMMENT='专题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_user`
--

DROP TABLE IF EXISTS `mall_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(63) NOT NULL COMMENT '用户名称',
  `password` varchar(63) NOT NULL DEFAULT '' COMMENT '用户密码',
  `nickname` varchar(63) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `gender` tinyint(3) NOT NULL DEFAULT '0' COMMENT '性别：0 未知， 1男， 2 女',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号码',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近一次登录时间',
  `last_login_ip` varchar(63) NOT NULL DEFAULT '' COMMENT '最近一次登录IP地址',
  `user_level` tinyint(3) DEFAULT '0' COMMENT '0 普通用户，1 VIP用户，2 高级VIP用户',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像图片',
  `wx_openid` varchar(63) NOT NULL DEFAULT '' COMMENT '微信登录openid',
  `session_key` varchar(100) NOT NULL DEFAULT '' COMMENT '微信登录会话KEY',
  `source_type` int(1) DEFAULT NULL COMMENT '用户来源',
  `integration` int(11) DEFAULT NULL COMMENT '积分',
  `growth` int(11) DEFAULT NULL COMMENT '成长值',
  `history_integration` int(11) DEFAULT NULL COMMENT '历史积分数量',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0 可用, 1 禁用, 2 注销',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`)
  UNIQUE KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_user_formid`
--

DROP TABLE IF EXISTS `mall_user_formid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_user_formid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `formId` varchar(63) NOT NULL COMMENT '缓存的FormId',
  `isprepay` tinyint(1) NOT NULL COMMENT '是FormId还是prepayId',
  `useAmount` int(2) NOT NULL COMMENT '可用次数，fromId为1，prepay为3，用1次减1',
  `expire_time` datetime NOT NULL COMMENT '过期时间，腾讯规定为7天',
  `openId` varchar(63) NOT NULL COMMENT '微信登录openid',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(3) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS `mall_order_operate_log`;
CREATE TABLE `mall_order_operate_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` char(32) DEFAULT NULL COMMENT '订单id',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人：用户；系统；后台管理员',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  `order_status` int(1) DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='订单操作历史记录';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-10 16:59:09
-- ----------------------------
-- Table structure for ums_member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `mall_user_login_log`;
CREATE TABLE `ums_member_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `login_type` int(1) DEFAULT NULL COMMENT '登录类型：0->PC；1->android;2->ios;3->小程序',
  `province` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员登录记录';
