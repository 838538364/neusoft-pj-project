package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TeachPraProject;

/**
 * 4.3.2-3实践学期项目汇总Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface TeachPraProjectMapper 
{
    /**
     * 查询4.3.2-3实践学期项目汇总
     * 
     * @param id 4.3.2-3实践学期项目汇总ID
     * @return 4.3.2-3实践学期项目汇总
     */
    public TeachPraProject selectTeachPraProjectById(Long id);

    /**
     * 查询4.3.2-3实践学期项目汇总列表
     * 
     * @param teachPraProject 4.3.2-3实践学期项目汇总
     * @return 4.3.2-3实践学期项目汇总集合
     */
    public List<TeachPraProject> selectTeachPraProjectList(TeachPraProject teachPraProject);

    /**
     * 新增4.3.2-3实践学期项目汇总
     * 
     * @param teachPraProject 4.3.2-3实践学期项目汇总
     * @return 结果
     */
    public int insertTeachPraProject(TeachPraProject teachPraProject);

    /**
     * 修改4.3.2-3实践学期项目汇总
     * 
     * @param teachPraProject 4.3.2-3实践学期项目汇总
     * @return 结果
     */
    public int updateTeachPraProject(TeachPraProject teachPraProject);

    /**
     * 删除4.3.2-3实践学期项目汇总
     * 
     * @param id 4.3.2-3实践学期项目汇总ID
     * @return 结果
     */
    public int deleteTeachPraProjectById(Long id);

    /**
     * 批量删除4.3.2-3实践学期项目汇总
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTeachPraProjectByIds(String[] ids);
}
