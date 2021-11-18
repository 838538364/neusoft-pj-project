-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各专业校外实践教学情况统计', '1063', '1', '/system/statistics', 'C', '0', 'system:statistics:view', '#', 'admin', sysdate(), '', null, '各专业校外实践教学情况统计菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各专业校外实践教学情况统计查询', @parentId, '1',  '#',  'F', '0', 'system:statistics:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各专业校外实践教学情况统计新增', @parentId, '2',  '#',  'F', '0', 'system:statistics:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各专业校外实践教学情况统计修改', @parentId, '3',  '#',  'F', '0', 'system:statistics:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各专业校外实践教学情况统计删除', @parentId, '4',  '#',  'F', '0', 'system:statistics:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各专业校外实践教学情况统计导出', @parentId, '5',  '#',  'F', '0', 'system:statistics:export',       '#', 'admin', sysdate(), '', null, '');
