-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-4 学术讲座(fl_tcp_lecture)', '1063', '1', '/system/lecture', 'C', '0', 'system:lecture:view', '#', 'admin', sysdate(), '', null, '1.2.3-4 学术讲座(fl_tcp_lecture)菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-4 学术讲座(fl_tcp_lecture)查询', @parentId, '1',  '#',  'F', '0', 'system:lecture:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-4 学术讲座(fl_tcp_lecture)新增', @parentId, '2',  '#',  'F', '0', 'system:lecture:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-4 学术讲座(fl_tcp_lecture)修改', @parentId, '3',  '#',  'F', '0', 'system:lecture:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-4 学术讲座(fl_tcp_lecture)删除', @parentId, '4',  '#',  'F', '0', 'system:lecture:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.3-4 学术讲座(fl_tcp_lecture)导出', @parentId, '5',  '#',  'F', '0', 'system:lecture:export',       '#', 'admin', sysdate(), '', null, '');
