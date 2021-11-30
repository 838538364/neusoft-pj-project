package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MoralEduOutstandingCadresMapper;
import com.ruoyi.system.domain.MoralEduOutstandingCadres;
import com.ruoyi.system.service.IMoralEduOutstandingCadresService;
import com.ruoyi.common.core.text.Convert;

/**
 * 7.1.2-3广东东软学院各专业优秀班集体统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class MoralEduOutstandingCadresServiceImpl implements IMoralEduOutstandingCadresService 
{
    @Autowired
    private MoralEduOutstandingCadresMapper moralEduOutstandingCadresMapper;

    /**
     * 查询7.1.2-3广东东软学院各专业优秀班集体统计
     * 
     * @param id 7.1.2-3广东东软学院各专业优秀班集体统计ID
     * @return 7.1.2-3广东东软学院各专业优秀班集体统计
     */
    @Override
    public MoralEduOutstandingCadres selectMoralEduOutstandingCadresById(Long id)
    {
        return moralEduOutstandingCadresMapper.selectMoralEduOutstandingCadresById(id);
    }

    /**
     * 查询7.1.2-3广东东软学院各专业优秀班集体统计列表
     * 
     * @param moralEduOutstandingCadres 7.1.2-3广东东软学院各专业优秀班集体统计
     * @return 7.1.2-3广东东软学院各专业优秀班集体统计
     */
    @Override
    public List<MoralEduOutstandingCadres> selectMoralEduOutstandingCadresList(MoralEduOutstandingCadres moralEduOutstandingCadres)
    {
        return moralEduOutstandingCadresMapper.selectMoralEduOutstandingCadresList(moralEduOutstandingCadres);
    }

    /**
     * 新增7.1.2-3广东东软学院各专业优秀班集体统计
     * 
     * @param moralEduOutstandingCadres 7.1.2-3广东东软学院各专业优秀班集体统计
     * @return 结果
     */
    @Override
    public int insertMoralEduOutstandingCadres(MoralEduOutstandingCadres moralEduOutstandingCadres)
    {
        moralEduOutstandingCadres.setCreateTime(DateUtils.getNowDate());
        return moralEduOutstandingCadresMapper.insertMoralEduOutstandingCadres(moralEduOutstandingCadres);
    }

    /**
     * 修改7.1.2-3广东东软学院各专业优秀班集体统计
     * 
     * @param moralEduOutstandingCadres 7.1.2-3广东东软学院各专业优秀班集体统计
     * @return 结果
     */
    @Override
    public int updateMoralEduOutstandingCadres(MoralEduOutstandingCadres moralEduOutstandingCadres)
    {
        moralEduOutstandingCadres.setUpdateTime(DateUtils.getNowDate());
        return moralEduOutstandingCadresMapper.updateMoralEduOutstandingCadres(moralEduOutstandingCadres);
    }

    /**
     * 删除7.1.2-3广东东软学院各专业优秀班集体统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduOutstandingCadresByIds(String ids)
    {
        return moralEduOutstandingCadresMapper.deleteMoralEduOutstandingCadresByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除7.1.2-3广东东软学院各专业优秀班集体统计信息
     * 
     * @param id 7.1.2-3广东东软学院各专业优秀班集体统计ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduOutstandingCadresById(Long id)
    {
        return moralEduOutstandingCadresMapper.deleteMoralEduOutstandingCadresById(id);
    }
}
