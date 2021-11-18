-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产业学院共建情况统计览', '1063', '1', '/system/industrial', 'C', '0', 'system:industrial:view', '#', 'admin', sysdate(), '', null, '产业学院共建情况统计览菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产业学院共建情况统计览查询', @parentId, '1',  '#',  'F', '0', 'system:industrial:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产业学院共建情况统计览新增', @parentId, '2',  '#',  'F', '0', 'system:industrial:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产业学院共建情况统计览修改', @parentId, '3',  '#',  'F', '0', 'system:industrial:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产业学院共建情况统计览删除', @parentId, '4',  '#',  'F', '0', 'system:industrial:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产业学院共建情况统计览导出', @parentId, '5',  '#',  'F', '0', 'system:industrial:export',       '#', 'admin', sysdate(), '', null, '');
