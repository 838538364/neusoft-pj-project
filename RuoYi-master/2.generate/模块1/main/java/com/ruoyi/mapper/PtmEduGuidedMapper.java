package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.PtmEduGuided;

/**
 * 各学院聘请企业人员指导实习情况Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
public interface PtmEduGuidedMapper 
{
    /**
     * 查询各学院聘请企业人员指导实习情况
     * 
     * @param id 各学院聘请企业人员指导实习情况ID
     * @return 各学院聘请企业人员指导实习情况
     */
    public PtmEduGuided selectPtmEduGuidedById(Long id);

    /**
     * 查询各学院聘请企业人员指导实习情况列表
     * 
     * @param ptmEduGuided 各学院聘请企业人员指导实习情况
     * @return 各学院聘请企业人员指导实习情况集合
     */
    public List<PtmEduGuided> selectPtmEduGuidedList(PtmEduGuided ptmEduGuided);

    /**
     * 新增各学院聘请企业人员指导实习情况
     * 
     * @param ptmEduGuided 各学院聘请企业人员指导实习情况
     * @return 结果
     */
    public int insertPtmEduGuided(PtmEduGuided ptmEduGuided);

    /**
     * 修改各学院聘请企业人员指导实习情况
     * 
     * @param ptmEduGuided 各学院聘请企业人员指导实习情况
     * @return 结果
     */
    public int updatePtmEduGuided(PtmEduGuided ptmEduGuided);

    /**
     * 删除各学院聘请企业人员指导实习情况
     * 
     * @param id 各学院聘请企业人员指导实习情况ID
     * @return 结果
     */
    public int deletePtmEduGuidedById(Long id);

    /**
     * 批量删除各学院聘请企业人员指导实习情况
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePtmEduGuidedByIds(String[] ids);
}
