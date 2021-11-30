package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MoralEduOutstandingStudentsMapper;
import com.ruoyi.system.domain.MoralEduOutstandingStudents;
import com.ruoyi.system.service.IMoralEduOutstandingStudentsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class MoralEduOutstandingStudentsServiceImpl implements IMoralEduOutstandingStudentsService 
{
    @Autowired
    private MoralEduOutstandingStudentsMapper moralEduOutstandingStudentsMapper;

    /**
     * 查询7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * 
     * @param id 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(ID
     * @return 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     */
    @Override
    public MoralEduOutstandingStudents selectMoralEduOutstandingStudentsById(Long id)
    {
        return moralEduOutstandingStudentsMapper.selectMoralEduOutstandingStudentsById(id);
    }

    /**
     * 查询7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(列表
     * 
     * @param moralEduOutstandingStudents 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * @return 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     */
    @Override
    public List<MoralEduOutstandingStudents> selectMoralEduOutstandingStudentsList(MoralEduOutstandingStudents moralEduOutstandingStudents)
    {
        return moralEduOutstandingStudentsMapper.selectMoralEduOutstandingStudentsList(moralEduOutstandingStudents);
    }

    /**
     * 新增7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * 
     * @param moralEduOutstandingStudents 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * @return 结果
     */
    @Override
    public int insertMoralEduOutstandingStudents(MoralEduOutstandingStudents moralEduOutstandingStudents)
    {
        moralEduOutstandingStudents.setCreateTime(DateUtils.getNowDate());
        return moralEduOutstandingStudentsMapper.insertMoralEduOutstandingStudents(moralEduOutstandingStudents);
    }

    /**
     * 修改7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * 
     * @param moralEduOutstandingStudents 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     * @return 结果
     */
    @Override
    public int updateMoralEduOutstandingStudents(MoralEduOutstandingStudents moralEduOutstandingStudents)
    {
        moralEduOutstandingStudents.setUpdateTime(DateUtils.getNowDate());
        return moralEduOutstandingStudentsMapper.updateMoralEduOutstandingStudents(moralEduOutstandingStudents);
    }

    /**
     * 删除7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduOutstandingStudentsByIds(String ids)
    {
        return moralEduOutstandingStudentsMapper.deleteMoralEduOutstandingStudentsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(信息
     * 
     * @param id 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduOutstandingStudentsById(Long id)
    {
        return moralEduOutstandingStudentsMapper.deleteMoralEduOutstandingStudentsById(id);
    }
}
