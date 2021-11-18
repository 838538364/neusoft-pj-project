package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.FlAbilityDivision;

/**
 * 1.2.2-2学校领导分工一览Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
public interface FlAbilityDivisionMapper 
{
    /**
     * 查询1.2.2-2学校领导分工一览
     * 
     * @param id 1.2.2-2学校领导分工一览ID
     * @return 1.2.2-2学校领导分工一览
     */
    public FlAbilityDivision selectFlAbilityDivisionById(Long id);

    /**
     * 查询1.2.2-2学校领导分工一览列表
     * 
     * @param flAbilityDivision 1.2.2-2学校领导分工一览
     * @return 1.2.2-2学校领导分工一览集合
     */
    public List<FlAbilityDivision> selectFlAbilityDivisionList(FlAbilityDivision flAbilityDivision);

    /**
     * 新增1.2.2-2学校领导分工一览
     * 
     * @param flAbilityDivision 1.2.2-2学校领导分工一览
     * @return 结果
     */
    public int insertFlAbilityDivision(FlAbilityDivision flAbilityDivision);

    /**
     * 修改1.2.2-2学校领导分工一览
     * 
     * @param flAbilityDivision 1.2.2-2学校领导分工一览
     * @return 结果
     */
    public int updateFlAbilityDivision(FlAbilityDivision flAbilityDivision);

    /**
     * 删除1.2.2-2学校领导分工一览
     * 
     * @param id 1.2.2-2学校领导分工一览ID
     * @return 结果
     */
    public int deleteFlAbilityDivisionById(Long id);

    /**
     * 批量删除1.2.2-2学校领导分工一览
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteFlAbilityDivisionByIds(String[] ids);
}
