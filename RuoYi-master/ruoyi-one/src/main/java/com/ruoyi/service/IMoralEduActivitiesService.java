package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.MoralEduActivities;

/**
 *  7.1.1-1近三年个专业思想教育活动统计Service接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface IMoralEduActivitiesService 
{
    /**
     * 查询 7.1.1-1近三年个专业思想教育活动统计
     * 
     * @param id  7.1.1-1近三年个专业思想教育活动统计ID
     * @return  7.1.1-1近三年个专业思想教育活动统计
     */
    public MoralEduActivities selectMoralEduActivitiesById(Long id);

    /**
     * 查询 7.1.1-1近三年个专业思想教育活动统计列表
     * 
     * @param moralEduActivities  7.1.1-1近三年个专业思想教育活动统计
     * @return  7.1.1-1近三年个专业思想教育活动统计集合
     */
    public List<MoralEduActivities> selectMoralEduActivitiesList(MoralEduActivities moralEduActivities);

    /**
     * 新增 7.1.1-1近三年个专业思想教育活动统计
     * 
     * @param moralEduActivities  7.1.1-1近三年个专业思想教育活动统计
     * @return 结果
     */
    public int insertMoralEduActivities(MoralEduActivities moralEduActivities);

    /**
     * 修改 7.1.1-1近三年个专业思想教育活动统计
     * 
     * @param moralEduActivities  7.1.1-1近三年个专业思想教育活动统计
     * @return 结果
     */
    public int updateMoralEduActivities(MoralEduActivities moralEduActivities);

    /**
     * 批量删除 7.1.1-1近三年个专业思想教育活动统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMoralEduActivitiesByIds(String ids);

    /**
     * 删除 7.1.1-1近三年个专业思想教育活动统计信息
     * 
     * @param id  7.1.1-1近三年个专业思想教育活动统计ID
     * @return 结果
     */
    public int deleteMoralEduActivitiesById(Long id);
}
