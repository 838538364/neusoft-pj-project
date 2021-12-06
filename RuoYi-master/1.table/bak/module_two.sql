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
   id                   int not null auto_increment comment '���',
   stu_name             varchar(50) comment '����',
   stu_id               varchar(50) comment 'ѧ��',
   sex                  varchar(50) comment '�Ա�',
   political            varchar(50) comment '������ò',
   college_name         varchar(50) comment '����ѧԺ',
   major                varchar(50) comment 'רҵ',
   class_name           varchar(50) comment '���',
   year                 varchar(50) comment 'ѧ��',
   teacher_name         varchar(50) comment '����Ա',
   honorary_name        varchar(50) comment '�����ƺ�',
   commend_unit         varchar(50) comment '���õ�λ',
   commend_time         datetime comment '����ʱ��',
   is_report            varchar(50) comment '�Ƿ����ר�ⱨ��',
   other                varchar(50) comment '����',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table moral_chara_outstanding_graduate comment '7.1.2-2�㶫����ѧԺ��רҵ�����ҵ������͵�������';

/*==============================================================*/
/* Table: moral_chara_party_development                         */
/*==============================================================*/
create table moral_chara_party_development
(
   id                   int not null auto_increment comment '���',
   college_name         varchar(50) comment '����֧��',
   submit_number     varchar(50) comment '���ύ�뵳����������',
   activist_number      varchar(50) comment '�����뵳�������Ӵ���',
   development_time     varchar(50) comment '�ⷢչʱ�䣨��/�£�',
   development_number   varchar(50) comment '�ⷢչ�ƻ���',
   party_number         varchar(50) comment '���е�Ա������Ԥ����',
   other                varchar(50) comment '����',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table moral_chara_party_development comment '7.1.2-1 ��רҵ��Ա��չ�ƻ�����չ������ܱ�';

/*==============================================================*/
/* Table: moral_edu_activities                                  */
/*==============================================================*/
create table moral_edu_activities
(
   id                   int not null auto_increment comment '���',
   activity_time        varchar(50) comment '����',
   activity_title       varchar(50) comment '����',
   active_content       varchar(50) comment '�����',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table moral_edu_activities comment ' 7.1.1-1�������רҵ˼������ͳ�Ʊ�';

/*==============================================================*/
/* Table: moral_edu_art_activity                                */
/*==============================================================*/
create table moral_edu_art_activity
(
   id                   int not null auto_increment comment '���',
   time                 datetime comment '����',
   act_title            varchar(50) comment '�����',
   act_content          varchar(150) comment '�����',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table moral_edu_art_activity comment '7.1.1-3������������';

/*==============================================================*/
/* Table: moral_edu_commend                                     */
/*==============================================================*/
create table moral_edu_commend
(
   id                   int not null auto_increment comment '���',
   time                 datetime comment '����',
   stu_name             varchar(50) comment '����',
   sex                  varchar(50) comment '�Ա�',
   marjor               varchar(50) comment 'רҵ����',
   edu_level            varchar(50) comment '�������',
   five_four            varchar(50) comment '���ı���',
   seven_one            varchar(50) comment '��һ����',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table moral_edu_commend comment '7.1.1-2�����ı��á�������һ���á���';

/*==============================================================*/
/* Table: moral_edu_outstanding_cadres                          */
/*==============================================================*/
create table moral_edu_outstanding_cadres
(
   id                   int not null auto_increment comment '���',
   secondary_college    varchar(50) comment '����ѧԺ',
   grade_professional_class varchar(50) comment '�꼶רҵ�༶',
   members              varchar(50) comment '��Ա��',
   monitor_name         varchar(50) comment '�೤����',
   counselor_name       varchar(50) comment '����Ա����',
   people_punished      varchar(50) comment '�ܴ�������',
   winners              varchar(50) comment '������',
   is_model_class       varchar(50) comment '�Ƿ��Ƽ�Ϊѧ������',
   honorary_title       varchar(50) comment '�����ƺ�',
   recognition_time     varchar(50) comment '����ʱ��',
   recognition_unit     varchar(50) comment '���õ�λ',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table moral_edu_outstanding_cadres comment '7.1.2-3�㶫����ѧԺ��רҵ����༯��ͳ�Ʊ�';

/*==============================================================*/
/* Table: moral_edu_outstanding_students                        */
/*==============================================================*/
create table moral_edu_outstanding_students
(
   id                   int not null auto_increment comment '���',
   college_name         varchar(50) comment 'ѧԺ����',
   name                 varchar(50) comment '����',
   sex                  varchar(50) comment '�Ա�',
   education_level      varchar(50) comment 'ѧ�����',
   job_title            varchar(50) comment 'ְ��',
   grade_professional_class varchar(50) comment '�꼶רҵ�༶',
   honorary_title       varchar(50) comment '�����ƺ�',
   recognition_time     varchar(50) comment '����ʱ��',
   recognition_unit     varchar(50) comment '���õ�λ',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table moral_edu_outstanding_students comment '7.1.2-3-2�㶫����ѧԺ��רҵ������ˡ�����ѧ���ɲ�ͳ�Ʊ�(';

/*==============================================================*/
/* Table: qual_system_standards                                 */
/*==============================================================*/
create table qual_system_standards
(
   id                   int not null auto_increment comment '���',
   type                 varchar(50) comment '���',
   file_name            varchar(50) comment '�ļ�����',
   version              varchar(50) comment '�汾',
   release_time         datetime comment '��������',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table qual_system_standards comment '5.2.1-2 ѧԺ�ƶ��Ľ�ѧ�������ʵʩϸ��һ����';

/*==============================================================*/
/* Table: teach_pra_internship                                  */
/*==============================================================*/
create table teach_pra_internship
(
   id                   int not null auto_increment comment '���',
   base_name            varchar(50) comment 'ʵϰ��������',
   major                varchar(50) comment '����רҵ',
   base_type            varchar(50) comment '��������',
   address              varchar(50) comment '��ϸ��ַ',
   base_distance        varchar(50) comment '���ؾ�ѧУ����',
   partner              varchar(50) comment '��������ϵ��',
   partner_tel          varchar(50) comment '��������ϵ�˵绰',
   practice_time        varchar(50) comment 'Э������ֹ����',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table teach_pra_internship comment '4.3.2-11 רҵʵϰ����һ����Э��';

/*==============================================================*/
/* Table: teach_pra_outside_school                              */
/*==============================================================*/
create table teach_pra_outside_school
(
   id                   int not null auto_increment comment '���',
   major         varchar(50) comment 'רҵ',
   edu_level varchar(50) comment '���',
   cla             varchar(50) comment '�༶',
   stu_id               varchar(50) comment 'ѧ��',
   stu_name             varchar(50) comment '����',
   practice_address     varchar(50) comment 'ʵϰ��λ',
   practice_name        varchar(50) comment 'ʵϰָ����ʦ',
   practice_time        varchar(50) comment 'ʵϰʱ��',
   practice_score       varchar(50) comment 'ʵϰ�ɼ�',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table teach_pra_outside_school comment '4.3.2-10ѧ��У��ʵϰ�����';

/*==============================================================*/
/* Table: teach_pra_project                                     */
/*==============================================================*/
create table teach_pra_project
(
   id                   int not null auto_increment comment '���',
   college              varchar(50) comment '����ѧԺ',
   project_id           varchar(50) comment '��Ŀ���',
   project_name         varchar(50) comment '��Ŀ����',
   emp_name   varchar(50) comment 'ָ����ʦ',
   grade                varchar(50) comment '�����꼶',
   major                varchar(50) comment '����רҵ',
   stu_num              varchar(50) comment '���ڵ�λ',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table teach_pra_project comment '4.3.2-3ʵ��ѧ����Ŀ���ܱ�';

/*==============================================================*/
/* Table: teach_pra_select                                      */
/*==============================================================*/
create table teach_pra_select
(
   id                   int not null auto_increment comment '���',
   dept_name            varchar(50) comment '���β���',
   stu_id               varchar(50) comment 'ѧ��',
   stu_name             varchar(50) comment '����',
   grade         varchar(50) comment '�꼶',
   cla                  varchar(50) comment '�༶',
   major                varchar(50) comment '����רҵ',
   edu_level            varchar(50) comment '�������',
   project_id           varchar(50) comment '��Ŀ���',
   project_name         varchar(50) comment '��Ŀ����',
   emp_name             varchar(50) comment 'ָ����ʦ',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table teach_pra_select comment '4.2.3-4ʵ��ѧ��ѧ��ѡ����ܱ�';

/*==============================================================*/
/* Table: team_str_division                                     */
/*==============================================================*/
create table team_str_division
(
   id                   int not null auto_increment comment '���',
   emp_name             varchar(50) comment '����',
   sex                  varchar(50) comment '�Ա�',
   dept_id              varchar(50) comment '����',
   department           varchar(50) comment 'ϵ��',
   post                 varchar(50) comment 'ְ��',
   job                  varchar(50) comment '����ְҵ',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table team_str_division comment '5.1.1-1 ѧԺ��ѧ����ְ��ֹ�һ����';

/*==============================================================*/
/* Table: team_str_honorary_certificate                         */
/*==============================================================*/
create table team_str_honorary_certificate
(
   id                   int not null auto_increment comment '���',
   emp_name             varchar(50) comment '����',
   dept_name            varchar(50) comment '����',
   honor_name           varchar(50) comment '��������',
   release_           varchar(50) comment '���赥λ',
   level_              varchar(50) comment '����',
   honor_time           datetime comment '������',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table team_str_honorary_certificate comment '5.1.1-3 ѧԺ��ѧ������Ա�������֤��һ����';

/*==============================================================*/
/* Table: team_str_information                                  */
/*==============================================================*/
create table team_str_information
(
   id                   int not null auto_increment comment '���',
   emp_name             varchar(50) comment '����',
   sex                  varchar(50) comment '�Ա�',
   dept_id              varchar(50) comment '����',
   idcard               varchar(50) comment '���֤��',
   highest_education    varchar(50) comment '���ѧ��',
   highest_degree       varchar(50) comment '���ѧλ',
   tel                  varchar(50) comment '��ϵ��ʽ',
   department           varchar(50) comment 'ϵ��',
   post                 varchar(50) comment 'ְ��',
   admin_level          varchar(50) comment '��������',
   work_time            datetime comment '��ְʱ��',
   use_status           char(2) comment '�Ƿ�ʹ��',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(128) comment '��ע',
   primary key (id)
);

alter table team_str_information comment '5.1.1-2 ѧԺ��ѧ������Ա��Ϣ��';

