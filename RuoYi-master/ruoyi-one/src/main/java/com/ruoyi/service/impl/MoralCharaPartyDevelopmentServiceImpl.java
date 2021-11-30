package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MoralCharaPartyDevelopmentMapper;
import com.ruoyi.system.domain.MoralCharaPartyDevelopment;
import com.ruoyi.system.service.IMoralCharaPartyDevelopmentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 7.1.2-1 各专业党员发展计划、发展情况汇总Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class MoralCharaPartyDevelopmentServiceImpl implements IMoralCharaPartyDevelopmentService 
{
    @Autowired
    private MoralCharaPartyDevelopmentMapper moralCharaPartyDevelopmentMapper;

    /**
     * 查询7.1.2-1 各专业党员发展计划、发展情况汇总
     * 
     * @param id 7.1.2-1 各专业党员发展计划、发展情况汇总ID
     * @return 7.1.2-1 各专业党员发展计划、发展情况汇总
     */
    @Override
    public MoralCharaPartyDevelopment selectMoralCharaPartyDevelopmentById(Long id)
    {
        return moralCharaPartyDevelopmentMapper.selectMoralCharaPartyDevelopmentById(id);
    }

    /**
     * 查询7.1.2-1 各专业党员发展计划、发展情况汇总列表
     * 
     * @param moralCharaPartyDevelopment 7.1.2-1 各专业党员发展计划、发展情况汇总
     * @return 7.1.2-1 各专业党员发展计划、发展情况汇总
     */
    @Override
    public List<MoralCharaPartyDevelopment> selectMoralCharaPartyDevelopmentList(MoralCharaPartyDevelopment moralCharaPartyDevelopment)
    {
        return moralCharaPartyDevelopmentMapper.selectMoralCharaPartyDevelopmentList(moralCharaPartyDevelopment);
    }

    /**
     * 新增7.1.2-1 各专业党员发展计划、发展情况汇总
     * 
     * @param moralCharaPartyDevelopment 7.1.2-1 各专业党员发展计划、发展情况汇总
     * @return 结果
     */
    @Override
    public int insertMoralCharaPartyDevelopment(MoralCharaPartyDevelopment moralCharaPartyDevelopment)
    {
        moralCharaPartyDevelopment.setCreateTime(DateUtils.getNowDate());
        return moralCharaPartyDevelopmentMapper.insertMoralCharaPartyDevelopment(moralCharaPartyDevelopment);
    }

    /**
     * 修改7.1.2-1 各专业党员发展计划、发展情况汇总
     * 
     * @param moralCharaPartyDevelopment 7.1.2-1 各专业党员发展计划、发展情况汇总
     * @return 结果
     */
    @Override
    public int updateMoralCharaPartyDevelopment(MoralCharaPartyDevelopment moralCharaPartyDevelopment)
    {
        moralCharaPartyDevelopment.setUpdateTime(DateUtils.getNowDate());
        return moralCharaPartyDevelopmentMapper.updateMoralCharaPartyDevelopment(moralCharaPartyDevelopment);
    }

    /**
     * 删除7.1.2-1 各专业党员发展计划、发展情况汇总对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMoralCharaPartyDevelopmentByIds(String ids)
    {
        return moralCharaPartyDevelopmentMapper.deleteMoralCharaPartyDevelopmentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除7.1.2-1 各专业党员发展计划、发展情况汇总信息
     * 
     * @param id 7.1.2-1 各专业党员发展计划、发展情况汇总ID
     * @return 结果
     */
    @Override
    public int deleteMoralCharaPartyDevelopmentById(Long id)
    {
        return moralCharaPartyDevelopmentMapper.deleteMoralCharaPartyDevelopmentById(id);
    }
}
