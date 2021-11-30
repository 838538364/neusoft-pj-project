package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MoralEduCommendMapper;
import com.ruoyi.system.domain.MoralEduCommend;
import com.ruoyi.system.service.IMoralEduCommendService;
import com.ruoyi.common.core.text.Convert;

/**
 * 7.1.1-2“五四彰”、“七一彰”Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class MoralEduCommendServiceImpl implements IMoralEduCommendService 
{
    @Autowired
    private MoralEduCommendMapper moralEduCommendMapper;

    /**
     * 查询7.1.1-2“五四彰”、“七一彰”
     * 
     * @param id 7.1.1-2“五四彰”、“七一彰”ID
     * @return 7.1.1-2“五四彰”、“七一彰”
     */
    @Override
    public MoralEduCommend selectMoralEduCommendById(Long id)
    {
        return moralEduCommendMapper.selectMoralEduCommendById(id);
    }

    /**
     * 查询7.1.1-2“五四彰”、“七一彰”列表
     * 
     * @param moralEduCommend 7.1.1-2“五四彰”、“七一彰”
     * @return 7.1.1-2“五四彰”、“七一彰”
     */
    @Override
    public List<MoralEduCommend> selectMoralEduCommendList(MoralEduCommend moralEduCommend)
    {
        return moralEduCommendMapper.selectMoralEduCommendList(moralEduCommend);
    }

    /**
     * 新增7.1.1-2“五四彰”、“七一彰”
     * 
     * @param moralEduCommend 7.1.1-2“五四彰”、“七一彰”
     * @return 结果
     */
    @Override
    public int insertMoralEduCommend(MoralEduCommend moralEduCommend)
    {
        moralEduCommend.setCreateTime(DateUtils.getNowDate());
        return moralEduCommendMapper.insertMoralEduCommend(moralEduCommend);
    }

    /**
     * 修改7.1.1-2“五四彰”、“七一彰”
     * 
     * @param moralEduCommend 7.1.1-2“五四彰”、“七一彰”
     * @return 结果
     */
    @Override
    public int updateMoralEduCommend(MoralEduCommend moralEduCommend)
    {
        moralEduCommend.setUpdateTime(DateUtils.getNowDate());
        return moralEduCommendMapper.updateMoralEduCommend(moralEduCommend);
    }

    /**
     * 删除7.1.1-2“五四彰”、“七一彰”对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduCommendByIds(String ids)
    {
        return moralEduCommendMapper.deleteMoralEduCommendByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除7.1.1-2“五四彰”、“七一彰”信息
     * 
     * @param id 7.1.1-2“五四彰”、“七一彰”ID
     * @return 结果
     */
    @Override
    public int deleteMoralEduCommendById(Long id)
    {
        return moralEduCommendMapper.deleteMoralEduCommendById(id);
    }
}
