package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TeachPraOutsideSchoolMapper;
import com.ruoyi.system.domain.TeachPraOutsideSchool;
import com.ruoyi.system.service.ITeachPraOutsideSchoolService;
import com.ruoyi.common.core.text.Convert;

/**
 * 4.3.2-10学生校外实习情况Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class TeachPraOutsideSchoolServiceImpl implements ITeachPraOutsideSchoolService 
{
    @Autowired
    private TeachPraOutsideSchoolMapper teachPraOutsideSchoolMapper;

    /**
     * 查询4.3.2-10学生校外实习情况
     * 
     * @param id 4.3.2-10学生校外实习情况ID
     * @return 4.3.2-10学生校外实习情况
     */
    @Override
    public TeachPraOutsideSchool selectTeachPraOutsideSchoolById(Long id)
    {
        return teachPraOutsideSchoolMapper.selectTeachPraOutsideSchoolById(id);
    }

    /**
     * 查询4.3.2-10学生校外实习情况列表
     * 
     * @param teachPraOutsideSchool 4.3.2-10学生校外实习情况
     * @return 4.3.2-10学生校外实习情况
     */
    @Override
    public List<TeachPraOutsideSchool> selectTeachPraOutsideSchoolList(TeachPraOutsideSchool teachPraOutsideSchool)
    {
        return teachPraOutsideSchoolMapper.selectTeachPraOutsideSchoolList(teachPraOutsideSchool);
    }

    /**
     * 新增4.3.2-10学生校外实习情况
     * 
     * @param teachPraOutsideSchool 4.3.2-10学生校外实习情况
     * @return 结果
     */
    @Override
    public int insertTeachPraOutsideSchool(TeachPraOutsideSchool teachPraOutsideSchool)
    {
        teachPraOutsideSchool.setCreateTime(DateUtils.getNowDate());
        return teachPraOutsideSchoolMapper.insertTeachPraOutsideSchool(teachPraOutsideSchool);
    }

    /**
     * 修改4.3.2-10学生校外实习情况
     * 
     * @param teachPraOutsideSchool 4.3.2-10学生校外实习情况
     * @return 结果
     */
    @Override
    public int updateTeachPraOutsideSchool(TeachPraOutsideSchool teachPraOutsideSchool)
    {
        teachPraOutsideSchool.setUpdateTime(DateUtils.getNowDate());
        return teachPraOutsideSchoolMapper.updateTeachPraOutsideSchool(teachPraOutsideSchool);
    }

    /**
     * 删除4.3.2-10学生校外实习情况对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTeachPraOutsideSchoolByIds(String ids)
    {
        return teachPraOutsideSchoolMapper.deleteTeachPraOutsideSchoolByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除4.3.2-10学生校外实习情况信息
     * 
     * @param id 4.3.2-10学生校外实习情况ID
     * @return 结果
     */
    @Override
    public int deleteTeachPraOutsideSchoolById(Long id)
    {
        return teachPraOutsideSchoolMapper.deleteTeachPraOutsideSchoolById(id);
    }
}
