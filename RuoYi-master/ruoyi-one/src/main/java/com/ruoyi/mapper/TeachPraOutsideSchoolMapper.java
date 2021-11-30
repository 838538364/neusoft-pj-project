package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TeachPraOutsideSchool;

/**
 * 4.3.2-10学生校外实习情况Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface TeachPraOutsideSchoolMapper 
{
    /**
     * 查询4.3.2-10学生校外实习情况
     * 
     * @param id 4.3.2-10学生校外实习情况ID
     * @return 4.3.2-10学生校外实习情况
     */
    public TeachPraOutsideSchool selectTeachPraOutsideSchoolById(Long id);

    /**
     * 查询4.3.2-10学生校外实习情况列表
     * 
     * @param teachPraOutsideSchool 4.3.2-10学生校外实习情况
     * @return 4.3.2-10学生校外实习情况集合
     */
    public List<TeachPraOutsideSchool> selectTeachPraOutsideSchoolList(TeachPraOutsideSchool teachPraOutsideSchool);

    /**
     * 新增4.3.2-10学生校外实习情况
     * 
     * @param teachPraOutsideSchool 4.3.2-10学生校外实习情况
     * @return 结果
     */
    public int insertTeachPraOutsideSchool(TeachPraOutsideSchool teachPraOutsideSchool);

    /**
     * 修改4.3.2-10学生校外实习情况
     * 
     * @param teachPraOutsideSchool 4.3.2-10学生校外实习情况
     * @return 结果
     */
    public int updateTeachPraOutsideSchool(TeachPraOutsideSchool teachPraOutsideSchool);

    /**
     * 删除4.3.2-10学生校外实习情况
     * 
     * @param id 4.3.2-10学生校外实习情况ID
     * @return 结果
     */
    public int deleteTeachPraOutsideSchoolById(Long id);

    /**
     * 批量删除4.3.2-10学生校外实习情况
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTeachPraOutsideSchoolByIds(String[] ids);
}
