package com.ruoyi.service;

import java.util.List;
import com.ruoyi.domain.PtmEduThesisGuidance;

/**
 * 各学院聘请企业人员指导毕业论文情况统计Service接口
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
public interface IPtmEduThesisGuidanceService 
{
    /**
     * 查询各学院聘请企业人员指导毕业论文情况统计
     * 
     * @param id 各学院聘请企业人员指导毕业论文情况统计ID
     * @return 各学院聘请企业人员指导毕业论文情况统计
     */
    public PtmEduThesisGuidance selectPtmEduThesisGuidanceById(Long id);

    /**
     * 查询各学院聘请企业人员指导毕业论文情况统计列表
     * 
     * @param ptmEduThesisGuidance 各学院聘请企业人员指导毕业论文情况统计
     * @return 各学院聘请企业人员指导毕业论文情况统计集合
     */
    public List<PtmEduThesisGuidance> selectPtmEduThesisGuidanceList(PtmEduThesisGuidance ptmEduThesisGuidance);

    /**
     * 新增各学院聘请企业人员指导毕业论文情况统计
     * 
     * @param ptmEduThesisGuidance 各学院聘请企业人员指导毕业论文情况统计
     * @return 结果
     */
    public int insertPtmEduThesisGuidance(PtmEduThesisGuidance ptmEduThesisGuidance);

    /**
     * 修改各学院聘请企业人员指导毕业论文情况统计
     * 
     * @param ptmEduThesisGuidance 各学院聘请企业人员指导毕业论文情况统计
     * @return 结果
     */
    public int updatePtmEduThesisGuidance(PtmEduThesisGuidance ptmEduThesisGuidance);

    /**
     * 批量删除各学院聘请企业人员指导毕业论文情况统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePtmEduThesisGuidanceByIds(String ids);

    /**
     * 删除各学院聘请企业人员指导毕业论文情况统计信息
     * 
     * @param id 各学院聘请企业人员指导毕业论文情况统计ID
     * @return 结果
     */
    public int deletePtmEduThesisGuidanceById(Long id);
}
