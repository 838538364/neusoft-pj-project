package com.ruoyi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.PtmEduPtStatisticsMapper;
import com.ruoyi.domain.PtmEduPtStatistics;
import com.ruoyi.service.IPtmEduPtStatisticsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 各专业校外实践教学情况统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Service
public class PtmEduPtStatisticsServiceImpl implements IPtmEduPtStatisticsService 
{
    @Autowired
    private PtmEduPtStatisticsMapper ptmEduPtStatisticsMapper;

    /**
     * 查询各专业校外实践教学情况统计
     * 
     * @param id 各专业校外实践教学情况统计ID
     * @return 各专业校外实践教学情况统计
     */
    @Override
    public PtmEduPtStatistics selectPtmEduPtStatisticsById(Long id)
    {
        return ptmEduPtStatisticsMapper.selectPtmEduPtStatisticsById(id);
    }

    /**
     * 查询各专业校外实践教学情况统计列表
     * 
     * @param ptmEduPtStatistics 各专业校外实践教学情况统计
     * @return 各专业校外实践教学情况统计
     */
    @Override
    public List<PtmEduPtStatistics> selectPtmEduPtStatisticsList(PtmEduPtStatistics ptmEduPtStatistics)
    {
        return ptmEduPtStatisticsMapper.selectPtmEduPtStatisticsList(ptmEduPtStatistics);
    }

    /**
     * 新增各专业校外实践教学情况统计
     * 
     * @param ptmEduPtStatistics 各专业校外实践教学情况统计
     * @return 结果
     */
    @Override
    public int insertPtmEduPtStatistics(PtmEduPtStatistics ptmEduPtStatistics)
    {
        ptmEduPtStatistics.setCreateTime(DateUtils.getNowDate());
        return ptmEduPtStatisticsMapper.insertPtmEduPtStatistics(ptmEduPtStatistics);
    }

    /**
     * 修改各专业校外实践教学情况统计
     * 
     * @param ptmEduPtStatistics 各专业校外实践教学情况统计
     * @return 结果
     */
    @Override
    public int updatePtmEduPtStatistics(PtmEduPtStatistics ptmEduPtStatistics)
    {
        ptmEduPtStatistics.setUpdateTime(DateUtils.getNowDate());
        return ptmEduPtStatisticsMapper.updatePtmEduPtStatistics(ptmEduPtStatistics);
    }

    /**
     * 删除各专业校外实践教学情况统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePtmEduPtStatisticsByIds(String ids)
    {
        return ptmEduPtStatisticsMapper.deletePtmEduPtStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除各专业校外实践教学情况统计信息
     * 
     * @param id 各专业校外实践教学情况统计ID
     * @return 结果
     */
    @Override
    public int deletePtmEduPtStatisticsById(Long id)
    {
        return ptmEduPtStatisticsMapper.deletePtmEduPtStatisticsById(id);
    }
}
