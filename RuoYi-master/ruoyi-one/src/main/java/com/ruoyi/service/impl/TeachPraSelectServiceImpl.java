package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TeachPraSelectMapper;
import com.ruoyi.system.domain.TeachPraSelect;
import com.ruoyi.system.service.ITeachPraSelectService;
import com.ruoyi.common.core.text.Convert;

/**
 * 4.2.3-4实践学期学生选题汇总Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class TeachPraSelectServiceImpl implements ITeachPraSelectService 
{
    @Autowired
    private TeachPraSelectMapper teachPraSelectMapper;

    /**
     * 查询4.2.3-4实践学期学生选题汇总
     * 
     * @param id 4.2.3-4实践学期学生选题汇总ID
     * @return 4.2.3-4实践学期学生选题汇总
     */
    @Override
    public TeachPraSelect selectTeachPraSelectById(Long id)
    {
        return teachPraSelectMapper.selectTeachPraSelectById(id);
    }

    /**
     * 查询4.2.3-4实践学期学生选题汇总列表
     * 
     * @param teachPraSelect 4.2.3-4实践学期学生选题汇总
     * @return 4.2.3-4实践学期学生选题汇总
     */
    @Override
    public List<TeachPraSelect> selectTeachPraSelectList(TeachPraSelect teachPraSelect)
    {
        return teachPraSelectMapper.selectTeachPraSelectList(teachPraSelect);
    }

    /**
     * 新增4.2.3-4实践学期学生选题汇总
     * 
     * @param teachPraSelect 4.2.3-4实践学期学生选题汇总
     * @return 结果
     */
    @Override
    public int insertTeachPraSelect(TeachPraSelect teachPraSelect)
    {
        teachPraSelect.setCreateTime(DateUtils.getNowDate());
        return teachPraSelectMapper.insertTeachPraSelect(teachPraSelect);
    }

    /**
     * 修改4.2.3-4实践学期学生选题汇总
     * 
     * @param teachPraSelect 4.2.3-4实践学期学生选题汇总
     * @return 结果
     */
    @Override
    public int updateTeachPraSelect(TeachPraSelect teachPraSelect)
    {
        teachPraSelect.setUpdateTime(DateUtils.getNowDate());
        return teachPraSelectMapper.updateTeachPraSelect(teachPraSelect);
    }

    /**
     * 删除4.2.3-4实践学期学生选题汇总对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTeachPraSelectByIds(String ids)
    {
        return teachPraSelectMapper.deleteTeachPraSelectByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除4.2.3-4实践学期学生选题汇总信息
     * 
     * @param id 4.2.3-4实践学期学生选题汇总ID
     * @return 结果
     */
    @Override
    public int deleteTeachPraSelectById(Long id)
    {
        return teachPraSelectMapper.deleteTeachPraSelectById(id);
    }
}
