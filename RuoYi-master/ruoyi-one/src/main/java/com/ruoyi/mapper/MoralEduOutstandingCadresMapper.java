package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.MoralEduOutstandingCadres;

/**
 * 7.1.2-3广东东软学院各专业优秀班集体统计Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface MoralEduOutstandingCadresMapper 
{
    /**
     * 查询7.1.2-3广东东软学院各专业优秀班集体统计
     * 
     * @param id 7.1.2-3广东东软学院各专业优秀班集体统计ID
     * @return 7.1.2-3广东东软学院各专业优秀班集体统计
     */
    public MoralEduOutstandingCadres selectMoralEduOutstandingCadresById(Long id);

    /**
     * 查询7.1.2-3广东东软学院各专业优秀班集体统计列表
     * 
     * @param moralEduOutstandingCadres 7.1.2-3广东东软学院各专业优秀班集体统计
     * @return 7.1.2-3广东东软学院各专业优秀班集体统计集合
     */
    public List<MoralEduOutstandingCadres> selectMoralEduOutstandingCadresList(MoralEduOutstandingCadres moralEduOutstandingCadres);

    /**
     * 新增7.1.2-3广东东软学院各专业优秀班集体统计
     * 
     * @param moralEduOutstandingCadres 7.1.2-3广东东软学院各专业优秀班集体统计
     * @return 结果
     */
    public int insertMoralEduOutstandingCadres(MoralEduOutstandingCadres moralEduOutstandingCadres);

    /**
     * 修改7.1.2-3广东东软学院各专业优秀班集体统计
     * 
     * @param moralEduOutstandingCadres 7.1.2-3广东东软学院各专业优秀班集体统计
     * @return 结果
     */
    public int updateMoralEduOutstandingCadres(MoralEduOutstandingCadres moralEduOutstandingCadres);

    /**
     * 删除7.1.2-3广东东软学院各专业优秀班集体统计
     * 
     * @param id 7.1.2-3广东东软学院各专业优秀班集体统计ID
     * @return 结果
     */
    public int deleteMoralEduOutstandingCadresById(Long id);

    /**
     * 批量删除7.1.2-3广东东软学院各专业优秀班集体统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMoralEduOutstandingCadresByIds(String[] ids);
}
