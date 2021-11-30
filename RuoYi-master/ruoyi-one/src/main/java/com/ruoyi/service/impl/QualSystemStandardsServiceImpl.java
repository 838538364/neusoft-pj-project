package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.QualSystemStandardsMapper;
import com.ruoyi.system.domain.QualSystemStandards;
import com.ruoyi.system.service.IQualSystemStandardsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 5.2.1-2 学院制定的教学工作相关实施细则一览Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class QualSystemStandardsServiceImpl implements IQualSystemStandardsService 
{
    @Autowired
    private QualSystemStandardsMapper qualSystemStandardsMapper;

    /**
     * 查询5.2.1-2 学院制定的教学工作相关实施细则一览
     * 
     * @param id 5.2.1-2 学院制定的教学工作相关实施细则一览ID
     * @return 5.2.1-2 学院制定的教学工作相关实施细则一览
     */
    @Override
    public QualSystemStandards selectQualSystemStandardsById(Long id)
    {
        return qualSystemStandardsMapper.selectQualSystemStandardsById(id);
    }

    /**
     * 查询5.2.1-2 学院制定的教学工作相关实施细则一览列表
     * 
     * @param qualSystemStandards 5.2.1-2 学院制定的教学工作相关实施细则一览
     * @return 5.2.1-2 学院制定的教学工作相关实施细则一览
     */
    @Override
    public List<QualSystemStandards> selectQualSystemStandardsList(QualSystemStandards qualSystemStandards)
    {
        return qualSystemStandardsMapper.selectQualSystemStandardsList(qualSystemStandards);
    }

    /**
     * 新增5.2.1-2 学院制定的教学工作相关实施细则一览
     * 
     * @param qualSystemStandards 5.2.1-2 学院制定的教学工作相关实施细则一览
     * @return 结果
     */
    @Override
    public int insertQualSystemStandards(QualSystemStandards qualSystemStandards)
    {
        qualSystemStandards.setCreateTime(DateUtils.getNowDate());
        return qualSystemStandardsMapper.insertQualSystemStandards(qualSystemStandards);
    }

    /**
     * 修改5.2.1-2 学院制定的教学工作相关实施细则一览
     * 
     * @param qualSystemStandards 5.2.1-2 学院制定的教学工作相关实施细则一览
     * @return 结果
     */
    @Override
    public int updateQualSystemStandards(QualSystemStandards qualSystemStandards)
    {
        qualSystemStandards.setUpdateTime(DateUtils.getNowDate());
        return qualSystemStandardsMapper.updateQualSystemStandards(qualSystemStandards);
    }

    /**
     * 删除5.2.1-2 学院制定的教学工作相关实施细则一览对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteQualSystemStandardsByIds(String ids)
    {
        return qualSystemStandardsMapper.deleteQualSystemStandardsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除5.2.1-2 学院制定的教学工作相关实施细则一览信息
     * 
     * @param id 5.2.1-2 学院制定的教学工作相关实施细则一览ID
     * @return 结果
     */
    @Override
    public int deleteQualSystemStandardsById(Long id)
    {
        return qualSystemStandardsMapper.deleteQualSystemStandardsById(id);
    }
}
