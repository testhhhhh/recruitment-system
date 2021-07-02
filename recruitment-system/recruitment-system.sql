/*
 Navicat Premium Data Transfer

 Source Server         : mysql5
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3307
 Source Schema         : recruitment-system

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 02/07/2021 20:30:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for candidate
-- ----------------------------
DROP TABLE IF EXISTS `candidate`;
CREATE TABLE `candidate`  (
  `candidate_id` int(255) NOT NULL,
  `c_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `personal_advantage` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '个人优势',
  `internship_experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '实习经历',
  `project_experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '项目经历',
  `educational_experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '教育经历',
  `qualification` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资格证书',
  `service_experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '服务经历',
  `social_home` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '社交主页',
  PRIMARY KEY (`candidate_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of candidate
-- ----------------------------
INSERT INTO `candidate` VALUES (1, '周星星', '男', '1999-11-20', '935538244@qq.com', '13066334912', '1)学历背景：毕业院校、所学专业、入学和毕业年份、是否为统招统分，这四个信息一个都不能少。如果是本硕的学历，请不要漏写本科学历情况(很多人本科不好就不写了，拜托，这欲盖弥彰啊)，同时注明硕士是全职还是在职的。\r\n\r\n2)工作背景：就职公司、所任职位、起止年月、所在部门、手下人数、汇报对象。这些都是我们会考察的对象。\r\n\r\n3)语言水平：就一点：会不会说英文!!!会不会说英文!!!能不能流利地说英文!!!!', '简历看得比较认真的，也不会多于30秒，实在纠结的，也不会纠结多余1分钟。目前来说，大部分都是网站式的录入简历，基本上都是一个样子。总会有人说，那么我上传附件简历可以吗。你觉得大部分的HR会下载吗?\r\n\r\n如果一定要我评价一份电子版简历的排版，那我唯一的要求是简洁大方，标点和分段正确，整篇简历除照片外不多于2种颜色，能让!', '1、作为一个java程序员，后台模块主要职责有：后台代码的编写、包括数据库操作、sql语句优化、wsdl技术调用接口、生成接口、编写接口文档、绘制流程图等。\r\n\r\n2、前台页面的实现。我主要是负责后台模块的，但是本身就会前台的一些技术，工作期间也学习了html5和css3的技术，所以在工作中也会帮助些实现前台的页面。\r\n\r\n3、git项目的管理。包括远程git仓库项目的创建与删除等、gitolite中项目操作权限的设置等。\r\n\r\n这就好多了不是。', '如果你是个写Java的，我不仅想知道你会不会写Java，我还想知道你是怎么写的，在什么样的平台上?运用了哪些框架?相关配套技术有哪些?数据库有哪些?到底写了个什么东西?为谁写的?是给公司内部使用还是做甲方的项目?是负责架构设计还是模块开发还是后期的bug调试?除了Java还会别的么?我对你了解地越多，我就越能判断出你是不是适合应聘的职位，这对我们后期的沟通就越有效。', '如果你是个写Java的，我不仅想知道你会不会写Java，我还想知道你是怎么写的，在什么样的平台上?运用了哪些框架?相关配套技术有哪些?数据库有哪些?到底写了个什么东西?为谁写的?是给公司内部使用还是做甲方的项目?是负责架构设计还是模块开发还是后期的bug调试?除了Java还会别的么?我对你了解地越多，我就越能判断出你是不是适合应聘的职位，这对我们后期的沟通就越有效。', '如果你是个写Java的，我不仅想知道你会不会写Java，我还想知道你是怎么写的，在什么样的平台上?运用了哪些框架?相关配套技术有哪些?数据库有哪些?到底写了个什么东西?为谁写的?是给公司内部使用还是做甲方的项目?是负责架构设计还是模块开发还是后期的bug调试?除了Java还会别的么?我对你了解地越多，我就越能判断出你是不是适合应聘的职位，这对我们后期的沟通就越有效。', 'https://home.firefoxchina.cn/?from=extra_start');
INSERT INTO `candidate` VALUES (2, 'vgf', '的风格', '的风格', '更好', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidate` VALUES (3, '现场v', 'df给', '更好', '接口', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidate` VALUES (5, '更好', '环节', '环节', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidate` VALUES (6, '线程', 'f ', '环节', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `father_id` int(255) NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '后端开发', 0, '1');
INSERT INTO `category` VALUES (2, 'Java', 1, '2');
INSERT INTO `category` VALUES (3, 'PHP', 1, '2');
INSERT INTO `category` VALUES (4, '移动开发', 0, '1');
INSERT INTO `category` VALUES (5, 'iOS', 4, '2');
INSERT INTO `category` VALUES (6, 'UE4', 4, '2');
INSERT INTO `category` VALUES (7, '测试', 0, '1');
INSERT INTO `category` VALUES (8, '运维', 0, '1');
INSERT INTO `category` VALUES (9, '数据', 0, '1');
INSERT INTO `category` VALUES (10, '游戏测试', 7, '2');
INSERT INTO `category` VALUES (11, 'DBA', 8, '2');
INSERT INTO `category` VALUES (12, 'ETL工程师', 9, '2');
INSERT INTO `category` VALUES (13, 'GIS工程师', 1, '2');
INSERT INTO `category` VALUES (14, 'Delphi', 1, '2');
INSERT INTO `category` VALUES (15, 'Node.js', 1, '2');
INSERT INTO `category` VALUES (16, '全栈工程师', 1, '2');
INSERT INTO `category` VALUES (17, 'C++', 1, '2');
INSERT INTO `category` VALUES (18, 'VB', 1, '2');
INSERT INTO `category` VALUES (19, 'Golang', 1, '2');
INSERT INTO `category` VALUES (20, '数据采集', 1, '2');
INSERT INTO `category` VALUES (21, 'Erlang', 1, '2');
INSERT INTO `category` VALUES (22, 'C#', 1, '2');
INSERT INTO `category` VALUES (23, '.NET', 1, '2');
INSERT INTO `category` VALUES (24, 'C', 1, '2');
INSERT INTO `category` VALUES (25, '后端开发', 1, '2');
INSERT INTO `category` VALUES (26, 'Python', 1, '2');
INSERT INTO `category` VALUES (27, 'Perl', 1, '2');
INSERT INTO `category` VALUES (28, 'Hadoop', 1, '2');
INSERT INTO `category` VALUES (29, 'Ruby', 1, '2');
INSERT INTO `category` VALUES (30, '语音/视频/图形开发', 1, '2');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `father_id` int(255) NULL DEFAULT NULL,
  `level` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '北京市', 0, 1);
INSERT INTO `city` VALUES (2, '汕头市', 0, 1);
INSERT INTO `city` VALUES (3, '广州市', 0, 1);
INSERT INTO `city` VALUES (4, '增城区', 3, 2);
INSERT INTO `city` VALUES (5, '从化区', 3, 2);
INSERT INTO `city` VALUES (6, '越秀区', 3, 2);
INSERT INTO `city` VALUES (7, '荔湾区', 3, 2);
INSERT INTO `city` VALUES (8, '天河区', 3, 2);
INSERT INTO `city` VALUES (9, '白云区', 3, 2);
INSERT INTO `city` VALUES (10, '番禺区', 3, 2);
INSERT INTO `city` VALUES (11, '潮南区', 2, 2);
INSERT INTO `city` VALUES (12, '潮阳区', 2, 2);
INSERT INTO `city` VALUES (13, '南澳区', 2, 2);
INSERT INTO `city` VALUES (14, '澄海区', 2, 2);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `company_id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `business_registration_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '工商注册号',
  `size` int(255) NULL DEFAULT NULL COMMENT '规模',
  `financing_stage` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '融资阶段',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '地址',
  `hr_id` int(255) NULL DEFAULT NULL,
  `flag` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '广州汇量信息科技有限公司', '1312131313133131', 10000, '已上市', '广州天河区天盈广场东塔43-44层', 1, 0);
INSERT INTO `company` VALUES (2, '广州aa信息科技有限公司', '风格恢复', 500, '已上市', '广州天河区天盈广场东塔43-44层', 2, 1);
INSERT INTO `company` VALUES (3, '广州阿达有限公司', '的方式', 200, '已上市', '广州天河区天盈广场东塔43-44层', 2, -1);
INSERT INTO `company` VALUES (5, '广州汇阿松大科技有限公司', '风格和', 100, '已上市', '广州天河区天盈广场东塔43-44层', 2, 1);
INSERT INTO `company` VALUES (6, '潮汕啊士大夫限公司a', 'qwe', 50, 'B轮', '广州天河区天盈广场东塔43-44层', 1, 0);
INSERT INTO `company` VALUES (7, '功能和化工有限公司', 'qwe', 1000, 'B轮', 'qwe广州天河区天盈广场东塔43-44层', 1, 0);
INSERT INTO `company` VALUES (8, '当时法国科技有限公司', 'qwe', 500, 'B轮', '广州天河区天盈广场东塔43-44层', 1, 0);

-- ----------------------------
-- Table structure for hr
-- ----------------------------
DROP TABLE IF EXISTS `hr`;
CREATE TABLE `hr`  (
  `hr_id` int(255) NOT NULL,
  `head_portrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `post` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '职务',
  `company_id` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`hr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hr
-- ----------------------------
INSERT INTO `hr` VALUES (1, '935538244@qq.com', '黄曼玲', '经理', 1);
INSERT INTO `hr` VALUES (2, '二万人', NULL, NULL, NULL);
INSERT INTO `hr` VALUES (3, '梵蒂冈', NULL, NULL, NULL);
INSERT INTO `hr` VALUES (5, '撒', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for login_password
-- ----------------------------
DROP TABLE IF EXISTS `login_password`;
CREATE TABLE `login_password`  (
  `login_id` int(255) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`login_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login_password
-- ----------------------------
INSERT INTO `login_password` VALUES (1, '1', '1');
INSERT INTO `login_password` VALUES (2, '42342342342545', '1');
INSERT INTO `login_password` VALUES (3, '42342342342545人', '11');
INSERT INTO `login_password` VALUES (4, '42353453453453挂号费', '11');
INSERT INTO `login_password` VALUES (5, 'asfas', 'asdasd');
INSERT INTO `login_password` VALUES (6, '111', '11');
INSERT INTO `login_password` VALUES (7, '1111', '1');
INSERT INTO `login_password` VALUES (8, 'asa', 'qw');
INSERT INTO `login_password` VALUES (9, 'qwe', 'qwe');
INSERT INTO `login_password` VALUES (10, 'a', 'a');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` varchar(20000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `release_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '国内大厂偏爱的留学生都具有哪些特质？', '国内大厂偏爱的留学生都具有哪些特质？\r\n\r\n墨墨·2021-06-06\r\n\r\n求职必读\r\n\r\n在疫情之前，中国的留学生在毕业后多多少少都会想要拥有一段完整的海外工作经历。自从疫情开始，这样的现象开始转变。根据BOSS直聘发布的《2021届应届生秋招早鸟报告》显示，秋招早鸟季活跃的2020届和2021届学生数量比2019届同期上涨94.3%，接近翻倍。而作为留学生的我们，哪怕有了海归的名称也不能让我们轻易获得公司的青睐，更别说竞争激烈的大厂了。那么，我们需做哪些准备才能成为国内大厂“看重”的留学生呢？\r\n\r\n1. “足金”的留学生最容易吸引眼球\r\n\r\n既然即将成为职场人，那么HR在面试的时候会很看重应聘者的相关工作经验。此时此刻，如果你有相关的实习经历、项目经历、调研经历、甚至是社团活动和课外活动，都会为你加分。如果你能有应聘岗位的相关海外实习经历，这绝对会成为你在面试时的一个亮点。所以，在完成忙碌的学业的同时，我们最好可以提前踏入社会去积累相关的经验。\r\n\r\n2. 简历和经历与所申请的岗位高度匹配\r\n\r\n在申请岗位之前，要先详细地分析自己，充分了解自己的优势和劣势。那么，你在寻找合适的岗位和公司来应聘的时候，应该去遵循着扬长避短的原则来进行选择。这样你才能在一众应聘者中脱颖而出。比如说，有一家对外贸易的公司在招聘要求中点明优先考虑有海外留学经历的应聘者。这并不是说这家公司就很看重海归这个头衔，而很可能是因为在日常工作中需要用到你扎实的英语沟通技能，并且会依赖你对于海外文化的了解来帮助公司或者是去胜任这个岗位。所以，你应去分析自己的能力是否与岗位所需高度匹配，以此来增加你的竞争力。\r\n\r\n3. 适应国内的工作方式并对行业有所了解\r\n\r\n由于天然的地理差别，留学生日常接触的工作环境和行业知识很有可能并不适用于国内的现实情况。比如国内朝九晚五的加班文化及较为复杂的人际关系，对于各种现实情况的不同可能导致同学们不同程度的不适应。所以，留学生在确定要回国求职后，最好提前询问已经在国内工作的学长学姐或者是其他相识的人，确保你充分了解国内现在的工作方式和行业的发展新资讯。在经历种种不适的时候也一定不要灰心，积极面对，相信每一位同学都可以找到自己更加舒适的职场姿态。\r\n\r\n身为留学生，我们在海外求学过程中所养成的独立生活和思考习惯，会成为我们在求职过程中的天然优势。当然，在应聘前做好充足的准备，会大幅提升我们拿到心仪offer的概率，何乐而不为呢？如果你已经有了目标的岗位或者是公司，但是却不知道他们看中的特质，那就来BOSS直聘的网站上进行搜索吧。针对具体需求来针对性地提升自己，相信你一定可以应聘上梦寐以求的岗位和公司！', '始打时');
INSERT INTO `notice` VALUES (2, '北美留学生寻找实习，如何才能优雅地networking？', '北美留学生寻找实习，如何才能优雅地networking？\r\n\r\nCarmela·2021-06-06\r\n\r\n求职必读\r\n\r\n无论你是留学生归国就业，还是想要在海外找到一份称心如意的工作，Networking都是一项必不可少的技巧。Networking又叫商业社交。北美留学生可以通过Networking快速获取理想职位的行业信息，并且积攒大量人脉，甚至还有机会获得行业大佬的内推。那么对于寻找工作的北美留学生来说，有什么方法优雅高效地进行Networking呢？\r\n\r\nCareer Fair：Career Fair是北美高校几乎都会举办的校园招聘会，而各个海外高校的Career Fair可是说是最直接的Networking方式了。在招聘会中，你可以用最直接的方式进行商业社交。留学生也可以通过Career Fair了解理想公司的招聘计划，和recruiter（招聘官）展示你的求职意愿和个人技能。甚至是和recruiter交换联系方式，为预约进行简历投递做一些准备。\r\n\r\n学校社团和组织：各种海外高校的社团和学校组织也不失为是一个高效的Networking渠道。每个专业几乎都会存在学术社团。在这些社团中，你可以交到一些有共通目标的朋友可以互相交流，学术社团也会举办各种与该专业相关的Career Fair活动。有回国计划的北美留学生，可以考虑多参加一些国际生或者华人的学生社团，因为华人社团会有更多留学生归国的有用资讯。在社团的活动时，也有可能在跟学长学姐的沟通交流过程中，获得他们所在公司的内推哦。\r\n\r\n校友资源：许多留学生在选择就读学校的时候，都会考虑这所高校的校友资源。然而，却有很多学生不知道如何“利用”校友资源。在学校官网的Alumni database（校友资料）中可以找到这所学校的校友，并且得到他们的email。因为校友的学历背景大多相似，所做的职业规划也比较类似。给校友发个email聊聊职业规划和个人兴趣，或者约学长学姐在学校里喝咖啡聊天也是不错的选择。\r\n\r\n互联网：许多职业社交网站都能为北美留学生寻找工作助一臂之力。在社交网站与人交流之前，要注意先完善你的个人信息，并且上传个人简历。如果个人资料一片空白，社交效果将会大打折扣。完善资料后，可以先添加你认识的人，再通过他们的层层推荐，最终扩大自己的职业社交圈子。当然，最直接的方式就是使用Boss直聘，直接跟公司老板或者招聘官一对一交流。千万不要忘记进行留学生身份认证，这会让你的简历获得更多关注哦！\r\n\r\nNetworking时不必过于紧张，因为Networking既可以是一次面试的过程，又可以是一次交朋友的过程。交流时尽量展现你的个人魅力，让对话自然流畅，找到双方共同的兴趣。对方如果能帮你找到工作，固然是最好。即使对方不能帮你内推简历，从跟他的交流的过程中，你也能更加了解这个行业。', 'a使得');
INSERT INTO `notice` VALUES (3, '超爱留学生的直播活动集锦，助力海归求职路', '\r\n超爱留学生的直播活动集锦，助力海归求职路\r\n\r\n海归直直·2021-06-03\r\n\r\n求职必读\r\n\r\n毫无疑问，每年的寒暑假都是留学生最期待的时候。在这稍纵即逝的时光里，不仅是度假旅游的最佳时节，也是留学生们为自己未来发展方向思考的黄金时间。小编对于留学生归国求职的迷茫及疑惑感同身受，因此推荐大家在思考之余不妨来看看BOSS直聘专为留学生们量身打造的“超爱留学生”系列的直播活动集锦。直播内容包含各大行业的求职秘籍，行业内幕，求职简历，面试技巧等多方面的内容，全方面的为你答疑解惑。大家有什么想要了解的主题，也可以在BOSS直聘APP中的留学生圈内留言提问哦。\r\n\r\n留学生真实挑战“极品”面试官第二期来啦！面对来自甲骨文，德勤资深面试官的直播面试提问，初入职场的留学生该如何轻松自如的应对面试官的“刁钻”问题呢？赶快点击图片查看最真实的面试直播回放以及面试官现场点评的面试技巧吧！\r\n\r\n线上Dating，高匹配率的密码是什么？这个520，来自Facebook的产品经理亲自为你解答Dating产品背后的逻辑和秘密。想要成为产品经理的留学生们可千万别错过直播回放哦，赶快点击图片查看吧。\r\n\r\n“留学生春招零offer ”，“留学生回国无实习经历”，打开某些社交平台，诸如此类的帖子比比皆是。这不是贩卖焦虑，也不是标题党，而是反映了目前大部分留学生的真实就业现状。不论你是正经受“内卷”风波的职场新人，还是正在对未来就业忧虑的在读生，BOSS直聘的这场直播都可以帮助大家更顺利的踏上求职之路，教你利用留学优势乘风破浪，让大厂和小而美都能为你增值！\r\n\r\n而作为最受留学生欢迎的商科，在2018-2020两年中，商科专业的申请率以32.88%排在所有留学生申请专业的首位。小编知道其中不少留学生都把投行和咨询公司作为自己求职的目标，那投行和咨询都喜欢招什么样的留学生呢？赶快点击全文查看直播科普投行、咨询招聘的那些“潜规则”，资深从业者手把手教你入门！\r\n\r\n同样，四大也是不少留学生的梦寐以求的职场归宿。因此，BOSS直聘为各位留学生小伙伴们带来了独家分享，多伦多海归学长直播聊四大招人内幕，抢先知道海归进四大必备面试笔试经验！\r\n\r\n BOSS直聘会继续为广大的留学生群体带来高质量的直播，如果你要现场参直播互动，可以打开BOSS直聘APP，填写海外就读/毕业院校后，在消息中的每日新发现找到相关直播。同时也可以继续关注BOSS直聘海归页面，了解更多行业知识，面试技巧，归国政策！\r\n', 'a使得');
INSERT INTO `notice` VALUES (5, '商科留学生必知的金融行业一级市场的细分岗位有哪些？', '\r\n商科留学生必知的金融行业一级市场的细分岗位有哪些？\r\n\r\n梅子·2021-05-28\r\n\r\n求职必读\r\n\r\n据不完全统计，每年的出国留学的学生中，有接近三分之一的学生选择读商科。而庞大的商科留学生群体的求职方向又在何处呢？今天，小编今天就带你来看看一级市场的细分岗位。 一级市场，也称发行市场或初级市场，是资本需求者将证券首次出售给公众时形成的市场。该市场主要进行新证券和票据等金融工具的买卖，其中的主要参与机构就是我们熟知的投资银行（投行）、券商和经纪人。一级市场中的主要求职机构有银行、券商、信托、基金、保险、私募、租赁监管机构及事业单位。简称：银信保证基。其他相关机构：四大、财务、八大、咨询、FA、企业投融资岗。一级市场的工作主要分为承揽、承做和承销。承揽岗位对业务人员的资源和人脉关系要求很高，青睐有资源有关系的申请人，承做岗位则需要专业能力强，能长期做项目的人，承销岗对资源和关系要求也比较高，相对而言工作强度比乘承做岗位低一些，接下来，小编给大家介绍一级市场中招聘应届生最多的机构以及有哪些不错的职位。\r\n\r\n \r\n\r\n一、银行：\r\n\r\n银行作为每年吸收应届生最多的机构，受到不少毕业生的关注和追捧。在就业压力巨大、竞争激烈的今天，银行凭借稳定、良好的工作环境和不错的发展前景脱颖而出。银行主要分为商业银行、政策性银行、中央银行等，政策性银行有三家，分别是国家开发银行、中国进出口银行、中国农业发展银行，政策性银行和总行的待遇非常好，并且因为本身具有体制内的属性，能帮助应届生解决当地户口问题，比如北京、上海户口，但这些银行的进入难度很高，对学生的学历背景要求极为严格，清北复交国外顶尖名校学生比比皆是。商业银行则是大家耳熟能详的中、农、工、建、交，以及其他的大型城商行、信用社等招生人数最多，进入难度相对不高，需要提前准备笔试和面试，尤其是笔试需要花功夫去准备。\r\n\r\n银行的职业发展上最佳选择是去到银行的利润中心部门，比如投行部和金融市场部，这些部门能自己创造利润，工资待遇和职业技能的培养都非常好，也是竞争最激烈的部门，应聘者需要有相关的实习经历和优秀的学历背景；其次就是银行的技术部门由于现在银行正在往电子化方向发展，每年技术人员招聘非常多。除去这两个不错的岗位之外，应届生最容易被分到的岗位就是柜员、客户经理或者管培生，并且会被下放到支行，职业发展和前景相对来说不是特别清晰，工作偏枯燥，收入一般。\r\n\r\n \r\n\r\n二、券商：\r\n\r\n券商投行主要分为精品投行和创新投行。精品投行：按照行业组进行划分，对某一个行业进行深度关注，新人很容易快速积累相关行业经验，对行业研究和认知会比其他入行的人员更深。应届生一般先做分析师，研究行业、上市公司及业务模型等，之后再去做项目。创新投行： A+H股，创新类业务，并购方案设计走得更前沿。投行部的专业程度高，监管严格，对人才的财务和法律素质要求非常高，工科、会计、经管等背景且实习经历优秀的同学易受投行的青睐。中小券商相对于大券商更有机会做到更顶级的业务；大券商的项目更多，平台高，发展空间好。券商行业的工作非常累，加班是常事，但是暴发性收入高，常常一个项目奖金就相当于一年的工资。\r\n\r\n三、私募股权投资基金（PE）、风险投资（VC）：\r\n\r\nPE和VC都是在企业上市之前对企业进行投资的机构，VC一般在企业发展初期就进入公司进行投资，辅助公司成长和发展，投资金额不高，但若公司成功上市，则会带来极为可观的回报PE则一般投资上市概率高的公司，相对于VC，投资时间比较晚，收益更为稳定。总的特点是，高风险高回报，很多时候，一个公司失败的项目会多到让项目组成员信心动摇、质疑自己的专业能力，因此，对从业人员的抗压能力要求也很高。由于PE、VC机构的特性，PE和VC机构对应聘者的商业素质要求极高，招聘应届生数量少，更多喜欢通过社招获得需要的人才，给应届生的机会较少。投行出身的人才可以选择去这两个机构发展。这就是一级市场三类主要工作的基本情况了，下一篇文章中我们继续来看二级市场的就业机会。\r\n\r\n', '指出的是');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `position_id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `work_requirement` varchar(2500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '职位描述',
  `work_experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '工作经验',
  `education_requirement` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学历要求',
  `salary_requirement` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资薪要求',
  `release_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发布时间',
  `hr_id` int(255) NULL DEFAULT NULL,
  `city_id` int(255) NULL DEFAULT NULL,
  `category_id` int(255) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`position_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, '后端开发实习生', 'PHP后端开发实习生\r\n职位描述\r\n1、负责项目后端接口业务代码的开发工作\r\n2、参与系统的需求评审，接口及数据库结构技术设计\r\n3、遵循项目安排完成编码开发，确保项目按时发布\r\n任职要求\r\n1、计算机及相关专业专科以上学历，有实习经验者优先\r\n2、熟悉PHP和相关的主流框架，有WEB应用开发经验者优先\r\n3、熟悉Linux、Nginx、MySQL的使用，有排查问题的能力\r\n4、解决问题思路清晰，提交高质量的代码，具备抗压能力 ', '在校/应届', '本科', '2.5k', '2021-06-21', 1, 4, 2, '广州天河区天盈广场东塔43-44层');
INSERT INTO `position` VALUES (2, '研发工程师', '１、参与公司商业智能、数据挖掘、大数据分析相关软件产品研发工作。\r\n要求；\r\n1、2022届软件工程、计算机、数学、统计学类类相关专业毕业生；\r\n2、学习能力强，致力于产品研发，热爱编程；\r\n3、精通算法和数据结构，逻辑思维能力强；\r\n4、熟悉JAVA和Web开发技术，有相关实习和项目经验者优先。', '毕业生', '本科', '12k', '2021-06-21', 1, 4, 2, '广州天河区天盈广场东塔43-44层');
INSERT INTO `position` VALUES (3, 'JAVA开发实习生', '1、 本科及以上学历，计算机相关学历优先；\r\n2、 扎实的java基础知识；\r\n3、 熟悉mysql，oracle，pgsql中一种数据库；\r\n4、 了解Spring，MyBatis，Springboot等web开发相关框架；\r\n5、 熟悉office的使用，有文档编制经验者优先；\r\n6、具有良好的沟通理解能力及团队合作意识，自学能力强。 ', '在校/应届', '硕士', '3k', '2021-06-21', 1, 4, 2, '广州天河区天盈广场东塔43-44层');
INSERT INTO `position` VALUES (4, 'php开发实习生', '岗位职责\r\n1、负责运营后台系统的开发维护、H5页面开发；\r\n2、协助内容抓取、处理，报表数据统计；\r\n3、涉及到web前端开发工作，优秀者可转golang。\r\n任职要求：\r\n1、本科及以上学历，不限专业，拥有扎实的计算机基础理论知识；\r\n2、至少熟悉一种开发语言，熟悉PHP开发优先；\r\n3、了解 HTTP 协议，Linux 系统，能使用抓包工具分析解决一些常见问题；\r\n4、掌握数据库基本操作，SQL编写；\r\n5、熟悉HTML、CSS、Javascript 等Web前端开发技术优先；\r\n6、每周能保证至少3天上班时间；优秀者有机会转golang。 ', '在校/应届', '本科', '6k', '2021-06-21', 1, 5, 3, '广州天河区天盈广场东塔43-44层');
INSERT INTO `position` VALUES (5, 'php开发实习生', '岗位职责\r\n1、负责运营后台系统的开发维护、H5页面开发；\r\n2、协助内容抓取、处理，报表数据统计；\r\n3、涉及到web前端开发工作，优秀者可转golang。\r\n任职要求：\r\n1、本科及以上学历，不限专业，拥有扎实的计算机基础理论知识；\r\n2、至少熟悉一种开发语言，熟悉PHP开发优先；\r\n3、了解 HTTP 协议，Linux 系统，能使用抓包工具分析解决一些常见问题；\r\n4、掌握数据库基本操作，SQL编写；\r\n5、熟悉HTML、CSS、Javascript 等Web前端开发技术优先；\r\n6、每周能保证至少3天上班时间；优秀者有机会转golang。 ', '在校/应届', '本科', '15k', '2021-06-21', 1, 5, 3, '广州天河区天盈广场东塔43-44层');
INSERT INTO `position` VALUES (6, 'JAVA开发实习生', '岗位职责\r\n1、负责运营后台系统的开发维护、H5页面开发；\r\n2、协助内容抓取、处理，报表数据统计；\r\n3、涉及到web前端开发工作，优秀者可转golang。\r\n任职要求：\r\n1、本科及以上学历，不限专业，拥有扎实的计算机基础理论知识；\r\n2、至少熟悉一种开发语言，熟悉PHP开发优先；\r\n3、了解 HTTP 协议，Linux 系统，能使用抓包工具分析解决一些常见问题；\r\n4、掌握数据库基本操作，SQL编写；\r\n5、熟悉HTML、CSS、Javascript 等Web前端开发技术优先；\r\n6、每周能保证至少3天上班时间；优秀者有机会转golang。 ', '在校/应届', '本科', '4k', 'Mon Jun 28 11:44:37 CST 2021', 1, 4, 2, '广州天河区天盈广场东塔43-44层');
INSERT INTO `position` VALUES (7, 'JAVA开发实习生', '岗位职责\r\n1、负责运营后台系统的开发维护、H5页面开发；\r\n2、协助内容抓取、处理，报表数据统计；\r\n3、涉及到web前端开发工作，优秀者可转golang。\r\n任职要求：\r\n1、本科及以上学历，不限专业，拥有扎实的计算机基础理论知识；\r\n2、至少熟悉一种开发语言，熟悉PHP开发优先；\r\n3、了解 HTTP 协议，Linux 系统，能使用抓包工具分析解决一些常见问题；\r\n4、掌握数据库基本操作，SQL编写；\r\n5、熟悉HTML、CSS、Javascript 等Web前端开发技术优先；\r\n6、每周能保证至少3天上班时间；优秀者有机会转golang。 ', '在校/应届', '本科', '8k', 'Mon Jun 28 11:44:56 CST 2021', 1, 5, 2, '广州天河区天盈广场东塔43-44层');
INSERT INTO `position` VALUES (8, 'JAVA开发实习生', '岗位职责\r\n1、负责运营后台系统的开发维护、H5页面开发；\r\n2、协助内容抓取、处理，报表数据统计；\r\n3、涉及到web前端开发工作，优秀者可转golang。\r\n任职要求：\r\n1、本科及以上学历，不限专业，拥有扎实的计算机基础理论知识；\r\n2、至少熟悉一种开发语言，熟悉PHP开发优先；\r\n3、了解 HTTP 协议，Linux 系统，能使用抓包工具分析解决一些常见问题；\r\n4、掌握数据库基本操作，SQL编写；\r\n5、熟悉HTML、CSS、Javascript 等Web前端开发技术优先；\r\n6、每周能保证至少3天上班时间；优秀者有机会转golang。 ', '在校/应届', '本科', '6k', 'Mon Jun 28 11:48:13 CST 2021', 1, 11, 2, '广州天河区天盈广场东塔43-44层');
INSERT INTO `position` VALUES (9, 'JAVA开发实习生', '岗位职责\r\n1、负责运营后台系统的开发维护、H5页面开发；\r\n2、协助内容抓取、处理，报表数据统计；\r\n3、涉及到web前端开发工作，优秀者可转golang。\r\n任职要求：\r\n1、本科及以上学历，不限专业，拥有扎实的计算机基础理论知识；\r\n2、至少熟悉一种开发语言，熟悉PHP开发优先；\r\n3、了解 HTTP 协议，Linux 系统，能使用抓包工具分析解决一些常见问题；\r\n4、掌握数据库基本操作，SQL编写；\r\n5、熟悉HTML、CSS、Javascript 等Web前端开发技术优先；\r\n6、每周能保证至少3天上班时间；优秀者有机会转golang。 ', '在校/应届', '本科', '12k', 'Mon Jun 28 14:14:47 CST 2021', 1, 5, 2, '广州天河区天盈广场东塔43-44层');

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `resume_id` int(255) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `candidate_id` int(255) NULL DEFAULT NULL,
  `position_id` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`resume_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES (1, '胜多负少', NULL, NULL);
INSERT INTO `resume` VALUES (2, '士大夫', NULL, NULL);
INSERT INTO `resume` VALUES (3, '你尽快给', NULL, NULL);
INSERT INTO `resume` VALUES (5, '宣传方式', NULL, NULL);

-- ----------------------------
-- Table structure for sms
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms`  (
  `sms_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '短信验证码',
  `sms` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '短信内容',
  `dead_line` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '失效时间',
  `usable` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否有效',
  `sended` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否已发送',
  PRIMARY KEY (`sms_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
