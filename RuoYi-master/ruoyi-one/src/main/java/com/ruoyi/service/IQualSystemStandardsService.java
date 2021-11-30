package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.QualSystemStandards;

/**
 * 5.2.1-2 学院制定的教学工作相关实施细则一览Service接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface IQualSystemStandardsService 
{
    /**
     * 查询5.2.1-2 学院制定的教学工作相关实施细则一览
     * 
     * @param id 5.2.1-2 学院制定的教学工作相关实施细则一览ID
     * @return 5.2.1-2 学院制定的教学工作相关实施细则一览
     */
    public QualSystemStandards selectQualSystemStandardsById(Long id);

    /**
     * 查询5.2.1-2 学院制定的教学工作相关实施细则一览列表
     * 
     * @param qualSystemStandards 5.2.1-2 学院制定的教学工作相关实施细则一览
     * @return 5.2.1-2 学院制定的教学工作相关实施细则一览集合
     */
    public List<QualSystemStandards> selectQualSystemStandardsList(QualSystemStandards qualSystemStandards);

    /**
     * 新增5.2.1-2 学院制定的教学工作相关实施细则一览
     * 
     * @param qualSystemStandards 5.2.1-2 学院制定的教学工作相关实施细则一览
     * @return 结果
     */
    public int insertQualSystemStandards(QualSystemStandards qualSystemStandards);

    /**
     * 修改5.2.1-2 学院制定的教学工作相关实施细则一览
     * 
     * @param qualSystemStandards 5.2.1-2 学院制定的教学工作相关实施细则一览
     * @return 结果
     */
    public int updateQualSystemStandards(QualSystemStandards qualSystemStandards);

    /**
     * 批量删除5.2.1-2 学院制定的教学工作相关实施细则一览
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteQualSystemStandardsByIds(String ids);

    /**
     * 删除5.2.1-2 学院制定的教学工作相关实施细则一览信息
     * 
     * @param id 5.2.1-2 学院制定的教学工作相关实施细则一览ID
     * @return 结果
     */
    public int deleteQualSystemStandardsById(Long id);
}
