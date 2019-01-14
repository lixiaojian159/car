-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-01-14 10:29:27
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `car`
--

-- --------------------------------------------------------

--
-- 表的结构 `about`
--

CREATE TABLE `about` (
  `id` int(5) UNSIGNED NOT NULL COMMENT '主键',
  `title` varchar(50) NOT NULL COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '类型  1.实力合力 0. 公司简介和品牌理念'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `type`) VALUES
(1, '公司简介', '&lt;p&gt;&lt;strong&gt;公司简介内容dsvsdvdrfhtrhdfssgbv&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;sdvss&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;', 0),
(2, '品牌理念', '&lt;p&gt;&lt;em&gt;品牌理念内容sfcsacfsdsc&lt;/em&gt;&lt;/p&gt;', 0),
(3, '叉车租赁', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;叉车租赁&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;', 0),
(4, '百度地图', '&lt;p&gt;&lt;em&gt;百度地图&lt;/em&gt;&lt;/p&gt;', 0),
(7, 'j76ui', '/uploads/20190114\\ac912b877ceec2706802893624d1fdfa.png', 1);

-- --------------------------------------------------------

--
-- 表的结构 `car`
--

CREATE TABLE `car` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '主键',
  `name` varchar(30) NOT NULL COMMENT '叉车名称',
  `cate_id` int(5) NOT NULL COMMENT '叉车分类id',
  `hight` varchar(200) NOT NULL COMMENT '高度描述',
  `center` varchar(200) NOT NULL COMMENT '中心描述',
  `best` varchar(200) NOT NULL COMMENT '总体描述(首页置顶)',
  `example` text NOT NULL COMMENT '案例描述',
  `pics` text NOT NULL COMMENT '图片',
  `desc1` text NOT NULL COMMENT '产品特点',
  `desc2` text NOT NULL COMMENT '技术参数',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `top` int(1) NOT NULL DEFAULT '0' COMMENT '置顶',
  `npx` int(1) NOT NULL DEFAULT '1' COMMENT '排序',
  `create_time` int(13) NOT NULL DEFAULT '0',
  `update_time` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `car`
--

INSERT INTO `car` (`id`, `name`, `cate_id`, `hight`, `center`, `best`, `example`, `pics`, `desc1`, `desc2`, `status`, `top`, `npx`, `create_time`, `update_time`) VALUES
(1, '三支点 G系列1.5-2T电动站式三支点平衡重叉车', 3, '标准门架起升高度：3300mm', '载荷中心距：500mm', '三支点 G系列1.5-2T电动站式三支点平衡重叉车', '设计新颖，结构紧凑、外形美观，主要应用于工厂、车站、码头、港口、仓库等场所的物料搬运和堆垛，由于蓄电池叉车具有低噪音、操纵灵活、无污染、无异味等特点，因此特别适用于烟草、纺织、食品、印刷等行业的使用。', '@@@/uploads/20190111\\390ec1e1adbe80367ca793290b20c446.png@@@/uploads/20190111\\390ec1e1adbe80367ca793290b20c446.png@@@/uploads/20190111\\efc758a1f6569f4a56cacbb4ebe9212a.png', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;安全&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;侧面姿态，操作人员可以获得良好的前后视野；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;操作人员离开驾驶舱或关闭叉车时，车辆自动停车；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;转弯自动减速系统，增加操作安全性；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;可选门架主动稳定系统可根据门架起升高度和负载状态自动调节门架倾斜角度和速度，增加门架堆垛安全性。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;操作舒适&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;靠背和扶手有助于减少驾驶疲劳感；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;多功能集成控制手柄控制符合人体工程学设计，使用便捷；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;所有控制在驾驶位都容易操作，以帮助减少紧张感；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;站驾悬浮底板可减少腿部和背部的压力。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;节能降耗&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;符合传感液压比例系统，按需分配，车辆更节能；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;所有灯具采用&lt;/span&gt;LED&lt;span style=&quot;font-family: 宋体;&quot;&gt;灯，灯光节能&lt;/span&gt;80%&lt;span style=&quot;font-family: 宋体;&quot;&gt;；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;再生电机制动能量回收，制动时能回收更多的车辆势能；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;可调整的速度和加速度设置可以获得符合用户的最大能源效率。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;提升操作者视野&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;造型时尚的大圆弧护顶架，结合栅板的战略角度布置，能提供最大的可视性；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;新设计的宽视野门架，特殊的链条布置，提升了操作者视野。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;可维护性&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;侧边舱门可以打开，便于维护转向电机及变速箱。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;前罩壳和上部罩壳打开，可方便访问车架上的各个系统部件。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;作业效率&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;小的转弯半径使得转向灵活和容易；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;通过&lt;/span&gt;ZAPI&lt;span style=&quot;font-family: 宋体;&quot;&gt;程序控制的交流电机，驱动和升降系统可以实现最大效率；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;电池容量大，单班工作时间长。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; margin-left: 28px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;标配电池侧拉滚轮，更换电池方便快捷。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '&lt;table class=&quot;datalist&quot; width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;th&gt;型号&lt;/th&gt;&lt;th&gt;单位&lt;/th&gt;&lt;th&gt;&lt;p&gt;CPD15&lt;/p&gt;&lt;/th&gt;&lt;th&gt;&lt;p&gt;CPD15&lt;/p&gt;&lt;/th&gt;&lt;th&gt;&lt;p&gt;CPD18&lt;/p&gt;&lt;/th&gt;&lt;th&gt;&lt;p&gt;CPD20&lt;/p&gt;&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;配置号&lt;/td&gt;&lt;td&gt;&lt;br/&gt;&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;SQ-GA2R&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;SQ-GB2R&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;SQ-GA2R&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;SQ-GA2R&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;额定起重量&lt;/td&gt;&lt;td&gt;kg&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1800&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;2000&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;载荷中心距&lt;/td&gt;&lt;td&gt;mm&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;500&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;500&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;标准门架起升高度&lt;/td&gt;&lt;td&gt;mm&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;3300&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;3300&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;3300&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;3300&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;全长（不带货叉）&lt;/td&gt;&lt;td&gt;mm&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1720&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1770&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1770&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1835&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;全宽&lt;/td&gt;&lt;td&gt;mm&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1075&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1075&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1075&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;1075&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;爬坡能力&lt;/td&gt;&lt;td&gt;%&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;15&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;15&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;15&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;15&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 1, 0, 1, 1547194764, 1547194764);

-- --------------------------------------------------------

--
-- 表的结构 `cate`
--

CREATE TABLE `cate` (
  `id` int(5) UNSIGNED NOT NULL COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '上级id',
  `npx` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(13) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(13) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cate`
--

INSERT INTO `cate` (`id`, `name`, `pid`, `npx`, `status`, `create_time`, `update_time`) VALUES
(1, '合力叉车', 0, 0, 1, 1546997924, 1546997924),
(2, '叉车配件', 0, 0, 1, 1546997940, 1546997940),
(3, '蓄电池平衡重式叉车', 1, 13, 1, 1546997984, 1546998598),
(4, '1-10吨内燃叉车', 1, 12, 1, 1546998009, 1546998598),
(5, '12-46吨内燃叉车', 1, 11, 1, 1546998037, 1546998598),
(6, '锂电池叉车', 1, 10, 1, 1546998057, 1546998598),
(7, '电动仓储车辆', 1, 9, 1, 1546998074, 1546998598),
(8, '集装箱空箱堆高机', 1, 8, 1, 1546998093, 1546998598),
(9, '正面吊', 1, 7, 1, 1546998148, 1546998598),
(10, 'CHL品牌', 1, 6, 1, 1546998181, 1546998598),
(11, '牵引车', 1, 5, 1, 1546998200, 1546998598),
(12, '装载机', 1, 4, 1, 1546998212, 1546998598),
(13, '叉车属具', 1, 3, 1, 1546998231, 1546998598),
(14, '防爆叉车', 1, 2, 1, 1546998267, 1546998598),
(15, '特种车辆', 1, 1, 1, 1546998275, 1546998598),
(16, '电器元器件', 2, 11, 1, 1546998362, 1546998598),
(17, '油缸类', 2, 10, 1, 1546998441, 1546998598),
(18, '转向桥类', 2, 9, 1, 1546998456, 1546998598),
(19, '轮辋', 2, 8, 1, 1546998467, 1546998598),
(20, '成型胶管', 2, 7, 1, 1546998479, 1546998598),
(21, '水箱', 2, 6, 1, 1546998492, 1546998598),
(22, '发动机总成', 2, 5, 1, 1546998504, 1546998598),
(23, 'HELI专用油', 2, 4, 1, 1546998517, 1546998598),
(24, '变速箱类', 2, 3, 1, 1546998535, 1546998598),
(25, '油缸修理包', 2, 2, 1, 1546998558, 1546998598),
(26, '轮胎', 2, 1, 1, 1546998571, 1546998598);

-- --------------------------------------------------------

--
-- 表的结构 `movie`
--

CREATE TABLE `movie` (
  `id` int(5) UNSIGNED NOT NULL COMMENT '主键',
  `title` varchar(100) NOT NULL COMMENT '视频标题',
  `src` text NOT NULL COMMENT '视频地址',
  `pic` text NOT NULL COMMENT '图片',
  `npx` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(13) NOT NULL COMMENT '创建时间',
  `update_time` int(13) NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `movie`
--

INSERT INTO `movie` (`id`, `title`, `src`, `pic`, `npx`, `status`, `create_time`, `update_time`) VALUES
(4, '认同和认同', 'http://www.helichina.com/upload/file/heliAGV.mp4', '/uploads/20190111\\f2d48b9fd3559129732acabe8f955a41.jpg', 4, 1, 1547186710, 1547192803),
(6, '突然很突然后', 'http://www.helichina.com/upload/file/zghlgf.mp4', '/uploads/20190111\\c17f7d5b572d219cde2f2dc0c30418dc.jpg', 6, 1, 1547188352, 1547192803),
(7, '大哥哥', 'http://www.helichina.com/upload/file/heliAGV.mp4', '/uploads/20190111\\7b8643928d36755ed8b909c9f34e8b08.jpg', 7, 1, 1547188382, 1547192803),
(8, '特好特突然很怀念', 'http://www.helichina.com/upload/file/zghlgf.mp4', '/uploads/20190111\\70413f2311177316d8d1718a7cc3362f.jpg', 1, 1, 1547188520, 1547192803);

-- --------------------------------------------------------

--
-- 表的结构 `peijian`
--

CREATE TABLE `peijian` (
  `id` int(5) UNSIGNED NOT NULL COMMENT '主键',
  `name` varchar(30) NOT NULL COMMENT '配件名称',
  `cate_id` int(5) NOT NULL COMMENT '配件分类id',
  `pic` text NOT NULL COMMENT '配件图片',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `npx` int(5) NOT NULL COMMENT '排序',
  `create_time` int(13) NOT NULL COMMENT '创建时间',
  `update_time` int(13) NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `peijian`
--

INSERT INTO `peijian` (`id`, `name`, `cate_id`, `pic`, `status`, `npx`, `create_time`, `update_time`) VALUES
(1, '接近开关', 16, '/uploads/20190109\\fad653abac2ab073e86eabb0c3d44d52.jpg', 1, 1, 1547022744, 1547022744),
(2, '电瓶引线(-)', 16, '/uploads/20190109\\b2e284119829e2177d656ef5b0b1c3c9.jpg', 1, 2, 1547022796, 1547022796),
(3, '计时表', 16, '/uploads/20190109\\e6d0847b06e187c0956abeb383c7ea9a.jpg', 1, 3, 1547022877, 1547022877),
(4, '接近开关', 17, '/uploads/20190109\\e08cbc3f4c615616348de24890573cfc.jpg', 1, 1, 1547022932, 1547022932),
(5, '电瓶引线(-)', 17, '/uploads/20190109\\806e646d701aa135eb2059c6e6ccfb3b.jpg', 1, 2, 1547022971, 1547022971),
(6, '计时表', 17, '/uploads/20190109\\70b77f26a79aef1edeb5bdea3d99ff6c.jpg', 1, 3, 1547022986, 1547022986),
(7, '接近开关', 18, '/uploads/20190109\\b141442b14adc394453fc9eac64742b4.jpg', 1, 1, 1547023010, 1547023010),
(8, '电瓶引线(-)', 17, '/uploads/20190109\\4dbf64a2e5a01c05068e98f09391a003.jpg', 1, 2, 1547023033, 1547023033),
(9, '计时表', 18, '/uploads/20190109\\0f9752873740f2ffcd7910143ba1b202.jpg', 1, 3, 1547023047, 1547023047),
(10, '计时表', 18, '/uploads/20190109\\c60b0e78c1de9debd6f89991b531cd1d.jpg', 1, 3, 1547023072, 1547023072);

-- --------------------------------------------------------

--
-- 表的结构 `unslider`
--

CREATE TABLE `unslider` (
  `id` int(5) UNSIGNED NOT NULL COMMENT '主键',
  `pic` text NOT NULL COMMENT '图片地址',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `npx` int(5) NOT NULL DEFAULT '1' COMMENT '排序',
  `create_time` int(13) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(13) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `web`
--

CREATE TABLE `web` (
  `id` int(5) UNSIGNED NOT NULL COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '网站名称',
  `keywords` varchar(200) NOT NULL COMMENT '网站关键词',
  `descs` varchar(255) NOT NULL COMMENT '网站描述',
  `username` varchar(30) NOT NULL COMMENT '网站联系人',
  `address` text NOT NULL COMMENT '公司地址',
  `email` varchar(255) NOT NULL COMMENT '公司邮箱',
  `tel` varchar(20) NOT NULL COMMENT '联系人电话',
  `qq` varchar(30) NOT NULL COMMENT 'qq号',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '网站状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `web`
--

INSERT INTO `web` (`id`, `name`, `keywords`, `descs`, `username`, `address`, `email`, `tel`, `qq`, `status`) VALUES
(1, '网站名称', '网站关键词', '网站描述', '联系人', '公司地址', '公司邮箱', '公司电话', 'QQ号', 0);

-- --------------------------------------------------------

--
-- 表的结构 `wew`
--

CREATE TABLE `wew` (
  `id` int(5) UNSIGNED NOT NULL COMMENT '主键',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `type` int(1) NOT NULL COMMENT '类型 1.新闻 2.问题',
  `descs` text NOT NULL COMMENT '描述',
  `pic` varchar(255) NOT NULL COMMENT '图片',
  `content` text NOT NULL COMMENT '正文',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(13) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(13) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wew`
--

INSERT INTO `wew` (`id`, `title`, `type`, `descs`, `pic`, `content`, `status`, `create_time`, `update_time`) VALUES
(1, '公司举办党建信息化系统上线暨党建“微经验”交流评比活动', 1, '为深入推进基层党组织标准化建设，进一步提升集团公司党建工作的质量和水平，12月25日，集团公司党建信息化', '/uploads/20190111\\afa8d73f42cba9f62f97f6a64bc1887f.jpg', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 37px; text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);&quot;&gt;为深入推进基层党组织标准化建设，进一步提升集团公司党建工作的质量和水平，12月25日，集团公司党建信息化系统上线及党建“微经验”交流评比活动在总部研发大楼一楼报告厅举办。集团公司党委副书记、纪委书记许远怀，集团公司党委委员、股份公司总经济师张孟青出席活动并讲话。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);&quot;&gt;活动现场，公司组干科副科长王丽就集团公司党建信息化建设情况向大会作了汇报；系统搭建公司代表张晴晴就党建信息系统向与会人员作了简要培训。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);&quot;&gt;张孟青指出党建信息化平台建设,是推进集团公司党建工作信息化、规范化、科学化的重要举措。集团公司党建信息化系统正式上线后，希望各级党组织负责人积极按照系统要求完成工作，在集团公司党委的统筹安排下，引导广大党员多方位应用平台，促进线上线下工作融合。要充分吸收用户改进建议，把基层党建传统优势与现代信息技术结合起来，以信息化助推基层党建工作创新发展。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);&quot;&gt;党建“微经验”交流评比活动是加强党组织工作交流，共享党建工作经验成果的有效举措，前期宣传动员后，共27个党组织提交了38个“微经验”。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);&quot;&gt;经过支部互评、独立评审组评分等环节，排名前6位的基层党组织参加了本次“党支部建设提升行动”之“微经验”现场交流评比活动。最终，蚌埠液力党委荣获一等奖，重装党支部、桥箱党支部荣获二等奖，薄板件党支部、企管党支部、政工党支部荣获三等奖。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);&quot;&gt;许远怀在总结讲话中肯定了政治处及基层党组织为党组织建设工作所做的努力，表示“微经验”是党支部建设提升行动的“活泼”载体，有效形式。他对党建工作提出了三点要求：一是要做“准”。基层党组织要按照党的基本宗旨、基层组织建设的总体要求，要围绕教育党员、管理党员、监督党员和组织群众、宣传群众、凝聚群众、服务群众的主体职责开展工作。二是要做“实”。做好党的组织建设工作关键在于落地，切忌形式主义、教条主义。“基层党组织组织能力强不强，抓重大任务落实是试金石，也是磨刀石。”三是要做“细”。“微经验”关键在“微”，在“创新”，要从顶层设计和组织落实两方面体现“细”，争取用新方法取得新成果。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Lucida Grande&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, STHeiti, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 37px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);&quot;&gt;本次活动特邀许远怀、张孟青等集团公司党委委员，部分基层党组织书记为“微经验”活动评委。在肥所属党组织书记、团组织书记、党建联络员和党群部门负责人参加活动，非在肥分子公司党组织书记和党群部门相关人员以视频方式参加活动。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20190111/1547195039.jpg&quot; title=&quot;1547195039.jpg&quot; alt=&quot;5f988de3154c4b64b8100bad4cffb6a4.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, 1547195059, 1547195059);

--
-- 转储表的索引
--

--
-- 表的索引 `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `peijian`
--
ALTER TABLE `peijian`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `unslider`
--
ALTER TABLE `unslider`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wew`
--
ALTER TABLE `wew`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `about`
--
ALTER TABLE `about`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `car`
--
ALTER TABLE `car`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `peijian`
--
ALTER TABLE `peijian`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `unslider`
--
ALTER TABLE `unslider`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `web`
--
ALTER TABLE `web`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `wew`
--
ALTER TABLE `wew`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
