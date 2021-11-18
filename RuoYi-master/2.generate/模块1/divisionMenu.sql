-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-2学校领导分工一览', '1063', '1', '/system/division', 'C', '0', 'system:division:view', '#', 'admin', sysdate(), '', null, '1.2.2-2学校领导分工一览菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-2学校领导分工一览查询', @parentId, '1',  '#',  'F', '0', 'system:division:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-2学校领导分工一览新增', @parentId, '2',  '#',  'F', '0', 'system:division:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-2学校领导分工一览修改', @parentId, '3',  '#',  'F', '0', 'system:division:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-2学校领导分工一览删除', @parentId, '4',  '#',  'F', '0', 'system:division:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('1.2.2-2学校领导分工一览导出', @parentId, '5',  '#',  'F', '0', 'system:division:export',       '#', 'admin', sysdate(), '', null, '');
