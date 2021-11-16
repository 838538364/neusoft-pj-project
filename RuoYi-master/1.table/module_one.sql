/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/11/16 16:05:00                          */
/*==============================================================*/


drop table if exists fl_ability_division;

drop table if exists fl_ability_lead;

drop table if exists fl_tcp_lecture;

drop table if exists fl_tcp_paper;

drop table if exists ptm_edu_guided;

drop table if exists ptm_edu_pt_statistics;

drop table if exists ptm_edu_socco_Industrial;

drop table if exists ptm_edu_teach;

/*==============================================================*/
/* Table: fl_ability_division                                   */
/*==============================================================*/
create table fl_ability_division
(
   id                   int not null auto_increment comment '序号',
   emp_id               varchar(50) not null comment '工号',
   emp_name             varchar(60) not null comment '职工姓名',
   post                 varchar(100) not null comment '职务',
   division             varchar(500) not null comment '分工',
   use_status           char(2) not null comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table fl_ability_division comment '1.2.2-2学校领导分工一览表';

/*==============================================================*/
/* Table: fl_ability_lead                                       */
/*==============================================================*/
create table fl_ability_lead
(
   id                   int not null auto_increment comment '序号',
   emp_id               varchar(50) not null comment '工号',
   emp_name             varchar(60) not null comment '职工姓名',
   sex                  char(2) not null comment '性别',
   post                 varchar(100) not null comment '职务',
   word_time            datetime not null comment '任职时间',
   highest_education    varchar(80) not null comment '最高学历',
   title                varchar(80) not null comment '职称',
   resume               varchar(200) not null comment '个人简历',
   use_status           char(2) not null comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table fl_ability_lead comment '1.2.2-1学校领导一览表';

/*==============================================================*/
/* Table: fl_tcp_lecture                                        */
/*==============================================================*/
create table fl_tcp_lecture
(
   id                   int not null auto_increment comment '序号',
   lecture_title        varchar(50) not null comment '讲座主题',
   lecture_time         datetime not null comment '讲座时间',
   stu_id               varchar(50) not null comment '学号',
   stu_name             varchar(50) not null comment '学生姓名',
   emp_name             varchar(60) not null comment '职工姓名',
   title                  varchar(50) not null comment '职称',
   use_status           char(2) not null comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table fl_tcp_lecture comment '1.2.3-4 学术讲座表(fl_tcp_lecture)';

/*==============================================================*/
/* Table: fl_tcp_paper                                          */
/*==============================================================*/
create table fl_tcp_paper
(
   id                   int not null auto_increment comment '序号',
   stu_id               varchar(50) not null comment '学号',
   stu_name             varchar(50) not null comment '学生姓名',
   major                varchar(60) not null comment '专业',
   cla                  varchar(50) not null comment '班级',
   teacher              varchar(50) not null comment '指导老师',
   paper_title          varchar(50) not null comment '论文题目',
   project_name         varchar(50) not null comment '科研项目名称',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table fl_tcp_paper comment '1.2.3-3毕业论文统计表(fl_tcp_paper)';

/*==============================================================*/
/* Table: ptm_edu_guided                                        */
/*==============================================================*/
create table ptm_edu_guided
(
   emp_name             varchar(50) comment '指导教师',
   highest_education    varchar(50) comment '学历',
   major                varchar(50) comment '专业',
   work_station         varchar(50) comment '工作单位',
   teach_time           date comment '指导时间',
   cla                  varchar(50) comment '班级',
   stu_id               varchar(50) comment '学号',
   stu_name             varchar(50) comment '姓名',
   id                   int not null auto_increment comment '序号',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table ptm_edu_guided comment '各学院聘请企业人员指导实习情况表';

/*==============================================================*/
/* Table: ptm_edu_pt_statistics                                 */
/*==============================================================*/
create table ptm_edu_pt_statistics
(
   id                   int not null auto_increment comment '序号',
   company              varchar(50) comment '实习实践单位名称',
   province             varchar(50) comment '所在省市',
   manager              varchar(50) comment '企业实习实践负责人',
   ip_name              varchar(50) comment '实习实践项目名称',
   pro_name             varchar(50) comment '参与实践活动专业名称',
   course_hours         date comment '实习实践时间',
   emp_name             varchar(50) comment '校内指导教师',
   number_student       varchar(50) comment '参与学生人数',
   practice_type        varchar(50) comment '主要实习实践方式',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table ptm_edu_pt_statistics comment '各专业校外实践教学情况统计表';

/*==============================================================*/
/* Table: ptm_edu_socco_Industrial                              */
/*==============================================================*/
create table ptm_edu_socco_Industrial
(
   id                   int not null auto_increment comment '序号',
   college_name         varchar(50) comment '产业学院名称',
   unit_industry     varchar(50) comment '共建单位及行业类',
   manager              varchar(50) comment '负责人',
   est_time             date comment '组建时间',
   cooperation_year     varchar(50) comment '合作年限',
   personnel_training   varchar(50) comment '人才培养',
   construction_teacher varchar(50) comment '师资队伍建设',
   textbook_dev         varchar(50) comment '教材开发',
   laboratory           varchar(50) comment '实验室投入',
   other                varchar(50) comment '其他',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table ptm_edu_socco_Industrial comment '产业学院共建情况统计览表';

/*==============================================================*/
/* Table: ptm_edu_teach                                         */
/*==============================================================*/
create table ptm_edu_teach
(
   id                   int not null auto_increment comment '序号',
   college              varchar(50) comment '所属学院',
   name                 varchar(50) comment '姓名',
   title                varchar(50) comment '职称',
   work_time            date comment '任职时间',
   year                 varchar(50) comment '学年学期',
   course_code          varchar(50) comment '课程代码',
   course_name          varchar(50) comment '课程名称',
   teach_object         varchar(50) comment '授课对象',
   teach_number         varchar(50) comment '授课人数',
   use_status           char(2) comment '是否使用',
   create_by            varchar(50) comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(128) comment '备注',
   primary key (id)
);

alter table ptm_edu_teach comment '各学院聘请企业人员授课情况表';

