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

drop table if exists ptm_edu_thesis_guidance;

/*==============================================================*/
/* Table: fl_ability_division                                   */
/*==============================================================*/
create table fl_ability_division
(
   id                   int not null auto_increment comment '���',
   emp_id               varchar(50) not null comment '����',
   emp_name             varchar(60) not null comment 'ְ������',
   post                 varchar(100) not null comment 'ְ��',
   division             varchar(500) not null comment '�ֹ�',
   use_status           char(2)  comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table fl_ability_division comment '1.2.2-2ѧУ�쵼�ֹ�һ����';

/*==============================================================*/
/* Table: fl_ability_lead                                       */
/*==============================================================*/
create table fl_ability_lead
(
   id                   int not null auto_increment comment '���',
   emp_id               varchar(50) not null comment '����',
   emp_name             varchar(60) not null comment 'ְ������',
   sex                  char(2) not null comment '�Ա�',
   post                 varchar(100) not null comment 'ְ��',
   word_time            datetime not null comment '��ְʱ��',
   highest_education    varchar(80) not null comment '���ѧ��',
   title                varchar(80) not null comment 'ְ��',
   resume               varchar(200) not null comment '���˼���',
   use_status           char(2)  comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table fl_ability_lead comment '1.2.2-1ѧУ�쵼һ����';

/*==============================================================*/
/* Table: fl_tcp_lecture                                        */
/*==============================================================*/
create table fl_tcp_lecture
(
   id                   int not null auto_increment comment '���',
   lecture_title        varchar(50) not null comment '��������',
   lecture_time         datetime not null comment '����ʱ��',
   stu_id               varchar(50) not null comment 'ѧ��',
   stu_name             varchar(50) not null comment 'ѧ������',
   emp_name             varchar(60) not null comment 'ְ������',
   title                  varchar(50) not null comment 'ְ��',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table fl_tcp_lecture comment '1.2.3-4 ѧ��������(fl_tcp_lecture)';

/*==============================================================*/
/* Table: fl_tcp_paper                                          */
/*==============================================================*/
create table fl_tcp_paper
(
   id                   int not null auto_increment comment '���',
   stu_id               varchar(50) not null comment 'ѧ��',
   stu_name             varchar(50) not null comment 'ѧ������',
   major                varchar(60) not null comment 'רҵ',
   cla                  varchar(50) not null comment '�༶',
   teacher              varchar(50) not null comment 'ָ����ʦ',
   paper_title          varchar(50) not null comment '������Ŀ',
   project_name         varchar(50) not null comment '������Ŀ����',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table fl_tcp_paper comment '1.2.3-3��ҵ����ͳ�Ʊ�(fl_tcp_paper)';

/*==============================================================*/
/* Table: ptm_edu_guided                                        */
/*==============================================================*/
create table ptm_edu_guided
(
   id                   int not null auto_increment comment '���',
   emp_name             varchar(50) not null comment 'ָ����ʦ',
   highest_education    varchar(50) comment 'ѧ��',
   major                varchar(50) not null comment 'רҵ',
   work_station         varchar(50) comment '������λ',
   teach_time           date comment 'ָ��ʱ��',
   cla                  varchar(50) comment '�༶',
   stu_id               varchar(50) not null comment 'ѧ��',
   stu_name             varchar(50) not null comment '����',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table ptm_edu_guided comment '��ѧԺƸ����ҵ��Աָ��ʵϰ�����';

/*==============================================================*/
/* Table: ptm_edu_pt_statistics                                 */
/*==============================================================*/
create table ptm_edu_pt_statistics
(
   id                   int not null auto_increment comment '���',
   company              varchar(50) comment 'ʵϰʵ����λ����',
   province             varchar(50) comment '����ʡ��',
   manager              varchar(50) not null comment '��ҵʵϰʵ��������',
   ip_name              varchar(50) not null comment 'ʵϰʵ����Ŀ����',
   pro_name             varchar(50) comment '����ʵ���רҵ����',
   course_hours         date comment 'ʵϰʵ��ʱ��',
   emp_name             varchar(50) not null comment 'У��ָ����ʦ',
   number_student       varchar(50) comment '����ѧ������',
   practice_type        varchar(50) comment '��Ҫʵϰʵ����ʽ',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table ptm_edu_pt_statistics comment '��רҵУ��ʵ����ѧ���ͳ�Ʊ�';

/*==============================================================*/
/* Table: ptm_edu_socco_Industrial                              */
/*==============================================================*/
create table ptm_edu_socco_Industrial
(
   id                   int not null auto_increment comment '���',
   college_name         varchar(50) not null comment '��ҵѧԺ����',
   unit_industry     varchar(50) comment '������λ����ҵ��',
   manager              varchar(50) not null comment '������',
   est_time             date comment '�齨ʱ��',
   cooperation_year     varchar(50) comment '��������',
   personnel_training   varchar(50) comment '�˲�����',
   construction_teacher varchar(50) comment 'ʦ�ʶ��齨��',
   textbook_dev         varchar(50) comment '�̲Ŀ���',
   laboratory           varchar(50) comment 'ʵ����Ͷ��',
   other                varchar(50) comment '����',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table ptm_edu_socco_Industrial comment '��ҵѧԺ�������ͳ������';

/*==============================================================*/
/* Table: ptm_edu_teach                                         */
/*==============================================================*/
create table ptm_edu_teach
(
   id                   int not null auto_increment comment '���',
   college              varchar(50) comment '����ѧԺ',
   name                 varchar(50) comment '����',
   title                varchar(50) comment 'ְ��',
   work_time            date comment '��ְʱ��',
   year                 varchar(50) comment 'ѧ��ѧ��',
   course_code          varchar(50) not null comment '�γ̴���',
   course_name          varchar(50) not null comment '�γ�����',
   teach_object         varchar(50) comment '�ڿζ���',
   teach_number         varchar(50) comment '�ڿ�����',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table ptm_edu_teach comment '��ѧԺƸ����ҵ��Ա�ڿ������';


create table ptm_edu_thesis_guidance
(
   id                   int not null auto_increment comment '���',
   thesis_title         varchar(50) not null comment '����(���)��Ŀ',
   cla                  varchar(50) not null comment '�༶',
   stu_id       varchar(50) not null comment 'ѧ��',
   stu_name             varchar(50) not null comment '����',
   major                varchar(50) not null comment 'רҵ',
   emp_name             date not null comment 'ָ����ʦ(��ҵ��)',
   address              varchar(50) comment '���ڵ�λ',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table ptm_edu_thesis_guidance comment '��ѧԺƸ����ҵ��Աָ����ҵ�������ͳ�Ʊ�';
