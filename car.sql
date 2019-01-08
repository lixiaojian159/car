/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : 127.0.0.1:3306
 Source Schema         : car

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 08/01/2019 17:25:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate`  (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `pid` int(5) NOT NULL DEFAULT 0 COMMENT '上级id',
  `npx` int(5) NOT NULL DEFAULT 0 COMMENT '排序',
  `static` int(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(13) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(13) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES (1, '合力叉车', 0, 0, 1, 1546928517, 1546928517);
INSERT INTO `cate` VALUES (2, '合力配件', 0, 0, 1, 1546928535, 1546928535);
INSERT INTO `cate` VALUES (3, '蓄电池平衡重式叉车', 1, 24, 1, 0, 0);
INSERT INTO `cate` VALUES (4, '电器元器件', 2, 1, 1, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
