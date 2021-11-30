package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.MoralCharaPartyDevelopment;

/**
 * 7.1.2-1 各专业党员发展计划、发展情况汇总Service接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface IMoralCharaPartyDevelopmentService 
{
    /**
     * 查询7.1.2-1 各专业党员发展计划、发展情况汇总
     * 
     * @param id 7.1.2-1 各专业党员发展计划、发展情况汇总ID
     * @return 7.1.2-1 各专业党员发展计划、发展情况汇总
     */
    public MoralCharaPartyDevelopment selectMoralCharaPartyDevelopmentById(Long id);

    /**
     * 查询7.1.2-1 各专业党员发展计划、发展情况汇总列表
     * 
     * @param moralCharaPartyDevelopment 7.1.2-1 各专业党员发展计划、发展情况汇总
     * @return 7.1.2-1 各专业党员发展计划、发展情况汇总集合
     */
    public List<MoralCharaPartyDevelopment> selectMoralCharaPartyDevelopmentList(MoralCharaPartyDevelopment moralCharaPartyDevelopment);

    /**
     * 新增7.1.2-1 各专业党员发展计划、发展情况汇总
     * 
     * @param moralCharaPartyDevelopment 7.1.2-1 各专业党员发展计划、发展情况汇总
     * @return 结果
     */
    public int insertMoralCharaPartyDevelopment(MoralCharaPartyDevelopment moralCharaPartyDevelopment);

    /**
     * 修改7.1.2-1 各专业党员发展计划、发展情况汇总
     * 
     * @param moralCharaPartyDevelopment 7.1.2-1 各专业党员发展计划、发展情况汇总
     * @return 结果
     */
    public int updateMoralCharaPartyDevelopment(MoralCharaPartyDevelopment moralCharaPartyDevelopment);

    /**
     * 批量删除7.1.2-1 各专业党员发展计划、发展情况汇总
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMoralCharaPartyDevelopmentByIds(String ids);

    /**
     * 删除7.1.2-1 各专业党员发展计划、发展情况汇总信息
     * 
     * @param id 7.1.2-1 各专业党员发展计划、发展情况汇总ID
     * @return 结果
     */
    public int deleteMoralCharaPartyDevelopmentById(Long id);
}
