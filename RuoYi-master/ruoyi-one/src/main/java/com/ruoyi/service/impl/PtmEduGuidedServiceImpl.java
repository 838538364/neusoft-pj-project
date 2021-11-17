package com.ruoyi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.PtmEduGuidedMapper;
import com.ruoyi.domain.PtmEduGuided;
import com.ruoyi.service.IPtmEduGuidedService;
import com.ruoyi.common.core.text.Convert;

/**
 * 各学院聘请企业人员指导实习情况Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Service
public class PtmEduGuidedServiceImpl implements IPtmEduGuidedService 
{
    @Autowired
    private PtmEduGuidedMapper ptmEduGuidedMapper;

    /**
     * 查询各学院聘请企业人员指导实习情况
     * 
     * @param id 各学院聘请企业人员指导实习情况ID
     * @return 各学院聘请企业人员指导实习情况
     */
    @Override
    public PtmEduGuided selectPtmEduGuidedById(Long id)
    {
        return ptmEduGuidedMapper.selectPtmEduGuidedById(id);
    }

    /**
     * 查询各学院聘请企业人员指导实习情况列表
     * 
     * @param ptmEduGuided 各学院聘请企业人员指导实习情况
     * @return 各学院聘请企业人员指导实习情况
     */
    @Override
    public List<PtmEduGuided> selectPtmEduGuidedList(PtmEduGuided ptmEduGuided)
    {
        return ptmEduGuidedMapper.selectPtmEduGuidedList(ptmEduGuided);
    }

    /**
     * 新增各学院聘请企业人员指导实习情况
     * 
     * @param ptmEduGuided 各学院聘请企业人员指导实习情况
     * @return 结果
     */
    @Override
    public int insertPtmEduGuided(PtmEduGuided ptmEduGuided)
    {
        ptmEduGuided.setCreateTime(DateUtils.getNowDate());
        return ptmEduGuidedMapper.insertPtmEduGuided(ptmEduGuided);
    }

    /**
     * 修改各学院聘请企业人员指导实习情况
     * 
     * @param ptmEduGuided 各学院聘请企业人员指导实习情况
     * @return 结果
     */
    @Override
    public int updatePtmEduGuided(PtmEduGuided ptmEduGuided)
    {
        ptmEduGuided.setUpdateTime(DateUtils.getNowDate());
        return ptmEduGuidedMapper.updatePtmEduGuided(ptmEduGuided);
    }

    /**
     * 删除各学院聘请企业人员指导实习情况对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePtmEduGuidedByIds(String ids)
    {
        return ptmEduGuidedMapper.deletePtmEduGuidedByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除各学院聘请企业人员指导实习情况信息
     * 
     * @param id 各学院聘请企业人员指导实习情况ID
     * @return 结果
     */
    @Override
    public int deletePtmEduGuidedById(Long id)
    {
        return ptmEduGuidedMapper.deletePtmEduGuidedById(id);
    }
}
