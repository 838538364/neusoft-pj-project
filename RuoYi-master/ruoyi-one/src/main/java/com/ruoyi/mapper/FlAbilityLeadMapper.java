package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.FlAbilityLead;

/**
 * 1.2.2-1学校领导一览Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
public interface FlAbilityLeadMapper 
{
    /**
     * 查询1.2.2-1学校领导一览
     * 
     * @param id 1.2.2-1学校领导一览ID
     * @return 1.2.2-1学校领导一览
     */
    public FlAbilityLead selectFlAbilityLeadById(Long id);

    /**
     * 查询1.2.2-1学校领导一览列表
     * 
     * @param flAbilityLead 1.2.2-1学校领导一览
     * @return 1.2.2-1学校领导一览集合
     */
    public List<FlAbilityLead> selectFlAbilityLeadList(FlAbilityLead flAbilityLead);

    /**
     * 新增1.2.2-1学校领导一览
     * 
     * @param flAbilityLead 1.2.2-1学校领导一览
     * @return 结果
     */
    public int insertFlAbilityLead(FlAbilityLead flAbilityLead);

    /**
     * 修改1.2.2-1学校领导一览
     * 
     * @param flAbilityLead 1.2.2-1学校领导一览
     * @return 结果
     */
    public int updateFlAbilityLead(FlAbilityLead flAbilityLead);

    /**
     * 删除1.2.2-1学校领导一览
     * 
     * @param id 1.2.2-1学校领导一览ID
     * @return 结果
     */
    public int deleteFlAbilityLeadById(Long id);

    /**
     * 批量删除1.2.2-1学校领导一览
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteFlAbilityLeadByIds(String[] ids);
}
