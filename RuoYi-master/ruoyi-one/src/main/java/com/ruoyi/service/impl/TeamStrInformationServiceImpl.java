package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TeamStrInformationMapper;
import com.ruoyi.system.domain.TeamStrInformation;
import com.ruoyi.system.service.ITeamStrInformationService;
import com.ruoyi.common.core.text.Convert;

/**
 * 5.1.1-2 学院教学管理人员信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class TeamStrInformationServiceImpl implements ITeamStrInformationService 
{
    @Autowired
    private TeamStrInformationMapper teamStrInformationMapper;

    /**
     * 查询5.1.1-2 学院教学管理人员信息
     * 
     * @param id 5.1.1-2 学院教学管理人员信息ID
     * @return 5.1.1-2 学院教学管理人员信息
     */
    @Override
    public TeamStrInformation selectTeamStrInformationById(Long id)
    {
        return teamStrInformationMapper.selectTeamStrInformationById(id);
    }

    /**
     * 查询5.1.1-2 学院教学管理人员信息列表
     * 
     * @param teamStrInformation 5.1.1-2 学院教学管理人员信息
     * @return 5.1.1-2 学院教学管理人员信息
     */
    @Override
    public List<TeamStrInformation> selectTeamStrInformationList(TeamStrInformation teamStrInformation)
    {
        return teamStrInformationMapper.selectTeamStrInformationList(teamStrInformation);
    }

    /**
     * 新增5.1.1-2 学院教学管理人员信息
     * 
     * @param teamStrInformation 5.1.1-2 学院教学管理人员信息
     * @return 结果
     */
    @Override
    public int insertTeamStrInformation(TeamStrInformation teamStrInformation)
    {
        teamStrInformation.setCreateTime(DateUtils.getNowDate());
        return teamStrInformationMapper.insertTeamStrInformation(teamStrInformation);
    }

    /**
     * 修改5.1.1-2 学院教学管理人员信息
     * 
     * @param teamStrInformation 5.1.1-2 学院教学管理人员信息
     * @return 结果
     */
    @Override
    public int updateTeamStrInformation(TeamStrInformation teamStrInformation)
    {
        teamStrInformation.setUpdateTime(DateUtils.getNowDate());
        return teamStrInformationMapper.updateTeamStrInformation(teamStrInformation);
    }

    /**
     * 删除5.1.1-2 学院教学管理人员信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTeamStrInformationByIds(String ids)
    {
        return teamStrInformationMapper.deleteTeamStrInformationByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除5.1.1-2 学院教学管理人员信息信息
     * 
     * @param id 5.1.1-2 学院教学管理人员信息ID
     * @return 结果
     */
    @Override
    public int deleteTeamStrInformationById(Long id)
    {
        return teamStrInformationMapper.deleteTeamStrInformationById(id);
    }
}
