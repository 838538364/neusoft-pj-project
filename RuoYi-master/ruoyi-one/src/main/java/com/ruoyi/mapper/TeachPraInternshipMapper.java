package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TeachPraInternship;

/**
 * 4.3.2-11 专业实习基地一览及协议Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface TeachPraInternshipMapper 
{
    /**
     * 查询4.3.2-11 专业实习基地一览及协议
     * 
     * @param id 4.3.2-11 专业实习基地一览及协议ID
     * @return 4.3.2-11 专业实习基地一览及协议
     */
    public TeachPraInternship selectTeachPraInternshipById(Long id);

    /**
     * 查询4.3.2-11 专业实习基地一览及协议列表
     * 
     * @param teachPraInternship 4.3.2-11 专业实习基地一览及协议
     * @return 4.3.2-11 专业实习基地一览及协议集合
     */
    public List<TeachPraInternship> selectTeachPraInternshipList(TeachPraInternship teachPraInternship);

    /**
     * 新增4.3.2-11 专业实习基地一览及协议
     * 
     * @param teachPraInternship 4.3.2-11 专业实习基地一览及协议
     * @return 结果
     */
    public int insertTeachPraInternship(TeachPraInternship teachPraInternship);

    /**
     * 修改4.3.2-11 专业实习基地一览及协议
     * 
     * @param teachPraInternship 4.3.2-11 专业实习基地一览及协议
     * @return 结果
     */
    public int updateTeachPraInternship(TeachPraInternship teachPraInternship);

    /**
     * 删除4.3.2-11 专业实习基地一览及协议
     * 
     * @param id 4.3.2-11 专业实习基地一览及协议ID
     * @return 结果
     */
    public int deleteTeachPraInternshipById(Long id);

    /**
     * 批量删除4.3.2-11 专业实习基地一览及协议
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTeachPraInternshipByIds(String[] ids);
}
