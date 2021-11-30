package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MoralEduArtActivityMapper;
import com.ruoyi.system.domain.MoralEduArtActivity;
import com.ruoyi.system.service.IMoralEduArtActivityService;
import com.ruoyi.common.core.text.Convert;

/**
 * 7.1.1-3高雅艺术活动情况Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class MoralEduArtActivityServiceImpl implements IMoralEduArtActivityService 
{
    @Autowired
    private MoralEduArtActivityMapper moralEduArtActivityMapper;

    /**
     * 查询7.1.1-3高雅艺术活动情况
     * 
     * @param id 7.1.1-3高雅艺术活动情况ID
     * @return 7.1.1-3高雅艺术活动情况
     */
    @Override
    public MoralEduArtActivity selectMoralEduArtActivityById(Long id)
    {
        return moralEduArtActivityMapper.selectMoralEduArtActivityById(id);
    }

    /**
     * 查询7.1.1-3高雅艺术活动情况列表
     * 
     * @param moralEduArtActivity 7.1.1-3高雅艺术活动情况
     * @return 7.1.1-3高雅艺术活动情况
     */
    @Override
    public List<MoralEduArtActivity> selectMoralEduArtActivityList(MoralEduArtActivity moralEduArtActivity)
    {
        return moralEduArtActivityMapper.selectMoralEduArtActivityList(moralEduArtActivity);
    }

    /**
     * 新增7.1.1-3高雅艺术活动情况
     * 
     * @param moralEduArtActivity 7.1.1-3高雅艺术活动情况
     * @return 结果
     */
    @Override
    public int insertMoralEduArtActivity(MoralEduArtActivity moralEduArtActivity)
    {
        moralEduArtActivity.setCreateTime(DateUtils.getNowDate());
        return moralEduArtActivityMapper.insertMoralEduArtActivity(moralEduArtActivity);
    }

    /**
     * 修改7.1.1-3高雅艺术活动情况
     * 
     * @param moralEduArtActivity 7.1.1-3高雅艺术活动情况
     * @return 结果
     */
    @Override
    public int updateMoralEduArtActivity(MoralEduArtActivity moralEduArtActivity)
    {
        moralEduArtActivity.setUpdateTime(DateUtils.getNowDate());
        return moralEduArtActivityMapper.updateMoralEduArtActivity(moralEduArtActivity);
    }

    /**
     * 删除7.1.1-3高雅艺术活动情况对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduArtActivityByIds(String ids)
    {
        return moralEduArtActivityMapper.deleteMoralEduArtActivityByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除7.1.1-3高雅艺术活动情况信息
     * 
     * @param id 7.1.1-3高雅艺术活动情况ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduArtActivityById(Long id)
    {
        return moralEduArtActivityMapper.deleteMoralEduArtActivityById(id);
    }
}
