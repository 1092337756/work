/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.44-log : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `blog`;

/*Table structure for table `cms_blog` */

DROP TABLE IF EXISTS `cms_blog`;

CREATE TABLE `cms_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `type` char(1) NOT NULL COMMENT '类型',
  `content_type` char(1) NOT NULL COMMENT '文本编辑器类型',
  `content` longblob COMMENT '内容',
  `content_markdown` longblob COMMENT 'Markdown格式内容',
  `Top` char(1) DEFAULT '0' COMMENT '置顶（0否 1是）',
  `views` int(11) DEFAULT '0' COMMENT '阅读',
  `status` char(1) DEFAULT '0' COMMENT '状态（0暂存 1发布）',
  `blog_pic_type` char(1) DEFAULT '0' COMMENT '首页图片类型（0地址 1上传）',
  `blog_pic` varchar(100) DEFAULT '' COMMENT '首页图片（ 1上传）',
  `blog_pic_link` varchar(100) DEFAULT '' COMMENT '首页图片（ 0地址）',
  `blog_desc` varchar(100) DEFAULT '' COMMENT '简介',
  `blog_files` text COMMENT '附件列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='博客信息表';

/*Data for the table `cms_blog` */

insert  into `cms_blog`(`id`,`create_by`,`create_time`,`update_by`,`update_time`,`title`,`type`,`content_type`,`content`,`content_markdown`,`Top`,`views`,`status`,`blog_pic_type`,`blog_pic`,`blog_pic_link`,`blog_desc`,`blog_files`) values (7,'admin','2022-01-02 12:25:26','admin','2024-06-30 21:54:00','温州美食','1','1','<p><strong style=\"color: rgb(102, 102, 102); background-color: rgba(16, 110, 190, 0.18);\">温州</strong><span style=\"color: rgb(102, 102, 102);\">菜以海鲜为主，菜品口味新鲜，淡而不薄，烹调技术讲究轻油，轻芡，注重刀工。 三丝敲鱼、锦绣鱼丝和爆墨鱼花并称“瓯菜三绝”。 温州特色小吃种类繁多，有松糕、米面、炒粉干、马蹄松、灯盏糕、鱼圆等四五十个品种。 其中最受欢迎的是鱼圆、矮人松糕、胶冻、敲鱼等。</span></p>',NULL,'0',92,'1','1','/profile/upload/2023/10/13/a5751a7e-b235-4ebe-8093-59d2aa2c86f7.jpg','','','[]'),(14,'若依','2022-01-04 14:31:31','admin','2024-06-30 21:53:48','北京美食--炸酱面','1','1','<p>	<span style=\"color: rgb(51, 51, 51);\">炸酱面，是中国传统特色</span>	<a href=\"https://baike.baidu.com/item/%E9%9D%A2%E9%A3%9F/2908690?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">面食</a>	<span style=\"color: rgb(51, 51, 51);\">，被誉为“</span>	<a href=\"https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E5%8D%81%E5%A4%A7%E9%9D%A2%E6%9D%A1/7324766?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">中国十大面条</a>	<span style=\"color: rgb(51, 51, 51);\">”之一，为</span>	<a href=\"https://baike.baidu.com/item/%E5%8C%97%E4%BA%AC%E8%8F%9C%E7%B3%BB/10857685?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">北京菜系</a>	<span style=\"color: rgb(51, 51, 51);\">，主要材料为</span>	<a href=\"https://baike.baidu.com/item/%E9%9D%A2%E6%9D%A1/386300?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">面条</a>	<span style=\"color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E9%85%B1%E6%B2%B9/1246?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">酱油</a>	<span style=\"color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E8%B1%86%E8%8A%BD/1123956?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">豆芽</a>	<span style=\"color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E9%BB%84%E7%93%9C/792541?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">黄瓜</a>	<span style=\"color: rgb(51, 51, 51);\">等，口味</span>	<a href=\"https://baike.baidu.com/item/%E5%92%B8/17530369?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">咸</a>	<span style=\"color: rgb(51, 51, 51);\">、酸辣，清新爽口，有筋道。</span>	摆放相当精致，中间盘放面条，最中央是一撮紫色的<a href=\"https://baike.baidu.com/item/%E7%82%B8%E9%85%B1/5328217?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">炸酱</a>，像一盘工艺品。炸酱面是北京富有特色的食物，由<a href=\"https://baike.baidu.com/item/%E8%8F%9C%E7%A0%81/5289244?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">菜码</a>、炸酱<a href=\"https://baike.baidu.com/item/%E6%8B%8C%E9%9D%A2%E6%9D%A1/17154095?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">拌面条</a>而成。</p><p>	将黄瓜、<a href=\"https://baike.baidu.com/item/%E9%A6%99%E6%A4%BF/1177303?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">香椿</a>、<a href=\"https://baike.baidu.com/item/%E8%B1%86%E8%8A%BD/1123956?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">豆芽</a>、<a href=\"https://baike.baidu.com/item/%E9%9D%92%E8%B1%86/3349786?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">青豆</a>、黄豆切好或煮好，做成菜码备用。然后做<a href=\"https://baike.baidu.com/item/%E7%82%B8%E9%85%B1/5328217?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">炸酱</a>，将<a href=\"https://baike.baidu.com/item/%E8%82%89%E4%B8%81/9135063?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">肉丁</a>及葱姜等放在油里炒，再加入黄豆制作的<a href=\"https://baike.baidu.com/item/%E9%BB%84%E9%85%B1/5916976?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">黄酱</a>或<a href=\"https://baike.baidu.com/item/%E7%94%9C%E9%9D%A2%E9%85%B1/1215061?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">甜面酱</a>炸炒，即成炸酱。</p><p>	面条煮熟后，捞出，老北京人称作“锅挑儿”，浇上炸酱，拌以菜码，即成炸酱面。</p><p>	炸酱面在中国的流行程度，从国内各地关于炸酱面的<a href=\"https://baike.baidu.com/item/%E9%A1%BA%E5%8F%A3%E6%BA%9C/3449238?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">顺口溜</a>可见一斑。</p><p>	在北方，常见的是<a href=\"https://baike.baidu.com/item/%E7%8C%AA%E8%82%89%E4%B8%81%E7%82%B8%E9%85%B1/18801057?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">猪肉丁炸酱</a>。是以半肥瘦猪肉丁加葱、姜、蒜等在油锅炸炒，加黄稀酱，盖上锅盖小火咕嘟10分钟。</p><p>	当肉丁被黄酱浸透了，肉皮红亮，香味四溢。而讲究的则是用<a href=\"https://baike.baidu.com/item/%E9%87%8C%E8%84%8A/10931127?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">里脊</a>丁炸酱<a href=\"https://baike.baidu.com/item/%E4%B8%89%E9%B2%9C/815740?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">三鲜</a>（虾仁、<a href=\"https://baike.baidu.com/item/%E9%87%8C%E8%84%8A/10931127?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">里脊</a>、<a href=\"https://baike.baidu.com/item/%E7%8E%89%E5%85%B0%E7%89%87/93863?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">玉兰片</a>）炸酱等，还有<a href=\"https://baike.baidu.com/item/%E6%9C%A8%E6%A8%A8/1001677?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">木樨</a>（鸡蛋）炸酱、<a href=\"https://baike.baidu.com/item/%E7%82%B8%E8%B1%86%E8%85%90/5584633?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">炸豆腐</a>丁酱、<a href=\"https://baike.baidu.com/item/%E7%83%A7%E8%8C%84%E5%AD%90/2777145?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">烧茄子</a>丁酱等素品，油而不腻。</p><p>	老北京人吃炸酱面，冷天讲究吃热的，谓之“锅儿挑”（完全不过水），热天<a href=\"https://baike.baidu.com/item/%E5%90%83%E8%BF%87%E6%B0%B4%E9%9D%A2/53756358?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">吃过水面</a>，但汤要篦尽。</p><p>	根据季节佐以各种时鲜<a href=\"https://baike.baidu.com/item/%E5%B0%8F%E8%8F%9C/6129466?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">小菜</a>，谓之“全面码儿”。初春，用掐头去尾的<a href=\"https://baike.baidu.com/item/%E8%B1%86%E8%8A%BD%E8%8F%9C/2886089?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">豆芽菜</a>（称<a href=\"https://baike.baidu.com/item/%E6%8E%90%E8%8F%9C/10577359?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">掐菜</a>）、只有两片子叶的小水<a href=\"https://baike.baidu.com/item/%E8%90%9D%E5%8D%9C%E7%BC%A8/6218995?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">萝卜缨</a>，并浇上过年剩下的<a href=\"https://baike.baidu.com/item/%E8%85%8A%E5%85%AB%E9%86%8B/3160276?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">腊八醋</a>。</p><p>	春深，在酱里放上鲜花椒蕊儿，称<a href=\"https://baike.baidu.com/item/%E8%8A%B1%E6%A4%92%E9%85%B1/17127090?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">花椒酱</a>，面码儿则是<a href=\"https://baike.baidu.com/item/%E9%9D%92%E8%92%9C/4413081?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">青蒜</a>、<a href=\"https://baike.baidu.com/item/%E9%A6%99%E6%A4%BF%E8%8A%BD/6634556?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">香椿芽</a>、掐菜、<a href=\"https://baike.baidu.com/item/%E9%9D%92%E8%B1%86/3349786?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">青豆</a>嘴、小水萝卜缨和丝（条）。<a href=\"https://baike.baidu.com/item/%E5%88%9D%E5%A4%8F/9641?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">初夏</a>则以新蒜、焯过的鲜<a href=\"https://baike.baidu.com/item/%E8%B1%8C%E8%B1%86/822636?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">豌豆</a>、<a href=\"https://baike.baidu.com/item/%E9%BB%84%E7%93%9C%E4%B8%9D/6607031?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">黄瓜丝</a>、扁豆丝、<a href=\"https://baike.baidu.com/item/%E9%9F%AD%E8%8F%9C/478849?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">韭菜</a>段等为面码儿。另外，上海、广东、韩国亦有炸酱面。</p>',NULL,'0',13,'1','1','/profile/upload/2023/10/13/5bd70aba-6df9-4187-98fc-389dcb54ad54.png','','',NULL),(17,'admin','2022-01-12 16:06:28','admin','2022-06-23 16:16:54','你好!!!!','2','1','<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p>',NULL,'0',0,'1','0','','',NULL,NULL),(18,'admin','2022-01-12 16:55:46','admin','2022-02-10 17:00:10','啊调查啊','2','1','<p>啊啊<strong>啊分</strong></p><p><br></p><ol><li>奥迪发</li><li>安抚</li></ol><p><span style=\"background-color: rgb(255, 255, 102);\">奥迪发</span></p><p><span style=\"background-color: rgb(255, 255, 102);\">﻿</span></p>',NULL,'0',0,'1','0','','',NULL,NULL),(19,'admin','2022-01-12 17:40:54','admin','2024-06-30 14:04:57','宁波美食--汤圆','1','1','<p><span style=\"color: rgb(34, 34, 34);\">宁波的美食第一个想到的肯定是宁波汤圆，圆是浙江宁波著名的汉族小吃之一，也是中国的代表小吃之一，春节，元宵节节日食俗。历史十分悠久。据传，汤圆起源于宋朝。当时明州（现浙江宁波市）兴起吃一种新奇食品，即用黑芝麻、猪脂肪油、少许白砂糖做馅，外面用糯米粉搓成球，煮熟后，吃起来香甜可口，饶有风趣。因为这种糯米球煮在锅里又浮又沉，所以它最早叫“浮元子”，后来有的地区把“浮元子”改称元宵。与大多数中国人不同，宁波人在春节早晨都有合家聚坐共进汤圆的传统习俗。说到汤圆就不得不说到缸鸭狗。是宁波有名的百年老店，以小吃闻名。那里的</span><strong style=\"color: rgb(51, 51, 51);\">汤团</strong><span style=\"color: rgb(34, 34, 34);\">颗颗饱满，芝麻馅甜而不腻，入口爽滑，口感甚好。尤其是洒在面上的那层桂花，清香扑鼻，混合着糯米的香味，刺激着人的感官，绝对会令你胃口大开。还有崇和义大道里面文鼎一号里的猪油小汤团也值得推荐。</span></p>',NULL,'0',228,'1','1','','','',NULL),(23,'yuanren','2024-04-11 18:11:06','admin','2024-06-30 21:53:55','上海美食--蟹壳黄','1','1','<p><span style=\"color: rgb(0, 0, 0);\">蟹壳黄又叫做小麻糕，作为上海的特色小吃之一，其馅包含了荠菜、白糖、葱油、豆沙四种小料。刚出炉时就像一个金黄的蟹壳，因此被称作蟹壳黄。吃上去香脆酥松、油多而不腻。其做法分为三派，甜口的以猪油白糖、豆沙、枣泥做馅、咸口的讲究用猪肉丁、还有一种是比较讲究的，得加上蟹粉、虾仁等食材才觉得正宗。</span></p>',NULL,'0',37,'1','0','','','',NULL);

/*Table structure for table `cms_blog_file` */

DROP TABLE IF EXISTS `cms_blog_file`;

CREATE TABLE `cms_blog_file` (
  `file_id` bigint(20) NOT NULL COMMENT '文件ID',
  `blog_id` bigint(20) NOT NULL COMMENT 'blogID',
  PRIMARY KEY (`file_id`,`blog_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='blog文件表';

/*Data for the table `cms_blog_file` */

insert  into `cms_blog_file`(`file_id`,`blog_id`) values (33,17),(34,17),(36,17),(37,17);

/*Table structure for table `cms_blog_tag` */

DROP TABLE IF EXISTS `cms_blog_tag`;

CREATE TABLE `cms_blog_tag` (
  `tag_id` bigint(20) NOT NULL COMMENT '标签ID',
  `blog_id` bigint(20) NOT NULL COMMENT 'blogID',
  PRIMARY KEY (`tag_id`,`blog_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='blog标签关联表';

/*Data for the table `cms_blog_tag` */

/*Table structure for table `cms_blog_type` */

DROP TABLE IF EXISTS `cms_blog_type`;

CREATE TABLE `cms_blog_type` (
  `type_id` bigint(20) NOT NULL COMMENT '类型ID',
  `blog_id` bigint(20) NOT NULL COMMENT 'blogID',
  PRIMARY KEY (`type_id`,`blog_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='blog分类关联表';

/*Data for the table `cms_blog_type` */

insert  into `cms_blog_type`(`type_id`,`blog_id`) values (13,7),(13,14),(14,19),(16,7),(16,14);

/*Table structure for table `cms_comment` */

DROP TABLE IF EXISTS `cms_comment`;

CREATE TABLE `cms_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父评论id',
  `main_id` bigint(20) DEFAULT NULL COMMENT '主评论id(第一级评论)',
  `like_num` int(11) DEFAULT NULL COMMENT '点赞数量',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `type` char(1) DEFAULT NULL COMMENT '评论类型：对人评论，对项目评论，对资源评论',
  `blog_id` bigint(20) DEFAULT NULL COMMENT '被评论者id，可以是人、项目、资源',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `user_id` bigint(20) DEFAULT NULL COMMENT '评论者id',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='评论表';

/*Data for the table `cms_comment` */

insert  into `cms_comment`(`id`,`parent_id`,`main_id`,`like_num`,`content`,`type`,`blog_id`,`del_flag`,`user_id`,`create_by`,`create_time`,`update_by`,`update_time`) values (11,NULL,NULL,0,'1','0',23,'0',1,'admin','2024-06-30 13:42:28','',NULL);

/*Table structure for table `cms_comment_like` */

DROP TABLE IF EXISTS `cms_comment_like`;

CREATE TABLE `cms_comment_like` (
  `comment_id` bigint(20) NOT NULL COMMENT '点赞评论ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`comment_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='留言点赞表';

/*Data for the table `cms_comment_like` */

/*Table structure for table `cms_message` */

DROP TABLE IF EXISTS `cms_message`;

CREATE TABLE `cms_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父留言id',
  `main_id` bigint(20) DEFAULT NULL COMMENT '主留言id(第一级留言)',
  `like_num` int(11) DEFAULT NULL COMMENT '点赞数量',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `type` char(1) DEFAULT NULL COMMENT '留言类型：对人评论，对项目评论，对资源评论（0代表留言 1代表回复）',
  `blog_id` bigint(20) DEFAULT NULL COMMENT '被留言者id，可以是人、项目、资源',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `user_id` bigint(20) DEFAULT NULL COMMENT '留言者id',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='留言表';

/*Data for the table `cms_message` */

/*Table structure for table `cms_message_like` */

DROP TABLE IF EXISTS `cms_message_like`;

CREATE TABLE `cms_message_like` (
  `message_id` bigint(20) NOT NULL COMMENT '点赞留言ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`message_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='留言点赞表';

/*Data for the table `cms_message_like` */

/*Table structure for table `cms_tag` */

DROP TABLE IF EXISTS `cms_tag`;

CREATE TABLE `cms_tag` (
  `tag_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `tag_name` varchar(50) NOT NULL COMMENT '标签名称',
  PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='标签信息表';

/*Data for the table `cms_tag` */

insert  into `cms_tag`(`tag_id`,`create_by`,`create_time`,`update_by`,`update_time`,`tag_name`) values (20,'admin','2022-01-03 22:50:05','admin','2023-10-13 14:21:20','自拍街拍'),(21,'admin','2022-01-03 22:50:23','admin','2023-10-13 14:20:51','爱护宠物'),(22,'admin','2022-01-03 22:50:43','admin','2023-10-13 14:55:09','电影'),(23,'admin','2022-01-03 23:30:28','admin','2023-10-13 14:19:31','必打卡点'),(24,'admin','2022-01-03 23:30:32','admin','2023-10-13 14:19:08','最美景点'),(25,'admin','2022-01-03 23:30:38','admin','2023-10-13 14:18:42','海鲜大餐'),(26,'若依','2022-01-04 14:48:26','admin','2023-10-13 14:18:33','小吃');

/*Table structure for table `cms_type` */

DROP TABLE IF EXISTS `cms_type`;

CREATE TABLE `cms_type` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type_name` varchar(50) NOT NULL COMMENT '分类名称',
  `type_pic` varchar(100) DEFAULT '' COMMENT '分类图像（ 1上传）',
  `type_pic_type` char(1) DEFAULT '0' COMMENT '分类图像类型（0地址 1上传）',
  `type_pic_link` varchar(100) DEFAULT '' COMMENT '分类图像（ 0地址）',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='分类信息表';

/*Data for the table `cms_type` */

insert  into `cms_type`(`type_id`,`create_by`,`create_time`,`update_by`,`update_time`,`type_name`,`type_pic`,`type_pic_type`,`type_pic_link`) values (10,'admin','2022-01-03 23:31:10','admin','2023-10-13 14:22:31','技术','','0',''),(11,'admin','2022-01-03 23:31:20','admin','2023-10-13 14:54:43','电影','','0',''),(13,'admin','2022-01-03 23:31:29','admin','2023-10-13 14:22:05','拍照','','0',''),(14,'若依','2022-01-04 14:31:23','admin','2023-10-13 14:21:50','美食','','0',''),(15,'admin','2022-01-03 21:35:44','admin','2023-10-13 14:22:56','歌曲舞蹈','','0',''),(16,'admin','2022-06-10 16:08:50','admin','2023-10-13 14:21:45','旅游','','0','');

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'sys_order','订单明细表','','','SysOrder','tree','com.ruoyi.system','order','order','订单明细','ruoyi','0','/','{\"treeCode\":\"order_id\",\"treeName\":\"order_name\",\"treeParentCode\":\"order_group\",\"parentMenuId\":\"2000\"}','admin','2021-12-13 15:54:15','','2021-12-22 11:20:25',NULL),(4,'sys_file_info','文件信息表',NULL,NULL,'SysFileInfo','crud','com.ruoyi.cms.fileInfo','cms','fileInfo','文件管理','ruoyi','0','/','{\"parentMenuId\":2007}','admin','2021-12-29 14:58:04','','2021-12-29 14:59:08',NULL),(6,'cms_blog','博客信息表',NULL,NULL,'CmsBlog','crud','com.ruoyi.cms.blog','cms','blog','文章管理','ning','0','/','{\"parentMenuId\":2007}','admin','2022-01-01 22:38:51','','2022-01-01 22:40:47',NULL),(7,'cms_tag','标签信息表',NULL,NULL,'CmsTag','crud','com.ruoyi.cms.tag','cms','tag','标签管理','ning','0','/','{\"parentMenuId\":2007}','admin','2022-01-02 14:48:25','','2022-01-02 14:49:54',NULL),(8,'cms_type','分类信息表',NULL,NULL,'CmsType','crud','com.ruoyi.cms.type','cms','type','分类管理','ning','0','/','{\"parentMenuId\":2007}','admin','2022-01-02 15:01:07','','2022-01-02 15:02:27',NULL),(10,'cms_message','留言表',NULL,NULL,'CmsMessage','crud','com.ruoyi.cms.message','cms','message','留言管理','ning','0','/','{\"parentMenuId\":2007}','admin','2022-01-15 13:56:24','','2022-01-15 13:56:57',NULL),(11,'cms_comment','评论表',NULL,NULL,'CmsComment','crud','com.ruoyi.cms.comment','cms','comment','评论管理','ning','0','/','{\"parentMenuId\":2007}','admin','2022-01-21 09:16:31','','2022-01-21 10:13:56',NULL);

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`java_type`,`java_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (1,'1','order_id','订单ID','bigint(20)','Long','orderId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-12-13 15:54:15','','2021-12-22 11:20:25'),(2,'1','order_name','订单名称','varchar(64)','String','orderName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2021-12-13 15:54:15','','2021-12-22 11:20:25'),(3,'1','order_group','订单组名','varchar(64)','String','orderGroup','0','0','1','1','1','1','1','EQ','select','sys_oper_type',3,'admin','2021-12-13 15:54:15','','2021-12-22 11:20:25'),(4,'1','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','editor','',4,'','2021-12-22 11:16:52','','2021-12-22 11:20:25'),(31,'4','file_id','文件主键id','bigint(20)','Long','fileId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(32,'4','file_origin_name','文件名称','varchar(255)','String','fileOriginName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(33,'4','file_suffix','文件类型，例如txt','varchar(255)','String','fileSuffix','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(34,'4','file_size_info','文件大小','varchar(255)','String','fileSizeInfo','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(35,'4','file_object_name','存储文件名称','varchar(255)','String','fileObjectName','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(36,'4','file_path','存储路径','varchar(255)','String','filePath','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(37,'4','del_flag','是否删除：Y-被删除，N-未删除','char(1)','String','delFlag','0','0','1','1',NULL,NULL,NULL,'EQ','input','',7,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(38,'4','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',8,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(39,'4','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',9,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(40,'4','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',10,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(41,'4','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',11,'admin','2021-12-29 14:58:04','','2021-12-29 14:59:08'),(52,'6','id','ID','bigint(20)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(53,'6','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(54,'6','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(55,'6','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(56,'6','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(57,'6','title','标题','varchar(50)','String','title','0','0','1','1','1','1','1','LIKE','input','',6,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(58,'6','type','类型','char(1)','String','type','0','0','1','1','1','1','1','EQ','select','',7,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(59,'6','content','内容','longblob','String','content','0','0',NULL,'1','1','1','1','EQ','editor','',8,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(60,'6','Top','置顶（0否 1是）','char(1)','String','top','0','0',NULL,'1','1','1','1','EQ','radio','',9,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(61,'6','views','阅读','int(11)','Long','views','0','0',NULL,'1','1','1','1','EQ','input','',10,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(62,'6','status','状态（0暂存 1发布）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','cms_blog_status',11,'admin','2022-01-01 22:38:51','','2022-01-01 22:40:47'),(63,'7','tag_id','标签ID','bigint(20)','Long','tagId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-02 14:48:25','','2022-01-02 14:49:54'),(64,'7','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2022-01-02 14:48:25','','2022-01-02 14:49:54'),(65,'7','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2022-01-02 14:48:25','','2022-01-02 14:49:54'),(66,'7','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2022-01-02 14:48:25','','2022-01-02 14:49:54'),(67,'7','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2022-01-02 14:48:25','','2022-01-02 14:49:54'),(68,'7','tag_name','标签名称','varchar(50)','String','tagName','0','0','1','1','1','1','1','LIKE','input','',6,'admin','2022-01-02 14:48:25','','2022-01-02 14:49:54'),(69,'8','type_id','分类ID','bigint(20)','Long','typeId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-02 15:01:07','','2022-01-02 15:02:27'),(70,'8','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2022-01-02 15:01:07','','2022-01-02 15:02:27'),(71,'8','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2022-01-02 15:01:07','','2022-01-02 15:02:27'),(72,'8','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2022-01-02 15:01:07','','2022-01-02 15:02:27'),(73,'8','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2022-01-02 15:01:07','','2022-01-02 15:02:27'),(74,'8','type_name','分类名称','varchar(50)','String','typeName','0','0','1','1','1','1','1','LIKE','input','',6,'admin','2022-01-02 15:01:07','','2022-01-02 15:02:27'),(75,'8','type_pic','分类图像','varchar(100)','String','typePic','0','0',NULL,'1','1','1','1','EQ','imageUpload','',7,'admin','2022-01-02 15:01:07','','2022-01-02 15:02:27'),(87,'10','id','ID','bigint(20)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(88,'10','parent_id','父留言id','bigint(20)','Long','parentId','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(89,'10','like_num','点赞数量','int(11)','Long','likeNum','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(90,'10','content','内容','varchar(255)','String','content','0','0',NULL,'1','1','1','1','EQ','textarea','',4,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(91,'10','type','留言类型：对人评论，对项目评论，对资源评论','char(1)','String','type','0','0',NULL,'1','1','1','1','EQ','select','',5,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(92,'10','blog_id','被留言者id，可以是人、项目、资源','bigint(20)','Long','blogId','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(93,'10','user_id','留言者id','bigint(20)','Long','userId','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(94,'10','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',8,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(95,'10','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',9,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(96,'10','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',10,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(97,'10','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',11,'admin','2022-01-15 13:56:24','','2022-01-15 13:56:57'),(98,'11','id','ID','bigint(20)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(99,'11','parent_id','父评论id','bigint(20)','Long','parentId','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(100,'11','main_id','主评论id(第一级评论)','bigint(20)','Long','mainId','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(101,'11','like_num','点赞数量','int(11)','Long','likeNum','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(102,'11','content','内容','varchar(255)','String','content','0','0',NULL,'1','1','1','1','LIKE','textarea','',5,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(103,'11','type','评论类型：对人评论，对项目评论，对资源评论','char(1)','String','type','0','0',NULL,'1','1','1','1','EQ','select','',6,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(104,'11','blog_id','被评论者id，可以是人、项目、资源','bigint(20)','Long','blogId','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(105,'11','del_flag','删除标志（0代表存在 1代表删除）','char(1)','String','delFlag','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',8,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(106,'11','user_id','评论者id','bigint(20)','Long','userId','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(107,'11','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',10,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(108,'11','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',11,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(109,'11','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',12,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56'),(110,'11','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',13,'admin','2022-01-21 09:16:31','','2022-01-21 10:13:56');

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_IBFK_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='Blob类型的触发器表';

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='日历信息表';

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_IBFK_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='Cron类型的触发器表';

/*Data for the table `qrtz_cron_triggers` */

insert  into `qrtz_cron_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`cron_expression`,`time_zone_id`) values ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(20) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(20) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='已触发的触发器表';

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='任务详细信息表';

/*Data for the table `qrtz_job_details` */

insert  into `qrtz_job_details`(`sched_name`,`job_name`,`job_group`,`description`,`job_class_name`,`is_durable`,`is_nonconcurrent`,`is_update_data`,`requests_recovery`,`job_data`) values ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0}��~0xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0}��~0xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0}��~0xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='存储的悲观锁信息表';

/*Data for the table `qrtz_locks` */

insert  into `qrtz_locks`(`sched_name`,`lock_name`) values ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='暂停的触发器表';

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(20) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(20) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='调度器状态表';

/*Data for the table `qrtz_scheduler_state` */

insert  into `qrtz_scheduler_state`(`sched_name`,`instance_name`,`last_checkin_time`,`checkin_interval`) values ('RuoyiScheduler','LAPTOP-NCR3F3UJ1719754898601',1719756702467,15000);

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(20) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(20) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(20) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_IBFK_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='简单触发器的信息表';

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_IBFK_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='同步机制的行锁表';

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(20) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(20) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(20) NOT NULL COMMENT '开始时间',
  `end_time` bigint(20) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(6) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_IBFK_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='触发器详细信息表';

/*Data for the table `qrtz_triggers` */

insert  into `qrtz_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`job_name`,`job_group`,`description`,`next_fire_time`,`prev_fire_time`,`priority`,`trigger_state`,`trigger_type`,`start_time`,`end_time`,`calendar_name`,`misfire_instr`,`job_data`) values ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1719754900000,-1,5,'PAUSED','CRON',1719754898000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1719754905000,-1,5,'PAUSED','CRON',1719754898000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1719754900000,-1,5,'PAUSED','CRON',1719754898000,0,NULL,2,'');

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2021-12-10 14:12:14','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2021-12-10 14:12:14','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2021-12-10 14:12:14','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaOnOff','true','Y','admin','2021-12-10 14:12:14','',NULL,'是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','true','Y','admin','2021-12-10 14:12:14','admin','2021-12-21 13:08:28','是否开启注册用户功能（true开启，false关闭）');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2021-12-10 14:12:14','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,1,'男','0','sys_user_sex','','','Y','0','admin','2021-12-10 14:12:14','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2021-12-10 14:12:14','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2021-12-10 14:12:14','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2021-12-10 14:12:14','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2021-12-10 14:12:14','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2021-12-10 14:12:14','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2021-12-10 14:12:14','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2021-12-10 14:12:14','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2021-12-10 14:12:14','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2021-12-10 14:12:14','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2021-12-10 14:12:14','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2021-12-10 14:12:14','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2021-12-10 14:12:14','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2021-12-10 14:12:14','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2021-12-10 14:12:14','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2021-12-10 14:12:14','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2021-12-10 14:12:14','',NULL,'关闭状态'),(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2021-12-10 14:12:14','',NULL,'新增操作'),(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2021-12-10 14:12:14','',NULL,'修改操作'),(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2021-12-10 14:12:14','',NULL,'删除操作'),(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2021-12-10 14:12:14','',NULL,'授权操作'),(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2021-12-10 14:12:14','',NULL,'导出操作'),(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2021-12-10 14:12:14','',NULL,'导入操作'),(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2021-12-10 14:12:14','',NULL,'强退操作'),(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2021-12-10 14:12:14','',NULL,'生成操作'),(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2021-12-10 14:12:14','',NULL,'清空操作'),(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2021-12-10 14:12:14','',NULL,'正常状态'),(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2021-12-10 14:12:14','',NULL,'停用状态'),(102,0,'已删除','Y','sys_file_info_del_flag',NULL,'danger','N','0','admin','2021-12-27 22:21:32','admin','2021-12-27 22:23:48',NULL),(103,1,'正常','N','sys_file_info_del_flag',NULL,'success','N','0','admin','2021-12-27 22:22:01','admin','2021-12-27 22:23:55',NULL),(104,0,'暂存','0','cms_blog_status',NULL,'primary','N','0','admin','2022-01-01 22:37:00','admin','2022-01-01 22:37:35',NULL),(105,0,'发布','1','cms_blog_status',NULL,'success','N','0','admin','2022-01-01 22:37:51','',NULL,NULL);

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'用户性别','sys_user_sex','0','admin','2021-12-10 14:12:14','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2021-12-10 14:12:14','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2021-12-10 14:12:14','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2021-12-10 14:12:14','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2021-12-10 14:12:14','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2021-12-10 14:12:14','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2021-12-10 14:12:14','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2021-12-10 14:12:14','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2021-12-10 14:12:14','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2021-12-10 14:12:14','',NULL,'登录状态列表'),(101,'文件状态','sys_file_info_del_flag','0','admin','2021-12-27 22:20:51','admin','2021-12-27 22:21:04','是否删除'),(102,'内容状态','cms_blog_status','0','admin','2022-01-01 22:36:30','',NULL,'暂存或发布');

/*Table structure for table `sys_file_info` */

DROP TABLE IF EXISTS `sys_file_info`;

CREATE TABLE `sys_file_info` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件主键id',
  `file_origin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件名称',
  `file_suffix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件类型，例如txt',
  `file_size_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件大小',
  `file_object_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存储文件名称',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存储路径',
  `del_flag` char(1) CHARACTER SET utf8 NOT NULL DEFAULT 'N' COMMENT '是否删除：Y-被删除，N-未删除',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文件信息表';

/*Data for the table `sys_file_info` */

insert  into `sys_file_info`(`file_id`,`file_origin_name`,`file_suffix`,`file_size_info`,`file_object_name`,`file_path`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (39,'img_1.png','png','1.63 MB','e8e540dc-7a5b-4ae3-bab3-96ff64b57c79.png','/profile/upload/2023/10/13/e8e540dc-7a5b-4ae3-bab3-96ff64b57c79.png','N','若依','2023-10-13 09:09:53','',NULL),(41,'img_1.png','png','1.63 MB','aa33575c-307a-4149-a356-534d824d6e19.png','/profile/upload/2023/10/13/aa33575c-307a-4149-a356-534d824d6e19.png','N','若依','2023-10-13 09:11:45','',NULL),(44,'1-200F11512358.jpg','jpg','97.82 kB','a5751a7e-b235-4ebe-8093-59d2aa2c86f7.jpg','/profile/upload/2023/10/13/a5751a7e-b235-4ebe-8093-59d2aa2c86f7.jpg','N','admin','2023-10-13 14:45:33','',NULL),(46,'QQ截图20231013150223.png','png','296.72 kB','5bd70aba-6df9-4187-98fc-389dcb54ad54.png','/profile/upload/2023/10/13/5bd70aba-6df9-4187-98fc-389dcb54ad54.png','N','admin','2023-10-13 15:03:33','',NULL);

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2021-12-10 14:12:14','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2021-12-10 14:12:14','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2021-12-10 14:12:14','',NULL,'');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (1,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-04-11 17:58:44'),(2,'源人','127.0.0.1','内网IP','Chrome 12','Windows 10','1','登录用户：源人 不存在','2024-04-11 17:58:55'),(3,'若依','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-04-11 17:59:49'),(4,'若依','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-04-11 17:59:56'),(5,'若依','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-04-11 18:03:31'),(6,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-04-11 18:03:41'),(7,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-04-11 18:07:11'),(8,'lixinyuan','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-04-11 18:07:27'),(9,'lixinyuan','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-04-11 18:07:34'),(10,'源人','127.0.0.1','内网IP','Chrome 12','Windows 10','0','注册成功','2024-04-11 18:07:58'),(11,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-04-11 18:08:08'),(12,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-04-11 18:08:12'),(13,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-04-11 18:08:25'),(14,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-04-11 18:08:59'),(15,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-04-11 18:09:03'),(16,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-04-11 18:09:07'),(17,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-04-11 18:09:13'),(18,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-04-11 18:10:29'),(19,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-04-11 18:10:38'),(20,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-04-11 18:11:52'),(21,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-04-11 18:12:02'),(168,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 18:24:44'),(169,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 18:29:22'),(170,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 18:30:06'),(171,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 18:48:59'),(172,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 18:50:34'),(173,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 18:52:20'),(174,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 18:52:26'),(175,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 18:53:15'),(176,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 18:53:33'),(177,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 18:55:15'),(178,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-06-13 18:58:03'),(179,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-06-13 18:58:06'),(180,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-13 18:58:09'),(181,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 18:58:16'),(182,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 18:59:41'),(183,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 18:59:56'),(184,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 19:36:43'),(185,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 19:41:41'),(186,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 19:42:01'),(187,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 19:42:34'),(188,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 19:42:43'),(189,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 19:43:30'),(190,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-13 19:43:45'),(191,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 19:43:55'),(192,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 19:44:16'),(193,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 19:44:25'),(194,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 19:45:41'),(195,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 19:45:54'),(196,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 19:46:32'),(197,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-13 19:46:41'),(198,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 19:46:46'),(199,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 19:48:32'),(200,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 19:48:45'),(201,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 19:49:28'),(202,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-13 19:49:34'),(203,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 19:49:41'),(204,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 23:16:33'),(205,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 23:17:13'),(206,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-13 23:17:20'),(207,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 23:17:26'),(208,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 23:18:57'),(209,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 23:19:27'),(210,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 23:19:33'),(211,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 23:19:44'),(212,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 23:20:11'),(213,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 23:20:17'),(214,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 23:20:50'),(215,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 23:20:58'),(216,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 23:22:22'),(217,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 23:22:53'),(218,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-13 23:24:53'),(219,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-06-13 23:27:27'),(220,'yuanren','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-13 23:27:31'),(221,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-29 19:11:18'),(222,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-29 19:16:39'),(223,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-29 22:44:36'),(224,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-06-30 12:30:06'),(225,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-30 12:30:09'),(226,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-30 12:30:18'),(227,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-30 12:49:08'),(228,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-30 13:22:13'),(229,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-30 13:22:19'),(230,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-06-30 14:23:30'),(231,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-30 14:23:36'),(232,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-30 14:23:42'),(233,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-30 14:38:31'),(234,'123','127.0.0.1','内网IP','Chrome 12','Windows 10','1','登录用户：123 不存在','2024-06-30 14:38:42'),(235,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-30 14:39:04'),(236,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-30 15:26:10'),(237,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-30 15:26:22'),(238,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-30 21:43:10');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(11) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(11) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2074 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'系统管理',0,1,'system',NULL,'',1,0,'M','0','0','','system','admin','2021-12-10 14:12:14','',NULL,'系统管理目录'),(4,'博客官网',0,4,'http://localhost:8081/cms/main/cmsIndex',NULL,'',0,0,'M','0','0','','guide','admin','2021-12-10 14:12:14','admin','2024-06-13 18:36:26','若依官网地址'),(101,'角色管理',1,4,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2021-12-10 14:12:14','admin','2021-12-10 15:43:58','角色管理菜单'),(102,'菜单管理',1,5,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2021-12-10 14:12:14','admin','2021-12-10 15:44:17','菜单管理菜单'),(106,'参数设置',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2021-12-10 14:12:14','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2021-12-10 14:12:14','',NULL,'通知公告菜单'),(1008,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2021-12-10 14:12:14','',NULL,''),(1009,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2021-12-10 14:12:14','',NULL,''),(1010,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2021-12-10 14:12:14','',NULL,''),(1011,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2021-12-10 14:12:14','',NULL,''),(1012,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2021-12-10 14:12:14','',NULL,''),(1013,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2021-12-10 14:12:14','',NULL,''),(1014,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2021-12-10 14:12:14','',NULL,''),(1015,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2021-12-10 14:12:14','',NULL,''),(1016,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2021-12-10 14:12:14','',NULL,''),(1031,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2021-12-10 14:12:14','',NULL,''),(1032,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2021-12-10 14:12:14','',NULL,''),(1033,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2021-12-10 14:12:14','',NULL,''),(1034,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2021-12-10 14:12:14','',NULL,''),(1035,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2021-12-10 14:12:14','',NULL,''),(1036,'公告查询',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2021-12-10 14:12:14','',NULL,''),(1037,'公告新增',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2021-12-10 14:12:14','',NULL,''),(1038,'公告修改',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2021-12-10 14:12:14','',NULL,''),(1039,'公告删除',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2021-12-10 14:12:14','',NULL,''),(2007,'内容管理',0,1,'cms',NULL,NULL,1,0,'M','0','0',NULL,'documentation','admin','2021-12-20 14:53:48','',NULL,''),(2026,'文件管理',2007,8,'fileInfo','cms/fileInfo/index',NULL,1,0,'C','0','0','cms:fileInfo:list','#','admin','2021-12-27 22:29:53','admin','2022-01-21 10:28:14','文件管理菜单'),(2027,'文件管理查询',2026,1,'#','',NULL,1,0,'F','0','0','cms:fileInfo:query','#','admin','2021-12-27 22:29:53','',NULL,''),(2028,'文件管理新增',2026,2,'#','',NULL,1,0,'F','0','0','cms:fileInfo:add','#','admin','2021-12-27 22:29:53','',NULL,''),(2029,'文件管理修改',2026,3,'#','',NULL,1,0,'F','0','0','cms:fileInfo:edit','#','admin','2021-12-27 22:29:53','',NULL,''),(2030,'文件管理删除',2026,4,'#','',NULL,1,0,'F','0','0','cms:fileInfo:remove','#','admin','2021-12-27 22:29:53','',NULL,''),(2031,'文件管理导出',2026,5,'#','',NULL,1,0,'F','0','0','cms:fileInfo:export','#','admin','2021-12-27 22:29:53','',NULL,''),(2032,'文章管理',2007,1,'blog','cms/blog/index',NULL,1,0,'C','0','0','cms:blog:list','#','admin','2022-01-01 22:25:42','',NULL,'文章管理菜单'),(2033,'文章管理查询',2032,1,'#','',NULL,1,0,'F','0','0','cms:blog:query','#','admin','2022-01-01 22:25:42','',NULL,''),(2034,'文章管理新增',2032,2,'#','',NULL,1,0,'F','0','0','cms:blog:add','#','admin','2022-01-01 22:25:42','',NULL,''),(2035,'文章管理修改',2032,3,'#','',NULL,1,0,'F','0','0','cms:blog:edit','#','admin','2022-01-01 22:25:42','',NULL,''),(2036,'文章管理删除',2032,4,'#','',NULL,1,0,'F','0','0','cms:blog:remove','#','admin','2022-01-01 22:25:42','',NULL,''),(2037,'文章管理导出',2032,5,'#','',NULL,1,0,'F','0','0','cms:blog:export','#','admin','2022-01-01 22:25:42','',NULL,''),(2038,'随笔管理',2007,2,'essay','cms/blog/essay',NULL,1,0,'C','0','0','cms:blog:list','#','admin','2022-01-02 02:48:37','',NULL,'随笔管理菜单'),(2039,'随笔管理查询',2038,1,'#','',NULL,1,0,'F','0','0','cms:blog:query','#','admin','2022-01-02 02:48:37','',NULL,''),(2040,'随笔管理新增',2038,2,'#','',NULL,1,0,'F','0','0','cms:blog:add','#','admin','2022-01-02 02:48:37','',NULL,''),(2041,'随笔管理修改',2038,3,'#','',NULL,1,0,'F','0','0','cms:blog:edit','#','admin','2022-01-02 02:48:37','',NULL,''),(2042,'随笔管理删除',2038,4,'#','',NULL,1,0,'F','0','0','cms:blog:remove','#','admin','2022-01-02 02:48:37','',NULL,''),(2043,'随笔管理导出',2038,5,'#','',NULL,1,0,'F','0','0','cms:blog:export','#','admin','2022-01-02 02:48:37','',NULL,''),(2044,'文档管理',2007,3,'doucuments','cms/blog/doucuments',NULL,1,0,'C','0','1','cms:blog:list','#','admin','2022-01-02 02:58:41','admin','2022-02-08 18:01:09','文档管理菜单'),(2045,'文档管理查询',2044,1,'#','',NULL,1,0,'F','0','0','cms:blog:query','#','admin','2022-01-02 02:58:41','',NULL,''),(2046,'文档管理新增',2044,2,'#','',NULL,1,0,'F','0','0','cms:blog:add','#','admin','2022-01-02 02:58:41','',NULL,''),(2047,'文档管理修改',2044,3,'#','',NULL,1,0,'F','0','0','cms:blog:edit','#','admin','2022-01-02 02:58:41','',NULL,''),(2048,'文档管理删除',2044,4,'#','',NULL,1,0,'F','0','0','cms:blog:remove','#','admin','2022-01-02 02:58:41','',NULL,''),(2049,'文档管理导出',2044,5,'#','',NULL,1,0,'F','0','0','cms:blog:export','#','admin','2022-01-02 02:58:41','',NULL,''),(2050,'标签管理',2007,5,'tag','cms/tag/index',NULL,1,0,'C','0','0','cms:tag:list','#','admin','2022-01-02 14:51:38','admin','2022-01-02 14:52:31','标签管理菜单'),(2051,'标签管理查询',2050,1,'#','',NULL,1,0,'F','0','0','cms:tag:query','#','admin','2022-01-02 14:51:38','',NULL,''),(2052,'标签管理新增',2050,2,'#','',NULL,1,0,'F','0','0','cms:tag:add','#','admin','2022-01-02 14:51:38','',NULL,''),(2053,'标签管理修改',2050,3,'#','',NULL,1,0,'F','0','0','cms:tag:edit','#','admin','2022-01-02 14:51:38','',NULL,''),(2054,'标签管理删除',2050,4,'#','',NULL,1,0,'F','0','0','cms:tag:remove','#','admin','2022-01-02 14:51:38','',NULL,''),(2055,'标签管理导出',2050,5,'#','',NULL,1,0,'F','0','0','cms:tag:export','#','admin','2022-01-02 14:51:38','',NULL,''),(2056,'分类管理',2007,4,'type','cms/type/index',NULL,1,0,'C','0','0','cms:type:list','#','admin','2022-01-02 15:04:23','admin','2022-01-02 15:05:03','分类管理菜单'),(2057,'分类管理查询',2056,1,'#','',NULL,1,0,'F','0','0','cms:type:query','#','admin','2022-01-02 15:04:23','',NULL,''),(2058,'分类管理新增',2056,2,'#','',NULL,1,0,'F','0','0','cms:type:add','#','admin','2022-01-02 15:04:23','',NULL,''),(2059,'分类管理修改',2056,3,'#','',NULL,1,0,'F','0','0','cms:type:edit','#','admin','2022-01-02 15:04:23','',NULL,''),(2060,'分类管理删除',2056,4,'#','',NULL,1,0,'F','0','0','cms:type:remove','#','admin','2022-01-02 15:04:23','',NULL,''),(2061,'分类管理导出',2056,5,'#','',NULL,1,0,'F','0','0','cms:type:export','#','admin','2022-01-02 15:04:23','',NULL,''),(2062,'留言管理',2007,6,'message','cms/message/index',NULL,1,0,'C','0','0','cms:message:list','#','admin','2022-01-15 13:47:29','admin','2022-01-15 13:49:11','留言管理菜单'),(2063,'留言管理查询',2062,1,'#','',NULL,1,0,'F','0','0','cms:message:query','#','admin','2022-01-15 13:47:29','',NULL,''),(2064,'留言管理新增',2062,2,'#','',NULL,1,0,'F','0','0','cms:message:add','#','admin','2022-01-15 13:47:29','',NULL,''),(2065,'留言管理修改',2062,3,'#','',NULL,1,0,'F','0','0','cms:message:edit','#','admin','2022-01-15 13:47:29','',NULL,''),(2066,'留言管理删除',2062,4,'#','',NULL,1,0,'F','0','0','cms:message:remove','#','admin','2022-01-15 13:47:29','',NULL,''),(2067,'留言管理导出',2062,5,'#','',NULL,1,0,'F','0','0','cms:message:export','#','admin','2022-01-15 13:47:29','',NULL,''),(2068,'评论管理',2007,7,'comment','cms/comment/index',NULL,1,0,'C','0','0','cms:comment:list','#','admin','2022-01-21 10:27:25','admin','2022-01-21 10:28:24','评论管理菜单'),(2069,'评论管理查询',2068,1,'#','',NULL,1,0,'F','0','0','cms:comment:query','#','admin','2022-01-21 10:27:25','',NULL,''),(2070,'评论管理新增',2068,2,'#','',NULL,1,0,'F','0','0','cms:comment:add','#','admin','2022-01-21 10:27:25','',NULL,''),(2071,'评论管理修改',2068,3,'#','',NULL,1,0,'F','0','0','cms:comment:edit','#','admin','2022-01-21 10:27:25','',NULL,''),(2072,'评论管理删除',2068,4,'#','',NULL,1,0,'F','0','0','cms:comment:remove','#','admin','2022-01-21 10:27:25','',NULL,''),(2073,'评论管理导出',2068,5,'#','',NULL,1,0,'F','0','0','cms:comment:export','#','admin','2022-01-21 10:27:25','',NULL,'');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2021-12-10 14:12:14','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','<h1 class=\"ql-align-center\">维护通知</h1><p>	通知:2018-07-01 若依系统凌晨维护</p><p class=\"ql-align-center\"><br></p>','0','admin','2021-12-10 14:12:14','admin','2022-01-15 14:41:23','管理员');

/*Table structure for table `sys_notice_file` */

DROP TABLE IF EXISTS `sys_notice_file`;

CREATE TABLE `sys_notice_file` (
  `file_id` bigint(20) NOT NULL COMMENT '文件ID',
  `notice_id` bigint(20) NOT NULL COMMENT '通知公告ID',
  PRIMARY KEY (`file_id`,`notice_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通知公告文件表';

/*Data for the table `sys_notice_file` */

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(11) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`) values (1,'操作日志',9,'com.ruoyi.web.controller.monitor.SysOperlogController.clean()','DELETE',1,'admin',NULL,'/monitor/operlog/clean','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:53:36'),(2,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/111','127.0.0.1','内网IP','{menuId=111}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:54:47'),(3,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/114','127.0.0.1','内网IP','{menuId=114}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:29'),(4,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/116','127.0.0.1','内网IP','{menuId=116}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:31'),(5,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1055','127.0.0.1','内网IP','{menuId=1055}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:36'),(6,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1056','127.0.0.1','内网IP','{menuId=1056}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:38'),(7,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1058','127.0.0.1','内网IP','{menuId=1058}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:40'),(8,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1059','127.0.0.1','内网IP','{menuId=1059}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:42'),(9,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1060','127.0.0.1','内网IP','{menuId=1060}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:44'),(10,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1057','127.0.0.1','内网IP','{menuId=1057}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:47'),(11,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/115','127.0.0.1','内网IP','{menuId=115}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:49'),(12,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/3','127.0.0.1','内网IP','{menuId=3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:55:52'),(13,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/4','127.0.0.1','内网IP','{menuId=4}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}',0,NULL,'2024-04-11 17:55:58'),(14,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/4','127.0.0.1','内网IP','{menuId=4}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}',0,NULL,'2024-04-11 17:56:09'),(15,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"博客官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"www.baidu.com\",\"children\":[],\"createTime\":1639116734000,\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}','{\"msg\":\"修改菜单\'博客官网\'失败，地址必须以http(s)://开头\",\"code\":500}',0,NULL,'2024-04-11 17:56:36'),(16,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"博客官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http//:www.baidu.com\",\"children\":[],\"createTime\":1639116734000,\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}','{\"msg\":\"修改菜单\'博客官网\'失败，地址必须以http(s)://开头\",\"code\":500}',0,NULL,'2024-04-11 17:56:45'),(17,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"博客官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://www.baidu.com\",\"children\":[],\"createTime\":1639116734000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:56:55'),(18,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"博客官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://www.baidu.com\",\"children\":[],\"createTime\":1639116734000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:57:12'),(19,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"源人\",\"menuIds\":[2007,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2062,2063,2064,2065,2066,2067,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 17:58:35'),(20,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[2007,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2062,2063,2064,2065,2066,2067,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 18:04:15'),(21,'文章管理',1,'com.ruoyi.cms.blog.controller.CmsBlogController.add()','POST',1,'yuanren',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[],\"title\":\"我爱爬山\",\"type\":\"1\",\"content\":\"<p>太好玩啦</p>\",\"top\":\"0\",\"blogDesc\":\"好玩\",\"id\":23,\"contentType\":\"1\",\"blogPicType\":\"0\",\"params\":{},\"createBy\":\"yuanren\",\"createTime\":1712830265855,\"typeIds\":[],\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200,\"data\":23}',0,NULL,'2024-04-11 18:11:05'),(22,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','DELETE',1,'admin',NULL,'/system/role/3','127.0.0.1','内网IP','{roleIds=3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 18:12:21'),(23,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[2007,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2062,2063,2064,2065,2066,2067,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-04-11 18:12:34'),(209,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/113','127.0.0.1','内网IP','{menuId=113}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:34:16'),(210,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/112','127.0.0.1','内网IP','{menuId=112}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:34:21'),(211,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2','127.0.0.1','内网IP','{menuId=2}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}',0,NULL,'2024-06-13 18:34:58'),(212,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/110','127.0.0.1','内网IP','{menuId=110}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}',0,NULL,'2024-06-13 18:35:04'),(213,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1054','127.0.0.1','内网IP','{menuId=1054}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:10'),(214,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/4','127.0.0.1','内网IP','{menuId=4}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}',0,NULL,'2024-06-13 18:35:14'),(215,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1053','127.0.0.1','内网IP','{menuId=1053}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:25'),(216,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1052','127.0.0.1','内网IP','{menuId=1052}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:28'),(217,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1051','127.0.0.1','内网IP','{menuId=1051}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:30'),(218,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1050','127.0.0.1','内网IP','{menuId=1050}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:33'),(219,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1049','127.0.0.1','内网IP','{menuId=1049}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:36'),(220,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/110','127.0.0.1','内网IP','{menuId=110}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:39'),(221,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1048','127.0.0.1','内网IP','{menuId=1048}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:43'),(222,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1047','127.0.0.1','内网IP','{menuId=1047}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:46'),(223,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1046','127.0.0.1','内网IP','{menuId=1046}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:49'),(224,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/109','127.0.0.1','内网IP','{menuId=109}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:35:53'),(225,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2','127.0.0.1','内网IP','{menuId=2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:36:06'),(226,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"博客官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://localhost:8081/cms/main/cmsIndex\",\"children\":[],\"createTime\":1639116734000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:36:26'),(227,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1045','127.0.0.1','内网IP','{menuId=1045}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:38:17'),(228,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1044','127.0.0.1','内网IP','{menuId=1044}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:38:21'),(229,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1043','127.0.0.1','内网IP','{menuId=1043}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:38:26'),(230,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/501','127.0.0.1','内网IP','{menuId=501}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:38:30'),(231,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1042','127.0.0.1','内网IP','{menuId=1042}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:38:35'),(232,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1041','127.0.0.1','内网IP','{menuId=1041}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:38:39'),(233,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/1040','127.0.0.1','内网IP','{menuId=1040}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:38:42'),(234,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/500','127.0.0.1','内网IP','{menuId=500}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:38:47'),(235,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/108','127.0.0.1','内网IP','{menuId=108}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:38:50'),(236,'标签管理',1,'com.ruoyi.cms.tag.controller.CmsTagController.add()','POST',1,'yuanren',NULL,'/cms/tag','127.0.0.1','内网IP','{\"createBy\":\"yuanren\",\"createTime\":1718275934015,\"tagId\":27,\"params\":{},\"tagName\":\"11\",\"blogNum\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:52:14'),(237,'标签管理',3,'com.ruoyi.cms.tag.controller.CmsTagController.remove()','DELETE',1,'yuanren',NULL,'/cms/tag/27','127.0.0.1','内网IP','{tagIds=27}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:52:16'),(238,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[2007,2032,2033,2034,2035,2036,2037,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 18:59:34'),(239,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,2007,107,1036,1037,1038,1039,2032,2033,2034,2035,2036,2037,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 19:43:25'),(240,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,107,2007,1036,2032,2033,2034,2035,2036,2037,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 19:45:35'),(241,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,107,2007,1036,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 19:48:23'),(242,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,107,2007,2056,2050,1036,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2057,2051,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 23:18:53'),(243,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,107,2007,1036,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 23:20:45'),(244,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,107,2007,1036,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,4],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-13 23:24:47'),(245,'文章管理',2,'com.ruoyi.cms.blog.controller.CmsBlogController.edit()','PUT',1,'admin',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[],\"title\":\"宁波美食--汤圆\",\"type\":\"1\",\"content\":\"<p><span style=\\\"color: rgb(34, 34, 34);\\\">宁波的美食第一个想到的肯定是宁波汤圆，圆是浙江宁波著名的汉族小吃之一，也是中国的代表小吃之一，春节，元宵节节日食俗。历史十分悠久。据传，汤圆起源于宋朝。当时明州（现浙江宁波市）兴起吃一种新奇食品，即用黑芝麻、猪脂肪油、少许白砂糖做馅，外面用糯米粉搓成球，煮熟后，吃起来香甜可口，饶有风趣。因为这种糯米球煮在锅里又浮又沉，所以它最早叫“浮元子”，后来有的地区把“浮元子”改称元宵。与大多数中国人不同，宁波人在春节早晨都有合家聚坐共进汤圆的传统习俗。说到汤圆就不得不说到缸鸭狗。是宁波有名的百年老店，以小吃闻名。那里的</span><strong style=\\\"color: rgb(51, 51, 51);\\\">汤团</strong><span style=\\\"color: rgb(34, 34, 34);\\\">颗颗饱满，芝麻馅甜而不腻，入口爽滑，口感甚好。尤其是洒在面上的那层桂花，清香扑鼻，混合着糯米的香味，刺激着人的感官，绝对会令你胃口大开。还有崇和义大道里面文鼎一号里的猪油小汤团也值得推荐。</span></p>\",\"top\":\"0\",\"updateBy\":\"admin\",\"blogDesc\":\"汤圆很好吃\",\"id\":19,\"contentType\":\"1\",\"views\":227,\"blogPicLink\":\"\",\"types\":[{\"typeName\":\"美食\",\"updateTime\":1697178110000,\"params\":{},\"createBy\":\"若依\",\"typePicType\":\"0\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeId\":14,\"blogNum\":0,\"typePicLink\":\"\"}],\"blogPicType\":\"1\",\"updateTime\":1719725092624,\"params\":{},\"tags\":[{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"admin\",\"updateTime\":1697177913000,\"params\":{},\"tagName\":\"小吃\",\"blogNum\":0}],\"blogPic\":\"\",\"createBy\":\"admin\",\"createTime\":1641980454000,\"typeIds\":[14],\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:24:52'),(246,'文章管理',3,'com.ruoyi.cms.blog.controller.CmsBlogController.remove()','DELETE',1,'admin',NULL,'/cms/blog/16','127.0.0.1','内网IP','{ids=16}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:25:09'),(247,'文章管理',2,'com.ruoyi.cms.blog.controller.CmsBlogController.edit()','PUT',1,'admin',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[23,24],\"title\":\"温州美食\",\"type\":\"1\",\"content\":\"<p><strong style=\\\"color: rgb(102, 102, 102); background-color: rgba(16, 110, 190, 0.18);\\\">温州</strong><span style=\\\"color: rgb(102, 102, 102);\\\">菜以海鲜为主，菜品口味新鲜，淡而不薄，烹调技术讲究轻油，轻芡，注重刀工。 三丝敲鱼、锦绣鱼丝和爆墨鱼花并称“瓯菜三绝”。 温州特色小吃种类繁多，有松糕、米面、炒粉干、马蹄松、灯盏糕、鱼圆等四五十个品种。 其中最受欢迎的是鱼圆、矮人松糕、胶冻、敲鱼等。</span></p>\",\"top\":\"1\",\"updateBy\":\"admin\",\"blogDesc\":\"温州nb\",\"id\":7,\"contentType\":\"1\",\"views\":88,\"blogFiles\":\"[]\",\"blogPicLink\":\"\",\"types\":[{\"typeName\":\"拍照\",\"updateTime\":1697178125000,\"params\":{},\"createBy\":\"admin\",\"typePicType\":\"0\",\"createTime\":1641223889000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeId\":13,\"blogNum\":0,\"typePicLink\":\"\"},{\"typeName\":\"旅游\",\"updateTime\":1697178105000,\"params\":{},\"createBy\":\"admin\",\"typePicType\":\"0\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeId\":16,\"blogNum\":0,\"typePicLink\":\"\"}],\"blogPicType\":\"1\",\"updateTime\":1719725176914,\"params\":{},\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"admin\",\"updateTime\":1697177971000,\"params\":{},\"tagName\":\"必打卡点\",\"blogNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"admin\",\"updateTime\":1697177948000,\"params\":{},\"tagName\":\"最美景点\",\"blogNum\":0}],\"blogPic\":\"/profile/upload/2023/10/13/a5751a7e-b235-4ebe-8093-59d2aa2c86f7.jpg\",\"createBy\":\"admin\",\"createTime\":1641097526000,\"typeIds\":[13,16],\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:26:16'),(248,'文章管理',2,'com.ruoyi.cms.blog.controller.CmsBlogController.edit()','PUT',1,'admin',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[],\"title\":\"上海美食--蟹壳黄\",\"type\":\"1\",\"content\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">蟹壳黄又叫做小麻糕，作为上海的特色小吃之一，其馅包含了荠菜、白糖、葱油、豆沙四种小料。刚出炉时就像一个金黄的蟹壳，因此被称作蟹壳黄。吃上去香脆酥松、油多而不腻。其做法分为三派，甜口的以猪油白糖、豆沙、枣泥做馅、咸口的讲究用猪肉丁、还有一种是比较讲究的，得加上蟹粉、虾仁等食材才觉得正宗。</span></p>\",\"top\":\"0\",\"updateBy\":\"admin\",\"blogDesc\":\"上海真有趣\",\"id\":23,\"contentType\":\"1\",\"views\":1,\"blogPicLink\":\"\",\"types\":[],\"blogPicType\":\"0\",\"updateTime\":1719725241669,\"params\":{},\"tags\":[],\"blogPic\":\"\",\"createBy\":\"yuanren\",\"createTime\":1712830266000,\"typeIds\":[],\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:27:21'),(249,'文章管理',3,'com.ruoyi.cms.blog.controller.CmsBlogController.remove()','DELETE',1,'admin',NULL,'/cms/blog/22','127.0.0.1','内网IP','{ids=22}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:27:36'),(250,'文章管理',2,'com.ruoyi.cms.blog.controller.CmsBlogController.edit()','PUT',1,'admin',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[],\"title\":\"北京美食--炸酱面\",\"type\":\"1\",\"content\":\"<p>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">炸酱面，是中国传统特色</span>\\t<a href=\\\"https://baike.baidu.com/item/%E9%9D%A2%E9%A3%9F/2908690?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">面食</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">，被誉为“</span>\\t<a href=\\\"https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E5%8D%81%E5%A4%A7%E9%9D%A2%E6%9D%A1/7324766?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">中国十大面条</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">”之一，为</span>\\t<a href=\\\"https://baike.baidu.com/item/%E5%8C%97%E4%BA%AC%E8%8F%9C%E7%B3%BB/10857685?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">北京菜系</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">，主要材料为</span>\\t<a href=\\\"https://baike.baidu.com/item/%E9%9D%A2%E6%9D%A1/386300?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">面条</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">、</span>\\t<a href=\\\"https://baike.baidu.com/item/%E9%85%B1%E6%B2%B9/1246?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">酱油</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">、</span>\\t<a href=\\\"https://baike.baidu.com/item/%E8%B1%86%E8%8A%BD/1123956?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">豆芽</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">、</span>\\t<a href=\\\"https://baike.baidu.com/item/%E9%BB%84%E7%93%9C/792541?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">黄瓜</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">等，口味</span>\\t<a href=\\\"https://baike.baidu.com/item/%E5%92%B8/17530369?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">咸</a>\\t<span style','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:30:06'),(251,'文章管理',3,'com.ruoyi.cms.blog.controller.CmsBlogController.remove()','DELETE',1,'admin',NULL,'/cms/blog/13','127.0.0.1','内网IP','{ids=13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:30:13'),(252,'文章管理',3,'com.ruoyi.cms.blog.controller.CmsBlogController.remove()','DELETE',1,'admin',NULL,'/cms/blog/10','127.0.0.1','内网IP','{ids=10}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:30:19'),(253,'文章管理',2,'com.ruoyi.cms.blog.controller.CmsBlogController.edit()','PUT',1,'admin',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[],\"title\":\"温州美食\",\"type\":\"1\",\"content\":\"<p><strong style=\\\"background-color: rgba(16, 110, 190, 0.18); color: rgb(102, 102, 102);\\\">温州</strong><span style=\\\"color: rgb(102, 102, 102);\\\">菜以海鲜为主，菜品口味新鲜，淡而不薄，烹调技术讲究轻油，轻芡，注重刀工。 三丝敲鱼、锦绣鱼丝和爆墨鱼花并称“瓯菜三绝”。 温州特色小吃种类繁多，有松糕、米面、炒粉干、马蹄松、灯盏糕、鱼圆等四五十个品种。 其中最受欢迎的是鱼圆、矮人松糕、胶冻、敲鱼等。</span></p>\",\"top\":\"0\",\"updateBy\":\"admin\",\"blogDesc\":\"温州nb\",\"id\":7,\"contentType\":\"1\",\"views\":89,\"blogFiles\":\"[]\",\"blogPicLink\":\"\",\"types\":[{\"typeName\":\"拍照\",\"updateTime\":1697178125000,\"params\":{},\"createBy\":\"admin\",\"typePicType\":\"0\",\"createTime\":1641223889000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeId\":13,\"blogNum\":0,\"typePicLink\":\"\"},{\"typeName\":\"旅游\",\"updateTime\":1697178105000,\"params\":{},\"createBy\":\"admin\",\"typePicType\":\"0\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeId\":16,\"blogNum\":0,\"typePicLink\":\"\"}],\"blogPicType\":\"1\",\"updateTime\":1719725445276,\"params\":{},\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"admin\",\"updateTime\":1697177971000,\"params\":{},\"tagName\":\"必打卡点\",\"blogNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"admin\",\"updateTime\":1697177948000,\"params\":{},\"tagName\":\"最美景点\",\"blogNum\":0}],\"blogPic\":\"/profile/upload/2023/10/13/a5751a7e-b235-4ebe-8093-59d2aa2c86f7.jpg\",\"createBy\":\"admin\",\"createTime\":1641097526000,\"typeIds\":[13,16],\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:30:45'),(254,'文章管理',2,'com.ruoyi.cms.blog.controller.CmsBlogController.edit()','PUT',1,'admin',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[],\"title\":\"北京美食--炸酱面\",\"type\":\"1\",\"content\":\"<p>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">炸酱面，是中国传统特色</span>\\t<a href=\\\"https://baike.baidu.com/item/%E9%9D%A2%E9%A3%9F/2908690?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">面食</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">，被誉为“</span>\\t<a href=\\\"https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E5%8D%81%E5%A4%A7%E9%9D%A2%E6%9D%A1/7324766?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">中国十大面条</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">”之一，为</span>\\t<a href=\\\"https://baike.baidu.com/item/%E5%8C%97%E4%BA%AC%E8%8F%9C%E7%B3%BB/10857685?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">北京菜系</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">，主要材料为</span>\\t<a href=\\\"https://baike.baidu.com/item/%E9%9D%A2%E6%9D%A1/386300?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">面条</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">、</span>\\t<a href=\\\"https://baike.baidu.com/item/%E9%85%B1%E6%B2%B9/1246?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">酱油</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">、</span>\\t<a href=\\\"https://baike.baidu.com/item/%E8%B1%86%E8%8A%BD/1123956?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">豆芽</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">、</span>\\t<a href=\\\"https://baike.baidu.com/item/%E9%BB%84%E7%93%9C/792541?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">黄瓜</a>\\t<span style=\\\"color: rgb(51, 51, 51);\\\">等，口味</span>\\t<a href=\\\"https://baike.baidu.com/item/%E5%92%B8/17530369?fromModule=lemma_inlink\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(19, 110, 194);\\\">咸</a>\\t<span style','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:32:44'),(255,'文章管理',2,'com.ruoyi.cms.blog.controller.CmsBlogController.edit()','PUT',1,'admin',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[],\"title\":\"上海美食--蟹壳黄\",\"type\":\"1\",\"content\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">蟹壳黄又叫做小麻糕，作为上海的特色小吃之一，其馅包含了荠菜、白糖、葱油、豆沙四种小料。刚出炉时就像一个金黄的蟹壳，因此被称作蟹壳黄。吃上去香脆酥松、油多而不腻。其做法分为三派，甜口的以猪油白糖、豆沙、枣泥做馅、咸口的讲究用猪肉丁、还有一种是比较讲究的，得加上蟹粉、虾仁等食材才觉得正宗。</span></p>\",\"top\":\"0\",\"updateBy\":\"admin\",\"blogDesc\":\"\",\"id\":23,\"contentType\":\"1\",\"views\":2,\"blogPicLink\":\"\",\"types\":[],\"blogPicType\":\"0\",\"updateTime\":1719725979847,\"params\":{},\"tags\":[],\"blogPic\":\"\",\"createBy\":\"yuanren\",\"createTime\":1712830266000,\"typeIds\":[],\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:39:39'),(256,'文章管理',2,'com.ruoyi.cms.blog.controller.CmsBlogController.edit()','PUT',1,'admin',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[],\"title\":\"宁波美食--汤圆\",\"type\":\"1\",\"content\":\"<p><span style=\\\"color: rgb(34, 34, 34);\\\">宁波的美食第一个想到的肯定是宁波汤圆，圆是浙江宁波著名的汉族小吃之一，也是中国的代表小吃之一，春节，元宵节节日食俗。历史十分悠久。据传，汤圆起源于宋朝。当时明州（现浙江宁波市）兴起吃一种新奇食品，即用黑芝麻、猪脂肪油、少许白砂糖做馅，外面用糯米粉搓成球，煮熟后，吃起来香甜可口，饶有风趣。因为这种糯米球煮在锅里又浮又沉，所以它最早叫“浮元子”，后来有的地区把“浮元子”改称元宵。与大多数中国人不同，宁波人在春节早晨都有合家聚坐共进汤圆的传统习俗。说到汤圆就不得不说到缸鸭狗。是宁波有名的百年老店，以小吃闻名。那里的</span><strong style=\\\"color: rgb(51, 51, 51);\\\">汤团</strong><span style=\\\"color: rgb(34, 34, 34);\\\">颗颗饱满，芝麻馅甜而不腻，入口爽滑，口感甚好。尤其是洒在面上的那层桂花，清香扑鼻，混合着糯米的香味，刺激着人的感官，绝对会令你胃口大开。还有崇和义大道里面文鼎一号里的猪油小汤团也值得推荐。</span></p>\",\"top\":\"0\",\"updateBy\":\"admin\",\"blogDesc\":\"\",\"id\":19,\"contentType\":\"1\",\"views\":227,\"blogPicLink\":\"\",\"types\":[{\"typeName\":\"美食\",\"updateTime\":1697178110000,\"params\":{},\"createBy\":\"若依\",\"typePicType\":\"0\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeId\":14,\"blogNum\":0,\"typePicLink\":\"\"}],\"blogPicType\":\"1\",\"updateTime\":1719725987183,\"params\":{},\"tags\":[],\"blogPic\":\"\",\"createBy\":\"admin\",\"createTime\":1641980454000,\"typeIds\":[14],\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:39:47'),(257,'文章管理',2,'com.ruoyi.cms.blog.controller.CmsBlogController.edit()','PUT',1,'admin',NULL,'/cms/blog','127.0.0.1','内网IP','{\"tagIds\":[],\"title\":\"温州美食\",\"type\":\"1\",\"content\":\"<p><strong style=\\\"color: rgb(102, 102, 102); background-color: rgba(16, 110, 190, 0.18);\\\">温州</strong><span style=\\\"color: rgb(102, 102, 102);\\\">菜以海鲜为主，菜品口味新鲜，淡而不薄，烹调技术讲究轻油，轻芡，注重刀工。 三丝敲鱼、锦绣鱼丝和爆墨鱼花并称“瓯菜三绝”。 温州特色小吃种类繁多，有松糕、米面、炒粉干、马蹄松、灯盏糕、鱼圆等四五十个品种。 其中最受欢迎的是鱼圆、矮人松糕、胶冻、敲鱼等。</span></p>\",\"top\":\"0\",\"updateBy\":\"admin\",\"blogDesc\":\"\",\"id\":7,\"contentType\":\"1\",\"views\":90,\"blogFiles\":\"[]\",\"blogPicLink\":\"\",\"types\":[{\"typeName\":\"拍照\",\"updateTime\":1697178125000,\"params\":{},\"createBy\":\"admin\",\"typePicType\":\"0\",\"createTime\":1641223889000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeId\":13,\"blogNum\":0,\"typePicLink\":\"\"},{\"typeName\":\"旅游\",\"updateTime\":1697178105000,\"params\":{},\"createBy\":\"admin\",\"typePicType\":\"0\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeId\":16,\"blogNum\":0,\"typePicLink\":\"\"}],\"blogPicType\":\"1\",\"updateTime\":1719725995050,\"params\":{},\"tags\":[],\"blogPic\":\"/profile/upload/2023/10/13/a5751a7e-b235-4ebe-8093-59d2aa2c86f7.jpg\",\"createBy\":\"admin\",\"createTime\":1641097526000,\"typeIds\":[13,16],\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-06-30 13:39:55');

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'ceo','董事长',1,'0','admin','2021-12-10 14:12:14','',NULL,''),(2,'se','项目经理',2,'0','admin','2021-12-10 14:12:14','',NULL,''),(3,'hr','人力资源',3,'0','admin','2021-12-10 14:12:14','',NULL,''),(4,'user','普通员工',4,'0','admin','2021-12-10 14:12:14','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2021-12-10 14:12:14','',NULL,'超级管理员'),(2,'普通用户','common',2,'2',1,1,'0','0','admin','2021-12-10 14:12:14','admin','2024-06-13 23:24:47','普通角色'),(3,'内容管理员角色','cms',3,'1',1,1,'0','2','admin','2022-01-04 00:32:39','admin','2022-01-21 10:27:52',NULL);

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,100),(2,101),(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1),(2,4),(2,107),(2,1036),(2,2007),(2,2032),(2,2033),(2,2034),(2,2035),(2,2036),(2,2037),(2,2038),(2,2039),(2,2040),(2,2041),(2,2042),(2,2043),(2,2062),(2,2063),(2,2064),(2,2065),(2,2066),(2,2067),(2,2068),(2,2069),(2,2070),(2,2071),(2,2072),(2,2073);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,103,'admin','admin','00','ry@163.com','15888888888','0','/profile/avatar/2023/10/13/f5d5e34e-07ec-4582-b337-754d2eb7c5c8.jpeg','$2a$10$E34Gbl1Bsh7NwqAhxobCMOG7M2oxZfxGELFf2FfKgwV1CXKQObbMS','0','0','127.0.0.1','2024-06-30 21:43:10','admin','2021-12-10 14:12:14','','2024-06-30 21:43:10','管理员'),(2,105,'yuanren','源人','00','ry@qq.com','15666666666','1','','$2a$10$E34Gbl1Bsh7NwqAhxobCMOG7M2oxZfxGELFf2FfKgwV1CXKQObbMS','0','0','127.0.0.1','2024-06-13 23:27:31','admin','2021-12-10 14:12:14','admin','2024-06-13 23:27:31','测试员'),(3,NULL,'lixinyuan','lixinyuan','00','','','0','','$2a$10$E34Gbl1Bsh7NwqAhxobCMOG7M2oxZfxGELFf2FfKgwV1CXKQObbMS','0','0','127.0.0.1','2023-10-13 08:25:30','','2023-10-13 08:25:10','','2023-10-13 08:25:30',NULL),(4,NULL,'源人','源人','00','','','0','','$2a$10$CMOcuryhLeq5mQyITD7QROFQzQYI3Dw8YmywIJnjjPY/Pwy.zccki','0','0','',NULL,'','2024-04-11 18:07:58','',NULL,NULL);

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values (1,1),(2,2);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1),(2,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
