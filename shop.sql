/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3308
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 28/03/2022 13:40:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1646884023282 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2021-03-13 12:50:22', 1, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2021-03-13 12:50:22', 2, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2021-03-13 12:50:22', 3, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2021-03-13 12:50:22', 4, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2021-03-13 12:50:22', 5, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2021-03-13 12:50:22', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (1615613063515, '2021-03-13 13:24:22', 1615613021987, '广东省梅州市梅江区江南街道白马三巷作新小学', '陈一', '12312312345', '是');
INSERT INTO `address` VALUES (1646884023281, '2022-03-10 11:47:02', 11, '河北省邯郸市丛台区中华街道丛台酒业(人民东路)丛台大酒店', '666', '15176086060', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1648445399600 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int(11) NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1640939309890 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线客服' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (51, '2021-03-13 12:50:22', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (52, '2021-03-13 12:50:22', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (53, '2021-03-13 12:50:22', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (54, '2021-03-13 12:50:22', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (55, '2021-03-13 12:50:22', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (56, '2021-03-13 12:50:22', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (1615613133770, '2021-03-13 13:25:32', 1615613021987, NULL, '66666', NULL, 0);
INSERT INTO `chat` VALUES (1615613175542, '2021-03-13 13:26:15', 1615613021987, 1, NULL, '有的，可按品类查看', 0);
INSERT INTO `chat` VALUES (1640939309889, '2021-12-31 16:28:29', 1615613021987, NULL, '1111', NULL, 1);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springboot7z60r/upload/banner1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springboot7z60r/upload/banner2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springboot7z60r/upload/banner3.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for dingdanpingjia
-- ----------------------------
DROP TABLE IF EXISTS `dingdanpingjia`;
CREATE TABLE `dingdanpingjia`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `pingfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评价内容',
  `pingjiariqi` date NULL DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单评价' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dingdanpingjia
-- ----------------------------

-- ----------------------------
-- Table structure for discussshangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE `discussshangpinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discussshangpinxinxi
-- ----------------------------
INSERT INTO `discussshangpinxinxi` VALUES (111, '2021-03-13 12:50:22', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussshangpinxinxi` VALUES (112, '2021-03-13 12:50:22', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussshangpinxinxi` VALUES (113, '2021-03-13 12:50:22', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussshangpinxinxi` VALUES (114, '2021-03-13 12:50:22', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussshangpinxinxi` VALUES (115, '2021-03-13 12:50:22', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussshangpinxinxi` VALUES (116, '2021-03-13 12:50:22', 6, 6, '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615612973190 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品资讯' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (101, '2021-03-13 12:50:22', '标题1', '简介1', 'http://localhost:8080/springboot7z60r/upload/1.png', '<p>内容1</p>');
INSERT INTO `news` VALUES (102, '2021-03-13 12:50:22', '标题2', '简介2', 'http://localhost:8080/springboot7z60r/upload/2.png', '<p>内容2</p>');
INSERT INTO `news` VALUES (103, '2021-03-13 12:50:22', '标题3', '简介3', 'http://localhost:8080/springboot7z60r/upload/3.png', '<p>内容3</p>');
INSERT INTO `news` VALUES (104, '2021-03-13 12:50:22', '标题4', '简介4', 'http://localhost:8080/springboot7z60r/upload/4.png', '<p>内容4</p>');
INSERT INTO `news` VALUES (105, '2021-03-13 12:50:22', '标题5', '简介5', 'http://localhost:8080/springboot7z60r/upload/5.png', '<p>内容5</p>');
INSERT INTO `news` VALUES (106, '2021-03-13 12:50:22', '标题6', '简介6', 'http://localhost:8080/springboot7z60r/upload/6.png', '<p>内容6</p>');
INSERT INTO `news` VALUES (1615612973189, '2021-03-13 13:22:52', '商品优惠资讯', '优惠', 'http://localhost:8080/springboot7z60r/upload/7.png', '<p>商品优惠资讯</p><p>活动时间：6.17-6.20</p><p><img src=\"http://localhost:8080/springboot7z60r/upload/1615612971335.jpg\"></p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格/积分',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格/总积分',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int(11) NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1648445432003 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1646884031974, '2022-03-10 11:47:11', '202231011471131834354', 'shangpinxinxi', 11, 33, '商品名称3', 'http://localhost:8080/springboot7z60r/upload/3.png', 1, 99.9, 99.9, 99.9, 99.9, 1, '已发货', '河北省邯郸市丛台区中华街道丛台酒业(人民东路)丛台大酒店');
INSERT INTO `orders` VALUES (1648445413265, '2022-03-28 13:30:13', '202232813301318374463', 'shangpinxinxi', 11, 32, '商品名称2', 'http://localhost:8080/springboot7z60r/upload/2.png', 1, 99.9, 99.9, 99.9, 99.9, 1, '未支付', '河北省邯郸市丛台区中华街道丛台酒业(人民东路)丛台大酒店');
INSERT INTO `orders` VALUES (1648445432002, '2022-03-28 13:30:31', '202232813303190971180', 'shangpinxinxi', 11, 32, '商品名称2', 'http://localhost:8080/springboot7z60r/upload/2.png', 1, 99.9, 99.9, 99.9, 99.9, 1, '已发货', '河北省邯郸市丛台区中华街道丛台酒业(人民东路)丛台大酒店');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangpinfenlei`(`shangpinfenlei`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (21, '2021-03-13 12:50:22', '商品分类1');
INSERT INTO `shangpinfenlei` VALUES (22, '2021-03-13 12:50:22', '商品分类2');
INSERT INTO `shangpinfenlei` VALUES (23, '2021-03-13 12:50:22', '商品分类3');
INSERT INTO `shangpinfenlei` VALUES (24, '2021-03-13 12:50:22', '商品分类4');

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品详情',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES (31, '2021-03-13 12:50:22', '商品名称1', '商品分类1', 'http://localhost:8080/springboot7z60r/upload/1.png', '品牌1', '规格1', '<p>商品详情1</p>', '2022-03-28 12:08:32', 21, 99.9);
INSERT INTO `shangpinxinxi` VALUES (32, '2021-03-13 12:50:22', '商品名称2', '商品分类1', 'http://localhost:8080/springboot7z60r/upload/2.png', '品牌2', '规格2', '<p>商品详情2</p>', '2022-03-28 13:30:31', 53, 99.9);
INSERT INTO `shangpinxinxi` VALUES (33, '2021-03-13 12:50:22', '商品名称3', '商品分类2', 'http://localhost:8080/springboot7z60r/upload/3.png', '品牌3', '规格3', '<p>商品详情3</p>', '2022-03-10 11:47:11', 35, 99.9);
INSERT INTO `shangpinxinxi` VALUES (34, '2021-03-13 12:50:22', '商品名称4', '商品分类3', 'http://localhost:8080/springboot7z60r/upload/4.png', '品牌4', '规格4', '<p>商品详情4</p>', '2021-11-07 11:20:36', 9, 99.9);
INSERT INTO `shangpinxinxi` VALUES (35, '2021-03-13 12:50:22', '商品名称5', '商品分类2', 'http://localhost:8080/springboot7z60r/upload/5.png', '品牌5', '规格5', '<p>商品详情5</p>', '2021-11-04 23:42:30', 18, 99.9);
INSERT INTO `shangpinxinxi` VALUES (36, '2021-03-13 12:50:22', '商品名称6', '商品分类3', 'http://localhost:8080/springboot7z60r/upload/6.png', '品牌6', '规格6', '<p>商品详情6</p>', '2021-03-13 13:17:26', 7, 99.9);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1640939940578 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1640939940577, '2021-12-31 16:39:00', 1615613021987, 33, 'shangpinxinxi', '商品名称3', 'http://localhost:8080/springboot7z60r/upload/3.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'jmtqx9h3r7znmqwi516mojnicx5233b6', '2021-03-13 13:15:02', '2022-03-28 14:35:25');
INSERT INTO `token` VALUES (2, 1615613021987, '1', 'yonghu', '用户', 'u3u9hqbzekhcgh0g9kxw9ufmj8q48ubs', '2021-03-13 13:23:47', '2022-03-10 12:50:44');
INSERT INTO `token` VALUES (3, 11, '用户1', 'yonghu', '用户', 'ldn0b05r088v86p84etswsh5vx9kb2vk', '2021-11-02 23:14:02', '2022-03-28 14:36:57');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2021-03-13 12:50:22');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615613021988 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2021-03-13 12:50:22', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/springboot7z60r/upload/yonghu_touxiang1.jpg', '13823888881', 9900.2);
INSERT INTO `yonghu` VALUES (12, '2021-03-13 12:50:22', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/springboot7z60r/upload/yonghu_touxiang2.jpg', '13823888882', 100);
INSERT INTO `yonghu` VALUES (13, '2021-03-13 12:50:22', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/springboot7z60r/upload/yonghu_touxiang3.jpg', '13823888883', 100);
INSERT INTO `yonghu` VALUES (14, '2021-03-13 12:50:22', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/springboot7z60r/upload/yonghu_touxiang4.jpg', '13823888884', 100);
INSERT INTO `yonghu` VALUES (15, '2021-03-13 12:50:22', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/springboot7z60r/upload/yonghu_touxiang5.jpg', '13823888885', 100);
INSERT INTO `yonghu` VALUES (16, '2021-03-13 12:50:22', '用户6', '123456', '姓名6', '男', 'http://localhost:8080/springboot7z60r/upload/yonghu_touxiang6.jpg', '13823888886', 100);
INSERT INTO `yonghu` VALUES (1615613021987, '2021-03-13 13:23:41', '1', '1', '陈一', '女', 'http://localhost:8080/springboot7z60r/upload/1615613038265.jpg', '12312312345', 9502.5);

SET FOREIGN_KEY_CHECKS = 1;
