﻿# Host: localhost  (Version 5.0.87-community-nt)
# Date: 2020-01-04 18:00:11
# Generator: MySQL-Front 6.0  (Build 1.57)


#
# Structure for table "content"
#

DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `Id` int(11) NOT NULL auto_increment,
  `Title` varchar(400) default NULL COMMENT '标题',
  `Keywords` varchar(655) default NULL COMMENT '关键字',
  `Description` varchar(1000) default NULL COMMENT '描述',
  `Author` varchar(255) default NULL COMMENT '作者',
  `Img` varchar(2550) default NULL COMMENT '相关图片',
  `Content` text COMMENT '内容',
  `Status` varchar(255) default '1' COMMENT '0表示禁用，1表示可用',
  `Navpath` varchar(1055) default NULL COMMENT '这个内容的 栏目Path地址',
  `Date` timestamp NULL default CURRENT_TIMESTAMP,
  `Type` varchar(255) default NULL COMMENT '1表示普通内容，2表示热门内容，3表示推荐内容，4表示轮播图内容',
  `price` varchar(255) default '520' COMMENT '价格',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='内容表';

#
# Data for table "content"
#

INSERT INTO `content` VALUES (1,'弦乐器111','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779423231671564379950560.jpg\",\"path\":\"uploads\\\\15779423231671564379950560.jpg\",\"size\":8927}]','<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">吉他<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 0, 0); color: rgb(255, 255, 255);\"><strong>（意大利语：Chitarra）</strong></span>，又译为结他或六弦琴。是一种弹拨乐器，通常有六条弦，形状与提琴相似。吉他在流行音乐、摇滚音乐、蓝调、民歌、佛朗明哥中，常被视为主要乐器。而在古典音乐的领域里，吉他常以独奏或二重奏的型式演出；当然，在室内乐和管弦乐中，吉他亦扮演着相当程度的陪衬角色。</span></p>','1','0001,0001','2020-01-02 13:13:16','1','570'),(2,'弦乐器2','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779421324991564379950560.jpg\",\"path\":\"uploads\\\\15779421324991564379950560.jpg\",\"size\":8927}]','<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">吉他（意大利语：Chitarra），又译为结他或六弦琴。是一种弹拨乐器，通常有六条弦，形状与提琴相似。吉他在流行音乐、摇滚音乐、蓝调、民歌、佛朗明哥中，常被视为主要乐器。而在古典音乐的领域里，吉他常以独奏或二重奏的型式演出；当然，在室内乐和管弦乐中，吉他亦扮演着相当程度的陪衬角色。</span></p>','1','0001,0001','2020-01-02 13:15:32','1','10000'),(3,'弦乐器3','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779421612681564379950560.jpg\",\"path\":\"uploads\\\\15779421612681564379950560.jpg\",\"size\":8927}]','<p>啊实打实大大<br/></p>','1','0001,0001','2020-01-02 13:16:01','1','560'),(4,'弦乐器4','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779421994001564379950560.jpg\",\"path\":\"uploads\\\\15779421994001564379950560.jpg\",\"size\":8927}]','<p>水电费水电费</p>','1','0001,0001','2020-01-02 13:16:39','1','560'),(5,'木管乐器1','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779422190111564379950560.jpg\",\"path\":\"uploads\\\\15779422190111564379950560.jpg\",\"size\":8927}]','<p>234234</p>','1','0001,0002','2020-01-02 13:16:59','1','560'),(6,'木管乐器2','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779422336201564379950560.jpg\",\"path\":\"uploads\\\\15779422336201564379950560.jpg\",\"size\":8927}]','<p>23423多个地方</p>','1','0001,0002','2020-01-02 13:17:13','1','5230'),(7,'木管乐器4','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779422438531564379950560.jpg\",\"path\":\"uploads\\\\15779422438531564379950560.jpg\",\"size\":8927}]','<p>是的发生的</p>','1','0001,0002','2020-01-02 13:17:23','1','5230'),(8,'木管乐器5','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779422616671564379950560.jpg\",\"path\":\"uploads\\\\15779422616671564379950560.jpg\",\"size\":8927}]','<p>沃尔沃二</p>','1','0001,0002','2020-01-02 13:17:41','1','4000'),(9,'铜管乐器1','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779422818551564379950560.jpg\",\"path\":\"uploads\\\\15779422818551564379950560.jpg\",\"size\":8927}]','<p>晚上发斯蒂芬</p>','1','0001,0003','2020-01-02 13:18:01','1','1000'),(10,'铜管乐器2','','','','[{\"fieldname\":\"Img\",\"originalname\":\"1564379950560.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779422999431564379950560.jpg\",\"path\":\"uploads\\\\15779422999431564379950560.jpg\",\"size\":8927}]','<p>问问</p>','1','0001,0003','2020-01-02 13:18:19','1','3000'),(11,'音乐资讯内容1111','','音乐资讯内容1111音乐资讯内容1111音乐资讯内容1111音乐资讯内容1111音乐资讯内容1111音乐资讯内容1111音乐资讯内容1111音乐资讯内容1111音乐资讯内容1111音乐资讯内容1111','','[]','<p>音乐资讯内容1111</p>','1','0003','2020-01-02 13:20:35','1',''),(12,'音乐资讯内容2222','','音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222','','[]','<p>音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222音乐资讯内容2222</p>','1','0003','2020-01-02 13:20:48','1',''),(13,'音乐资讯内容3333','','音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333','','[]','<p>音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333音乐资讯内容3333</p>','1','0003','2020-01-02 13:21:08','1',''),(14,'音乐资讯内容4444','','音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444','','[]','<p>音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444音乐资讯内容4444</p>','1','0003','2020-01-02 13:21:23','1',''),(15,'音乐资讯内容5555','','音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555','','[]','<p>音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555音乐资讯内容5555</p>','1','0003','2020-01-02 13:21:38','1',''),(16,'音乐资讯内容6666','','音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666','','[]','<p>音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666音乐资讯内容6666</p>','1','0003','2020-01-02 13:21:52','1',''),(17,'音乐资讯内容7777','','音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777','','[]','<p>音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777音乐资讯内容7777</p>','1','0003','2020-01-02 13:22:06','1',''),(18,'音乐资讯内容8888','','音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888','','[]','<p>音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888音乐资讯内容8888</p>','1','0003','2020-01-02 13:22:17','1',''),(19,'音乐资讯内容9999','','音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999','','[]','<p>音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999音乐资讯内容9999</p>','1','0003','2020-01-02 13:22:28','1',''),(20,'明星111','','明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111','歌手 / 音乐人 / 制作人','[{\"fieldname\":\"Img\",\"originalname\":\"1564384050835.png\",\"encoding\":\"7bit\",\"mimetype\":\"image/png\",\"destination\":\"uploads/\",\"filename\":\"15779428591061564384050835.png\",\"path\":\"uploads\\\\15779428591061564384050835.png\",\"size\":33019}]','<p>明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111</p>','1','0002,0001','2020-01-02 13:26:44','1',''),(21,'明星2222','','明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111','歌手 / 音乐人 / 制作人','[{\"fieldname\":\"Img\",\"originalname\":\"1564384050835.png\",\"encoding\":\"7bit\",\"mimetype\":\"image/png\",\"destination\":\"uploads/\",\"filename\":\"15779428295891564384050835.png\",\"path\":\"uploads\\\\15779428295891564384050835.png\",\"size\":33019}]','<p>明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111</p>','1','0002,0001','2020-01-02 13:27:09','1',''),(22,'明星3333','','明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111明星111','歌手 / 音乐人 / 制作人','[{\"fieldname\":\"Img\",\"originalname\":\"1564384050835.png\",\"encoding\":\"7bit\",\"mimetype\":\"image/png\",\"destination\":\"uploads/\",\"filename\":\"15779428423111564384050835.png\",\"path\":\"uploads\\\\15779428423111564384050835.png\",\"size\":33019}]','<p>沃尔沃二翁</p>','1','0002,0001','2020-01-02 13:27:22','1',''),(23,'最新活动111','','最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111','Exquisite carving','[{\"fieldname\":\"Img\",\"originalname\":\"156438256231.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"1577942983653156438256231.jpg\",\"path\":\"uploads\\\\1577942983653156438256231.jpg\",\"size\":213722}]','<p>最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111最新活动111</p>','1','0002,0003','2020-01-02 13:29:43','1',''),(24,'最新活动222','','最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222','Exquisite carving','[{\"fieldname\":\"Img\",\"originalname\":\"156438256231.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"1577943010752156438256231.jpg\",\"path\":\"uploads\\\\1577943010752156438256231.jpg\",\"size\":213722}]','<p>最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222最新活动222</p>','1','0002,0003','2020-01-02 13:30:10','1',''),(25,'最新活动333','','最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333','Exquisite carving','[{\"fieldname\":\"Img\",\"originalname\":\"156438256231.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"1577943020656156438256231.jpg\",\"path\":\"uploads\\\\1577943020656156438256231.jpg\",\"size\":213722}]','<p>最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333最新活动333</p>','1','0002,0003','2020-01-02 13:30:20','1',''),(26,'最新的活动a11','','最新的活动a11最新的活动a11最新的活动a11最新的活动a11最新的活动a11最新的活动a11最新的活动a11最新的活动a11','','[{\"fieldname\":\"Img\",\"originalname\":\"1564378596484.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15780427407331564378596484.jpg\",\"path\":\"uploads\\\\15780427407331564378596484.jpg\",\"size\":106697}]','<p>最新的活动a11最新的活动a11最新的活动a11最新的活动a11最新的活动a11最新的活动a11</p>','1','0002,0003','2020-01-03 17:12:20','4',''),(27,'最新的活动a222','','最新的活动a222最新的活动a222最新的活动a222最新的活动a222最新的活动a222最新的活动a222最新的活动a222最新的活动a222','','[{\"fieldname\":\"Img\",\"originalname\":\"1564378596484.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15780427644261564378596484.jpg\",\"path\":\"uploads\\\\15780427644261564378596484.jpg\",\"size\":106697}]','<p>最新的活动a222最新的活动a222最新的活动a222最新的活动a222最新的活动a222最新的活动a222最新的活动a222最新的活动a222最新的活动a222</p>','1','0002,0003','2020-01-03 17:12:44','4',''),(28,'最新的活动a333','','最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333','','[{\"fieldname\":\"Img\",\"originalname\":\"1564378613928.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15780427813491564378613928.jpg\",\"path\":\"uploads\\\\15780427813491564378613928.jpg\",\"size\":84917}]','<p>最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333最新的活动a333</p>','1','0002,0003','2020-01-03 17:13:01','4','');

#
# Structure for table "nav"
#

DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav` (
  `Id` int(11) NOT NULL auto_increment,
  `Nav` varchar(255) default NULL COMMENT '导航名称',
  `Path` varchar(2255) default NULL COMMENT '导航层级',
  `Title` varchar(255) default NULL COMMENT '导航标题',
  `Keywords` varchar(255) default NULL COMMENT '关键字',
  `Description` varchar(1055) default NULL COMMENT '导航描述',
  `Img` varchar(1055) default NULL COMMENT '相关图片',
  `Sort` varchar(255) default NULL COMMENT '排序',
  `Status` varchar(255) default '1' COMMENT '0表示禁用，1表示使用，2表示为顶级导航时不显示',
  `Url` varchar(1000) default NULL COMMENT '前端路由地址',
  `PageContent` text COMMENT '栏目单页内容',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "nav"
#

INSERT INTO `nav` VALUES (1,'产品','0001','Music product','','','[]','','1','/product',NULL),(2,'关于','0002','About us','','我公司专业从事各种中西乐器生产已有18年历史，主要生产木吉他、声电两用木吉他、电吉他、电贝司、小提琴、电小提琴等系列乐器，近700个规格和品种 ...','[{\"fieldname\":\"Img\",\"originalname\":\"1564378942748.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779289645131564378942748.jpg\",\"path\":\"uploads\\\\15779289645131564378942748.jpg\",\"size\":89134}]','','1','/about',NULL),(3,'明星代言','0002,0001','Star endorsement','','','[]','','1','/about/about1',NULL),(4,'关于我们','0002,0002','About us','','我公司专业从事各种中西乐器生产已有18年历史，主要生产木吉他、声电两用木吉他、电吉他、电贝司、小提琴、电小提琴等系列乐器，近700个规格和品种 ...','[{\"fieldname\":\"Img\",\"originalname\":\"1564378942748.jpg\",\"encoding\":\"7bit\",\"mimetype\":\"image/jpeg\",\"destination\":\"uploads/\",\"filename\":\"15779592122711564378942748.jpg\",\"path\":\"uploads\\\\15779592122711564378942748.jpg\",\"size\":89134}]','','1','/about/about2','<p></p><section><section><section><section><section><section><section><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span class=\"text-22\" style=\"padding: 0px; margin: 0px; font-size: 22px; font-family: 微软雅黑;\"><strong style=\"padding: 0px; margin: 0px;\">关于我们</strong></span>&nbsp;about us</p></section></section></section></section><section><section><section><section><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span style=\"padding: 0px; margin: 0px; line-height: 52px; font-family: AVGARDD; color: rgb(192, 0, 0); font-size: 24px;\">Corporate<span style=\"padding: 0px; margin: 0px; line-height: 52px; font-family: AVGARDD; color: rgb(192, 0, 0); font-size: 24px;\"></span></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\">值得信任的质量</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\">在淋浴或洗手时感受我们产品的品质。谁隐藏在背后？汉斯格雅的动力是什么，企业的经济意义是什么，企业责任体现在哪些方面？看一下黑森林企业背后的故事及其遍布全球的产品。了解我们的企业特征。以及我们所关注的事宜。</p></section></section></section></section></section></section></section><section><section><section><section><section><section><section><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><br/></p></section></section></section></section></section></section></section><p></p>'),(5,'最新活动','0002,0003','','','','[]','','1','/about/about3',NULL),(6,'音乐资讯','0003','Music information','','','[]','','1','/gigbeat',NULL),(7,'联系','0004','CONTACT','','','[]','','1','/contact','<section><section><section><section><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; font-size: 14px; line-height: 24px;\"><span style=\"color: rgb(165, 165, 165);\"><span class=\"text-26\" style=\"padding: 0px; margin: 0px; line-height: 36px; font-size: 26px;\">联系&nbsp;</span><span style=\"padding: 0px; margin: 0px;\">/ &nbsp;Contact Us</span></span></p></section></section></section></section><p><section><section><section><section><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span class=\"text-20\" style=\"padding: 0px; margin: 0px; color: rgb(243, 54, 67); font-size: 20px;\">北京momo科技有限公司</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span class=\"text-12\" style=\"padding: 0px; margin: 0px; color: rgb(153, 153, 153); font-size: 12px;\">Shang Hai&nbsp; Communication Co. Ltd.</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span style=\"padding: 0px; margin: 0px; color: rgb(153, 153, 153);\">地址：</span><span style=\"padding: 0px; margin: 0px; color: rgb(77, 77, 77);\">北京市朝阳区世贸商务楼2688室</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span style=\"padding: 0px; margin: 0px; color: rgb(153, 153, 153);\">电话：</span><span style=\"padding: 0px; margin: 0px; color: rgb(77, 77, 77);\">+86 10 69888888</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span style=\"padding: 0px; margin: 0px; color: rgb(153, 153, 153);\">邮箱：</span><span style=\"padding: 0px; margin: 0px; color: rgb(77, 77, 77);\">website@webs.com</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span style=\"padding: 0px; margin: 0px; color: rgb(153, 153, 153);\">邮编：</span><span style=\"padding: 0px; margin: 0px; color: rgb(77, 77, 77);\">100024</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span style=\"padding: 0px; margin: 0px; color: rgb(77, 77, 77);\">https://www.baidu.com/</span></p></section></section><span class=\"col_space\" style=\"padding: 0px; margin: 0px 519px 0px 0px; display: block; flex: 0 0 auto; overflow: hidden; max-height: 20px; width: 0px;\"></span><section><section><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span class=\"text-20\" style=\"padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 20px;\">加盟合作</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span class=\"text-12\" style=\"padding: 0px; margin: 0px; color: rgb(153, 153, 153); font-size: 12px;\">Cooperative Alliance</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span style=\"padding: 0px; margin: 0px; color: rgb(153, 153, 153);\">联系人：</span><span style=\"padding: 0px; margin: 0px; color: rgb(77, 77, 77);\">江小姐</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span style=\"padding: 0px; margin: 0px; color: rgb(153, 153, 153);\">邮箱：</span><span style=\"padding: 0px; margin: 0px; color: rgb(77, 77, 77);\">website@qq.com</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-block-start: 1em; margin-block-end: 1em; line-height: 24px;\"><span style=\"padding: 0px; margin: 0px; color: rgb(153, 153, 153);\">手机：</span><span style=\"padding: 0px; margin: 0px; color: rgb(77, 77, 77);\">188-666-5188</span></p></section></section></section></section></p>'),(8,'弦乐器','0001,0001','','','','[]','','2','/product/product1',NULL),(9,'木管乐器','0001,0002','','','','[]','','2','/product/product2',NULL),(10,'铜管乐器','0001,0003','','','','[]','','2','/product/product3',NULL);

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default '',
  `email` varchar(255) default NULL,
  `pwd` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'张三',NULL,'123456'),(2,'隔壁老王',NULL,'123456789'),(3,'test','23423423@234234','234234'),(4,'小鸭子','4234234@werwe','234234'),(5,'小猪猪','4234234@werwe','524234234'),(6,'小妹妹','23423423@234234','234234'),(7,'小弟弟','23423423@234234','234234'),(8,'小弟弟2','23423423@234234','234234');

#
# Structure for table "基本信息"
#

DROP TABLE IF EXISTS `基本信息`;
CREATE TABLE `基本信息` (
  `Id` int(11) NOT NULL auto_increment,
  `标题` varchar(255) default NULL,
  `关键字` varchar(255) default NULL,
  `描述` varchar(355) default NULL,
  `Logo` varchar(255) default NULL,
  `备案号` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "基本信息"
#

INSERT INTO `基本信息` VALUES (1,'呵呵呵','','','uploads\\1577936918221logo.png','');
