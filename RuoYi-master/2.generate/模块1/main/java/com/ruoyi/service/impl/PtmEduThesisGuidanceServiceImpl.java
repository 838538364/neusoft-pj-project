package com.ruoyi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.PtmEduThesisGuidanceMapper;
import com.ruoyi.domain.PtmEduThesisGuidance;
import com.ruoyi.service.IPtmEduThesisGuidanceService;
import com.ruoyi.common.core.text.Convert;

/**
 * 各学院聘请企业人员指导毕业论文情况统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
@Service
public class PtmEduThesisGuidanceServiceImpl implements IPtmEduThesisGuidanceService 
{
    @Autowired
    private PtmEduThesisGuidanceMapper ptmEduThesisGuidanceMapper;

    /**
     * 查询各学院聘请企业人员指导毕业论文情况统计
     * 
     * @param id 各学院聘请企业人员指导毕业论文情况统计ID
     * @return 各学院聘请企业人员指导毕业论文情况统计
     */
    @Override
    public PtmEduThesisGuidance selectPtmEduThesisGuidanceById(Long id)
    {
        return ptmEduThesisGuidanceMapper.selectPtmEduThesisGuidanceById(id);
    }

    /**
     * 查询各学院聘请企业人员指导毕业论文情况统计列表
     * 
     * @param ptmEduThesisGuidance 各学院聘请企业人员指导毕业论文情况统计
     * @return 各学院聘请企业人员指导毕业论文情况统计
     */
    @Override
    public List<PtmEduThesisGuidance> selectPtmEduThesisGuidanceList(PtmEduThesisGuidance ptmEduThesisGuidance)
    {
        return ptmEduThesisGuidanceMapper.selectPtmEduThesisGuidanceList(ptmEduThesisGuidance);
    }

    /**
     * 新增各学院聘请企业人员指导毕业论文情况统计
     * 
     * @param ptmEduThesisGuidance 各学院聘请企业人员指导毕业论文情况统计
     * @return 结果
     */
    @Override
    public int insertPtmEduThesisGuidance(PtmEduThesisGuidance ptmEduThesisGuidance)
    {
        ptmEduThesisGuidance.setCreateTime(DateUtils.getNowDate());
        return ptmEduThesisGuidanceMapper.insertPtmEduThesisGuidance(ptmEduThesisGuidance);
    }

    /**
     * 修改各学院聘请企业人员指导毕业论文情况统计
     * 
     * @param ptmEduThesisGuidance 各学院聘请企业人员指导毕业论文情况统计
     * @return 结果
     */
    @Override
    public int updatePtmEduThesisGuidance(PtmEduThesisGuidance ptmEduThesisGuidance)
    {
        ptmEduThesisGuidance.setUpdateTime(DateUtils.getNowDate());
        return ptmEduThesisGuidanceMapper.updatePtmEduThesisGuidance(ptmEduThesisGuidance);
    }

    /**
     * 删除各学院聘请企业人员指导毕业论文情况统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePtmEduThesisGuidanceByIds(String ids)
    {
        return ptmEduThesisGuidanceMapper.deletePtmEduThesisGuidanceByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除各学院聘请企业人员指导毕业论文情况统计信息
     * 
     * @param id 各学院聘请企业人员指导毕业论文情况统计ID
     * @return 结果
     */
    @Override
    public int deletePtmEduThesisGuidanceById(Long id)
    {
        return ptmEduThesisGuidanceMapper.deletePtmEduThesisGuidanceById(id);
    }
}
