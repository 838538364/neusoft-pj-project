package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.MoralEduArtActivity;

/**
 * 7.1.1-3高雅艺术活动情况Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface MoralEduArtActivityMapper 
{
    /**
     * 查询7.1.1-3高雅艺术活动情况
     * 
     * @param id 7.1.1-3高雅艺术活动情况ID
     * @return 7.1.1-3高雅艺术活动情况
     */
    public MoralEduArtActivity selectMoralEduArtActivityById(Long id);

    /**
     * 查询7.1.1-3高雅艺术活动情况列表
     * 
     * @param moralEduArtActivity 7.1.1-3高雅艺术活动情况
     * @return 7.1.1-3高雅艺术活动情况集合
     */
    public List<MoralEduArtActivity> selectMoralEduArtActivityList(MoralEduArtActivity moralEduArtActivity);

    /**
     * 新增7.1.1-3高雅艺术活动情况
     * 
     * @param moralEduArtActivity 7.1.1-3高雅艺术活动情况
     * @return 结果
     */
    public int insertMoralEduArtActivity(MoralEduArtActivity moralEduArtActivity);

    /**
     * 修改7.1.1-3高雅艺术活动情况
     * 
     * @param moralEduArtActivity 7.1.1-3高雅艺术活动情况
     * @return 结果
     */
    public int updateMoralEduArtActivity(MoralEduArtActivity moralEduArtActivity);

    /**
     * 删除7.1.1-3高雅艺术活动情况
     * 
     * @param id 7.1.1-3高雅艺术活动情况ID
     * @return 结果
     */
    public int deleteMoralEduArtActivityById(Long id);

    /**
     * 批量删除7.1.1-3高雅艺术活动情况
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMoralEduArtActivityByIds(String[] ids);
}
