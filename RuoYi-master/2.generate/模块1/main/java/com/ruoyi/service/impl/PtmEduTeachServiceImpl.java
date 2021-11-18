package com.ruoyi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.PtmEduTeachMapper;
import com.ruoyi.domain.PtmEduTeach;
import com.ruoyi.service.IPtmEduTeachService;
import com.ruoyi.common.core.text.Convert;

/**
 * 各学院聘请企业人员授课情况Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
@Service
public class PtmEduTeachServiceImpl implements IPtmEduTeachService 
{
    @Autowired
    private PtmEduTeachMapper ptmEduTeachMapper;

    /**
     * 查询各学院聘请企业人员授课情况
     * 
     * @param id 各学院聘请企业人员授课情况ID
     * @return 各学院聘请企业人员授课情况
     */
    @Override
    public PtmEduTeach selectPtmEduTeachById(Long id)
    {
        return ptmEduTeachMapper.selectPtmEduTeachById(id);
    }

    /**
     * 查询各学院聘请企业人员授课情况列表
     * 
     * @param ptmEduTeach 各学院聘请企业人员授课情况
     * @return 各学院聘请企业人员授课情况
     */
    @Override
    public List<PtmEduTeach> selectPtmEduTeachList(PtmEduTeach ptmEduTeach)
    {
        return ptmEduTeachMapper.selectPtmEduTeachList(ptmEduTeach);
    }

    /**
     * 新增各学院聘请企业人员授课情况
     * 
     * @param ptmEduTeach 各学院聘请企业人员授课情况
     * @return 结果
     */
    @Override
    public int insertPtmEduTeach(PtmEduTeach ptmEduTeach)
    {
        ptmEduTeach.setCreateTime(DateUtils.getNowDate());
        return ptmEduTeachMapper.insertPtmEduTeach(ptmEduTeach);
    }

    /**
     * 修改各学院聘请企业人员授课情况
     * 
     * @param ptmEduTeach 各学院聘请企业人员授课情况
     * @return 结果
     */
    @Override
    public int updatePtmEduTeach(PtmEduTeach ptmEduTeach)
    {
        ptmEduTeach.setUpdateTime(DateUtils.getNowDate());
        return ptmEduTeachMapper.updatePtmEduTeach(ptmEduTeach);
    }

    /**
     * 删除各学院聘请企业人员授课情况对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePtmEduTeachByIds(String ids)
    {
        return ptmEduTeachMapper.deletePtmEduTeachByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除各学院聘请企业人员授课情况信息
     * 
     * @param id 各学院聘请企业人员授课情况ID
     * @return 结果
     */
    @Override
    public int deletePtmEduTeachById(Long id)
    {
        return ptmEduTeachMapper.deletePtmEduTeachById(id);
    }
}
