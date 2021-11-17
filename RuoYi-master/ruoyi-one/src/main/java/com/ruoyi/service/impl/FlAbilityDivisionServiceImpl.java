package com.ruoyi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.FlAbilityDivisionMapper;
import com.ruoyi.domain.FlAbilityDivision;
import com.ruoyi.service.IFlAbilityDivisionService;
import com.ruoyi.common.core.text.Convert;

/**
 * 1.2.2-2学校领导分工一览Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Service
public class FlAbilityDivisionServiceImpl implements IFlAbilityDivisionService 
{
    @Autowired
    private FlAbilityDivisionMapper flAbilityDivisionMapper;

    /**
     * 查询1.2.2-2学校领导分工一览
     * 
     * @param id 1.2.2-2学校领导分工一览ID
     * @return 1.2.2-2学校领导分工一览
     */
    @Override
    public FlAbilityDivision selectFlAbilityDivisionById(Long id)
    {
        return flAbilityDivisionMapper.selectFlAbilityDivisionById(id);
    }

    /**
     * 查询1.2.2-2学校领导分工一览列表
     * 
     * @param flAbilityDivision 1.2.2-2学校领导分工一览
     * @return 1.2.2-2学校领导分工一览
     */
    @Override
    public List<FlAbilityDivision> selectFlAbilityDivisionList(FlAbilityDivision flAbilityDivision)
    {
        return flAbilityDivisionMapper.selectFlAbilityDivisionList(flAbilityDivision);
    }

    /**
     * 新增1.2.2-2学校领导分工一览
     * 
     * @param flAbilityDivision 1.2.2-2学校领导分工一览
     * @return 结果
     */
    @Override
    public int insertFlAbilityDivision(FlAbilityDivision flAbilityDivision)
    {
        flAbilityDivision.setCreateTime(DateUtils.getNowDate());
        return flAbilityDivisionMapper.insertFlAbilityDivision(flAbilityDivision);
    }

    /**
     * 修改1.2.2-2学校领导分工一览
     * 
     * @param flAbilityDivision 1.2.2-2学校领导分工一览
     * @return 结果
     */
    @Override
    public int updateFlAbilityDivision(FlAbilityDivision flAbilityDivision)
    {
        flAbilityDivision.setUpdateTime(DateUtils.getNowDate());
        return flAbilityDivisionMapper.updateFlAbilityDivision(flAbilityDivision);
    }

    /**
     * 删除1.2.2-2学校领导分工一览对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteFlAbilityDivisionByIds(String ids)
    {
        return flAbilityDivisionMapper.deleteFlAbilityDivisionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除1.2.2-2学校领导分工一览信息
     * 
     * @param id 1.2.2-2学校领导分工一览ID
     * @return 结果
     */
    @Override
    public int deleteFlAbilityDivisionById(Long id)
    {
        return flAbilityDivisionMapper.deleteFlAbilityDivisionById(id);
    }
}
