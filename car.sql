-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-01-09 10:08:17
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

--
-- 转储表的索引
--

--
-- 表的索引 `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `peijian`
--
ALTER TABLE `peijian`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `peijian`
--
ALTER TABLE `peijian`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
