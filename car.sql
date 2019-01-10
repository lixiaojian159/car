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

 Date: 10/01/2019 17:11:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '叉车名称',
  `cate_id` int(5) NOT NULL COMMENT '叉车分类id',
  `hight` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '高度描述',
  `center` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中心描述',
  `best` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '总体描述(首页置顶)',
  `example` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '案例描述',
  `pics` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `desc1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品特点',
  `desc2` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '技术参数',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `top` int(1) NOT NULL DEFAULT 0 COMMENT '置顶',
  `npx` int(1) NOT NULL DEFAULT 1 COMMENT '排序',
  `create_time` int(13) NOT NULL DEFAULT 0,
  `update_time` int(13) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, '三支点 G系列1.5-2T电动站式三支点平衡重叉车', 3, '标准门架起升高度：3300mm', '载荷中心距：500mm', '三支点 G系列1.5-2T电动站式三支点平衡重叉车(首页置顶显示)', '设计新颖，结构紧凑、外形美观，主要应用于工厂、车站、码头、港口、仓库等场所的物料搬运和堆垛，由于蓄电池叉车具有低噪音、操纵灵活、无污染、无异味等特点，因此特别适用于烟草、纺织、食品、印刷等行业的使用。', '@@@/uploads/20190110\\a17bdb0ecee75eaa3a0d902a84681572.png@@@/uploads/20190110\\c9c60f2152cac017a925f3d8eaefee01.png@@@/uploads/20190110\\9d6324dcb0917f1ef73b5fceedb6d8f6.png', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;安全&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;侧面姿态，操作人员可以获得良好的前后视野；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;操作人员离开驾驶舱或关闭叉车时，车辆自动停车；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;转弯自动减速系统，增加操作安全性；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;可选门架主动稳定系统可根据门架起升高度和负载状态自动调节门架倾斜角度和速度，增加门架堆垛安全性。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;操作舒适&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;靠背和扶手有助于减少驾驶疲劳感；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;多功能集成控制手柄控制符合人体工程学设计，使用便捷；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;所有控制在驾驶位都容易操作，以帮助减少紧张感；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;站驾悬浮底板可减少腿部和背部的压力。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;节能降耗&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;符合传感液压比例系统，按需分配，车辆更节能；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;所有灯具采用&lt;/span&gt;LED&lt;span style=&quot;font-family: 宋体;&quot;&gt;灯，灯光节能&lt;/span&gt;80%&lt;span style=&quot;font-family: 宋体;&quot;&gt;；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;再生电机制动能量回收，制动时能回收更多的车辆势能；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;可调整的速度和加速度设置可以获得符合用户的最大能源效率。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;提升操作者视野&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;造型时尚的大圆弧护顶架，结合栅板的战略角度布置，能提供最大的可视性；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;新设计的宽视野门架，特殊的链条布置，提升了操作者视野。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;可维护性&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;侧边舱门可以打开，便于维护转向电机及变速箱。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;前罩壳和上部罩壳打开，可方便访问车架上的各个系统部件。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;作业效率&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;小的转弯半径使得转向灵活和容易；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;通过&lt;/span&gt;ZAPI&lt;span style=&quot;font-family: 宋体;&quot;&gt;程序控制的交流电机，驱动和升降系统可以实现最大效率；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;电池容量大，单班工作时间长。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;标配电池侧拉滚轮，更换电池方便快捷。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20190110/1547109777.jpg&quot; title=&quot;1547109777.jpg&quot; alt=&quot;0bddd4b4ff754b5c850056764b61a578.jpg&quot; width=&quot;138&quot; height=&quot;156&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;table class=&quot;datalist&quot; width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;th&gt;型号&lt;/th&gt;&lt;th&gt;单位&lt;/th&gt;&lt;th&gt;&lt;p&gt;CPD15&lt;/p&gt;&lt;/th&gt;&lt;th&gt;&lt;p&gt;CPD15&lt;/p&gt;&lt;/th&gt;&lt;th&gt;&lt;p&gt;CPD18&lt;/p&gt;&lt;/th&gt;&lt;th&gt;&lt;p&gt;CPD20&lt;/p&gt;&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;配置号&lt;/td&gt;&lt;td&gt;&lt;br/&gt;&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;SQ-GA2R&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;SQ-GB2R&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;SQ-GA2R&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;SQ-GA2R&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;额定起重量&lt;/td&gt;&lt;td&gt;kg&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1800&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;2000&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;载荷中心距&lt;/td&gt;&lt;td&gt;mm&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;500&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;标准门架起升高度&lt;/td&gt;&lt;td&gt;mm&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;3300&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;3300&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;3300&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;3300&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;全长（不带货叉）&lt;/td&gt;&lt;td&gt;mm&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1720&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1770&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1770&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1835&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;全宽&lt;/td&gt;&lt;td&gt;mm&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1075&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1075&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1075&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1075&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;爬坡能力&lt;/td&gt;&lt;td&gt;%&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;15&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;15&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;15&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;15&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 1, 0, 1, 1547109444, 1547109444);

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate`  (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `pid` int(5) NOT NULL DEFAULT 0 COMMENT '上级id',
  `npx` int(5) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(13) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(13) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES (1, '合力叉车', 0, 0, 1, 1546997924, 1546997924);
INSERT INTO `cate` VALUES (2, '叉车配件', 0, 0, 1, 1546997940, 1546997940);
INSERT INTO `cate` VALUES (3, '蓄电池平衡重式叉车', 1, 13, 1, 1546997984, 1546998598);
INSERT INTO `cate` VALUES (4, '1-10吨内燃叉车', 1, 12, 1, 1546998009, 1546998598);
INSERT INTO `cate` VALUES (5, '12-46吨内燃叉车', 1, 11, 1, 1546998037, 1546998598);
INSERT INTO `cate` VALUES (6, '锂电池叉车', 1, 10, 1, 1546998057, 1546998598);
INSERT INTO `cate` VALUES (7, '电动仓储车辆', 1, 9, 1, 1546998074, 1546998598);
INSERT INTO `cate` VALUES (8, '集装箱空箱堆高机', 1, 8, 1, 1546998093, 1546998598);
INSERT INTO `cate` VALUES (9, '正面吊', 1, 7, 1, 1546998148, 1546998598);
INSERT INTO `cate` VALUES (10, 'CHL品牌', 1, 6, 1, 1546998181, 1546998598);
INSERT INTO `cate` VALUES (11, '牵引车', 1, 5, 1, 1546998200, 1546998598);
INSERT INTO `cate` VALUES (12, '装载机', 1, 4, 1, 1546998212, 1546998598);
INSERT INTO `cate` VALUES (13, '叉车属具', 1, 3, 1, 1546998231, 1546998598);
INSERT INTO `cate` VALUES (14, '防爆叉车', 1, 2, 1, 1546998267, 1546998598);
INSERT INTO `cate` VALUES (15, '特种车辆', 1, 1, 1, 1546998275, 1546998598);
INSERT INTO `cate` VALUES (16, '电器元器件', 2, 11, 1, 1546998362, 1546998598);
INSERT INTO `cate` VALUES (17, '油缸类', 2, 10, 1, 1546998441, 1546998598);
INSERT INTO `cate` VALUES (18, '转向桥类', 2, 9, 1, 1546998456, 1546998598);
INSERT INTO `cate` VALUES (19, '轮辋', 2, 8, 1, 1546998467, 1546998598);
INSERT INTO `cate` VALUES (20, '成型胶管', 2, 7, 1, 1546998479, 1546998598);
INSERT INTO `cate` VALUES (21, '水箱', 2, 6, 1, 1546998492, 1546998598);
INSERT INTO `cate` VALUES (22, '发动机总成', 2, 5, 1, 1546998504, 1546998598);
INSERT INTO `cate` VALUES (23, 'HELI专用油', 2, 4, 1, 1546998517, 1546998598);
INSERT INTO `cate` VALUES (24, '变速箱类', 2, 3, 1, 1546998535, 1546998598);
INSERT INTO `cate` VALUES (25, '油缸修理包', 2, 2, 1, 1546998558, 1546998598);
INSERT INTO `cate` VALUES (26, '轮胎', 2, 1, 1, 1546998571, 1546998598);

-- ----------------------------
-- Table structure for peijian
-- ----------------------------
DROP TABLE IF EXISTS `peijian`;
CREATE TABLE `peijian`  (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配件名称',
  `cate_id` int(5) NOT NULL COMMENT '配件分类id',
  `pic` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配件图片',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `npx` int(5) NOT NULL COMMENT '排序',
  `create_time` int(13) NOT NULL COMMENT '创建时间',
  `update_time` int(13) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of peijian
-- ----------------------------
INSERT INTO `peijian` VALUES (1, '接近开关', 16, '/uploads/20190109\\fad653abac2ab073e86eabb0c3d44d52.jpg', 1, 1, 1547022744, 1547022744);
INSERT INTO `peijian` VALUES (2, '电瓶引线(-)', 16, '/uploads/20190109\\b2e284119829e2177d656ef5b0b1c3c9.jpg', 1, 2, 1547022796, 1547022796);
INSERT INTO `peijian` VALUES (3, '计时表', 16, '/uploads/20190109\\e6d0847b06e187c0956abeb383c7ea9a.jpg', 1, 3, 1547022877, 1547022877);
INSERT INTO `peijian` VALUES (4, '接近开关', 17, '/uploads/20190109\\e08cbc3f4c615616348de24890573cfc.jpg', 1, 1, 1547022932, 1547022932);
INSERT INTO `peijian` VALUES (5, '电瓶引线(-)', 17, '/uploads/20190109\\806e646d701aa135eb2059c6e6ccfb3b.jpg', 1, 2, 1547022971, 1547022971);
INSERT INTO `peijian` VALUES (6, '计时表', 17, '/uploads/20190109\\70b77f26a79aef1edeb5bdea3d99ff6c.jpg', 1, 3, 1547022986, 1547022986);
INSERT INTO `peijian` VALUES (7, '接近开关', 18, '/uploads/20190109\\b141442b14adc394453fc9eac64742b4.jpg', 1, 1, 1547023010, 1547023010);
INSERT INTO `peijian` VALUES (8, '电瓶引线(-)', 17, '/uploads/20190109\\4dbf64a2e5a01c05068e98f09391a003.jpg', 1, 2, 1547023033, 1547023033);
INSERT INTO `peijian` VALUES (9, '计时表', 18, '/uploads/20190109\\0f9752873740f2ffcd7910143ba1b202.jpg', 1, 3, 1547023047, 1547023047);
INSERT INTO `peijian` VALUES (10, '计时表', 18, '/uploads/20190109\\c60b0e78c1de9debd6f89991b531cd1d.jpg', 1, 3, 1547023072, 1547023072);

SET FOREIGN_KEY_CHECKS = 1;
