/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : frolstore

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2016-04-11 19:10:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bmessage`
-- ----------------------------
DROP TABLE IF EXISTS `bmessage`;
CREATE TABLE `bmessage` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `author` varchar(45) character set utf8 default NULL,
  `content` text character set utf8,
  `reback` text character set utf8,
  `savetime` varchar(45) character set utf8 default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of bmessage
-- ----------------------------
INSERT INTO `bmessage` VALUES ('16', '123', 'asfdasdas', '123', '2016-04-02 01:16:05');
INSERT INTO `bmessage` VALUES ('17', '123', '哈哈哈哈', '', '2016-04-02 01:16:05');
INSERT INTO `bmessage` VALUES ('18', '123', '哈哈哈哈', '', '2016-04-02 01:16:05');
INSERT INTO `bmessage` VALUES ('19', '111', 'asdsad', '', '2016-04-02 01:16:05');
INSERT INTO `bmessage` VALUES ('20', '111', '我还', '说得很好啊', '2016-04-02 01:16:05');

-- ----------------------------
-- Table structure for `bookcar`
-- ----------------------------
DROP TABLE IF EXISTS `bookcar`;
CREATE TABLE `bookcar` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(50) default NULL,
  `bookid` varchar(50) default NULL,
  `savetime` varchar(50) default NULL,
  `booknum` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookcar
-- ----------------------------

-- ----------------------------
-- Table structure for `bookorder`
-- ----------------------------
DROP TABLE IF EXISTS `bookorder`;
CREATE TABLE `bookorder` (
  `id` int(11) NOT NULL auto_increment,
  `uid` varchar(50) default NULL,
  `bid` varchar(50) default NULL,
  `num` varchar(50) default NULL,
  `savetime` varchar(50) default NULL,
  `state` varchar(50) default NULL,
  `shdz` varchar(50) default NULL,
  `zffs` varchar(50) default NULL,
  `shfs` varchar(50) default NULL,
  `lxdh` varchar(50) default NULL,
  `yf` varchar(50) default NULL,
  `totalnum` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookorder
-- ----------------------------
INSERT INTO `bookorder` VALUES ('1', '3', '13', '1', '2016-04-02 01:16:05', '1', '武汉', '支付宝', '快递', '20788888888', null, '80.0');
INSERT INTO `bookorder` VALUES ('2', '3', '12', '1', '2016-04-02 01:16:05', '1', '武汉', '支付宝', '快递', '20788888888', null, '80.0');
INSERT INTO `bookorder` VALUES ('3', '3', '12', '1', '2016-04-02 01:16:05', '1', '1', '支付宝', '2', '3', null, '72.0');
INSERT INTO `bookorder` VALUES ('4', '4', '8', '1', '2016-04-02 14:32:50', '1', '1', '支付宝', '2', '3', null, '8.0');

-- ----------------------------
-- Table structure for `buser`
-- ----------------------------
DROP TABLE IF EXISTS `buser`;
CREATE TABLE `buser` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(50) default NULL,
  `upass` varchar(50) default NULL,
  `tname` varchar(50) default NULL,
  `sex` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `tel` varchar(50) default NULL,
  `addr` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `qq` varchar(50) default NULL,
  `utype` varchar(50) default NULL,
  `state` varchar(50) default NULL,
  `savetime` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buser
-- ----------------------------
INSERT INTO `buser` VALUES ('1', 'admin', '123', '小胡', '女', '27', '02789888888', '湖北武汉', '123@qq.com', '123', '0', null, '2016-04-02 01:16:05');
INSERT INTO `buser` VALUES ('2', '321', '321', '缍子', '女', '12', '02788888888', '八号教学楼', '123@123.com', '423423423', '0', '0', '2016-04-02 01:16:05');
INSERT INTO `buser` VALUES ('3', '111', '111', '缍子', '女', '27', '13988888888', '八号教学楼', '3422411222@qq.com', '3422411112', '1', '0', '2016-04-02 01:16:05');
INSERT INTO `buser` VALUES ('4', '222', '222', '胡二', '女', '1312', '13988888888', '八号教学楼', '34224122@qq.com', '34224122', '1', '0', '2016-04-02 01:16:05');

-- ----------------------------
-- Table structure for `factorys`
-- ----------------------------
DROP TABLE IF EXISTS `factorys`;
CREATE TABLE `factorys` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `factoryname` varchar(255) default NULL,
  `lxr` varchar(255) default NULL,
  `lxtel` varchar(255) default NULL,
  `addrs` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factorys
-- ----------------------------
INSERT INTO `factorys` VALUES ('1', 'admin', '东方铁厂', '小铁', '02788888888', '北京中北三路346号，绿色小区');
INSERT INTO `factorys` VALUES ('2', 's001', '武汉零件厂', '老王', '02788888888', '北京中北三路346');

-- ----------------------------
-- Table structure for `mixinfo`
-- ----------------------------
DROP TABLE IF EXISTS `mixinfo`;
CREATE TABLE `mixinfo` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `filename` varchar(50) default NULL,
  `content` text,
  `savetime` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mixinfo
-- ----------------------------
INSERT INTO `mixinfo` VALUES ('2', '福州大学城六小伙微信开店卖水果 近三千人订阅 东南网大', '201404051314270011.jpg', '<div class=\"left\"><img alt=\"【开新农场】风景秀丽，景色怡人，&ldquo;中国的莱茵河&rdquo;!125元抢购原价293元开新农场帐篷烧烤篝火三合一套餐【帐篷住宿1晚+1顿农家早餐：鸡蛋、馒头、小米粥、烧饼等+1顿自助烧烤：肉类：羊肉，牛肉，鸡肉，鸡心，鸡翅，鸡胗等+蔬菜：青椒，土豆，茄子，红薯，大蒜等+饮料：雪花啤酒、可乐、雪碧、芬达、红茶、绿茶等】给自己、家人、朋友、员工一个美好的空间，这是一份善待自己、关爱他人的特别礼物！\" src=\"http://p1.ftuan.com/2012/0423/15/201204231509040561_1.jpg\" /></div>\r\n<p>西江都市报讯(记者 谢韵)真空包装的<font color=\"#c60a00\">金华火腿</font>内,竟然有活生生的虫子?近日市民黄先生在梧州某超市买到了这样一件&ldquo;送礼佳品&rdquo;。黄先生认为,对于食品安全问题,不能得</p>', '2016-04-02 01:16:05');
INSERT INTO `mixinfo` VALUES ('3', '水果也能入菜 英国首相布朗爱吃的菠萝鸡做法揭秘 ', '201404051313440010.jpg', '<p>国际在线报道（记者 蔡靖骉）：中国国家主席<span name=\"HL_TAG\" style=\"border-bottom: #ff6600 0px dotted\"><a style=\"color: #ff6600; font-size: 14px\" href=\"http://www.cnr.cn/gundong/201205/t20120504_509554228.shtml#\">胡锦涛</a></span>4日上午在北京表示，面对深刻复杂变化的国际形势，中美双方应该不断增进了解和互信，扩大共识和合作，切实尊重彼此核心利益，妥善处理分歧和敏感问题，更好推进合作伙伴关系建设，为中美关系开创更加充满希望的未来。</p>', '2016-04-02 01:16:05');
INSERT INTO `mixinfo` VALUES ('4', '爬山踏春OR水果蛋糕Diy,清明活动你做主! ', '201404051313200009.jpg', '<p>　　胡锦涛在会见出席第四轮中美战略与经济对话的美国总统奥巴马特别代表克林顿国务卿和盖特纳财政部长及<span name=\"HL_TAG\" style=\"border-bottom: #ff6600 0px dotted\"><a style=\"color: #ff6600; font-size: 14px\" href=\"http://www.cnr.cn/gundong/201205/t20120504_509554228.shtml#\">美方</a></span>代表团其他主要成员时作上述表示。他说，在双方共同努力下，第四轮中美战略与经济对话达成许多重要共识，取得积极成果。希望双方团队认真总结经验，再接再厉，进一步建设好发展好对话机制，充分发挥其加强战略沟通、增进战略互信、推动战略合作的重要作用，更好服务于中美合作伙伴关系建设。</p>', '2016-04-02 01:16:05');

-- ----------------------------
-- Table structure for `pinj`
-- ----------------------------
DROP TABLE IF EXISTS `pinj`;
CREATE TABLE `pinj` (
  `id` int(11) NOT NULL auto_increment,
  `saver` varchar(50) default NULL,
  `pj` int(11) default NULL,
  `proid` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinj
-- ----------------------------
INSERT INTO `pinj` VALUES ('1', 'admin', '5', '11');
INSERT INTO `pinj` VALUES ('2', 'admin', '5', '3');
INSERT INTO `pinj` VALUES ('3', 'admin', '5', '3');
INSERT INTO `pinj` VALUES ('4', 'admin', '5', '3');
INSERT INTO `pinj` VALUES ('5', 'admin', '5', '3');
INSERT INTO `pinj` VALUES ('6', '111', '5', '12');

-- ----------------------------
-- Table structure for `pinlun`
-- ----------------------------
DROP TABLE IF EXISTS `pinlun`;
CREATE TABLE `pinlun` (
  `id` int(11) NOT NULL auto_increment,
  `saver` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  `proid` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinlun
-- ----------------------------
INSERT INTO `pinlun` VALUES ('1', 'admin', '这是啥啊', '2016-04-02 01:16:05', '11');
INSERT INTO `pinlun` VALUES ('2', 'admin', '这东西不错', '2016-04-02 01:16:05', '3');
INSERT INTO `pinlun` VALUES ('3', '111', '这腿好吃啊!!!', '2016-04-02 01:16:05', '13');
INSERT INTO `pinlun` VALUES ('4', '111', '这腿好吃啊', '2016-04-02 01:16:05', '12');

-- ----------------------------
-- Table structure for `pros`
-- ----------------------------
DROP TABLE IF EXISTS `pros`;
CREATE TABLE `pros` (
  `id` int(11) NOT NULL auto_increment,
  `proname` varchar(255) default NULL,
  `cpcj` varchar(255) default NULL,
  `cand` varchar(255) default NULL,
  `protype` varchar(255) default NULL,
  `mprice` int(11) default NULL,
  `tgrs` varchar(50) default NULL,
  `discount` varchar(50) default NULL,
  `filename` varchar(50) default NULL,
  `pcontent` varchar(255) default NULL,
  `status` varchar(50) default NULL,
  `savetime` varchar(50) default NULL,
  `uname` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pros
-- ----------------------------
INSERT INTO `pros` VALUES ('1', '湖北蜜柚', '八个月', '浙江金华', '浆果类', '100', '99', '9', '201404051311040008.jpg', '电磁炉又名电磁灶，是现代厨房革命的产物，它无需明火或传导式加热而让热直接在锅底产生，因此热效率得到了极大的提高。是一种高效节能橱具，完全区别于传统所有的有火或无火传导加热厨具。 电磁炉是利用电磁感应加热原理制成的电气烹饪器具。由高频感应加热线圈（即励磁线圈）、高频电力转换装置、控制器及铁磁材料锅底炊具等部分组成。使用时，加热线圈中通入交变电流，线圈周围便产生一交变磁场，交变磁场的磁力线大部分通过金属锅体，在锅底中产生大量涡流，从而产生烹饪所需的热。在加热过程中没有明火，因此安全、卫生。-----', '已上架', '2016-04-02 01:16:05', 'admin');
INSERT INTO `pros` VALUES ('3', '西安大白瓜', '七个月', '浙江金华食品公司', '瓜类', '1000', '99', '9', '201404051310190007.jpg', '电磁炉又名电磁灶，是现代厨房革命的产物，它无需明火或传导式加热而让热直接在锅底产生，因此热效率得到了极大的提高。是一种高效节能橱具，完全区别于传统所有的有火或无火传导加热厨具。 电磁炉是利用电磁感应加热原理制成的电气烹饪器具。由高频感应加热线圈（即励磁线圈）、高频电力转换装置、控制器及铁磁材料锅底炊具等部分组成。使用时，加热线圈中通入交变电流，线圈周围便产生一交变磁场，交变磁场的磁力线大部分通过金属锅体，在锅底中产生大量涡流，从而产生烹饪所需的热。在加热过程中没有明火，因此安全、卫生。-----', '已上架', '2016-04-02 01:16:05', 'admin');
INSERT INTO `pros` VALUES ('4', '东北苹果', '三年', '浙江金华', '核果类', '3000', '99', '9', '201404051309410006.jpg', '电磁炉又名电磁灶，是现代厨房革命的产物，它无需明火或传导式加热而让热直接在锅底产生，因此热效率得到了极大的提高。是一种高效节能橱具，完全区别于传统所有的有火或无火传导加热厨具。 电磁炉是利用电磁感应加热原理制成的电气烹饪器具。由高频感应加热线圈（即励磁线圈）、高频电力转换装置、控制器及铁磁材料锅底炊具等部分组成。使用时，加热线圈中通入交变电流，线圈周围便产生一交变磁场，交变磁场的磁力线大部分通过金属锅体，在锅底中产生大量涡流，从而产生烹饪所需的热。在加热过程中没有明火，因此安全、卫生。-----', '已上架', '2016-04-02 01:16:05', 'admin');
INSERT INTO `pros` VALUES ('8', '广州荔枝', '三年', '浙江金华食品公司', '浆果类', '10', '100', '8', '201404051309030005.jpg', '电磁炉又名电磁灶，是现代厨房革命的产物，它无需明火或传导式加热而让热直接在锅底产生，因此热效率得到了极大的提高。是一种高效节能橱具，完全区别于传统所有的有火或无火传导加热厨具。 电磁炉是利用电磁感应加热原理制成的电气烹饪器具。由高频感应加热线圈（即励磁线圈）、高频电力转换装置、控制器及铁磁材料锅底炊具等部分组成。使用时，加热线圈中通入交变电流，线圈周围便产生一交变磁场，交变磁场的磁力线大部分通过金属锅体，在锅底中产生大量涡流，从而产生烹饪所需的热。在加热过程中没有明火，因此安全、卫生。-----', '已上架', '2016-04-02 01:16:05', 'admin');
INSERT INTO `pros` VALUES ('9', '清远大梨', '两个月', '浙江金华', '核果类', '100', '100', '不打折', '201404051308080004.jpg', '马库斯来自恐怖的西伯利亚训练营。他在这之前的情况几乎没有人知道。当他离开西伯利亚的时候，就连最苛刻的教练都对他赞赏有加。他能一脚踢断2.7英寸的铁柱，每秒钟踢出4脚，徒手杀死一头棕熊。他把西伯利亚的严寒带进了美国的黑市拳场。他的前六名对手几乎都是被他一招击毙的，总共花费的时间不超过两分钟。整个黑市拳击界震惊了。在这里，几乎每个人都拥有强大的踢技，但像这样KO的威力却是史无前例的，甚至超出很多人的想象。他的身价直线上升，开始和一流的拳手交锋。他的对手几乎都是黑市拳击界最可怕的人物，如贾森雅格布、迈克奎罗', '已上架', '2016-04-02 01:16:05', 'admin');
INSERT INTO `pros` VALUES ('11', '吐鲁番葡萄', '一年', '浙江金华水果公司', '浆果类', '100', '98', '9', '201404051306460003.jpg', '这个人就是安东尼马库斯。他被称为人类历史上最强大的拳手之一。在徒手杀人技巧方面，很少有人能与他相提并论。很多人谈到他时都感到心情复杂。他是一部令人恐惧的杀人机器，但在格斗领域却无人能达到他那样的成就。他那令人胆寒的“钢铁扫腿”让对手感到绝望。每一个黑市拳手在上场之前都坚信自己能够胜利，这是他们能够生存下去的前提。如果你的信心垮掉了，在场上就只能是一具会走路的尸体了。但马库斯能打垮最坚强的人的信心，因为你几乎找不到他的弱点。几乎没有人能突破他的扫腿组成的火力网。每个人都只有一次机会。只要被他的扫腿', '已上架', '2016-04-02 01:16:05', 'admin');
INSERT INTO `pros` VALUES ('12', '石头西瓜', '三年', '浙江金华', '瓜类', '90', '97', '8', '201404051305590002.jpg', '马库斯来自恐怖的西伯利亚训练营。他在这之前的情况几乎没有人知道。当他离开西伯利亚的时候，就连最苛刻的教练都对他赞赏有加。他能一脚踢断2.7英寸的铁柱，每秒钟踢出4脚，徒手杀死一头棕熊。他把西伯利亚的严寒带进了美国的黑市拳场。他的前六名对手几乎都是被他一招击毙的，总共花费的时间不超过两分钟。整个黑市拳击界震惊了。在这里，几乎每个人都拥有强大的踢技，但像这样KO的威力却是史无前例的，甚至超出很多人的想象。他的身价直线上升，开始和一流的拳手交锋。他的对手几乎都是黑市拳击界最可怕的人物，如贾森雅格布、迈克奎罗', '已上架', '2016-04-02 01:16:05', 'admin');
INSERT INTO `pros` VALUES ('13', '新疆哈蜜瓜', '九个月', '浙江金华水果公司', '瓜类', '10', '98', '8', '201404051305290001.jpg', '...', '已上架', '2016-04-02 01:16:05', 's001');

-- ----------------------------
-- Table structure for `protype`
-- ----------------------------
DROP TABLE IF EXISTS `protype`;
CREATE TABLE `protype` (
  `id` int(11) NOT NULL auto_increment,
  `typename` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of protype
-- ----------------------------
INSERT INTO `protype` VALUES ('9', '浆果类', '2016-04-02 01:16:05');
INSERT INTO `protype` VALUES ('10', '柑橘类', '2016-04-02 01:16:05');
INSERT INTO `protype` VALUES ('11', '核果类', '2016-04-02 01:16:05');
INSERT INTO `protype` VALUES ('12', '瓜类', '2016-04-02 01:16:05');
