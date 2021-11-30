package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MoralEduActivitiesMapper;
import com.ruoyi.system.domain.MoralEduActivities;
import com.ruoyi.system.service.IMoralEduActivitiesService;
import com.ruoyi.common.core.text.Convert;

/**
 *  7.1.1-1近三年个专业思想教育活动统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class MoralEduActivitiesServiceImpl implements IMoralEduActivitiesService 
{
    @Autowired
    private MoralEduActivitiesMapper moralEduActivitiesMapper;

    /**
     * 查询 7.1.1-1近三年个专业思想教育活动统计
     * 
     * @param id  7.1.1-1近三年个专业思想教育活动统计ID
     * @return  7.1.1-1近三年个专业思想教育活动统计
     */
    @Override
    public MoralEduActivities selectMoralEduActivitiesById(Long id)
    {
        return moralEduActivitiesMapper.selectMoralEduActivitiesById(id);
    }

    /**
     * 查询 7.1.1-1近三年个专业思想教育活动统计列表
     * 
     * @param moralEduActivities  7.1.1-1近三年个专业思想教育活动统计
     * @return  7.1.1-1近三年个专业思想教育活动统计
     */
    @Override
    public List<MoralEduActivities> selectMoralEduActivitiesList(MoralEduActivities moralEduActivities)
    {
        return moralEduActivitiesMapper.selectMoralEduActivitiesList(moralEduActivities);
    }

    /**
     * 新增 7.1.1-1近三年个专业思想教育活动统计
     * 
     * @param moralEduActivities  7.1.1-1近三年个专业思想教育活动统计
     * @return 结果
     */
    @Override
    public int insertMoralEduActivities(MoralEduActivities moralEduActivities)
    {
        moralEduActivities.setCreateTime(DateUtils.getNowDate());
        return moralEduActivitiesMapper.insertMoralEduActivities(moralEduActivities);
    }

    /**
     * 修改 7.1.1-1近三年个专业思想教育活动统计
     * 
     * @param moralEduActivities  7.1.1-1近三年个专业思想教育活动统计
     * @return 结果
     */
    @Override
    public int updateMoralEduActivities(MoralEduActivities moralEduActivities)
    {
        moralEduActivities.setUpdateTime(DateUtils.getNowDate());
        return moralEduActivitiesMapper.updateMoralEduActivities(moralEduActivities);
    }

    /**
     * 删除 7.1.1-1近三年个专业思想教育活动统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduActivitiesByIds(String ids)
    {
        return moralEduActivitiesMapper.deleteMoralEduActivitiesByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除 7.1.1-1近三年个专业思想教育活动统计信息
     * 
     * @param id  7.1.1-1近三年个专业思想教育活动统计ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduActivitiesById(Long id)
    {
        return moralEduActivitiesMapper.deleteMoralEduActivitiesById(id);
    }
}
