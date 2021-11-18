package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.PtmEduPtStatistics;

/**
 * 各专业校外实践教学情况统计Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
public interface PtmEduPtStatisticsMapper 
{
    /**
     * 查询各专业校外实践教学情况统计
     * 
     * @param id 各专业校外实践教学情况统计ID
     * @return 各专业校外实践教学情况统计
     */
    public PtmEduPtStatistics selectPtmEduPtStatisticsById(Long id);

    /**
     * 查询各专业校外实践教学情况统计列表
     * 
     * @param ptmEduPtStatistics 各专业校外实践教学情况统计
     * @return 各专业校外实践教学情况统计集合
     */
    public List<PtmEduPtStatistics> selectPtmEduPtStatisticsList(PtmEduPtStatistics ptmEduPtStatistics);

    /**
     * 新增各专业校外实践教学情况统计
     * 
     * @param ptmEduPtStatistics 各专业校外实践教学情况统计
     * @return 结果
     */
    public int insertPtmEduPtStatistics(PtmEduPtStatistics ptmEduPtStatistics);

    /**
     * 修改各专业校外实践教学情况统计
     * 
     * @param ptmEduPtStatistics 各专业校外实践教学情况统计
     * @return 结果
     */
    public int updatePtmEduPtStatistics(PtmEduPtStatistics ptmEduPtStatistics);

    /**
     * 删除各专业校外实践教学情况统计
     * 
     * @param id 各专业校外实践教学情况统计ID
     * @return 结果
     */
    public int deletePtmEduPtStatisticsById(Long id);

    /**
     * 批量删除各专业校外实践教学情况统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePtmEduPtStatisticsByIds(String[] ids);
}
