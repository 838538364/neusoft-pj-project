/*
 Navicat Premium Data Transfer

 Source Server         : Mysql_conn
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 06/12/2021 10:54:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fl_ability_division
-- ----------------------------
DROP TABLE IF EXISTS `fl_ability_division`;
CREATE TABLE `fl_ability_division`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `emp_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `emp_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职工姓名',
  `post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职务',
  `division` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分工',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '1.2.2-2学校领导分工一览表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_ability_division
-- ----------------------------
INSERT INTO `fl_ability_division` VALUES (1, '123', '华哥', '大佬', '后端', '1', NULL, '2021-11-18 20:34:19', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fl_ability_lead
-- ----------------------------
DROP TABLE IF EXISTS `fl_ability_lead`;
CREATE TABLE `fl_ability_lead`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `emp_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `emp_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职工姓名',
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职务',
  `word_time` datetime(0) NOT NULL COMMENT '任职时间',
  `highest_education` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '最高学历',
  `title` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职称',
  `resume` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '个人简历',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '1.2.2-1学校领导一览表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_ability_lead
-- ----------------------------
INSERT INTO `fl_ability_lead` VALUES (4, '123', '张三', '1', '123', '2021-01-02 00:00:00', '大专', '老师', '无', '1', NULL, '2021-11-18 17:28:35', NULL, '2021-11-22 12:17:57', '');

-- ----------------------------
-- Table structure for fl_tcp_lecture
-- ----------------------------
DROP TABLE IF EXISTS `fl_tcp_lecture`;
CREATE TABLE `fl_tcp_lecture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `lecture_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '讲座主题',
  `lecture_time` datetime(0) NOT NULL COMMENT '讲座时间',
  `stu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `emp_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职工姓名',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职称',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '1.2.3-4 学术讲座表(fl_tcp_lecture)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fl_tcp_paper
-- ----------------------------
DROP TABLE IF EXISTS `fl_tcp_paper`;
CREATE TABLE `fl_tcp_paper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `stu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `major` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `cla` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `teacher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '指导老师',
  `paper_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '论文题目',
  `project_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科研项目名称',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '1.2.3-3毕业论文统计表(fl_tcp_paper)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'fl_ability_lead', '1.2.2-1学校领导一览表', NULL, NULL, 'FlAbilityLead', 'crud', 'com.ruoyi.system', 'system', 'lead', '1.2.2-1学校领导一览', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"\",\"treeCode\":\"\"}', 'admin', '2021-11-17 22:13:06', '', '2021-11-17 22:35:38', '');
INSERT INTO `gen_table` VALUES (2, 'fl_ability_division', '1.2.2-2学校领导分工一览表', NULL, NULL, 'FlAbilityDivision', 'crud', 'com.ruoyi', 'system', 'division', '1.2.2-2学校领导分工一览', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1063\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"办学思路与领导作用\",\"treeCode\":\"\"}', 'admin', '2021-11-17 22:33:39', '', '2021-12-06 10:34:38', '');
INSERT INTO `gen_table` VALUES (3, 'fl_tcp_lecture', '1.2.3-4 学术讲座表(fl_tcp_lecture)', NULL, NULL, 'FlTcpLecture', 'crud', 'com.ruoyi', 'system', 'lecture', '1.2.3-4 学术讲座(fl_tcp_lecture)', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1063\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"办学思路与领导作用\",\"treeCode\":\"\"}', 'admin', '2021-11-17 22:33:39', '', '2021-11-17 23:10:39', '');
INSERT INTO `gen_table` VALUES (4, 'fl_tcp_paper', '1.2.3-3毕业论文统计表(fl_tcp_paper)', NULL, NULL, 'FlTcpPaper', 'crud', 'com.ruoyi', 'system', 'paper', '1.2.3-3毕业论文统计(fl_tcp_paper)', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1063\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"办学思路与领导作用\",\"treeCode\":\"\"}', 'admin', '2021-11-17 22:33:39', '', '2021-11-17 23:11:40', '');
INSERT INTO `gen_table` VALUES (5, 'ptm_edu_guided', '1.3.2-3 各学院聘请企业人员指导实习情况表', NULL, NULL, 'PtmEduGuided', 'crud', 'com.ruoyi', 'system', 'guided', '各学院聘请企业人员指导实习情况', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1063\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"办学思路与领导作用\",\"treeCode\":\"\"}', 'admin', '2021-11-17 22:33:39', '', '2021-11-17 23:43:50', '');
INSERT INTO `gen_table` VALUES (6, 'ptm_edu_pt_statistics', '1.3.2-7 各专业校外实践教学情况统计表', NULL, NULL, 'PtmEduPtStatistics', 'crud', 'com.ruoyi', 'system', 'statistics', '各专业校外实践教学情况统计', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1063\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"办学思路与领导作用\",\"treeCode\":\"\"}', 'admin', '2021-11-17 22:33:39', '', '2021-11-18 11:56:36', '');
INSERT INTO `gen_table` VALUES (7, 'ptm_edu_socco_industrial', '1.3.2-6 产业学院共建情况统计览表', NULL, NULL, 'PtmEduSoccoIndustrial', 'crud', 'com.ruoyi', 'system', 'industrial', '产业学院共建情况统计览', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1063\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"办学思路与领导作用\",\"treeCode\":\"\"}', 'admin', '2021-11-17 22:33:39', '', '2021-11-17 23:42:19', '');
INSERT INTO `gen_table` VALUES (8, 'ptm_edu_teach', '1.3.2-4 各学院聘请企业人员授课情况表', NULL, NULL, 'PtmEduTeach', 'crud', 'com.ruoyi', 'system', 'teach', '各学院聘请企业人员授课情况', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1063\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"办学思路与领导作用\",\"treeCode\":\"\"}', 'admin', '2021-11-17 22:33:39', '', '2021-11-17 23:41:37', '');
INSERT INTO `gen_table` VALUES (9, 'ptm_edu_thesis_guidance', '1.3.2-4 各学院聘请企业人员指导毕业论文情况统计表', NULL, NULL, 'PtmEduThesisGuidance', 'crud', 'com.ruoyi', 'system', 'guidance', '各学院聘请企业人员指导毕业论文情况统计', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1072\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"产学研合作教育\",\"treeCode\":\"\"}', 'admin', '2021-11-18 11:45:49', '', '2021-11-18 11:46:57', '');
INSERT INTO `gen_table` VALUES (10, 'moral_chara_outstanding_graduate', '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例', NULL, NULL, 'MoralCharaOutstandingGraduate', 'crud', 'com.ruoyi.system', 'system', 'graduate', '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:25', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (11, 'moral_chara_party_development', '7.1.2-1 各专业党员发展计划、发展情况汇总表', NULL, NULL, 'MoralCharaPartyDevelopment', 'crud', 'com.ruoyi.system', 'system', 'development', '7.1.2-1 各专业党员发展计划、发展情况汇总', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"\",\"treeCode\":\"\"}', 'admin', '2021-12-01 01:07:26', '', '2021-12-06 10:39:20', '');
INSERT INTO `gen_table` VALUES (12, 'moral_edu_activities', ' 7.1.1-1近三年个专业思想教育活动统计表', NULL, NULL, 'MoralEduActivities', 'crud', 'com.ruoyi.system', 'system', 'activities', ' 7.1.1-1近三年个专业思想教育活动统计', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (13, 'moral_edu_art_activity', '7.1.1-3高雅艺术活动情况', NULL, NULL, 'MoralEduArtActivity', 'crud', 'com.ruoyi.system', 'system', 'activity', '7.1.1-3高雅艺术活动情况', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (14, 'moral_edu_commend', '7.1.1-2“五四表彰”、“七一表彰”表', NULL, NULL, 'MoralEduCommend', 'crud', 'com.ruoyi.system', 'system', 'commend', '7.1.1-2“五四彰”、“七一彰”', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (15, 'moral_edu_outstanding_cadres', '7.1.2-3广东东软学院各专业优秀班集体统计表', NULL, NULL, 'MoralEduOutstandingCadres', 'crud', 'com.ruoyi.system', 'system', 'cadres', '7.1.2-3广东东软学院各专业优秀班集体统计', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (16, 'moral_edu_outstanding_students', '7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计表(', NULL, NULL, 'MoralEduOutstandingStudents', 'crud', 'com.ruoyi.system', 'system', 'students', '7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (17, 'qual_system_standards', '5.2.1-2 学院制定的教学工作相关实施细则一览表', NULL, NULL, 'QualSystemStandards', 'crud', 'com.ruoyi.system', 'system', 'standards', '5.2.1-2 学院制定的教学工作相关实施细则一览', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (18, 'teach_pra_internship', '4.3.2-11 专业实习基地一览表及协议', NULL, NULL, 'TeachPraInternship', 'crud', 'com.ruoyi.system', 'system', 'internship', '4.3.2-11 专业实习基地一览及协议', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (19, 'teach_pra_outside_school', '4.3.2-10学生校外实习情况表', NULL, NULL, 'TeachPraOutsideSchool', 'crud', 'com.ruoyi.system', 'system', 'school', '4.3.2-10学生校外实习情况', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (20, 'teach_pra_project', '4.3.2-3实践学期项目汇总表', NULL, NULL, 'TeachPraProject', 'crud', 'com.ruoyi.system', 'system', 'project', '4.3.2-3实践学期项目汇总', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (21, 'teach_pra_select', '4.2.3-4实践学期学生选题汇总表', NULL, NULL, 'TeachPraSelect', 'crud', 'com.ruoyi.system', 'system', 'select', '4.2.3-4实践学期学生选题汇总', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (22, 'team_str_division', '5.1.1-1 学院教学管理职责分工一览表', NULL, NULL, 'TeamStrDivision', 'crud', 'com.ruoyi.system', 'system', 'division', '5.1.1-1 学院教学管理职责分工一览', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (23, 'team_str_honorary_certificate', '5.1.1-3 学院教学管理人员获得荣誉证书一览表', NULL, NULL, 'TeamStrHonoraryCertificate', 'crud', 'com.ruoyi.system', 'system', 'certificate', '5.1.1-3 学院教学管理人员获得荣誉证书一览', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (24, 'team_str_information', '5.1.1-2 学院教学管理人员信息表', NULL, NULL, 'TeamStrInformation', 'crud', 'com.ruoyi.system', 'system', 'information', '5.1.1-2 学院教学管理人员信息', 'ruoyi', '0', '/', NULL, 'admin', '2021-12-01 01:07:26', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 351 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (2, '1', 'emp_id', '工号', 'varchar(50)', 'String', 'empId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (3, '1', 'emp_name', '职工姓名', 'varchar(60)', 'String', 'empName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (4, '1', 'sex', '性别', 'char(2)', 'String', 'sex', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'select', 'sys_user_sex', 4, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (5, '1', 'post', '职务', 'varchar(100)', 'String', 'post', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (6, '1', 'word_time', '任职时间', 'datetime', 'Date', 'wordTime', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 6, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (7, '1', 'highest_education', '最高学历', 'varchar(80)', 'String', 'highestEducation', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (8, '1', 'title', '职称', 'varchar(80)', 'String', 'title', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (9, '1', 'resume', '个人简历', 'varchar(200)', 'String', 'resume', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (10, '1', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'radio', '', 10, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (11, '1', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (12, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (13, '1', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (14, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (15, '1', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 15, 'admin', '2021-11-17 22:13:06', NULL, '2021-11-17 22:35:38');
INSERT INTO `gen_table_column` VALUES (16, '2', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (17, '2', 'emp_id', '工号', 'varchar(50)', 'String', 'empId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (18, '2', 'emp_name', '职工姓名', 'varchar(60)', 'String', 'empName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (19, '2', 'post', '职务', 'varchar(100)', 'String', 'post', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (20, '2', 'division', '分工', 'varchar(500)', 'String', 'division', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 5, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (21, '2', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'select', 'is_use', 6, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (22, '2', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (23, '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (24, '2', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (25, '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (26, '2', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2021-11-17 22:33:39', NULL, '2021-12-06 10:34:38');
INSERT INTO `gen_table_column` VALUES (27, '3', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (28, '3', 'lecture_title', '讲座主题', 'varchar(50)', 'String', 'lectureTitle', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (29, '3', 'lecture_time', '讲座时间', 'datetime', 'Date', 'lectureTime', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 3, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (30, '3', 'stu_id', '学号', 'varchar(50)', 'String', 'stuId', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (31, '3', 'stu_name', '学生姓名', 'varchar(50)', 'String', 'stuName', '0', '0', '1', '1', '1', '1', NULL, 'LIKE', 'input', '', 5, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (32, '3', 'emp_name', '职工姓名', 'varchar(60)', 'String', 'empName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (33, '3', 'title', '职称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (34, '3', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'radio', '', 8, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (35, '3', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (36, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (37, '3', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (38, '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (39, '3', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 13, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:10:39');
INSERT INTO `gen_table_column` VALUES (40, '4', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (41, '4', 'stu_id', '学号', 'varchar(50)', 'String', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (42, '4', 'stu_name', '学生姓名', 'varchar(50)', 'String', 'stuName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (43, '4', 'major', '专业', 'varchar(60)', 'String', 'major', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (44, '4', 'cla', '班级', 'varchar(50)', 'String', 'cla', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (45, '4', 'teacher', '指导老师', 'varchar(50)', 'String', 'teacher', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (46, '4', 'paper_title', '论文题目', 'varchar(50)', 'String', 'paperTitle', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (47, '4', 'project_name', '科研项目名称', 'varchar(50)', 'String', 'projectName', '0', '0', '1', '1', '1', '1', NULL, 'LIKE', 'input', '', 8, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (48, '4', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', '', 9, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (49, '4', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (50, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (51, '4', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (52, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (53, '4', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:11:40');
INSERT INTO `gen_table_column` VALUES (54, '5', 'emp_name', '指导教师', 'varchar(50)', 'String', 'empName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 1, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (55, '5', 'highest_education', '学历', 'varchar(50)', 'String', 'highestEducation', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (56, '5', 'major', '专业', 'varchar(50)', 'String', 'major', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (57, '5', 'work_station', '工作单位', 'varchar(50)', 'String', 'workStation', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (58, '5', 'teach_time', '指导时间', 'date', 'Date', 'teachTime', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (59, '5', 'cla', '班级', 'varchar(50)', 'String', 'cla', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (60, '5', 'stu_id', '学号', 'varchar(50)', 'String', 'stuId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (61, '5', 'stu_name', '姓名', 'varchar(50)', 'String', 'stuName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 8, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (62, '5', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (63, '5', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (64, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (65, '5', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (66, '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (67, '5', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:43:50');
INSERT INTO `gen_table_column` VALUES (68, '6', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (69, '6', 'company', '实习单位名称', 'varchar(50)', 'String', 'company', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (70, '6', 'province', '所在省市', 'varchar(50)', 'String', 'province', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (71, '6', 'manager', '负责人', 'varchar(50)', 'String', 'manager', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (72, '6', 'ip_name', '实习名称', 'varchar(50)', 'String', 'ipName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 5, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (73, '6', 'pro_name', '实践活动专业名称', 'varchar(50)', 'String', 'proName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 6, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (74, '6', 'course_hours', '实习实践时间', 'date', 'Date', 'courseHours', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (75, '6', 'emp_name', '指导教师', 'varchar(50)', 'String', 'empName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (76, '6', 'number_student', '学生人数', 'varchar(50)', 'String', 'numberStudent', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (77, '6', 'practice_type', '实习实践方式', 'varchar(50)', 'String', 'practiceType', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'select', '', 10, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (78, '6', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', '', 11, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (79, '6', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (80, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (81, '6', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (82, '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (83, '6', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 16, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-18 11:56:36');
INSERT INTO `gen_table_column` VALUES (84, '7', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (85, '7', 'college_name', '学院名称', 'varchar(50)', 'String', 'collegeName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (86, '7', 'unit_industry', '共建单位及行业类', 'varchar(50)', 'String', 'unitIndustry', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (87, '7', 'manager', '负责人', 'varchar(50)', 'String', 'manager', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (88, '7', 'est_time', '组建时间', 'date', 'Date', 'estTime', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (89, '7', 'cooperation_year', '合作年限', 'varchar(50)', 'String', 'cooperationYear', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (90, '7', 'personnel_training', '人才培养', 'varchar(50)', 'String', 'personnelTraining', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (91, '7', 'construction_teacher', '师资队伍建设', 'varchar(50)', 'String', 'constructionTeacher', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (92, '7', 'textbook_dev', '教材开发', 'varchar(50)', 'String', 'textbookDev', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (93, '7', 'laboratory', '实验室投入', 'varchar(50)', 'String', 'laboratory', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (94, '7', 'other', '其他', 'varchar(50)', 'String', 'other', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (95, '7', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', '', 12, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (96, '7', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (97, '7', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (98, '7', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (99, '7', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (100, '7', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 17, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:42:19');
INSERT INTO `gen_table_column` VALUES (101, '8', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (102, '8', 'college', '所属学院', 'varchar(50)', 'String', 'college', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (103, '8', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (104, '8', 'title', '职称', 'varchar(50)', 'String', 'title', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (105, '8', 'work_time', '任职时间', 'date', 'Date', 'workTime', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (106, '8', 'year', '学年学期', 'varchar(50)', 'String', 'year', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (107, '8', 'course_code', '课程代码', 'varchar(50)', 'String', 'courseCode', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (108, '8', 'course_name', '课程名称', 'varchar(50)', 'String', 'courseName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 8, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (109, '8', 'teach_object', '授课对象', 'varchar(50)', 'String', 'teachObject', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (110, '8', 'teach_number', '授课人数', 'varchar(50)', 'String', 'teachNumber', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (111, '8', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', '', 11, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (112, '8', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (113, '8', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (114, '8', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (115, '8', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (116, '8', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 16, 'admin', '2021-11-17 22:33:39', NULL, '2021-11-17 23:41:37');
INSERT INTO `gen_table_column` VALUES (117, '9', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (118, '9', 'thesis_title', '论文(设计)题目', 'varchar(50)', 'String', 'thesisTitle', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (119, '9', 'cla', '班级', 'varchar(50)', 'String', 'cla', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (120, '9', 'stu_id', '学号', 'varchar(50)', 'String', 'stuId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (121, '9', 'stu_name', '作者', 'varchar(50)', 'String', 'stuName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 5, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (122, '9', 'major', '专业', 'varchar(50)', 'String', 'major', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (123, '9', 'emp_name', '指导老师(企业方)', 'date', 'Date', 'empName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'datetime', '', 7, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (124, '9', 'address', '所在单位', 'varchar(50)', 'String', 'address', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (125, '9', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', '', 9, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (126, '9', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (127, '9', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (128, '9', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (129, '9', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (130, '9', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2021-11-18 11:45:49', NULL, '2021-11-18 11:46:57');
INSERT INTO `gen_table_column` VALUES (131, '10', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (132, '10', 'stu_name', '姓名', 'varchar(50)', 'String', 'stuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-01 01:07:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (133, '10', 'stu_id', '学号', 'varchar(50)', 'String', 'stuId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (134, '10', 'sex', '性别', 'varchar(50)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (135, '10', 'political', '政治面貌', 'varchar(50)', 'String', 'political', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (136, '10', 'college_name', '二级学院', 'varchar(50)', 'String', 'collegeName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (137, '10', 'major', '专业', 'varchar(50)', 'String', 'major', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (138, '10', 'class_name', '班别', 'varchar(50)', 'String', 'className', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (139, '10', 'year', '学制', 'varchar(50)', 'String', 'year', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (140, '10', 'teacher_name', '辅导员', 'varchar(50)', 'String', 'teacherName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (141, '10', 'honorary_name', '荣誉称号', 'varchar(50)', 'String', 'honoraryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (142, '10', 'commend_unit', '表彰单位', 'varchar(50)', 'String', 'commendUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (143, '10', 'commend_time', '表彰时间', 'datetime', 'Date', 'commendTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (144, '10', 'is_report', '是否进行专题报道', 'varchar(50)', 'String', 'isReport', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, '10', 'other', '其他', 'varchar(50)', 'String', 'other', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (146, '10', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 16, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, '10', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, '10', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, '10', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 19, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, '10', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 20, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (151, '10', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 21, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (152, '11', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (153, '11', 'college_name', '所在支部', 'varchar(50)', 'String', 'collegeName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (154, '11', 'submit_number', '已提交入党申请书数量', 'varchar(50)', 'String', 'submitNumber', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (155, '11', 'activist_number', '现有入党积极分子存量', 'varchar(50)', 'String', 'activistNumber', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (156, '11', 'development_time', '拟发展时间（年/月）', 'varchar(50)', 'String', 'developmentTime', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (157, '11', 'development_number', '拟发展计划数', 'varchar(50)', 'String', 'developmentNumber', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (158, '11', 'party_number', '现有党员数（含预备）', 'varchar(50)', 'String', 'partyNumber', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (159, '11', 'other', '其他', 'varchar(50)', 'String', 'other', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (160, '11', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', '', 9, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (161, '11', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (162, '11', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (163, '11', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (164, '11', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (165, '11', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2021-12-01 01:07:26', NULL, '2021-12-06 10:39:21');
INSERT INTO `gen_table_column` VALUES (166, '12', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (167, '12', 'activity_time', '日期', 'varchar(50)', 'String', 'activityTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (168, '12', 'activity_title', '主题', 'varchar(50)', 'String', 'activityTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (169, '12', 'active_content', '活动内容', 'varchar(50)', 'String', 'activeContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'summernote', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (170, '12', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (171, '12', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (172, '12', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (173, '12', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (174, '12', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (175, '12', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (176, '13', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (177, '13', 'time', '日期', 'datetime', 'Date', 'time', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (178, '13', 'act_title', '活动主题', 'varchar(50)', 'String', 'actTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (179, '13', 'act_content', '活动内容', 'varchar(150)', 'String', 'actContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'summernote', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (180, '13', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (181, '13', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (182, '13', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (183, '13', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (184, '13', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (185, '13', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (186, '14', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (187, '14', 'time', '日期', 'datetime', 'Date', 'time', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (188, '14', 'stu_name', '姓名', 'varchar(50)', 'String', 'stuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (189, '14', 'sex', '性别', 'varchar(50)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (190, '14', 'marjor', '专业名称', 'varchar(50)', 'String', 'marjor', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (191, '14', 'edu_level', '培养层次', 'varchar(50)', 'String', 'eduLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (192, '14', 'five_four', '五四表彰', 'varchar(50)', 'String', 'fiveFour', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (193, '14', 'seven_one', '七一表彰', 'varchar(50)', 'String', 'sevenOne', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (194, '14', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (195, '14', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (196, '14', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (197, '14', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (198, '14', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (199, '14', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (200, '15', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (201, '15', 'secondary_college', '二级学院', 'varchar(50)', 'String', 'secondaryCollege', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (202, '15', 'grade_professional_class', '年级专业班级', 'varchar(50)', 'String', 'gradeProfessionalClass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (203, '15', 'members', '成员数', 'varchar(50)', 'String', 'members', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (204, '15', 'monitor_name', '班长姓名', 'varchar(50)', 'String', 'monitorName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (205, '15', 'counselor_name', '辅导员姓名', 'varchar(50)', 'String', 'counselorName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (206, '15', 'people_punished', '受处分人数', 'varchar(50)', 'String', 'peoplePunished', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (207, '15', 'winners', '获奖人数', 'varchar(50)', 'String', 'winners', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (208, '15', 'is_model_class', '是否推荐为学风标兵班', 'varchar(50)', 'String', 'isModelClass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (209, '15', 'honorary_title', '荣誉称号', 'varchar(50)', 'String', 'honoraryTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (210, '15', 'recognition_time', '表彰时间', 'varchar(50)', 'String', 'recognitionTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (211, '15', 'recognition_unit', '表彰单位', 'varchar(50)', 'String', 'recognitionUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (212, '15', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (213, '15', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (214, '15', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (215, '15', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (216, '15', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (217, '15', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 18, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (218, '16', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (219, '16', 'college_name', '学院名称', 'varchar(50)', 'String', 'collegeName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (220, '16', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (221, '16', 'sex', '性别', 'varchar(50)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (222, '16', 'education_level', '学历层次', 'varchar(50)', 'String', 'educationLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (223, '16', 'job_title', '职务', 'varchar(50)', 'String', 'jobTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (224, '16', 'grade_professional_class', '年级专业班级', 'varchar(50)', 'String', 'gradeProfessionalClass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (225, '16', 'honorary_title', '荣誉称号', 'varchar(50)', 'String', 'honoraryTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (226, '16', 'recognition_time', '表彰时间', 'varchar(50)', 'String', 'recognitionTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (227, '16', 'recognition_unit', '表彰单位', 'varchar(50)', 'String', 'recognitionUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (228, '16', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (229, '16', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (230, '16', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (231, '16', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (232, '16', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (233, '16', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 16, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (234, '17', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (235, '17', 'type', '类别', 'varchar(50)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (236, '17', 'file_name', '文件名称', 'varchar(50)', 'String', 'fileName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (237, '17', 'version', '版本', 'varchar(50)', 'String', 'version', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (238, '17', 'release_time', '发布日期', 'datetime', 'Date', 'releaseTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (239, '17', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (240, '17', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (241, '17', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (242, '17', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (243, '17', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (244, '17', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (245, '18', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (246, '18', 'base_name', '实习基地名称', 'varchar(50)', 'String', 'baseName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (247, '18', 'major', '面向专业', 'varchar(50)', 'String', 'major', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (248, '18', 'base_type', '基地类型', 'varchar(50)', 'String', 'baseType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (249, '18', 'address', '详细地址', 'varchar(50)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (250, '18', 'base_distance', '基地距学校距离', 'varchar(50)', 'String', 'baseDistance', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (251, '18', 'partner', '合作方联系人', 'varchar(50)', 'String', 'partner', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (252, '18', 'partner_tel', '合作方联系人电话', 'varchar(50)', 'String', 'partnerTel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (253, '18', 'practice_time', '协议书起止日期', 'varchar(50)', 'String', 'practiceTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (254, '18', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (255, '18', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (256, '18', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (257, '18', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (258, '18', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (259, '18', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 15, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (260, '19', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (261, '19', 'major', '专业', 'varchar(50)', 'String', 'major', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (262, '19', 'edu_level', '层次', 'varchar(50)', 'String', 'eduLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (263, '19', 'cla', '班级', 'varchar(50)', 'String', 'cla', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (264, '19', 'stu_id', '学号', 'varchar(50)', 'String', 'stuId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (265, '19', 'stu_name', '姓名', 'varchar(50)', 'String', 'stuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (266, '19', 'practice_address', '实习单位', 'varchar(50)', 'String', 'practiceAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (267, '19', 'practice_name', '实习指导老师', 'varchar(50)', 'String', 'practiceName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (268, '19', 'practice_time', '实习时间', 'varchar(50)', 'String', 'practiceTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (269, '19', 'practice_score', '实习成绩', 'varchar(50)', 'String', 'practiceScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (270, '19', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (271, '19', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (272, '19', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (273, '19', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (274, '19', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (275, '19', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 16, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (276, '20', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (277, '20', 'college', '开课学院', 'varchar(50)', 'String', 'college', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (278, '20', 'project_id', '项目编号', 'varchar(50)', 'String', 'projectId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (279, '20', 'project_name', '项目名称', 'varchar(50)', 'String', 'projectName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (280, '20', 'emp_name', '指导老师', 'varchar(50)', 'String', 'empName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (281, '20', 'grade', '面向年级', 'varchar(50)', 'String', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (282, '20', 'major', '面向专业', 'varchar(50)', 'String', 'major', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (283, '20', 'stu_num', '所在单位', 'varchar(50)', 'String', 'stuNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (284, '20', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (285, '20', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (286, '20', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (287, '20', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (288, '20', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (289, '20', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (290, '21', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (291, '21', 'dept_name', '开课部门', 'varchar(50)', 'String', 'deptName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (292, '21', 'stu_id', '学号', 'varchar(50)', 'String', 'stuId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (293, '21', 'stu_name', '姓名', 'varchar(50)', 'String', 'stuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (294, '21', 'grade', '年级', 'varchar(50)', 'String', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (295, '21', 'cla', '班级', 'varchar(50)', 'String', 'cla', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (296, '21', 'major', '主修专业', 'varchar(50)', 'String', 'major', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (297, '21', 'edu_level', '培养层次', 'varchar(50)', 'String', 'eduLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (298, '21', 'project_id', '项目编号', 'varchar(50)', 'String', 'projectId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (299, '21', 'project_name', '项目名称', 'varchar(50)', 'String', 'projectName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (300, '21', 'emp_name', '指导老师', 'varchar(50)', 'String', 'empName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (301, '21', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (302, '21', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (303, '21', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (304, '21', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (305, '21', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (306, '21', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 17, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (307, '22', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (308, '22', 'emp_name', '姓名', 'varchar(50)', 'String', 'empName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (309, '22', 'sex', '性别', 'varchar(50)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (310, '22', 'dept_id', '部门', 'varchar(50)', 'String', 'deptId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (311, '22', 'department', '系部', 'varchar(50)', 'String', 'department', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (312, '22', 'post', '职务', 'varchar(50)', 'String', 'post', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (313, '22', 'job', '工作职业', 'varchar(50)', 'String', 'job', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (314, '22', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (315, '22', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (316, '22', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (317, '22', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (318, '22', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (319, '22', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (320, '23', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (321, '23', 'emp_name', '姓名', 'varchar(50)', 'String', 'empName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (322, '23', 'dept_name', '部门', 'varchar(50)', 'String', 'deptName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (323, '23', 'honor_name', '荣誉名称', 'varchar(50)', 'String', 'honorName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (324, '23', 'release_', '授予单位', 'varchar(50)', 'String', 'release', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (325, '23', 'level_', '级别', 'varchar(50)', 'String', 'level', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (326, '23', 'honor_time', '获奖日期', 'datetime', 'Date', 'honorTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (327, '23', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (328, '23', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (329, '23', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (330, '23', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (331, '23', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (332, '23', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (333, '24', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (334, '24', 'emp_name', '姓名', 'varchar(50)', 'String', 'empName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (335, '24', 'sex', '性别', 'varchar(50)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (336, '24', 'dept_id', '部门', 'varchar(50)', 'String', 'deptId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (337, '24', 'idcard', '身份证号', 'varchar(50)', 'String', 'idcard', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (338, '24', 'highest_education', '最高学历', 'varchar(50)', 'String', 'highestEducation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (339, '24', 'highest_degree', '最高学位', 'varchar(50)', 'String', 'highestDegree', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (340, '24', 'tel', '联系方式', 'varchar(50)', 'String', 'tel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (341, '24', 'department', '系部', 'varchar(50)', 'String', 'department', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (342, '24', 'post', '职务', 'varchar(50)', 'String', 'post', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (343, '24', 'admin_level', '行政级别', 'varchar(50)', 'String', 'adminLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (344, '24', 'work_time', '入职时间', 'datetime', 'Date', 'workTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (345, '24', 'use_status', '是否使用', 'char(2)', 'String', 'useStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 13, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (346, '24', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (347, '24', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (348, '24', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (349, '24', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2021-12-01 01:07:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (350, '24', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 18, 'admin', '2021-12-01 01:07:26', '', NULL);

-- ----------------------------
-- Table structure for moral_chara_outstanding_graduate
-- ----------------------------
DROP TABLE IF EXISTS `moral_chara_outstanding_graduate`;
CREATE TABLE `moral_chara_outstanding_graduate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `stu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `political` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `college_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级学院',
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班别',
  `year` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学制',
  `teacher_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员',
  `honorary_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '荣誉称号',
  `commend_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表彰单位',
  `commend_time` datetime(0) NULL DEFAULT NULL COMMENT '表彰时间',
  `is_report` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否进行专题报道',
  `other` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moral_chara_party_development
-- ----------------------------
DROP TABLE IF EXISTS `moral_chara_party_development`;
CREATE TABLE `moral_chara_party_development`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `college_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在支部',
  `submit_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '已提交入党申请书数量',
  `activist_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现有入党积极分子存量',
  `development_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拟发展时间（年/月）',
  `development_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拟发展计划数',
  `party_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现有党员数（含预备）',
  `other` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '7.1.2-1 各专业党员发展计划、发展情况汇总表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moral_edu_activities
-- ----------------------------
DROP TABLE IF EXISTS `moral_edu_activities`;
CREATE TABLE `moral_edu_activities`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `activity_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `activity_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
  `active_content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动内容',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 7.1.1-1近三年个专业思想教育活动统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moral_edu_art_activity
-- ----------------------------
DROP TABLE IF EXISTS `moral_edu_art_activity`;
CREATE TABLE `moral_edu_art_activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `act_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动主题',
  `act_content` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动内容',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '7.1.1-3高雅艺术活动情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moral_edu_commend
-- ----------------------------
DROP TABLE IF EXISTS `moral_edu_commend`;
CREATE TABLE `moral_edu_commend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `marjor` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `edu_level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培养层次',
  `five_four` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '五四表彰',
  `seven_one` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '七一表彰',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '7.1.1-2“五四表彰”、“七一表彰”表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moral_edu_outstanding_cadres
-- ----------------------------
DROP TABLE IF EXISTS `moral_edu_outstanding_cadres`;
CREATE TABLE `moral_edu_outstanding_cadres`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `secondary_college` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级学院',
  `grade_professional_class` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级专业班级',
  `members` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成员数',
  `monitor_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班长姓名',
  `counselor_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员姓名',
  `people_punished` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '受处分人数',
  `winners` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '获奖人数',
  `is_model_class` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否推荐为学风标兵班',
  `honorary_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '荣誉称号',
  `recognition_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表彰时间',
  `recognition_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表彰单位',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '7.1.2-3广东东软学院各专业优秀班集体统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moral_edu_outstanding_students
-- ----------------------------
DROP TABLE IF EXISTS `moral_edu_outstanding_students`;
CREATE TABLE `moral_edu_outstanding_students`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `college_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院名称',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `education_level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历层次',
  `job_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `grade_professional_class` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级专业班级',
  `honorary_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '荣誉称号',
  `recognition_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表彰时间',
  `recognition_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表彰单位',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计表(' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ptm_edu_guided
-- ----------------------------
DROP TABLE IF EXISTS `ptm_edu_guided`;
CREATE TABLE `ptm_edu_guided`  (
  `emp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '指导教师',
  `highest_education` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `work_station` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作单位',
  `teach_time` date NULL DEFAULT NULL COMMENT '指导时间',
  `cla` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `stu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '各学院聘请企业人员指导实习情况表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ptm_edu_pt_statistics
-- ----------------------------
DROP TABLE IF EXISTS `ptm_edu_pt_statistics`;
CREATE TABLE `ptm_edu_pt_statistics`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实习实践单位名称',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在省市',
  `manager` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业实习实践负责人',
  `ip_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实习实践项目名称',
  `pro_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参与实践活动专业名称',
  `course_hours` date NULL DEFAULT NULL COMMENT '实习实践时间',
  `emp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '校内指导教师',
  `number_student` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参与学生人数',
  `practice_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主要实习实践方式',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '各专业校外实践教学情况统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ptm_edu_socco_industrial
-- ----------------------------
DROP TABLE IF EXISTS `ptm_edu_socco_industrial`;
CREATE TABLE `ptm_edu_socco_industrial`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `college_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产业学院名称',
  `unit_industry` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '共建单位及行业类',
  `manager` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `est_time` date NULL DEFAULT NULL COMMENT '组建时间',
  `cooperation_year` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作年限',
  `personnel_training` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人才培养',
  `construction_teacher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '师资队伍建设',
  `textbook_dev` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教材开发',
  `laboratory` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验室投入',
  `other` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产业学院共建情况统计览表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ptm_edu_teach
-- ----------------------------
DROP TABLE IF EXISTS `ptm_edu_teach`;
CREATE TABLE `ptm_edu_teach`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `college` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属学院',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `work_time` date NULL DEFAULT NULL COMMENT '任职时间',
  `year` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学年学期',
  `course_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程代码',
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `teach_object` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授课对象',
  `teach_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授课人数',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '各学院聘请企业人员授课情况表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ptm_edu_thesis_guidance
-- ----------------------------
DROP TABLE IF EXISTS `ptm_edu_thesis_guidance`;
CREATE TABLE `ptm_edu_thesis_guidance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `thesis_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '论文(设计)题目',
  `cla` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `stu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `emp_name` date NULL DEFAULT NULL COMMENT '指导老师(企业方)',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在单位',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '各学院聘请企业人员指导毕业论文情况统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017D243F5C8078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017D243F5C8078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017D243F5C8078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-703NGNU1638758954842', 1638759169515, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1638758960000, -1, 5, 'PAUSED', 'CRON', 1638758955000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1638758955000, -1, 5, 'PAUSED', 'CRON', 1638758955000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1638758960000, -1, 5, 'PAUSED', 'CRON', 1638758956000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for qual_system_standards
-- ----------------------------
DROP TABLE IF EXISTS `qual_system_standards`;
CREATE TABLE `qual_system_standards`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `file_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本',
  `release_time` datetime(0) NULL DEFAULT NULL COMMENT '发布日期',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '5.2.1-2 学院制定的教学工作相关实施细则一览表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-11-15 23:37:50', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-11-15 23:37:50', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-11-15 23:37:50', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-11-15 23:37:50', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2021-11-15 23:37:50', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2021-11-15 23:37:50', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2021-11-15 23:37:50', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2021-11-15 23:37:50', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2021-11-15 23:37:50', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-11-15 23:37:46', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-11-15 23:37:50', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-11-15 23:37:49', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '是否使用', 'is_use', '0', 'admin', '2021-12-06 10:33:12', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (12, '性别', 'is_gender', '0', 'admin', '2021-12-06 10:33:56', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-11-15 23:37:52', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-11-15 23:37:52', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-11-15 23:37:52', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-15 23:39:49');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-17 17:00:19');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-17 17:00:23');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-17 22:09:35');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-17 22:41:09');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-17 23:47:43');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 10:12:08');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 10:19:09');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 10:47:10');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 10:53:26');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 11:39:27');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 11:55:23');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 12:08:42');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 12:17:38');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 13:05:04');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 17:28:06');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-18 20:31:49');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-19 16:31:21');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-22 12:13:19');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-22 13:32:49');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-11-22 13:43:50');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-11-22 13:43:53');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-22 13:43:56');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-29 11:27:08');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-30 18:16:52');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-01 01:00:59');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-01 01:03:53');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-01 01:05:44');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-12-01 15:20:19');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-01 15:20:23');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-01 16:06:57');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-01 16:30:49');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-01 16:30:52');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-01 21:35:04');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-06 10:29:59');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-06 10:45:29');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-06 10:48:23');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-06 10:49:28');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1259 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2021-11-15 23:37:47', 'admin', '2021-12-01 16:24:44', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', 'menuItem', 'M', '1', '', 'fa fa-video-camera', 'admin', '2021-11-15 23:37:47', 'admin', '2021-12-01 16:24:36', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2021-11-15 23:37:47', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, '', 'menuBlank', 'M', '1', '', 'fa fa-location-arrow', 'admin', '2021-11-15 23:37:47', 'admin', '2021-12-01 16:24:19', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', 'fa fa-user-o', 'admin', '2021-11-15 23:37:47', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', 'fa fa-user-secret', 'admin', '2021-11-15 23:37:47', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', 'fa fa-th-list', 'admin', '2021-11-15 23:37:47', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', 'fa fa-outdent', 'admin', '2021-11-15 23:37:47', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', 'fa fa-address-card-o', 'admin', '2021-11-15 23:37:47', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2021-11-15 23:37:47', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', 'fa fa-sun-o', 'admin', '2021-11-15 23:37:47', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2021-11-15 23:37:47', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', 'fa fa-pencil-square-o', 'admin', '2021-11-15 23:37:47', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2021-11-15 23:37:47', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', 'fa fa-tasks', 'admin', '2021-11-15 23:37:47', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', 'fa fa-bug', 'admin', '2021-11-15 23:37:47', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', 'fa fa-server', 'admin', '2021-11-15 23:37:47', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', 'fa fa-wpforms', 'admin', '2021-11-15 23:37:47', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', 'fa fa-code', 'admin', '2021-11-15 23:37:47', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', 'fa fa-gg', 'admin', '2021-11-15 23:37:47', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2021-11-15 23:37:47', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2021-11-15 23:37:47', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1062, '学院领导一览表', 1067, 1, '/system/lead', 'menuItem', 'C', '0', '', '#', 'admin', '2021-11-17 22:42:19', 'admin', '2021-11-17 23:52:40', '');
INSERT INTO `sys_menu` VALUES (1063, '1.办学思路与领导作用', 0, 1, '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2021-11-17 22:44:17', 'admin', '2021-12-01 15:33:46', '');
INSERT INTO `sys_menu` VALUES (1065, '学院领导分工一览表', 1067, 2, '/system/division', 'menuItem', 'C', '0', '', '#', 'admin', '2021-11-17 23:50:04', 'admin', '2021-11-17 23:52:28', '');
INSERT INTO `sys_menu` VALUES (1066, '领导作用', 1063, 2, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-11-17 23:50:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1067, '领导能力', 1066, 1, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-11-17 23:51:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1068, '教学中心地位', 1066, 2, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-11-17 23:54:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1069, '学术讲座表', 1068, 4, '/system/lecture', 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-11-17 23:56:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '毕业论文统计表', 1068, 3, '/system/paper', 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-11-17 23:56:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1071, '人才培养模式', 1063, 3, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-11-17 23:58:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1072, '产学研合作教育', 1071, 2, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-11-18 00:00:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1073, '实习情况统计表', 1072, 3, '/system/guided', 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-11-18 00:08:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1074, '毕业论文情况统计表', 1072, 4, '/system/teach', 'menuItem', 'C', '0', '', '#', 'admin', '2021-11-18 00:10:02', 'admin', '2021-11-18 00:10:22', '');
INSERT INTO `sys_menu` VALUES (1075, '产业学院共建情况统计表', 1072, 6, '/system/industrial', 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-11-18 00:11:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '教学情况统计表', 1072, 7, '/system/statistics', 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-11-18 00:11:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1109, '7.1.1-1近三年个专业思想教育活动统计', 1257, 1, '/system/activities', 'menuItem', 'C', '0', 'system:activities:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 15:38:09', ' 7.1.1-1近三年个专业思想教育活动统计菜单');
INSERT INTO `sys_menu` VALUES (1110, ' 7.1.1-1近三年个专业思想教育活动统计查询', 1109, 1, '#', '', 'F', '0', 'system:activities:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1111, ' 7.1.1-1近三年个专业思想教育活动统计新增', 1109, 2, '#', '', 'F', '0', 'system:activities:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1112, ' 7.1.1-1近三年个专业思想教育活动统计修改', 1109, 3, '#', '', 'F', '0', 'system:activities:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1113, ' 7.1.1-1近三年个专业思想教育活动统计删除', 1109, 4, '#', '', 'F', '0', 'system:activities:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1114, ' 7.1.1-1近三年个专业思想教育活动统计导出', 1109, 5, '#', '', 'F', '0', 'system:activities:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1121, '7.1.2-3广东东软学院各专业优秀班集体统计', 1258, 1, '/system/cadres', 'menuItem', 'C', '0', 'system:cadres:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 15:38:44', '7.1.2-3广东东软学院各专业优秀班集体统计菜单');
INSERT INTO `sys_menu` VALUES (1122, '7.1.2-3广东东软学院各专业优秀班集体统计查询', 1121, 1, '#', '', 'F', '0', 'system:cadres:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1123, '7.1.2-3广东东软学院各专业优秀班集体统计新增', 1121, 2, '#', '', 'F', '0', 'system:cadres:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1124, '7.1.2-3广东东软学院各专业优秀班集体统计修改', 1121, 3, '#', '', 'F', '0', 'system:cadres:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1125, '7.1.2-3广东东软学院各专业优秀班集体统计删除', 1121, 4, '#', '', 'F', '0', 'system:cadres:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1126, '7.1.2-3广东东软学院各专业优秀班集体统计导出', 1121, 5, '#', '', 'F', '0', 'system:cadres:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1139, '7.1.2-1 各专业党员发展计划、发展情况汇总', 1258, 1, '/system/development', 'menuItem', 'C', '0', 'system:development:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 15:40:55', '7.1.2-1 各专业党员发展计划、发展情况汇总菜单');
INSERT INTO `sys_menu` VALUES (1140, '7.1.2-1 各专业党员发展计划、发展情况汇总查询', 1139, 1, '#', '', 'F', '0', 'system:development:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1141, '7.1.2-1 各专业党员发展计划、发展情况汇总新增', 1139, 2, '#', '', 'F', '0', 'system:development:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1142, '7.1.2-1 各专业党员发展计划、发展情况汇总修改', 1139, 3, '#', '', 'F', '0', 'system:development:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1143, '7.1.2-1 各专业党员发展计划、发展情况汇总删除', 1139, 4, '#', '', 'F', '0', 'system:development:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1144, '7.1.2-1 各专业党员发展计划、发展情况汇总导出', 1139, 5, '#', '', 'F', '0', 'system:development:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1163, '4.3.2-11 专业实习基地一览及协议', 1246, 1, '/system/internship', 'menuItem', 'C', '0', 'system:internship:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 15:40:11', '4.3.2-11 专业实习基地一览及协议菜单');
INSERT INTO `sys_menu` VALUES (1164, '4.3.2-11 专业实习基地一览及协议查询', 1163, 1, '#', '', 'F', '0', 'system:internship:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1165, '4.3.2-11 专业实习基地一览及协议新增', 1163, 2, '#', '', 'F', '0', 'system:internship:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1166, '4.3.2-11 专业实习基地一览及协议修改', 1163, 3, '#', '', 'F', '0', 'system:internship:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1167, '4.3.2-11 专业实习基地一览及协议删除', 1163, 4, '#', '', 'F', '0', 'system:internship:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1168, '4.3.2-11 专业实习基地一览及协议导出', 1163, 5, '#', '', 'F', '0', 'system:internship:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1169, '4.3.2-3实践学期项目汇总', 1246, 1, '/system/project', 'menuItem', 'C', '0', 'system:project:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 15:42:14', '4.3.2-3实践学期项目汇总菜单');
INSERT INTO `sys_menu` VALUES (1170, '4.3.2-3实践学期项目汇总查询', 1169, 1, '#', '', 'F', '0', 'system:project:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1171, '4.3.2-3实践学期项目汇总新增', 1169, 2, '#', '', 'F', '0', 'system:project:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1172, '4.3.2-3实践学期项目汇总修改', 1169, 3, '#', '', 'F', '0', 'system:project:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1173, '4.3.2-3实践学期项目汇总删除', 1169, 4, '#', '', 'F', '0', 'system:project:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1174, '4.3.2-3实践学期项目汇总导出', 1169, 5, '#', '', 'F', '0', 'system:project:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1181, '7.1.1-3高雅艺术活动情况', 1257, 1, '/system/activity', 'menuItem', 'C', '0', 'system:activity:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 16:18:17', '7.1.1-3高雅艺术活动情况菜单');
INSERT INTO `sys_menu` VALUES (1182, '7.1.1-3高雅艺术活动情况查询', 1181, 1, '#', '', 'F', '0', 'system:activity:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1183, '7.1.1-3高雅艺术活动情况新增', 1181, 2, '#', '', 'F', '0', 'system:activity:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1184, '7.1.1-3高雅艺术活动情况修改', 1181, 3, '#', '', 'F', '0', 'system:activity:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1185, '7.1.1-3高雅艺术活动情况删除', 1181, 4, '#', '', 'F', '0', 'system:activity:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1186, '7.1.1-3高雅艺术活动情况导出', 1181, 5, '#', '', 'F', '0', 'system:activity:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1187, '7.1.2-3广东东软学院各专业优秀班集体统计', 1257, 1, '/system/cadres', 'menuItem', 'C', '0', 'system:cadres:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 16:16:41', '7.1.2-3广东东软学院各专业优秀班集体统计菜单');
INSERT INTO `sys_menu` VALUES (1188, '7.1.2-3广东东软学院各专业优秀班集体统计查询', 1187, 1, '#', '', 'F', '0', 'system:cadres:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1189, '7.1.2-3广东东软学院各专业优秀班集体统计新增', 1187, 2, '#', '', 'F', '0', 'system:cadres:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1190, '7.1.2-3广东东软学院各专业优秀班集体统计修改', 1187, 3, '#', '', 'F', '0', 'system:cadres:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1191, '7.1.2-3广东东软学院各专业优秀班集体统计删除', 1187, 4, '#', '', 'F', '0', 'system:cadres:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1192, '7.1.2-3广东东软学院各专业优秀班集体统计导出', 1187, 5, '#', '', 'F', '0', 'system:cadres:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1193, '5.1.1-3 学院教学管理人员获得荣誉证书一览', 1252, 1, '/system/certificate', 'menuItem', 'C', '0', 'system:certificate:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 16:22:28', '5.1.1-3 学院教学管理人员获得荣誉证书一览菜单');
INSERT INTO `sys_menu` VALUES (1194, '5.1.1-3 学院教学管理人员获得荣誉证书一览查询', 1193, 1, '#', '', 'F', '0', 'system:certificate:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1195, '5.1.1-3 学院教学管理人员获得荣誉证书一览新增', 1193, 2, '#', '', 'F', '0', 'system:certificate:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1196, '5.1.1-3 学院教学管理人员获得荣誉证书一览修改', 1193, 3, '#', '', 'F', '0', 'system:certificate:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1197, '5.1.1-3 学院教学管理人员获得荣誉证书一览删除', 1193, 4, '#', '', 'F', '0', 'system:certificate:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1198, '5.1.1-3 学院教学管理人员获得荣誉证书一览导出', 1193, 5, '#', '', 'F', '0', 'system:certificate:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1199, '7.1.1-2“五四彰”、“七一彰”', 1257, 1, '/system/commend', 'menuItem', 'C', '0', 'system:commend:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 16:14:02', '7.1.1-2“五四彰”、“七一彰”菜单');
INSERT INTO `sys_menu` VALUES (1201, '7.1.1-2“五四彰”、“七一彰”新增', 1199, 2, '#', '', 'F', '0', 'system:commend:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1202, '7.1.1-2“五四彰”、“七一彰”修改', 1199, 3, '#', '', 'F', '0', 'system:commend:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1203, '7.1.1-2“五四彰”、“七一彰”删除', 1199, 4, '#', '', 'F', '0', 'system:commend:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1204, '7.1.1-2“五四彰”、“七一彰”导出', 1199, 5, '#', '', 'F', '0', 'system:commend:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1211, '5.1.1-1 学院教学管理职责分工一览', 1252, 1, '/system/division', 'menuItem', 'C', '0', 'system:division:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 16:18:46', '5.1.1-1 学院教学管理职责分工一览菜单');
INSERT INTO `sys_menu` VALUES (1212, '5.1.1-1 学院教学管理职责分工一览查询', 1211, 1, '#', '', 'F', '0', 'system:division:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1213, '5.1.1-1 学院教学管理职责分工一览新增', 1211, 2, '#', '', 'F', '0', 'system:division:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1214, '5.1.1-1 学院教学管理职责分工一览修改', 1211, 3, '#', '', 'F', '0', 'system:division:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1215, '5.1.1-1 学院教学管理职责分工一览删除', 1211, 4, '#', '', 'F', '0', 'system:division:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1216, '5.1.1-1 学院教学管理职责分工一览导出', 1211, 5, '#', '', 'F', '0', 'system:division:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1217, '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例', 1258, 1, '/system/graduate', 'menuItem', 'C', '0', 'system:graduate:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 16:23:31', '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例菜单');
INSERT INTO `sys_menu` VALUES (1218, '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例查询', 1217, 1, '#', '', 'F', '0', 'system:graduate:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1219, '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例新增', 1217, 2, '#', '', 'F', '0', 'system:graduate:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1220, '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例修改', 1217, 3, '#', '', 'F', '0', 'system:graduate:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1221, '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例删除', 1217, 4, '#', '', 'F', '0', 'system:graduate:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1222, '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例导出', 1217, 5, '#', '', 'F', '0', 'system:graduate:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1223, '5.1.1-2 学院教学管理人员信息', 1252, 1, '/system/information', 'menuItem', 'C', '0', 'system:information:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 16:22:15', '5.1.1-2 学院教学管理人员信息菜单');
INSERT INTO `sys_menu` VALUES (1224, '5.1.1-2 学院教学管理人员信息查询', 1223, 1, '#', '', 'F', '0', 'system:information:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1225, '5.1.1-2 学院教学管理人员信息新增', 1223, 2, '#', '', 'F', '0', 'system:information:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1226, '5.1.1-2 学院教学管理人员信息修改', 1223, 3, '#', '', 'F', '0', 'system:information:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1227, '5.1.1-2 学院教学管理人员信息删除', 1223, 4, '#', '', 'F', '0', 'system:information:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1228, '5.1.1-2 学院教学管理人员信息导出', 1223, 5, '#', '', 'F', '0', 'system:information:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1229, '4.3.2-11 专业实习基地一览及协议', 1248, 1, '/system/internship', 'menuItem', 'C', '0', 'system:internship:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 16:20:46', '4.3.2-11 专业实习基地一览及协议菜单');
INSERT INTO `sys_menu` VALUES (1230, '4.3.2-11 专业实习基地一览及协议查询', 1229, 1, '#', '', 'F', '0', 'system:internship:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1231, '4.3.2-11 专业实习基地一览及协议新增', 1229, 2, '#', '', 'F', '0', 'system:internship:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1232, '4.3.2-11 专业实习基地一览及协议修改', 1229, 3, '#', '', 'F', '0', 'system:internship:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1233, '4.3.2-11 专业实习基地一览及协议删除', 1229, 4, '#', '', 'F', '0', 'system:internship:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1234, '4.3.2-11 专业实习基地一览及协议导出', 1229, 5, '#', '', 'F', '0', 'system:internship:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1235, '4.3.2-3实践学期项目汇总', 1248, 1, '/system/project', 'menuItem', 'C', '0', 'system:project:view', '#', 'admin', '2021-12-01 15:19:09', 'admin', '2021-12-01 16:20:10', '4.3.2-3实践学期项目汇总菜单');
INSERT INTO `sys_menu` VALUES (1236, '4.3.2-3实践学期项目汇总查询', 1235, 1, '#', '', 'F', '0', 'system:project:list', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1237, '4.3.2-3实践学期项目汇总新增', 1235, 2, '#', '', 'F', '0', 'system:project:add', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1238, '4.3.2-3实践学期项目汇总修改', 1235, 3, '#', '', 'F', '0', 'system:project:edit', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1239, '4.3.2-3实践学期项目汇总删除', 1235, 4, '#', '', 'F', '0', 'system:project:remove', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1240, '4.3.2-3实践学期项目汇总导出', 1235, 5, '#', '', 'F', '0', 'system:project:export', '#', 'admin', '2021-12-01 15:19:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1242, '4.专业与课程建设', 0, 4, '#', 'menuItem', 'M', '0', '', '#', 'admin', '2021-12-01 15:25:44', 'admin', '2021-12-01 15:33:59', '');
INSERT INTO `sys_menu` VALUES (1243, '实践教学', 1242, 3, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:26:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1244, '实验教学', 1243, 1, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:28:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1246, '社会实践', 1243, 3, '#', 'menuItem', 'M', '0', '', '#', 'admin', '2021-12-01 15:29:22', 'admin', '2021-12-01 15:31:29', '');
INSERT INTO `sys_menu` VALUES (1247, '毕业论文与综合训练', 1243, 4, '#', 'menuItem', 'M', '0', '', '#', 'admin', '2021-12-01 15:29:30', 'admin', '2021-12-01 15:32:24', '');
INSERT INTO `sys_menu` VALUES (1248, '实习实训', 1243, 2, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:30:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1249, '5.教学管理', 0, 5, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:34:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1250, '教学管理队伍', 1249, 1, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:35:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1251, '质量监控', 1249, 2, '2', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:35:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1252, '结构与素质', 1250, 1, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:35:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1253, '规章制度', 1251, 1, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:36:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1254, '质量控制', 1251, 2, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:36:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1255, '7.教学质量', 0, 7, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:36:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1256, '德育', 1255, 1, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:37:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1257, '思想政治教育', 1256, 1, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:37:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1258, '思想品德', 1256, 2, '#', 'menuItem', 'M', '0', NULL, '#', 'admin', '2021-12-01 15:37:23', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2021-11-15 23:37:53', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2021-11-15 23:37:53', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"fl_ability_lead\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 22:13:06');
INSERT INTO `sys_oper_log` VALUES (2, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"fl_ability_lead\"],\"tableComment\":[\"1.2.2-1学校领导一览表\"],\"className\":[\"FlAbilityLead\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"工号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"empId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"职工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"empName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[7].columnId\":[\"8\"],\"columns[7].sort\":[\"8\"],\"columns[7].columnComment\":[\"职称\"],\"columns[7].javaType\":[\"String\"],\"columns[7].javaField\":[\"title\"],\"columns[7].isInsert\":[\"1\"],\"columns[7].isEdit\":[\"1\"],\"columns[7].isList\":[\"1\"],\"columns[7].queryType\":[\"EQ\"],\"columns[7].isRequired\":[\"1\"],\"columns[7].htmlType\":[\"input\"],\"columns[7].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"sex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"职务\"],\"columns[4].javaType\":[\"String\"],', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 22:23:05');
INSERT INTO `sys_oper_log` VALUES (3, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"fl_tcp_paper,fl_tcp_lecture,fl_ability_division,ptm_edu_pt_statistics,ptm_edu_teach,ptm_edu_guided,ptm_edu_socco_industrial\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 22:33:39');
INSERT INTO `sys_oper_log` VALUES (4, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"fl_ability_lead\"],\"tableComment\":[\"1.2.2-1学校领导一览表\"],\"className\":[\"FlAbilityLead\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"工号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"empId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"职工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"empName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"sex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"sys_user_sex\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"职务\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"post\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"任职时间\"],\"columns[5].javaType', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 22:35:38');
INSERT INTO `sys_oper_log` VALUES (5, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/fl_ability_lead', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-11-17 22:36:05');
INSERT INTO `sys_oper_log` VALUES (6, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"领导表\"],\"url\":[\"/system/lead\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 22:42:19');
INSERT INTO `sys_oper_log` VALUES (7, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"办学思路与领导作用\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 22:44:18');
INSERT INTO `sys_oper_log` VALUES (8, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"1063\"],\"menuType\":[\"C\"],\"menuName\":[\"领导表\"],\"url\":[\"/system/lead\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 22:44:37');
INSERT INTO `sys_oper_log` VALUES (9, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"fl_ability_division\"],\"tableComment\":[\"1.2.2-2学校领导分工一览表\"],\"className\":[\"FlAbilityDivision\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"16\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"17\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"工号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"empId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"18\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"职工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"empName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"19\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职务\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"post\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"20\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"分工\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"division\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"21\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"是否使用\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:09:19');
INSERT INTO `sys_oper_log` VALUES (10, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"fl_tcp_lecture\"],\"tableComment\":[\"1.2.3-4 学术讲座表(fl_tcp_lecture)\"],\"className\":[\"FlTcpLecture\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"27\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"28\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"讲座主题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"lectureTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"29\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"讲座时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"lectureTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"30\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"学号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"31\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学生姓名\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"32\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"职工姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].ja', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:10:39');
INSERT INTO `sys_oper_log` VALUES (11, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"fl_tcp_paper\"],\"tableComment\":[\"1.2.3-3毕业论文统计表(fl_tcp_paper)\"],\"className\":[\"FlTcpPaper\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"40\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"41\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"42\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"43\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"专业\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"major\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"44\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"班级\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"cla\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"45\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:11:40');
INSERT INTO `sys_oper_log` VALUES (12, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ptm_edu_guided\"],\"tableComment\":[\"各学院聘请企业人员指导实习情况表\"],\"className\":[\"PtmEduGuided\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"54\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"指导教师\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"empName\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"LIKE\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"55\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学历\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"highestEducation\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"56\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"专业\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"major\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"57\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"工作单位\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"workStation\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"58\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"指导时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"teachTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"59\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"班级\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"cla\"]', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:16:59');
INSERT INTO `sys_oper_log` VALUES (13, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ptm_edu_pt_statistics\"],\"tableComment\":[\"各专业校外实践教学情况统计表\"],\"className\":[\"PtmEduPtStatistics\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"68\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"69\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"实习实践单位名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"company\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"70\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"所在省市\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"province\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"71\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"企业实习实践负责人\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"manager\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"72\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"实习实践项目名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ipName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"73\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"参与实践活动专业名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"proName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"column', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:21:25');
INSERT INTO `sys_oper_log` VALUES (14, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"test\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:25:25');
INSERT INTO `sys_oper_log` VALUES (15, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1064', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:26:01');
INSERT INTO `sys_oper_log` VALUES (16, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ptm_edu_pt_statistics\"],\"tableComment\":[\"各专业校外实践教学情况统计表\"],\"className\":[\"PtmEduPtStatistics\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"68\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"69\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"实习单位名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"company\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"70\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"所在省市\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"province\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"71\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"实习负责人\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"manager\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"72\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"实习名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ipName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"73\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"实践活动专业名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"proName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:36:14');
INSERT INTO `sys_oper_log` VALUES (17, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"ptm_edu_socco_industrial\"],\"tableComment\":[\"1.3.2-6 产业学院共建情况统计览表\"],\"className\":[\"PtmEduSoccoIndustrial\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"84\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"85\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"产业学院名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"collegeName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"86\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"共建单位及行业类\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"unitIndustry\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"87\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"负责人\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"manager\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"88\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"组建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"estTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"89\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"合作年限\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"cooperati', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:40:03');
INSERT INTO `sys_oper_log` VALUES (18, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ptm_edu_pt_statistics\"],\"tableComment\":[\"1.3.2-7 各专业校外实践教学情况统计表\"],\"className\":[\"PtmEduPtStatistics\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"68\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"69\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"实习单位名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"company\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"70\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"所在省市\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"province\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"71\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"实习负责人\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"manager\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"72\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"实习名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ipName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"73\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"实践活动专业名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"proName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5]', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:40:21');
INSERT INTO `sys_oper_log` VALUES (19, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ptm_edu_guided\"],\"tableComment\":[\"1.3.2-3 各学院聘请企业人员指导实习情况表\"],\"className\":[\"PtmEduGuided\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"54\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"指导教师\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"empName\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"LIKE\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"55\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学历\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"highestEducation\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"56\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"专业\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"major\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"57\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"工作单位\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"workStation\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"58\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"指导时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"teachTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"59\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"班级\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:40:41');
INSERT INTO `sys_oper_log` VALUES (20, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"ptm_edu_teach\"],\"tableComment\":[\"1.3.2-4 各学院聘请企业人员授课情况表\"],\"className\":[\"PtmEduTeach\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"101\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"102\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"所属学院\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"college\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"103\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"104\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"title\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"105\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"任职时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"workTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"106\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"学年学期\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"year\"],\"columns[5', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:40:53');
INSERT INTO `sys_oper_log` VALUES (21, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"ptm_edu_teach\"],\"tableComment\":[\"1.3.2-4 各学院聘请企业人员授课情况表\"],\"className\":[\"PtmEduTeach\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"101\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"102\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"所属学院\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"college\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"103\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"104\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"title\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"105\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"任职时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"workTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"106\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"学年学期\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"year\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:41:20');
INSERT INTO `sys_oper_log` VALUES (22, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"ptm_edu_teach\"],\"tableComment\":[\"1.3.2-4 各学院聘请企业人员授课情况表\"],\"className\":[\"PtmEduTeach\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"101\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"102\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"所属学院\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"college\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"103\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"104\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"title\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"105\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"任职时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"workTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"106\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"学年学期\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"year\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:41:38');
INSERT INTO `sys_oper_log` VALUES (23, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"ptm_edu_socco_industrial\"],\"tableComment\":[\"1.3.2-6 产业学院共建情况统计览表\"],\"className\":[\"PtmEduSoccoIndustrial\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"84\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"85\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学院名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"collegeName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"86\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"共建单位及行业类\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"unitIndustry\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"87\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"负责人\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"manager\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"88\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"组建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"estTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"89\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"合作年限\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"cooperation', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:42:00');
INSERT INTO `sys_oper_log` VALUES (24, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"ptm_edu_socco_industrial\"],\"tableComment\":[\"1.3.2-6 产业学院共建情况统计览表\"],\"className\":[\"PtmEduSoccoIndustrial\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"84\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"85\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学院名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"collegeName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"86\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"共建单位及行业类\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"unitIndustry\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"87\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"负责人\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"manager\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"88\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"组建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"estTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"89\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"合作年限\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"cooperationYear\"],\"columns[5].isInsert', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:42:19');
INSERT INTO `sys_oper_log` VALUES (25, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ptm_edu_guided\"],\"tableComment\":[\"1.3.2-3 各学院聘请企业人员指导实习情况表\"],\"className\":[\"PtmEduGuided\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"54\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"指导教师\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"empName\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"LIKE\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"55\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学历\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"highestEducation\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"56\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"专业\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"major\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"57\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"工作单位\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"workStation\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"58\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"指导时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"teachTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"59\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"班级\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:43:50');
INSERT INTO `sys_oper_log` VALUES (26, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"ptm_edu_teach,ptm_edu_socco_industrial,ptm_edu_pt_statistics,ptm_edu_guided,fl_tcp_paper,fl_tcp_lecture,fl_ability_division\"]}', 'null', 0, NULL, '2021-11-17 23:44:10');
INSERT INTO `sys_oper_log` VALUES (27, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1063\"],\"menuType\":[\"C\"],\"menuName\":[\"学院领导分工一览表\"],\"url\":[\"/system/division\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:50:05');
INSERT INTO `sys_oper_log` VALUES (28, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1063\"],\"menuType\":[\"M\"],\"menuName\":[\"领导作用\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:50:36');
INSERT INTO `sys_oper_log` VALUES (29, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1066\"],\"menuType\":[\"M\"],\"menuName\":[\"领导能力\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:51:02');
INSERT INTO `sys_oper_log` VALUES (30, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"1067\"],\"menuType\":[\"C\"],\"menuName\":[\"领导表\"],\"url\":[\"/system/lead\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:51:22');
INSERT INTO `sys_oper_log` VALUES (31, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1065\"],\"parentId\":[\"1067\"],\"menuType\":[\"C\"],\"menuName\":[\"学院领导分工一览表\"],\"url\":[\"/system/division\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:52:28');
INSERT INTO `sys_oper_log` VALUES (32, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"1067\"],\"menuType\":[\"C\"],\"menuName\":[\"学院领导一览表\"],\"url\":[\"/system/lead\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:52:41');
INSERT INTO `sys_oper_log` VALUES (33, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1066\"],\"menuType\":[\"M\"],\"menuName\":[\"教学中心地位\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:54:49');
INSERT INTO `sys_oper_log` VALUES (34, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1068\"],\"menuType\":[\"C\"],\"menuName\":[\"学术讲座表\"],\"url\":[\"/system/lecture\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:56:01');
INSERT INTO `sys_oper_log` VALUES (35, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1068\"],\"menuType\":[\"C\"],\"menuName\":[\"毕业论文统计表\"],\"url\":[\"/system/paper\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:56:35');
INSERT INTO `sys_oper_log` VALUES (36, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1063\"],\"menuType\":[\"M\"],\"menuName\":[\"人才培养模式\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-17 23:58:41');
INSERT INTO `sys_oper_log` VALUES (37, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1071\"],\"menuType\":[\"M\"],\"menuName\":[\"产学研合作教育\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 00:00:17');
INSERT INTO `sys_oper_log` VALUES (38, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1072\"],\"menuType\":[\"C\"],\"menuName\":[\"实习情况统计表\"],\"url\":[\"/system/guided\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 00:08:41');
INSERT INTO `sys_oper_log` VALUES (39, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1071\"],\"menuType\":[\"C\"],\"menuName\":[\"毕业论文情况统计表\"],\"url\":[\"/system/teach\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 00:10:02');
INSERT INTO `sys_oper_log` VALUES (40, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1074\"],\"parentId\":[\"1072\"],\"menuType\":[\"C\"],\"menuName\":[\"毕业论文情况统计表\"],\"url\":[\"/system/teach\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 00:10:22');
INSERT INTO `sys_oper_log` VALUES (41, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1072\"],\"menuType\":[\"C\"],\"menuName\":[\"产业学院共建情况统计表\"],\"url\":[\"/system/industrial\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 00:11:19');
INSERT INTO `sys_oper_log` VALUES (42, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1072\"],\"menuType\":[\"C\"],\"menuName\":[\"教学情况统计表\"],\"url\":[\"/system/statistics\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 00:11:56');
INSERT INTO `sys_oper_log` VALUES (43, '1.2.2-1学校领导一览', 3, 'com.ruoyi.web.controller.one.FlAbilityLeadController.remove()', 'POST', 1, 'admin', '研发部门', '/system/lead/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 11:39:38');
INSERT INTO `sys_oper_log` VALUES (44, '1.2.2-1学校领导一览', 3, 'com.ruoyi.web.controller.one.FlAbilityLeadController.remove()', 'POST', 1, 'admin', '研发部门', '/system/lead/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 11:39:46');
INSERT INTO `sys_oper_log` VALUES (45, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ptm_edu_thesis_guidance\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 11:45:49');
INSERT INTO `sys_oper_log` VALUES (46, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"ptm_edu_thesis_guidance\"],\"tableComment\":[\"1.3.2-4 各学院聘请企业人员指导毕业论文情况统计表\"],\"className\":[\"PtmEduThesisGuidance\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"117\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"118\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"论文(设计)题目\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"thesisTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"119\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"班级\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"cla\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"120\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"学号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"121\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"作者\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"122\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"专业\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"major\"],\"columns[5].isInsert\":[\"1\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 11:46:58');
INSERT INTO `sys_oper_log` VALUES (47, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/ptm_edu_thesis_guidance', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-11-18 11:47:08');
INSERT INTO `sys_oper_log` VALUES (48, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ptm_edu_pt_statistics\"],\"tableComment\":[\"1.3.2-7 各专业校外实践教学情况统计表\"],\"className\":[\"PtmEduPtStatistics\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"68\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"69\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"实习单位名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"company\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"70\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"所在省市\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"province\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"71\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"负责人\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"manager\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"72\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"实习名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ipName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"73\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"实践活动专业名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"proName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].i', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 11:56:36');
INSERT INTO `sys_oper_log` VALUES (49, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1072\"],\"menuType\":[\"C\"],\"menuName\":[\"企业人员指导毕业论文统计表\"],\"url\":[\"/system/guidance\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 12:01:22');
INSERT INTO `sys_oper_log` VALUES (50, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"ptm_edu_thesis_guidance,fl_ability_division,fl_tcp_lecture,fl_tcp_paper,ptm_edu_guided,ptm_edu_pt_statistics,ptm_edu_socco_industrial,ptm_edu_teach,fl_ability_lead\"]}', 'null', 0, NULL, '2021-11-18 12:17:46');
INSERT INTO `sys_oper_log` VALUES (51, '1.2.2-1学校领导一览', 3, 'com.ruoyi.web.controller.one.FlAbilityLeadController.remove()', 'POST', 1, 'admin', '研发部门', '/system/lead/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-18 17:28:19');
INSERT INTO `sys_oper_log` VALUES (52, '1.2.2-1学校领导一览', 5, 'com.ruoyi.web.controller.one.FlAbilityLeadController.export()', 'POST', 1, 'admin', '研发部门', '/system/lead/export', '127.0.0.1', '内网IP', '{\"empId\":[\"\"],\"empName\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"67e932a0-3984-40f8-b970-bacbd63cef47_lead.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 12:14:10');
INSERT INTO `sys_oper_log` VALUES (53, '1.2.2-1学校领导一览', 3, 'com.ruoyi.web.controller.one.FlAbilityLeadController.remove()', 'POST', 1, 'admin', '研发部门', '/system/lead/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 12:14:18');
INSERT INTO `sys_oper_log` VALUES (54, '1.2.2-1学校领导一览', 1, 'com.ruoyi.web.controller.one.FlAbilityLeadController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/lead/add', '127.0.0.1', '内网IP', '{\"empId\":[\"312\"],\"empName\":[\"zz\"],\"sex\":[\"0\"],\"post\":[\"计算机开发\"],\"wordTime\":[\"2021-11-16\"],\"highestEducation\":[\"本科\"],\"title\":[\"213\"],\"resume\":[\"eadaw\"],\"remark\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'use_status\' doesn\'t have a default value\r\n### The error may exist in file [F:\\work_dui\\project\\neusoft-pj-project-main\\RuoYi-master\\ruoyi-one\\target\\classes\\mapper\\FlAbilityLeadMapper.xml]\r\n### The error may involve com.ruoyi.mapper.FlAbilityLeadMapper.insertFlAbilityLead-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into fl_ability_lead          ( emp_id,             emp_name,             sex,             post,             word_time,             highest_education,             title,             resume,                                       create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'use_status\' doesn\'t have a default value\n; Field \'use_status\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'use_status\' doesn\'t have a default value', '2021-11-22 12:15:59');
INSERT INTO `sys_oper_log` VALUES (55, '1.2.2-1学校领导一览', 2, 'com.ruoyi.web.controller.one.FlAbilityLeadController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/lead/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"empId\":[\"123\"],\"empName\":[\"张三\"],\"sex\":[\"1\"],\"post\":[\"123\"],\"wordTime\":[\"2021-01-02\"],\"highestEducation\":[\"大专\"],\"title\":[\"老师\"],\"resume\":[\"无\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 12:17:56');
INSERT INTO `sys_oper_log` VALUES (56, '1.2.2-1学校领导一览', 1, 'com.ruoyi.web.controller.one.FlAbilityLeadController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/lead/add', '127.0.0.1', '内网IP', '{\"empId\":[\"123\"],\"empName\":[\"dawd\"],\"sex\":[\"0\"],\"post\":[\"daw\"],\"wordTime\":[\"2021-11-02\"],\"highestEducation\":[\"daw\"],\"title\":[\"daw\"],\"resume\":[\"daw\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 12:27:45');
INSERT INTO `sys_oper_log` VALUES (57, '1.2.2-1学校领导一览', 3, 'com.ruoyi.web.controller.one.FlAbilityLeadController.remove()', 'POST', 1, 'admin', '研发部门', '/system/lead/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 12:27:51');
INSERT INTO `sys_oper_log` VALUES (58, '1.2.3-3毕业论文统计(fl_tcp_paper)', 1, 'com.ruoyi.web.controller.one.FlTcpPaperController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/paper/add', '127.0.0.1', '内网IP', '{\"stuId\":[\"123\"],\"stuName\":[\"dad\"],\"major\":[\"dawd\"],\"cla\":[\"adw\"],\"teacher\":[\"daw\"],\"paperTitle\":[\"da\"],\"projectName\":[\"dawd\"],\"remark\":[\"\"],\"useStatus\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 13:44:15');
INSERT INTO `sys_oper_log` VALUES (59, '1.2.3-3毕业论文统计(fl_tcp_paper)', 3, 'com.ruoyi.web.controller.one.FlTcpPaperController.remove()', 'POST', 1, 'admin', '研发部门', '/system/paper/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 13:44:18');
INSERT INTO `sys_oper_log` VALUES (60, '1.2.3-3毕业论文统计(fl_tcp_paper)', 1, 'com.ruoyi.web.controller.one.FlTcpPaperController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/paper/add', '127.0.0.1', '内网IP', '{\"stuId\":[\"123\"],\"stuName\":[\"zhangsan\"],\"major\":[\"计算机\"],\"cla\":[\"软工1\"],\"teacher\":[\"老罗\"],\"paperTitle\":[\"test\"],\"projectName\":[\"test1\"],\"remark\":[\"\"],\"useStatus\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 13:46:00');
INSERT INTO `sys_oper_log` VALUES (61, '1.2.3-3毕业论文统计(fl_tcp_paper)', 5, 'com.ruoyi.web.controller.one.FlTcpPaperController.export()', 'POST', 1, 'admin', '研发部门', '/system/paper/export', '127.0.0.1', '内网IP', '{\"stuId\":[\"\"],\"stuName\":[\"\"],\"cla\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"0b465343-6719-4d98-bd50-d2b9f68fa59d_paper.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 13:46:05');
INSERT INTO `sys_oper_log` VALUES (62, '1.2.3-3毕业论文统计(fl_tcp_paper)', 3, 'com.ruoyi.web.controller.one.FlTcpPaperController.remove()', 'POST', 1, 'admin', '研发部门', '/system/paper/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 13:46:38');
INSERT INTO `sys_oper_log` VALUES (63, '1.2.3-3毕业论文统计(fl_tcp_paper)', 3, 'com.ruoyi.web.controller.one.FlTcpPaperController.remove()', 'POST', 1, 'admin', '研发部门', '/system/paper/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-11-22 13:46:49');
INSERT INTO `sys_oper_log` VALUES (64, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"teach_pra_outside_school,moral_edu_outstanding_students,moral_edu_outstanding_cadres,moral_chara_party_development,moral_chara_outstanding_graduate,moral_edu_art_activity,moral_edu_activities,team_str_information,moral_edu_commend,teach_pra_internship,qual_system_standards,teach_pra_project,teach_pra_select,team_str_division,team_str_honorary_certificate\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 01:07:26');
INSERT INTO `sys_oper_log` VALUES (65, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"moral_chara_outstanding_graduate,team_str_information,team_str_honorary_certificate,team_str_division,teach_pra_select,moral_chara_party_development,moral_edu_activities,moral_edu_art_activity,moral_edu_commend,moral_edu_outstanding_cadres,moral_edu_outstanding_students,qual_system_standards,teach_pra_internship,teach_pra_outside_school,teach_pra_project\"]}', 'null', 0, NULL, '2021-12-01 01:07:57');
INSERT INTO `sys_oper_log` VALUES (66, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"专业与课程建设\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:25:45');
INSERT INTO `sys_oper_log` VALUES (67, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1242\"],\"menuType\":[\"M\"],\"menuName\":[\"实践教学\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:26:40');
INSERT INTO `sys_oper_log` VALUES (68, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-12-01 15:26:48');
INSERT INTO `sys_oper_log` VALUES (69, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1243\"],\"menuType\":[\"M\"],\"menuName\":[\"实验教学\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:28:53');
INSERT INTO `sys_oper_log` VALUES (70, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1242\"],\"menuType\":[\"M\"],\"menuName\":[\"实习实训\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:29:03');
INSERT INTO `sys_oper_log` VALUES (71, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1242\"],\"menuType\":[\"M\"],\"menuName\":[\"社会实践\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:29:22');
INSERT INTO `sys_oper_log` VALUES (72, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1242\"],\"menuType\":[\"M\"],\"menuName\":[\"毕业论文（设计）与综合训练\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:29:30');
INSERT INTO `sys_oper_log` VALUES (73, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1243\"],\"menuType\":[\"M\"],\"menuName\":[\"实习实训\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:30:07');
INSERT INTO `sys_oper_log` VALUES (74, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1246\"],\"parentId\":[\"1243\"],\"menuType\":[\"M\"],\"menuName\":[\"社会实践\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:31:30');
INSERT INTO `sys_oper_log` VALUES (75, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1247\"],\"parentId\":[\"1243\"],\"menuType\":[\"M\"],\"menuName\":[\"毕业论文（设计）与综合训练\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:31:40');
INSERT INTO `sys_oper_log` VALUES (76, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1245', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:31:46');
INSERT INTO `sys_oper_log` VALUES (77, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1247\"],\"parentId\":[\"1243\"],\"menuType\":[\"M\"],\"menuName\":[\"毕业论文与综合训练\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:32:24');
INSERT INTO `sys_oper_log` VALUES (78, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1063\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"1.办学思路与领导作用\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:33:47');
INSERT INTO `sys_oper_log` VALUES (79, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1242\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"4.专业与课程建设\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:33:59');
INSERT INTO `sys_oper_log` VALUES (80, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"5.教学管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:34:56');
INSERT INTO `sys_oper_log` VALUES (81, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1249\"],\"menuType\":[\"M\"],\"menuName\":[\"教学管理队伍\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:35:13');
INSERT INTO `sys_oper_log` VALUES (82, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1249\"],\"menuType\":[\"M\"],\"menuName\":[\"质量监控\"],\"url\":[\"2\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:35:24');
INSERT INTO `sys_oper_log` VALUES (83, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1250\"],\"menuType\":[\"M\"],\"menuName\":[\"结构与素质\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:35:40');
INSERT INTO `sys_oper_log` VALUES (84, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1251\"],\"menuType\":[\"M\"],\"menuName\":[\"规章制度\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:36:16');
INSERT INTO `sys_oper_log` VALUES (85, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1251\"],\"menuType\":[\"M\"],\"menuName\":[\"质量控制\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:36:28');
INSERT INTO `sys_oper_log` VALUES (86, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"7.教学质量\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:36:50');
INSERT INTO `sys_oper_log` VALUES (87, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1255\"],\"menuType\":[\"M\"],\"menuName\":[\"德育\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:37:02');
INSERT INTO `sys_oper_log` VALUES (88, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1256\"],\"menuType\":[\"M\"],\"menuName\":[\"思想政治教育\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:37:12');
INSERT INTO `sys_oper_log` VALUES (89, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1256\"],\"menuType\":[\"M\"],\"menuName\":[\"思想品德\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:37:24');
INSERT INTO `sys_oper_log` VALUES (90, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1109\"],\"parentId\":[\"1257\"],\"menuType\":[\"C\"],\"menuName\":[\" 7.1.1-1近三年个专业思想教育活动统计\"],\"url\":[\"/system/activities\"],\"target\":[\"menuItem\"],\"perms\":[\"system:activities:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:38:09');
INSERT INTO `sys_oper_log` VALUES (91, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1115\"],\"parentId\":[\"1257\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.1-3高雅艺术活动情况\"],\"url\":[\"/system/activity\"],\"target\":[\"menuItem\"],\"perms\":[\"system:activity:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:38:26');
INSERT INTO `sys_oper_log` VALUES (92, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1121\"],\"parentId\":[\"1258\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.2-3广东东软学院各专业优秀班集体统计\"],\"url\":[\"/system/cadres\"],\"target\":[\"menuItem\"],\"perms\":[\"system:cadres:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:38:45');
INSERT INTO `sys_oper_log` VALUES (93, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1163\"],\"parentId\":[\"1246\"],\"menuType\":[\"C\"],\"menuName\":[\"4.3.2-11 专业实习基地一览及协议\"],\"url\":[\"/system/internship\"],\"target\":[\"menuItem\"],\"perms\":[\"system:internship:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:40:11');
INSERT INTO `sys_oper_log` VALUES (94, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1127\"],\"parentId\":[\"1252\"],\"menuType\":[\"C\"],\"menuName\":[\"5.1.1-3 学院教学管理人员获得荣誉证书一览\"],\"url\":[\"/system/certificate\"],\"target\":[\"menuItem\"],\"perms\":[\"system:certificate:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:40:24');
INSERT INTO `sys_oper_log` VALUES (95, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1133\"],\"parentId\":[\"1257\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.1-2“五四彰”、“七一彰”\"],\"url\":[\"/system/commend\"],\"target\":[\"menuItem\"],\"perms\":[\"system:commend:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:40:40');
INSERT INTO `sys_oper_log` VALUES (96, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1139\"],\"parentId\":[\"1258\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.2-1 各专业党员发展计划、发展情况汇总\"],\"url\":[\"/system/development\"],\"target\":[\"menuItem\"],\"perms\":[\"system:development:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:40:56');
INSERT INTO `sys_oper_log` VALUES (97, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1145\"],\"parentId\":[\"1252\"],\"menuType\":[\"C\"],\"menuName\":[\"5.1.1-1 学院教学管理职责分工一览\"],\"url\":[\"/system/division\"],\"target\":[\"menuItem\"],\"perms\":[\"system:division:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:41:23');
INSERT INTO `sys_oper_log` VALUES (98, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1157\"],\"parentId\":[\"1252\"],\"menuType\":[\"C\"],\"menuName\":[\"5.1.1-2 学院教学管理人员信息\"],\"url\":[\"/system/information\"],\"target\":[\"menuItem\"],\"perms\":[\"system:information:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:41:50');
INSERT INTO `sys_oper_log` VALUES (99, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1169\"],\"parentId\":[\"1246\"],\"menuType\":[\"C\"],\"menuName\":[\"4.3.2-3实践学期项目汇总\"],\"url\":[\"/system/project\"],\"target\":[\"menuItem\"],\"perms\":[\"system:project:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:42:15');
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1133\"],\"parentId\":[\"1257\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.1-2“五四彰”、“七一彰”\"],\"url\":[\"/system/commend\"],\"target\":[\"menuItem\"],\"perms\":[\"system:commend:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 15:54:17');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1151\"],\"parentId\":[\"1258\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例\"],\"url\":[\"/system/graduate\"],\"target\":[\"menuItem\"],\"perms\":[\"system:graduate:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:08:20');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1199', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-12-01 16:08:57');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1200', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:09:10');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1235\"],\"parentId\":[\"1246\"],\"menuType\":[\"C\"],\"menuName\":[\"4.3.2-3实践学期项目汇总\"],\"url\":[\"/system/project\"],\"target\":[\"menuItem\"],\"perms\":[\"system:project:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"修改菜单\'4.3.2-3实践学期项目汇总\'失败，菜单名称已存在\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2021-12-01 16:13:21');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1199\"],\"parentId\":[\"1257\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.1-2“五四彰”、“七一彰”\"],\"url\":[\"/system/commend\"],\"target\":[\"menuItem\"],\"perms\":[\"system:commend:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:14:03');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1187\"],\"parentId\":[\"1257\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.2-3广东东软学院各专业优秀班集体统计\"],\"url\":[\"/system/cadres\"],\"target\":[\"menuItem\"],\"perms\":[\"system:cadres:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:16:42');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1181\"],\"parentId\":[\"1257\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.1-3高雅艺术活动情况\"],\"url\":[\"/system/activity\"],\"target\":[\"menuItem\"],\"perms\":[\"system:activity:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:18:17');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1211\"],\"parentId\":[\"1252\"],\"menuType\":[\"C\"],\"menuName\":[\"5.1.1-1 学院教学管理职责分工一览\"],\"url\":[\"/system/division\"],\"target\":[\"menuItem\"],\"perms\":[\"system:division:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:18:46');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1235\"],\"parentId\":[\"1248\"],\"menuType\":[\"C\"],\"menuName\":[\"4.3.2-3实践学期项目汇总\"],\"url\":[\"/system/project\"],\"target\":[\"menuItem\"],\"perms\":[\"system:project:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:20:10');
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1241', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:20:29');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1229\"],\"parentId\":[\"1248\"],\"menuType\":[\"C\"],\"menuName\":[\"4.3.2-11 专业实习基地一览及协议\"],\"url\":[\"/system/internship\"],\"target\":[\"menuItem\"],\"perms\":[\"system:internship:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:20:46');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1223\"],\"parentId\":[\"1252\"],\"menuType\":[\"C\"],\"menuName\":[\"5.1.1-2 学院教学管理人员信息\"],\"url\":[\"/system/information\"],\"target\":[\"menuItem\"],\"perms\":[\"system:information:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:22:16');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1193\"],\"parentId\":[\"1252\"],\"menuType\":[\"C\"],\"menuName\":[\"5.1.1-3 学院教学管理人员获得荣誉证书一览\"],\"url\":[\"/system/certificate\"],\"target\":[\"menuItem\"],\"perms\":[\"system:certificate:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:22:28');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1217\"],\"parentId\":[\"1258\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例\"],\"url\":[\"/system/graduate\"],\"target\":[\"menuItem\"],\"perms\":[\"system:graduate:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"修改菜单\'7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例\'失败，菜单名称已存在\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2021-12-01 16:22:41');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1217\"],\"parentId\":[\"1258\"],\"menuType\":[\"C\"],\"menuName\":[\"7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例\"],\"url\":[\"/system/graduate\"],\"target\":[\"menuItem\"],\"perms\":[\"system:graduate:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:23:31');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-12-01 16:23:52');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"若依官网\"],\"url\":[\"\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:24:10');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-12-01 16:24:13');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"若依官网\"],\"url\":[\"\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:24:19');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:24:37');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-01 16:24:46');
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"fl_ability_division\"],\"tableComment\":[\"1.2.2-2学校领导分工一览表\"],\"className\":[\"FlAbilityDivision\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"16\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"17\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"工号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"empId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"18\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"职工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"empName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"19\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职务\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"post\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"20\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"分工\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"division\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"21\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"是否使用\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-06 10:31:38');
INSERT INTO `sys_oper_log` VALUES (123, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"是否使用\"],\"dictType\":[\"is_use\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-06 10:33:12');
INSERT INTO `sys_oper_log` VALUES (124, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"性别\"],\"dictType\":[\"is_gender\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-06 10:33:57');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"fl_ability_division\"],\"tableComment\":[\"1.2.2-2学校领导分工一览表\"],\"className\":[\"FlAbilityDivision\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"16\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"17\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"工号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"empId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"18\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"职工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"empName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"19\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职务\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"post\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"20\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"分工\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"division\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"21\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"是否使用\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-06 10:34:38');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"moral_chara_party_development\"],\"tableComment\":[\"7.1.2-1 各专业党员发展计划、发展情况汇总表\"],\"className\":[\"MoralCharaPartyDevelopment\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"152\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"153\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"所在支部\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"collegeName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"154\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"已提交入党申请书数量\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"submitNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"155\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"现有入党积极分子存量\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"activistNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"156\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"拟发展时间（年/月）\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"developmentTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"157\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"拟发展计划数\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"developmentN', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-12-06 10:39:21');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-11-15 23:37:47', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-11-15 23:37:47', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2021-11-15 23:37:47', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2021-11-15 23:37:47', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime(0) NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2021-12-06 10:49:28', '2021-11-15 23:37:46', 'admin', '2021-11-15 23:37:46', '', '2021-12-06 10:49:28', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2021-11-15 23:37:46', '2021-11-15 23:37:46', 'admin', '2021-11-15 23:37:46', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('338186f6-f75a-4b08-b5cd-28dae7b2f3bd', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 'on_line', '2021-12-06 10:29:56', '2021-12-06 10:52:02', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for teach_pra_internship
-- ----------------------------
DROP TABLE IF EXISTS `teach_pra_internship`;
CREATE TABLE `teach_pra_internship`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `base_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实习基地名称',
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面向专业',
  `base_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基地类型',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `base_distance` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基地距学校距离',
  `partner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作方联系人',
  `partner_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作方联系人电话',
  `practice_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '协议书起止日期',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '4.3.2-11 专业实习基地一览表及协议' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teach_pra_outside_school
-- ----------------------------
DROP TABLE IF EXISTS `teach_pra_outside_school`;
CREATE TABLE `teach_pra_outside_school`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `edu_level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '层次',
  `cla` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `stu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `practice_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实习单位',
  `practice_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实习指导老师',
  `practice_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实习时间',
  `practice_score` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实习成绩',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '4.3.2-10学生校外实习情况表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teach_pra_project
-- ----------------------------
DROP TABLE IF EXISTS `teach_pra_project`;
CREATE TABLE `teach_pra_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `college` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开课学院',
  `project_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目编号',
  `project_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `emp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指导老师',
  `grade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面向年级',
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面向专业',
  `stu_num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在单位',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '4.3.2-3实践学期项目汇总表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teach_pra_select
-- ----------------------------
DROP TABLE IF EXISTS `teach_pra_select`;
CREATE TABLE `teach_pra_select`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开课部门',
  `stu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `grade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `cla` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主修专业',
  `edu_level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培养层次',
  `project_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目编号',
  `project_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `emp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指导老师',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '4.2.3-4实践学期学生选题汇总表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for team_str_division
-- ----------------------------
DROP TABLE IF EXISTS `team_str_division`;
CREATE TABLE `team_str_division`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `emp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `dept_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系部',
  `post` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作职业',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '5.1.1-1 学院教学管理职责分工一览表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for team_str_honorary_certificate
-- ----------------------------
DROP TABLE IF EXISTS `team_str_honorary_certificate`;
CREATE TABLE `team_str_honorary_certificate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `emp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `honor_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '荣誉名称',
  `release_` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授予单位',
  `level_` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '级别',
  `honor_time` datetime(0) NULL DEFAULT NULL COMMENT '获奖日期',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '5.1.1-3 学院教学管理人员获得荣誉证书一览表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for team_str_information
-- ----------------------------
DROP TABLE IF EXISTS `team_str_information`;
CREATE TABLE `team_str_information`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `emp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `dept_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `idcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `highest_education` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最高学历',
  `highest_degree` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最高学位',
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系部',
  `post` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `admin_level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行政级别',
  `work_time` datetime(0) NULL DEFAULT NULL COMMENT '入职时间',
  `use_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '5.1.1-2 学院教学管理人员信息表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
