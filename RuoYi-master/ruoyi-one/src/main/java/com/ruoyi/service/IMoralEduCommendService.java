package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.MoralEduCommend;

/**
 * 7.1.1-2“五四彰”、“七一彰”Service接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface IMoralEduCommendService 
{
    /**
     * 查询7.1.1-2“五四彰”、“七一彰”
     * 
     * @param id 7.1.1-2“五四彰”、“七一彰”ID
     * @return 7.1.1-2“五四彰”、“七一彰”
     */
    public MoralEduCommend selectMoralEduCommendById(Long id);

    /**
     * 查询7.1.1-2“五四彰”、“七一彰”列表
     * 
     * @param moralEduCommend 7.1.1-2“五四彰”、“七一彰”
     * @return 7.1.1-2“五四彰”、“七一彰”集合
     */
    public List<MoralEduCommend> selectMoralEduCommendList(MoralEduCommend moralEduCommend);

    /**
     * 新增7.1.1-2“五四彰”、“七一彰”
     * 
     * @param moralEduCommend 7.1.1-2“五四彰”、“七一彰”
     * @return 结果
     */
    public int insertMoralEduCommend(MoralEduCommend moralEduCommend);

    /**
     * 修改7.1.1-2“五四彰”、“七一彰”
     * 
     * @param moralEduCommend 7.1.1-2“五四彰”、“七一彰”
     * @return 结果
     */
    public int updateMoralEduCommend(MoralEduCommend moralEduCommend);

    /**
     * 批量删除7.1.1-2“五四彰”、“七一彰”
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMoralEduCommendByIds(String ids);

    /**
     * 删除7.1.1-2“五四彰”、“七一彰”信息
     * 
     * @param id 7.1.1-2“五四彰”、“七一彰”ID
     * @return 结果
     */
    public int deleteMoralEduCommendById(Long id);
}
