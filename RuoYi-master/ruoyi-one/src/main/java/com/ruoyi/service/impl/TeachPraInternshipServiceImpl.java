package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TeachPraInternshipMapper;
import com.ruoyi.system.domain.TeachPraInternship;
import com.ruoyi.system.service.ITeachPraInternshipService;
import com.ruoyi.common.core.text.Convert;

/**
 * 4.3.2-11 专业实习基地一览及协议Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class TeachPraInternshipServiceImpl implements ITeachPraInternshipService 
{
    @Autowired
    private TeachPraInternshipMapper teachPraInternshipMapper;

    /**
     * 查询4.3.2-11 专业实习基地一览及协议
     * 
     * @param id 4.3.2-11 专业实习基地一览及协议ID
     * @return 4.3.2-11 专业实习基地一览及协议
     */
    @Override
    public TeachPraInternship selectTeachPraInternshipById(Long id)
    {
        return teachPraInternshipMapper.selectTeachPraInternshipById(id);
    }

    /**
     * 查询4.3.2-11 专业实习基地一览及协议列表
     * 
     * @param teachPraInternship 4.3.2-11 专业实习基地一览及协议
     * @return 4.3.2-11 专业实习基地一览及协议
     */
    @Override
    public List<TeachPraInternship> selectTeachPraInternshipList(TeachPraInternship teachPraInternship)
    {
        return teachPraInternshipMapper.selectTeachPraInternshipList(teachPraInternship);
    }

    /**
     * 新增4.3.2-11 专业实习基地一览及协议
     * 
     * @param teachPraInternship 4.3.2-11 专业实习基地一览及协议
     * @return 结果
     */
    @Override
    public int insertTeachPraInternship(TeachPraInternship teachPraInternship)
    {
        teachPraInternship.setCreateTime(DateUtils.getNowDate());
        return teachPraInternshipMapper.insertTeachPraInternship(teachPraInternship);
    }

    /**
     * 修改4.3.2-11 专业实习基地一览及协议
     * 
     * @param teachPraInternship 4.3.2-11 专业实习基地一览及协议
     * @return 结果
     */
    @Override
    public int updateTeachPraInternship(TeachPraInternship teachPraInternship)
    {
        teachPraInternship.setUpdateTime(DateUtils.getNowDate());
        return teachPraInternshipMapper.updateTeachPraInternship(teachPraInternship);
    }

    /**
     * 删除4.3.2-11 专业实习基地一览及协议对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTeachPraInternshipByIds(String ids)
    {
        return teachPraInternshipMapper.deleteTeachPraInternshipByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除4.3.2-11 专业实习基地一览及协议信息
     * 
     * @param id 4.3.2-11 专业实习基地一览及协议ID
     * @return 结果
     */
    @Override
    public int deleteTeachPraInternshipById(Long id)
    {
        return teachPraInternshipMapper.deleteTeachPraInternshipById(id);
    }
}
