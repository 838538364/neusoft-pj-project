package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.PtmEduSoccoIndustrial;

/**
 * 产业学院共建情况统计览Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
public interface PtmEduSoccoIndustrialMapper 
{
    /**
     * 查询产业学院共建情况统计览
     * 
     * @param id 产业学院共建情况统计览ID
     * @return 产业学院共建情况统计览
     */
    public PtmEduSoccoIndustrial selectPtmEduSoccoIndustrialById(Long id);

    /**
     * 查询产业学院共建情况统计览列表
     * 
     * @param ptmEduSoccoIndustrial 产业学院共建情况统计览
     * @return 产业学院共建情况统计览集合
     */
    public List<PtmEduSoccoIndustrial> selectPtmEduSoccoIndustrialList(PtmEduSoccoIndustrial ptmEduSoccoIndustrial);

    /**
     * 新增产业学院共建情况统计览
     * 
     * @param ptmEduSoccoIndustrial 产业学院共建情况统计览
     * @return 结果
     */
    public int insertPtmEduSoccoIndustrial(PtmEduSoccoIndustrial ptmEduSoccoIndustrial);

    /**
     * 修改产业学院共建情况统计览
     * 
     * @param ptmEduSoccoIndustrial 产业学院共建情况统计览
     * @return 结果
     */
    public int updatePtmEduSoccoIndustrial(PtmEduSoccoIndustrial ptmEduSoccoIndustrial);

    /**
     * 删除产业学院共建情况统计览
     * 
     * @param id 产业学院共建情况统计览ID
     * @return 结果
     */
    public int deletePtmEduSoccoIndustrialById(Long id);

    /**
     * 批量删除产业学院共建情况统计览
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePtmEduSoccoIndustrialByIds(String[] ids);
}
