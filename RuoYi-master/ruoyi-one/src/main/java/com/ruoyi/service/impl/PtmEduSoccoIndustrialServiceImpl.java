package com.ruoyi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.PtmEduSoccoIndustrialMapper;
import com.ruoyi.domain.PtmEduSoccoIndustrial;
import com.ruoyi.service.IPtmEduSoccoIndustrialService;
import com.ruoyi.common.core.text.Convert;

/**
 * 产业学院共建情况统计览Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Service
public class PtmEduSoccoIndustrialServiceImpl implements IPtmEduSoccoIndustrialService 
{
    @Autowired
    private PtmEduSoccoIndustrialMapper ptmEduSoccoIndustrialMapper;

    /**
     * 查询产业学院共建情况统计览
     * 
     * @param id 产业学院共建情况统计览ID
     * @return 产业学院共建情况统计览
     */
    @Override
    public PtmEduSoccoIndustrial selectPtmEduSoccoIndustrialById(Long id)
    {
        return ptmEduSoccoIndustrialMapper.selectPtmEduSoccoIndustrialById(id);
    }

    /**
     * 查询产业学院共建情况统计览列表
     * 
     * @param ptmEduSoccoIndustrial 产业学院共建情况统计览
     * @return 产业学院共建情况统计览
     */
    @Override
    public List<PtmEduSoccoIndustrial> selectPtmEduSoccoIndustrialList(PtmEduSoccoIndustrial ptmEduSoccoIndustrial)
    {
        return ptmEduSoccoIndustrialMapper.selectPtmEduSoccoIndustrialList(ptmEduSoccoIndustrial);
    }

    /**
     * 新增产业学院共建情况统计览
     * 
     * @param ptmEduSoccoIndustrial 产业学院共建情况统计览
     * @return 结果
     */
    @Override
    public int insertPtmEduSoccoIndustrial(PtmEduSoccoIndustrial ptmEduSoccoIndustrial)
    {
        ptmEduSoccoIndustrial.setCreateTime(DateUtils.getNowDate());
        return ptmEduSoccoIndustrialMapper.insertPtmEduSoccoIndustrial(ptmEduSoccoIndustrial);
    }

    /**
     * 修改产业学院共建情况统计览
     * 
     * @param ptmEduSoccoIndustrial 产业学院共建情况统计览
     * @return 结果
     */
    @Override
    public int updatePtmEduSoccoIndustrial(PtmEduSoccoIndustrial ptmEduSoccoIndustrial)
    {
        ptmEduSoccoIndustrial.setUpdateTime(DateUtils.getNowDate());
        return ptmEduSoccoIndustrialMapper.updatePtmEduSoccoIndustrial(ptmEduSoccoIndustrial);
    }

    /**
     * 删除产业学院共建情况统计览对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePtmEduSoccoIndustrialByIds(String ids)
    {
        return ptmEduSoccoIndustrialMapper.deletePtmEduSoccoIndustrialByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除产业学院共建情况统计览信息
     * 
     * @param id 产业学院共建情况统计览ID
     * @return 结果
     */
    @Override
    public int deletePtmEduSoccoIndustrialById(Long id)
    {
        return ptmEduSoccoIndustrialMapper.deletePtmEduSoccoIndustrialById(id);
    }
}
