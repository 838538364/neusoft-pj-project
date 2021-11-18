-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员授课情况', '1063', '1', '/system/teach', 'C', '0', 'system:teach:view', '#', 'admin', sysdate(), '', null, '各学院聘请企业人员授课情况菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员授课情况查询', @parentId, '1',  '#',  'F', '0', 'system:teach:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员授课情况新增', @parentId, '2',  '#',  'F', '0', 'system:teach:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员授课情况修改', @parentId, '3',  '#',  'F', '0', 'system:teach:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员授课情况删除', @parentId, '4',  '#',  'F', '0', 'system:teach:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('各学院聘请企业人员授课情况导出', @parentId, '5',  '#',  'F', '0', 'system:teach:export',       '#', 'admin', sysdate(), '', null, '');
