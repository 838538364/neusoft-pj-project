-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员指导毕业论文情况统计', '1072', '1', '/system/guidance', 'C', '0', 'system:guidance:view', '#', 'admin', sysdate(), '', null, '各学院聘请企业人员指导毕业论文情况统计菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员指导毕业论文情况统计查询', @parentId, '1',  '#',  'F', '0', 'system:guidance:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员指导毕业论文情况统计新增', @parentId, '2',  '#',  'F', '0', 'system:guidance:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员指导毕业论文情况统计修改', @parentId, '3',  '#',  'F', '0', 'system:guidance:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员指导毕业论文情况统计删除', @parentId, '4',  '#',  'F', '0', 'system:guidance:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员指导毕业论文情况统计导出', @parentId, '5',  '#',  'F', '0', 'system:guidance:export',       '#', 'admin', sysdate(), '', null, '');
