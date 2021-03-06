-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 12 月 31 日 15:21
-- 服务器版本: 5.7.23
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `php_shop`
--

-- --------------------------------------------------------

--
-- 表的结构 `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` int(10) unsigned DEFAULT NULL,
  `goodsid` int(10) unsigned DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `num` int(10) unsigned DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=327 ;

--
-- 转存表中的数据 `detail`
--

INSERT INTO `detail` (`id`, `orderid`, `goodsid`, `name`, `price`, `num`, `addtime`) VALUES
(312, 1, 3, '凡茜绿豆卸妆水180ml', 39.00, 1, 1545915500),
(313, 3, 7, '雅诗兰黛 特润修护肌透精华露', 698.00, 1, 1545915700),
(314, 3, 9, '兰蔻 新精华肌底液', 899.00, 1, 1545915710),
(315, 5, 3, '凡茜绿豆卸妆水180ml', 39.00, 1, 1545915720),
(316, 5, 14, '玉兰油 面霜', 119.00, 2, 1545915770),
(317, 6, 2, '姬芮 净颜两用卸妆油 ', 78.00, 3, 1546002163),
(318, 7, 1, '贝德玛卸妆水', 139.00, 3, 1546002998),
(319, 8, 13, '雅诗兰黛面霜 保湿霜 ', 158.00, 2, 1546097601),
(320, 8, 8, '兰芝 新水酷特润精华露', 295.00, 2, 1546097601),
(321, 9, 1, '贝德玛卸妆水', 139.00, 2, 1546100354),
(322, 9, 3, '凡茜绿豆卸妆水180ml', 39.00, 2, 1546100354),
(323, 10, 3, '凡茜绿豆卸妆水180ml', 39.00, 1, 1546164431),
(324, 11, 2, '姬芮 净颜两用卸妆油 ', 78.00, 1, 1546170895),
(325, 12, 2, '姬芮 净颜两用卸妆油 ', 78.00, 1, 1546174917),
(326, 12, 3, '凡茜绿豆卸妆水180ml', 39.00, 1, 1546174917);

-- --------------------------------------------------------

--
-- 表的结构 `friendlink`
--

CREATE TABLE IF NOT EXISTS `friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `url` varchar(255) NOT NULL,
  `picname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `friendlink`
--

INSERT INTO `friendlink` (`id`, `name`, `url`, `picname`) VALUES
(1, '天猫', 'www.tmall.com', NULL),
(2, '淘宝', 'www.taobao.com', NULL),
(3, '京东', 'www.jd.com', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `goods` varchar(32) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `descr` text,
  `price` double(6,2) DEFAULT NULL,
  `picname` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT '1',
  `store` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `clicknum` int(11) DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `typeid`, `goods`, `company`, `descr`, `price`, `picname`, `state`, `store`, `num`, `clicknum`, `addtime`) VALUES
(1, 21, '贝德玛卸妆水', '法国 ', '法国 贝德玛（Bioderma）深层舒妍卸妆水 蓝水（适合混合型、油性肌肤 海外发行S版） 500ml 控油收缩毛孔', 139.00, '201704101122404778.jpg', 3, 100, 0, 0, 1545107450),
(2, 21, '姬芮 净颜两用卸妆油 ', '上海', '姬芮(Za）净颜两用卸妆油 100ml(轻松卸妆 温和去黑头 清爽干净可沾水用)', 78.00, '201704101127529115.jpg', 1, 100, 0, 0, 1545107460),
(3, 21, '凡茜绿豆卸妆水180ml', '北京', '凡茜绿豆卸妆水180ml（温和卸妆油脸部唇部眼部深层控油清洁卸妆液）', 39.00, '201704101129155034.jpg', 1, 100, 0, 0, 1545107470),
(4, 22, '素派男士护肤品套', '北京', '素派男士护肤品套装洗面奶面膜爽肤水面霜化妆品保湿补水控油去黑头 男士护肤4件套', 39.00, '201704111531002387.jpg', 1, 100, 0, 0, 1545107480),
(5, 22, '澳雅婷马油7件套', '上海', '澳雅婷马油7件套护肤套装春季补水保湿化妆品护手霜洗面奶身体乳男女\r\n洁面乳、肌底水、润凝乳、滋养霜、手霜、身体乳、眼霜', 79.00, '201704101131167625.jpg', 1, 100, 0, 0, 1545107490),
(6, 22, '补水保湿靓肤护肤品', '北京', '补水保湿靓肤护肤品 红酒多酚水凝面膜 男女士 20片（水润光泽 保湿嫩肤 滋养 补水静神） 红酒多酚水凝20片装', 59.00, '201704101136596983.jpg', 1, 100, 0, 0, 1545107500),
(7, 23, '雅诗兰黛 特润修护肌透精华露', '英国', '雅诗兰黛（Estee Lauder）特润修护肌透精华露 50ml（精华肌底液 ANR 小棕瓶 收缩毛孔）', 698.00, '201704101144223401.jpg', 1, 100, 0, 0, 1545107510),
(8, 23, '兰芝 新水酷特润精华露', '韩国', '兰芝（LANEIGE）新水酷特润精华露 60ML（保湿补水 完美清爽滋润）', 295.00, '201704101148328541.jpg', 1, 100, 0, 0, 1545107531),
(9, 23, '兰蔻 新精华肌底液', '法国', '兰蔻（Lancome）新精华肌底液50ml（又名：大黑瓶）（限量版 普通版随机发货）精华液 补水', 899.00, '201704101150384782.jpg', 1, 100, 0, 0, 1545107540),
(10, 24, '欧莱雅 清润葡萄籽保湿乳液', '江苏', '欧莱雅 （LOREAL） 清润葡萄籽保湿乳液 110ml（欧莱雅女士 补水保湿 深层保湿）', 159.00, '201704101152253477.jpg', 1, 100, 0, 0, 1545107550),
(11, 24, '丝塔芙 保湿润肤乳', '加拿大', '丝塔芙Cetaphil保湿润肤乳118ml（乳液面霜 温和 补水 保湿 不添加香料 敏感肌宝宝适用）', 69.00, '201704101153333977.jpg', 1, 100, 0, 0, 1545107560),
(12, 24, '雪肌精 乳液 ', '日本', '雪肌精 SEKKISEI 乳液 130ml（乳液 补水滋润）', 259.00, '201704101155531540.jpg', 1, 100, 0, 0, 1545107570),
(13, 25, '雅诗兰黛面霜 保湿霜 ', '上海', 'Estee Lauder雅诗兰黛面霜 红石榴/鲜活亮采保湿霜 日霜15ml*2', 158.00, '201704101157448072.jpg', 1, 100, 0, 0, 1545107580),
(14, 25, '玉兰油 面霜', '广州', '玉兰油Olay面霜多效修护50g（补水保湿 提拉紧致 减少皱纹 新老包装随机发货）', 119.00, '201704101158564943.jpg', 1, 100, 0, 0, 1545107590),
(15, 25, '丝塔芙 致润保湿霜', '加拿大', '丝塔芙Cetaphil致润保湿霜566g（乳液 护手霜 身体乳 温和 补水 保湿 敏感肌宝宝适用）', 188.00, '201704101159572407.jpg', 1, 100, 0, 0, 1545107600),
(16, 26, '温碧泉八杯水亲亲水润五件套装', '广州', '温碧泉八杯水亲亲水润五件套装（洁面乳+保湿水+活肤乳+嫩肤霜+眼精华）补水保湿护肤化妆品', 198.00, '201704101915354993.jpg', 1, 100, 0, 0, 1545906290),
(17, 26, '妮维雅 男士水活畅透精华露', '上海', '妮维雅 男士水活畅透精华露50g（小蓝管 瞬间化水 超薄面霜 保湿补水）持久滋润 随身携带', 85.00, '201704101916331497.jpg', 1, 100, 0, 0, 1545907290),
(18, 26, '兰蔻 清滢柔肤水', '法国', '兰蔻（Lancome）清滢柔肤水400ml（又名：大粉水） 补水 保湿 爽肤水', 389.00, '201704101918072839.jpg', 1, 100, 0, 0, 1545908290),
(19, 27, '莱薇尔 美白祛斑霜套装组合', '广州', '莱薇尔LAVER美白祛斑霜套装组合 祛斑产品去斑面霜 淡斑精华色斑晒斑保湿补水男女适用 祛斑套装', 189.00, '201704101920534526.jpeg', 1, 100, 0, 0, 1545909290),
(20, 27, '京润珍珠珍珠美白祛斑霜', '海南', '京润珍珠珍珠美白祛斑霜30g', 98.00, '201704101922383257.jpg', 1, 100, 0, 0, 1545915290),
(21, 27, '知医堂思兰朵焕颜祛斑霜组合套装', '中国', '（买2送1）知医堂思兰朵焕颜祛斑霜组合套装补水保湿美白去斑产品去色斑晒斑男女士 1套', 128.00, '201704101923352527.jpg', 1, 100, 0, 0, 1545915300),
(22, 28, '欧莱雅 男士火山岩控油清痘洁面膏', '江苏', '欧莱雅（LOREAL）男士火山岩控油清痘洁面膏100ml（男士洗面奶 祛痘清爽 深层清洁）', 39.00, '201704101928281480.jpg', 1, 100, 0, 0, 1545915305),
(23, 28, '锐度男士洗面奶', '中国', '锐度男士洗面奶控油祛痘去黑头黑钻洁面乳护肤品补水深层清洁套装 洁面礼盒', 68.00, '201704101957403441.jpg', 1, 100, 0, 0, 1545915310),
(24, 28, '索璞蜗牛氨基酸洗面奶男士女士', '中国', '索璞蜗牛氨基酸洗面奶男士女士 泡沫控油祛痘去黑头去白皙头粉刺收缩毛孔 洗脸洁面乳120ml', 39.00, '201704101959219145.jpg', 1, 100, 0, 0, 1545915315),
(25, 29, '欧莱雅 男士露 抗皱紧肤霜', '中国', '欧莱雅（LOREAL）男士护肤面霜/露 抗皱紧肤霜50ml', 83.50, '201704102002221505.jpg', 1, 100, 0, 0, 1545915320),
(26, 29, '欧莱雅 女士复颜玻尿酸水光充盈导入抗皱套装 ', '中国', '欧莱雅 （LOREAL）复颜玻尿酸水光充盈导入抗皱套装 晶露0227+乳液0265+面霜1080+眼霜', 675.00, '201704102017254240.jpg', 1, 100, 0, 0, 1545915325),
(27, 29, '百雀羚 面霜', '太原', '百雀羚（PECHOIN）面霜 精华霜肌初赋活紧肤抗皱菁华霜50g ', 155.00, '201704102019031252.jpg', 1, 100, 0, 0, 1545915330),
(28, 30, '欧诗漫 提拉紧致走珠眼部护理精华凝露眼霜', '中国', '欧诗漫OSM提拉紧致走珠眼部护理精华凝露眼霜15g 去细纹紧致补水保湿 去眼袋黑眼圈', 39.90, '201704102020377667.jpg', 1, 100, 0, 0, 1545915340),
(29, 30, '爱肤宜 金桂花眼贴膜', '中国', '(货到付款)爱肤宜 金桂花眼贴膜 60片/瓶 去淡化细纹眼袋黑眼圈补水眼霜 眼部护理', 47.00, '201704102021377332.jpg', 1, 100, 0, 0, 1545915345),
(30, 30, '透真 女士全能眼霜', '中国', '透真全能眼霜女15g去淡化黑眼圈眼袋脂肪粒细纹补水保湿去鱼尾纹提拉紧致抗皱眼部护理', 89.00, '201704102022504999.jpg', 1, 100, 0, 0, 1545915350),
(31, 31, '美宝莲巨遮瑕BB霜 自然色 ', '北京', '美宝莲巨遮瑕新颜霜 自然色 30ml（BB霜 裸妆遮瑕 保湿 防护）', 118.00, '201704110910115146.jpg', 1, 100, 0, 0, 1545915355),
(32, 31, '爱斯贝绮凝彩水漾气垫bb霜', '北京', 'CB爱斯贝绮凝彩水漾气垫bb霜保湿水润裸妆粉底液不脱妆', 109.00, '201704110913563970.jpg', 1, 100, 0, 0, 1545915360),
(33, 31, '卡姿兰 气垫bb霜', '北京', '卡姿兰（Carslan）蜗牛气垫调控霜礼盒装02#柔缎色 14.5g*2（气垫bb霜升级 保湿 遮瑕 提亮）', 199.00, '201704110915452168.jpg', 1, 100, 0, 0, 1545915365),
(34, 32, 'BOB无限魅惑眼影', '北京', 'BOB无限魅惑眼影 大地色裸妆眼影盘多色眼影盒 彩妆套装 彩妆盘5色眼影 01桃粉盘', 39.00, '201704110917184791.jpg', 1, 100, 0, 0, 1545915370),
(35, 32, '美宝莲 裸色风暴眼影盘', '北京', '美宝莲（MAYBELLINE）裸色风暴眼影盘 9g（裸妆 易上手 不晕染）', 168.00, '201704110918241963.jpg', 1, 100, 0, 0, 1545915375),
(36, 32, '稚优泉六色眼影含大地色眼影盘眼影笔眼影棒彩妆盘 ', '北京', '稚优泉六色眼影含大地色眼影盘眼影笔眼影棒彩妆盘 裸妆哑光珠 六色眼影01', 69.00, '201704110919194114.jpg', 1, 100, 0, 0, 1545915380),
(37, 33, '美宝莲 好气色轻唇膏', '北京', '美宝莲（MAYBELLINE）好气色轻唇膏07 粉嫩蔷薇3g（唇彩 唇膏 口红 保湿滋润）', 78.00, '201704110921222668.jpg', 1, 100, 0, 0, 1545915385),
(38, 33, '澳雅婷口红持久保湿滋润唇膏唇彩', '北京', '澳雅婷口红持久保湿滋润唇膏唇彩3.8g不掉色不沾杯女士唇蜜唇釉 热吻红', 49.00, '201704110922335840.jpg', 1, 100, 0, 0, 1545915390),
(39, 33, '梦妆 花心丝绒唇膏笔 ', '北京', '梦妆（Mamonde）花心丝绒唇膏笔 11（豆沙） 2.5g（豆沙色口红 唇彩 保湿 润唇 持久显色）', 89.00, '201704110923396638.jpg', 1, 100, 0, 0, 1545915395),
(40, 34, '火烈鸟双头造型眉笔', '北京', '火烈鸟双头造型眉笔 防水防汗不易晕染眉毛笔 塑型纤细描绘不易脱妆画眉笔 05#可可深棕', 29.00, '201704110925335716.jpg', 1, 100, 0, 0, 1545915400),
(41, 34, '伊蒂之屋 睛彩自然眉笔', '北京', '伊蒂之屋（ETUDE HOUSE）睛彩自然眉笔#04 0.26g深灰色(自然上色 爱丽小屋 原名)', 29.00, '201704110930119197.jpg', 1, 100, 0, 0, 1545915405),
(44, 15, '大眼睛', '雅姿', '大眼睛', 200.00, '201812292309296476.jpg', 1, 100, 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `goods_orders`
--

CREATE TABLE IF NOT EXISTS `goods_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `linkman` varchar(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `uid`, `linkman`, `address`, `code`, `phone`, `addtime`, `total`, `status`) VALUES
(1, 10, '111', '111', '159326', '15555555557', 1545915500, 39.00, 1),
(2, 1, '111', 'wu', '100086', '12345678901', 1545915700, 0.00, 0),
(3, 10, '111', '111', '159326', '15555555557', 1545915710, 1597.00, 0),
(4, 10, '111', '111', '159326', '15555555557', 1545915720, 0.00, 0),
(5, 14, '666', '666', '666', '666', 1545915770, 277.00, 2),
(6, 14, '666', '666', '666', '666', 1546002163, 234.00, 1),
(7, 14, '666', '666', '666', '666', 1546002998, 417.00, 1),
(8, 1, 'admin', 'wu', '100086', '12345678901', 1546097601, 906.00, 0),
(9, 1, 'admin', 'wu', '100086', '12345678901', 1546100354, 356.00, 0),
(10, 8, 'zzz', '东莞理工23栋', '152828', '13468798521', 1546164431, 39.00, 0),
(11, 14, '666', '666', '666', '666', 1546170895, 78.00, 0),
(12, 14, '666', '666', '666', '666', 1546174917, 117.00, 0);

-- --------------------------------------------------------

--
-- 表的结构 `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `content` text,
  `score` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `root`
--

CREATE TABLE IF NOT EXISTS `root` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `pass` char(32) NOT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `state` tinyint(1) DEFAULT '1',
  `addtime` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `root`
--

INSERT INTO `root` (`id`, `username`, `name`, `pass`, `sex`, `address`, `code`, `phone`, `email`, `state`, `addtime`) VALUES
(1, '123456', 'admin', '123456', 1, 'wu', '100086', '12345678901', 'admin@126.com', 0, 1545005290);

-- --------------------------------------------------------

--
-- 表的结构 `showpping`
--

CREATE TABLE IF NOT EXISTS `showpping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usersid` varchar(128) NOT NULL,
  `goodsid` varchar(255) NOT NULL,
  `gouwunum` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`id`, `name`, `pid`, `path`) VALUES
(1, '护肤品', 0, '0,'),
(2, '保养品', 0, '0,'),
(3, '彩妆品', 0, '0,'),
(4, '卸妆', 1, '0,1,'),
(6, '面膜', 1, '0,1,'),
(7, '精华', 1, '0,1,'),
(8, '乳液', 1, '0,1,'),
(9, '面霜', 1, '0,1,'),
(10, 'BB霜', 3, '0,3,'),
(12, '眼影', 3, '0,3,'),
(13, '唇彩', 3, '0,3,'),
(14, '眉笔', 3, '0,3,'),
(15, '保湿补水', 2, '0,2,'),
(16, '美白祛斑', 2, '0,2,'),
(17, '控油祛痘', 2, '0,2,'),
(18, '紧肤抗皱', 2, '0,2,'),
(19, '眼部护理', 2, '0,2,'),
(20, '粉底', 3, '0,3,'),
(21, '卸妆水', 4, '0,1,4,'),
(22, '护肤', 6, '0,1,6,'),
(23, '精华露', 7, '0,1,7,'),
(24, '保湿润肤乳', 8, '0,1,8,'),
(25, '保湿霜', 9, '0,1,9,'),
(26, '湿补水', 15, '0,2,15,'),
(27, '美白祛斑霜', 16, '0,2,16,'),
(28, '洗面奶', 17, '0,2,17,'),
(29, '紧肤抗皱膏', 18, '0,2,18,'),
(30, '眼部保养', 19, '0,2,19,'),
(31, '气垫bb霜', 10, '0,3,10,'),
(32, '彩色眼影', 12, '0,3,12,'),
(33, '彩色唇彩', 13, '0,3,13,'),
(34, '彩色眉笔', 14, '0,3,14,'),
(35, '彩色', 20, '0,3,20,'),
(36, '粉色', 0, '0,');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `pass` char(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `state` tinyint(1) DEFAULT '1',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `sex`, `pass`, `address`, `code`, `phone`, `email`, `state`, `addtime`) VALUES
(1, '789', '王思聪11', 0, '123456', '东莞理工23栋', '159326', '1555555555', '1173038577@qq.com', 1, 1545109500),
(2, 'jack9', '王思聪44', 0, '123456', '东莞理工23栋', '518101', '12345678958', 'www741@126.com', 2, 1545107450),
(3, 'jack93', '王思聪3', 1, '123456', '东莞理工23栋', '518101', '12345678944', 'www789@qq.com', 1, 1545107460),
(4, 'ja68', '王思聪', 1, '123456', '东莞理工23栋', '518101', '12345678922', 'www456@qq.com', 1, 1545107470),
(5, 'jack', '王思聪', 1, '123456', '东莞理工23栋', '518101', '12345678911', 'www2222@qq.com', 1, 1545107480),
(6, '王思聪5', '王思聪1', 0, '123456', '东莞理工23栋', '696969', '14725836988', 'makelove@qq.com', 1, 1545107490),
(7, '王思聪4', '王思聪2', 1, '123456', '东莞理工23栋', '521230', '15935748624', 'fushikma@163.com', 1, 1545107505),
(8, '王思聪2', 'zzz', 1, '123456', '东莞理工23栋', '152828', '13468798521', 'liuliuliuw@126.com', 2, 1545107510),
(9, '王思聪1', '王思聪', 1, '123456', '东莞理工23栋', '159357', '69696969696', '6666666@126.com', 1, 1545107520),
(10, '王思聪', '朱迪', 0, '123456', '东莞理工23栋', '518101', '11111111111', 'baby123@gmail.com', 1, 1545107544),
(11, '111', '王思聪11', 1, '123456', '东莞理工23栋', '158202', '15395543129', '111aa00@gmail.com', 1, 1545107555),
(12, '222', '王思聪1111', 1, '123456', '东莞理工23栋', '150002', '12345681232', '89snsn8@163.com', 1, 1545608110),
(13, '888', '888', 1, '888', '东莞理工23栋', '888', '888', '8888888@qq.com', 1, 1545708220),
(14, '666', '666', 1, '666', '666', '666', '666', '666', 1, 1545808250),
(15, '测试2', '啊啊啊', 1, '123456', '东莞理工', '123456', '123456789111', '12345@qq.com', 1, 1545908290);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
