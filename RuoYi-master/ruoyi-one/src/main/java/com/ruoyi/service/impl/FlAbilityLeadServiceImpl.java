package com.ruoyi.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.FlAbilityLeadMapper;
import com.ruoyi.domain.FlAbilityLead;
import com.ruoyi.service.IFlAbilityLeadService;
import com.ruoyi.common.core.text.Convert;

/**
 * 1.2.2-1学校领导一览Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Service
public class FlAbilityLeadServiceImpl implements IFlAbilityLeadService 
{
    @Autowired
    private FlAbilityLeadMapper flAbilityLeadMapper;

    /**
     * 查询1.2.2-1学校领导一览
     * 
     * @param id 1.2.2-1学校领导一览ID
     * @return 1.2.2-1学校领导一览
     */
    @Override
    public FlAbilityLead selectFlAbilityLeadById(Long id)
    {
        return flAbilityLeadMapper.selectFlAbilityLeadById(id);
    }

    /**
     * 查询1.2.2-1学校领导一览列表
     * 
     * @param flAbilityLead 1.2.2-1学校领导一览
     * @return 1.2.2-1学校领导一览
     */
    @Override
    public List<FlAbilityLead> selectFlAbilityLeadList(FlAbilityLead flAbilityLead)
    {
        return flAbilityLeadMapper.selectFlAbilityLeadList(flAbilityLead);
    }

    /**
     * 新增1.2.2-1学校领导一览
     * 
     * @param flAbilityLead 1.2.2-1学校领导一览
     * @return 结果
     */
    @Override
    public int insertFlAbilityLead(FlAbilityLead flAbilityLead)
    {
        flAbilityLead.setCreateTime(DateUtils.getNowDate());
        return flAbilityLeadMapper.insertFlAbilityLead(flAbilityLead);
    }

    /**
     * 修改1.2.2-1学校领导一览
     * 
     * @param flAbilityLead 1.2.2-1学校领导一览
     * @return 结果
     */
    @Override
    public int updateFlAbilityLead(FlAbilityLead flAbilityLead)
    {
        flAbilityLead.setUpdateTime(DateUtils.getNowDate());
        return flAbilityLeadMapper.updateFlAbilityLead(flAbilityLead);
    }

    /**
     * 删除1.2.2-1学校领导一览对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteFlAbilityLeadByIds(String ids)
    {
        return flAbilityLeadMapper.deleteFlAbilityLeadByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除1.2.2-1学校领导一览信息
     * 
     * @param id 1.2.2-1学校领导一览ID
     * @return 结果
     */
    @Override
    public int deleteFlAbilityLeadById(Long id)
    {
        return flAbilityLeadMapper.deleteFlAbilityLeadById(id);
    }

}
