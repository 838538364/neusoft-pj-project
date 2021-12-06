/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/11/28 23:36:12                          */
/*==============================================================*/


drop table if exists moral_chara_outstanding_graduate;

drop table if exists moral_chara_party_development;

drop table if exists moral_edu_activities;

drop table if exists moral_edu_art_activity;

drop table if exists moral_edu_commend;

drop table if exists moral_edu_outstanding_cadres;

drop table if exists moral_edu_outstanding_students;

drop table if exists qual_system_standards;

drop table if exists teach_pra_internship;

drop table if exists teach_pra_outside_school;

drop table if exists teach_pra_project;

drop table if exists teach_pra_select;

drop table if exists team_str_division;

drop table if exists team_str_honorary_certificate;

drop table if exists team_str_information;

/*==============================================================*/
/* Table: moral_chara_outstanding_graduate                      */
/*==============================================================*/
create table moral_chara_outstanding_graduate
(
   id                   int not null auto_increment comment '序号',
   stu_name             varchar(50) comment '姓名',
   stu_id               varchar(50) comment '学号',
   sex                  varchar(50) comment '性别',
   political            varchar(50) comment '政治面貌',
   college_name         varchar(50) comment '二级学院',
   major                varchar(50) comment '专业',
   class_name           varchar(50) comment '班别',
   year                 varchar(50) comment '学制',
   teacher_name         varchar(50) comment '辅导员',
   honorary_name        varchar(50) comment '荣誉称号',
   commend_unit         varchar(50) comment '表彰单位',
   commend_time         datetime comment '表彰时间',
   is_report            varchar(50) comment '是否进行专题报道',
   other                varchar(50) comment '其他',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table moral_chara_outstanding_graduate comment '7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例';

/*==============================================================*/
/* Table: moral_chara_party_development                         */
/*==============================================================*/
create table moral_chara_party_development
(
   id                   int not null auto_increment comment '序号',
   college_name         varchar(50) comment '所在支部',
   submit_number     varchar(50) comment '已提交入党申请书数量',
   activist_number      varchar(50) comment '现有入党积极分子存量',
   development_time     varchar(50) comment '拟发展时间（年/月）',
   development_number   varchar(50) comment '拟发展计划数',
   party_number         varchar(50) comment '现有党员数（含预备）',
   other                varchar(50) comment '其他',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table moral_chara_party_development comment '7.1.2-1 各专业党员发展计划、发展情况汇总表';

/*==============================================================*/
/* Table: moral_edu_activities                                  */
/*==============================================================*/
create table moral_edu_activities
(
   id                   int not null auto_increment comment '序号',
   activity_time        varchar(50) comment '日期',
   activity_title       varchar(50) comment '主题',
   active_content       varchar(50) comment '活动内容',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table moral_edu_activities comment ' 7.1.1-1近三年个专业思想教育活动统计表';

/*==============================================================*/
/* Table: moral_edu_art_activity                                */
/*==============================================================*/
create table moral_edu_art_activity
(
   id                   int not null auto_increment comment '序号',
   time                 datetime comment '日期',
   act_title            varchar(50) comment '活动主题',
   act_content          varchar(150) comment '活动内容',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table moral_edu_art_activity comment '7.1.1-3高雅艺术活动情况';

/*==============================================================*/
/* Table: moral_edu_commend                                     */
/*==============================================================*/
create table moral_edu_commend
(
   id                   int not null auto_increment comment '序号',
   time                 datetime comment '日期',
   stu_name             varchar(50) comment '姓名',
   sex                  varchar(50) comment '性别',
   marjor               varchar(50) comment '专业名称',
   edu_level            varchar(50) comment '培养层次',
   five_four            varchar(50) comment '五四表彰',
   seven_one            varchar(50) comment '七一表彰',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table moral_edu_commend comment '7.1.1-2“五四表彰”、“七一表彰”表';

/*==============================================================*/
/* Table: moral_edu_outstanding_cadres                          */
/*==============================================================*/
create table moral_edu_outstanding_cadres
(
   id                   int not null auto_increment comment '序号',
   secondary_college    varchar(50) comment '二级学院',
   grade_professional_class varchar(50) comment '年级专业班级',
   members              varchar(50) comment '成员数',
   monitor_name         varchar(50) comment '班长姓名',
   counselor_name       varchar(50) comment '辅导员姓名',
   people_punished      varchar(50) comment '受处分人数',
   winners              varchar(50) comment '获奖人数',
   is_model_class       varchar(50) comment '是否推荐为学风标兵班',
   honorary_title       varchar(50) comment '荣誉称号',
   recognition_time     varchar(50) comment '表彰时间',
   recognition_unit     varchar(50) comment '表彰单位',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table moral_edu_outstanding_cadres comment '7.1.2-3广东东软学院各专业优秀班集体统计表';

/*==============================================================*/
/* Table: moral_edu_outstanding_students                        */
/*==============================================================*/
create table moral_edu_outstanding_students
(
   id                   int not null auto_increment comment '序号',
   college_name         varchar(50) comment '学院名称',
   name                 varchar(50) comment '姓名',
   sex                  varchar(50) comment '性别',
   education_level      varchar(50) comment '学历层次',
   job_title            varchar(50) comment '职务',
   grade_professional_class varchar(50) comment '年级专业班级',
   honorary_title       varchar(50) comment '荣誉称号',
   recognition_time     varchar(50) comment '表彰时间',
   recognition_unit     varchar(50) comment '表彰单位',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table moral_edu_outstanding_students comment '7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计表(';

/*==============================================================*/
/* Table: qual_system_standards                                 */
/*==============================================================*/
create table qual_system_standards
(
   id                   int not null auto_increment comment '序号',
   type                 varchar(50) comment '类别',
   file_name            varchar(50) comment '文件名称',
   version              varchar(50) comment '版本',
   release_time         datetime comment '发布日期',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table qual_system_standards comment '5.2.1-2 学院制定的教学工作相关实施细则一览表';

/*==============================================================*/
/* Table: teach_pra_internship                                  */
/*==============================================================*/
create table teach_pra_internship
(
   id                   int not null auto_increment comment '序号',
   base_name            varchar(50) comment '实习基地名称',
   major                varchar(50) comment '面向专业',
   base_type            varchar(50) comment '基地类型',
   address              varchar(50) comment '详细地址',
   base_distance        varchar(50) comment '基地距学校距离',
   partner              varchar(50) comment '合作方联系人',
   partner_tel          varchar(50) comment '合作方联系人电话',
   practice_time        varchar(50) comment '协议书起止日期',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table teach_pra_internship comment '4.3.2-11 专业实习基地一览表及协议';

/*==============================================================*/
/* Table: teach_pra_outside_school                              */
/*==============================================================*/
create table teach_pra_outside_school
(
   id                   int not null auto_increment comment '序号',
   major         varchar(50) comment '专业',
   edu_level varchar(50) comment '层次',
   cla             varchar(50) comment '班级',
   stu_id               varchar(50) comment '学号',
   stu_name             varchar(50) comment '姓名',
   practice_address     varchar(50) comment '实习单位',
   practice_name        varchar(50) comment '实习指导老师',
   practice_time        varchar(50) comment '实习时间',
   practice_score       varchar(50) comment '实习成绩',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table teach_pra_outside_school comment '4.3.2-10学生校外实习情况表';

/*==============================================================*/
/* Table: teach_pra_project                                     */
/*==============================================================*/
create table teach_pra_project
(
   id                   int not null auto_increment comment '序号',
   college              varchar(50) comment '开课学院',
   project_id           varchar(50) comment '项目编号',
   project_name         varchar(50) comment '项目名称',
   emp_name   varchar(50) comment '指导老师',
   grade                varchar(50) comment '面向年级',
   major                varchar(50) comment '面向专业',
   stu_num              varchar(50) comment '所在单位',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table teach_pra_project comment '4.3.2-3实践学期项目汇总表';

/*==============================================================*/
/* Table: teach_pra_select                                      */
/*==============================================================*/
create table teach_pra_select
(
   id                   int not null auto_increment comment '序号',
   dept_name            varchar(50) comment '开课部门',
   stu_id               varchar(50) comment '学号',
   stu_name             varchar(50) comment '姓名',
   grade         varchar(50) comment '年级',
   cla                  varchar(50) comment '班级',
   major                varchar(50) comment '主修专业',
   edu_level            varchar(50) comment '培养层次',
   project_id           varchar(50) comment '项目编号',
   project_name         varchar(50) comment '项目名称',
   emp_name             varchar(50) comment '指导老师',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table teach_pra_select comment '4.2.3-4实践学期学生选题汇总表';

/*==============================================================*/
/* Table: team_str_division                                     */
/*==============================================================*/
create table team_str_division
(
   id                   int not null auto_increment comment '序号',
   emp_name             varchar(50) comment '姓名',
   sex                  varchar(50) comment '性别',
   dept_id              varchar(50) comment '部门',
   department           varchar(50) comment '系部',
   post                 varchar(50) comment '职务',
   job                  varchar(50) comment '工作职业',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table team_str_division comment '5.1.1-1 学院教学管理职责分工一览表';

/*==============================================================*/
/* Table: team_str_honorary_certificate                         */
/*==============================================================*/
create table team_str_honorary_certificate
(
   id                   int not null auto_increment comment '序号',
   emp_name             varchar(50) comment '姓名',
   dept_name            varchar(50) comment '部门',
   honor_name           varchar(50) comment '荣誉名称',
   release_           varchar(50) comment '授予单位',
   level_              varchar(50) comment '级别',
   honor_time           datetime comment '获奖日期',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table team_str_honorary_certificate comment '5.1.1-3 学院教学管理人员获得荣誉证书一览表';

/*==============================================================*/
/* Table: team_str_information                                  */
/*==============================================================*/
create table team_str_information
(
   id                   int not null auto_increment comment '序号',
   emp_name             varchar(50) comment '姓名',
   sex                  varchar(50) comment '性别',
   dept_id              varchar(50) comment '部门',
   idcard               varchar(50) comment '身份证号',
   highest_education    varchar(50) comment '最高学历',
   highest_degree       varchar(50) comment '最高学位',
   tel                  varchar(50) comment '联系方式',
   department           varchar(50) comment '系部',
   post                 varchar(50) comment '职务',
   admin_level          varchar(50) comment '行政级别',
   work_time            datetime comment '入职时间',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table team_str_information comment '5.1.1-2 学院教学管理人员信息表';

