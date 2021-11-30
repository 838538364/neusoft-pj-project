package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.MoralEduOutstandingStudents;

/**
 * 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface MoralEduOutstandingStudentsMapper 
{
    /**
     * 查询7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * 
     * @param id 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(ID
     * @return 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     */
    public MoralEduOutstandingStudents selectMoralEduOutstandingStudentsById(Long id);

    /**
     * 查询7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(列表
     * 
     * @param moralEduOutstandingStudents 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * @return 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(集合
     */
    public List<MoralEduOutstandingStudents> selectMoralEduOutstandingStudentsList(MoralEduOutstandingStudents moralEduOutstandingStudents);

    /**
     * 新增7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * 
     * @param moralEduOutstandingStudents 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * @return 结果
     */
    public int insertMoralEduOutstandingStudents(MoralEduOutstandingStudents moralEduOutstandingStudents);

    /**
     * 修改7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * 
     * @param moralEduOutstandingStudents 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * @return 结果
     */
    public int updateMoralEduOutstandingStudents(MoralEduOutstandingStudents moralEduOutstandingStudents);

    /**
     * 删除7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * 
     * @param id 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(ID
     * @return 结果
     */
    public int deleteMoralEduOutstandingStudentsById(Long id);

    /**
     * 批量删除7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMoralEduOutstandingStudentsByIds(String[] ids);
}
