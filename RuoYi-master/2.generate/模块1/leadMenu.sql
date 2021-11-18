-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-1学校领导一览', '', '1', '/system/lead', 'C', '0', 'system:lead:view', '#', 'admin', sysdate(), '', null, '1.2.2-1学校领导一览菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-1学校领导一览查询', @parentId, '1',  '#',  'F', '0', 'system:lead:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-1学校领导一览新增', @parentId, '2',  '#',  'F', '0', 'system:lead:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-1学校领导一览修改', @parentId, '3',  '#',  'F', '0', 'system:lead:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-1学校领导一览删除', @parentId, '4',  '#',  'F', '0', 'system:lead:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-1学校领导一览导出', @parentId, '5',  '#',  'F', '0', 'system:lead:export',       '#', 'admin', sysdate(), '', null, '');
