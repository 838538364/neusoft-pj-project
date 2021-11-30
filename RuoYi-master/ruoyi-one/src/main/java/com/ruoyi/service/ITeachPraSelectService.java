package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TeachPraSelect;

/**
 * 4.2.3-4实践学期学生选题汇总Service接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface ITeachPraSelectService 
{
    /**
     * 查询4.2.3-4实践学期学生选题汇总
     * 
     * @param id 4.2.3-4实践学期学生选题汇总ID
     * @return 4.2.3-4实践学期学生选题汇总
     */
    public TeachPraSelect selectTeachPraSelectById(Long id);

    /**
     * 查询4.2.3-4实践学期学生选题汇总列表
     * 
     * @param teachPraSelect 4.2.3-4实践学期学生选题汇总
     * @return 4.2.3-4实践学期学生选题汇总集合
     */
    public List<TeachPraSelect> selectTeachPraSelectList(TeachPraSelect teachPraSelect);

    /**
     * 新增4.2.3-4实践学期学生选题汇总
     * 
     * @param teachPraSelect 4.2.3-4实践学期学生选题汇总
     * @return 结果
     */
    public int insertTeachPraSelect(TeachPraSelect teachPraSelect);

    /**
     * 修改4.2.3-4实践学期学生选题汇总
     * 
     * @param teachPraSelect 4.2.3-4实践学期学生选题汇总
     * @return 结果
     */
    public int updateTeachPraSelect(TeachPraSelect teachPraSelect);

    /**
     * 批量删除4.2.3-4实践学期学生选题汇总
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTeachPraSelectByIds(String ids);

    /**
     * 删除4.2.3-4实践学期学生选题汇总信息
     * 
     * @param id 4.2.3-4实践学期学生选题汇总ID
     * @return 结果
     */
    public int deleteTeachPraSelectById(Long id);
}
