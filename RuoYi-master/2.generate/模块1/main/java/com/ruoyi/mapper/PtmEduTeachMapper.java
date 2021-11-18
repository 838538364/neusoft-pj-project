package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.PtmEduTeach;

/**
 * 各学院聘请企业人员授课情况Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
public interface PtmEduTeachMapper 
{
    /**
     * 查询各学院聘请企业人员授课情况
     * 
     * @param id 各学院聘请企业人员授课情况ID
     * @return 各学院聘请企业人员授课情况
     */
    public PtmEduTeach selectPtmEduTeachById(Long id);

    /**
     * 查询各学院聘请企业人员授课情况列表
     * 
     * @param ptmEduTeach 各学院聘请企业人员授课情况
     * @return 各学院聘请企业人员授课情况集合
     */
    public List<PtmEduTeach> selectPtmEduTeachList(PtmEduTeach ptmEduTeach);

    /**
     * 新增各学院聘请企业人员授课情况
     * 
     * @param ptmEduTeach 各学院聘请企业人员授课情况
     * @return 结果
     */
    public int insertPtmEduTeach(PtmEduTeach ptmEduTeach);

    /**
     * 修改各学院聘请企业人员授课情况
     * 
     * @param ptmEduTeach 各学院聘请企业人员授课情况
     * @return 结果
     */
    public int updatePtmEduTeach(PtmEduTeach ptmEduTeach);

    /**
     * 删除各学院聘请企业人员授课情况
     * 
     * @param id 各学院聘请企业人员授课情况ID
     * @return 结果
     */
    public int deletePtmEduTeachById(Long id);

    /**
     * 批量删除各学院聘请企业人员授课情况
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePtmEduTeachByIds(String[] ids);
}
