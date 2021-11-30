package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MoralCharaOutstandingGraduateMapper;
import com.ruoyi.system.domain.MoralCharaOutstandingGraduate;
import com.ruoyi.system.service.IMoralCharaOutstandingGraduateService;
import com.ruoyi.common.core.text.Convert;

/**
 * 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class MoralCharaOutstandingGraduateServiceImpl implements IMoralCharaOutstandingGraduateService 
{
    @Autowired
    private MoralCharaOutstandingGraduateMapper moralCharaOutstandingGraduateMapper;

    /**
     * 查询7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * 
     * @param id 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例ID
     * @return 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     */
    @Override
    public MoralCharaOutstandingGraduate selectMoralCharaOutstandingGraduateById(Long id)
    {
        return moralCharaOutstandingGraduateMapper.selectMoralCharaOutstandingGraduateById(id);
    }

    /**
     * 查询7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例列表
     * 
     * @param moralCharaOutstandingGraduate 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * @return 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     */
    @Override
    public List<MoralCharaOutstandingGraduate> selectMoralCharaOutstandingGraduateList(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate)
    {
        return moralCharaOutstandingGraduateMapper.selectMoralCharaOutstandingGraduateList(moralCharaOutstandingGraduate);
    }

    /**
     * 新增7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * 
     * @param moralCharaOutstandingGraduate 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * @return 结果
     */
    @Override
    public int insertMoralCharaOutstandingGraduate(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate)
    {
        moralCharaOutstandingGraduate.setCreateTime(DateUtils.getNowDate());
        return moralCharaOutstandingGraduateMapper.insertMoralCharaOutstandingGraduate(moralCharaOutstandingGraduate);
    }

    /**
     * 修改7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * 
     * @param moralCharaOutstandingGraduate 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * @return 结果
     */
    @Override
    public int updateMoralCharaOutstandingGraduate(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate)
    {
        moralCharaOutstandingGraduate.setUpdateTime(DateUtils.getNowDate());
        return moralCharaOutstandingGraduateMapper.updateMoralCharaOutstandingGraduate(moralCharaOutstandingGraduate);
    }

    /**
     * 删除7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMoralCharaOutstandingGraduateByIds(String ids)
    {
        return moralCharaOutstandingGraduateMapper.deleteMoralCharaOutstandingGraduateByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例信息
     * 
     * @param id 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例ID
     * @return 结果
     */
    @Override
    public int deleteMoralCharaOutstandingGraduateById(Long id)
    {
        return moralCharaOutstandingGraduateMapper.deleteMoralCharaOutstandingGraduateById(id);
    }
}
