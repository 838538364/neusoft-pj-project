package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TeachPraProjectMapper;
import com.ruoyi.system.domain.TeachPraProject;
import com.ruoyi.system.service.ITeachPraProjectService;
import com.ruoyi.common.core.text.Convert;

/**
 * 4.3.2-3实践学期项目汇总Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class TeachPraProjectServiceImpl implements ITeachPraProjectService 
{
    @Autowired
    private TeachPraProjectMapper teachPraProjectMapper;

    /**
     * 查询4.3.2-3实践学期项目汇总
     * 
     * @param id 4.3.2-3实践学期项目汇总ID
     * @return 4.3.2-3实践学期项目汇总
     */
    @Override
    public TeachPraProject selectTeachPraProjectById(Long id)
    {
        return teachPraProjectMapper.selectTeachPraProjectById(id);
    }

    /**
     * 查询4.3.2-3实践学期项目汇总列表
     * 
     * @param teachPraProject 4.3.2-3实践学期项目汇总
     * @return 4.3.2-3实践学期项目汇总
     */
    @Override
    public List<TeachPraProject> selectTeachPraProjectList(TeachPraProject teachPraProject)
    {
        return teachPraProjectMapper.selectTeachPraProjectList(teachPraProject);
    }

    /**
     * 新增4.3.2-3实践学期项目汇总
     * 
     * @param teachPraProject 4.3.2-3实践学期项目汇总
     * @return 结果
     */
    @Override
    public int insertTeachPraProject(TeachPraProject teachPraProject)
    {
        teachPraProject.setCreateTime(DateUtils.getNowDate());
        return teachPraProjectMapper.insertTeachPraProject(teachPraProject);
    }

    /**
     * 修改4.3.2-3实践学期项目汇总
     * 
     * @param teachPraProject 4.3.2-3实践学期项目汇总
     * @return 结果
     */
    @Override
    public int updateTeachPraProject(TeachPraProject teachPraProject)
    {
        teachPraProject.setUpdateTime(DateUtils.getNowDate());
        return teachPraProjectMapper.updateTeachPraProject(teachPraProject);
    }

    /**
     * 删除4.3.2-3实践学期项目汇总对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTeachPraProjectByIds(String ids)
    {
        return teachPraProjectMapper.deleteTeachPraProjectByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除4.3.2-3实践学期项目汇总信息
     * 
     * @param id 4.3.2-3实践学期项目汇总ID
     * @return 结果
     */
    @Override
    public int deleteTeachPraProjectById(Long id)
    {
        return teachPraProjectMapper.deleteTeachPraProjectById(id);
    }
}
