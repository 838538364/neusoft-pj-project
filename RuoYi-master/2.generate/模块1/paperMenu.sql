-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-3毕业论文统计(fl_tcp_paper)', '1063', '1', '/system/paper', 'C', '0', 'system:paper:view', '#', 'admin', sysdate(), '', null, '1.2.3-3毕业论文统计(fl_tcp_paper)菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-3毕业论文统计(fl_tcp_paper)查询', @parentId, '1',  '#',  'F', '0', 'system:paper:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-3毕业论文统计(fl_tcp_paper)新增', @parentId, '2',  '#',  'F', '0', 'system:paper:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-3毕业论文统计(fl_tcp_paper)修改', @parentId, '3',  '#',  'F', '0', 'system:paper:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-3毕业论文统计(fl_tcp_paper)删除', @parentId, '4',  '#',  'F', '0', 'system:paper:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-3毕业论文统计(fl_tcp_paper)导出', @parentId, '5',  '#',  'F', '0', 'system:paper:export',       '#', 'admin', sysdate(), '', null, '');
