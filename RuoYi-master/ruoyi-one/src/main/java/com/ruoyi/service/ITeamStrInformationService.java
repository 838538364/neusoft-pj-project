package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TeamStrInformation;

/**
 * 5.1.1-2 学院教学管理人员信息Service接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface ITeamStrInformationService 
{
    /**
     * 查询5.1.1-2 学院教学管理人员信息
     * 
     * @param id 5.1.1-2 学院教学管理人员信息ID
     * @return 5.1.1-2 学院教学管理人员信息
     */
    public TeamStrInformation selectTeamStrInformationById(Long id);

    /**
     * 查询5.1.1-2 学院教学管理人员信息列表
     * 
     * @param teamStrInformation 5.1.1-2 学院教学管理人员信息
     * @return 5.1.1-2 学院教学管理人员信息集合
     */
    public List<TeamStrInformation> selectTeamStrInformationList(TeamStrInformation teamStrInformation);

    /**
     * 新增5.1.1-2 学院教学管理人员信息
     * 
     * @param teamStrInformation 5.1.1-2 学院教学管理人员信息
     * @return 结果
     */
    public int insertTeamStrInformation(TeamStrInformation teamStrInformation);

    /**
     * 修改5.1.1-2 学院教学管理人员信息
     * 
     * @param teamStrInformation 5.1.1-2 学院教学管理人员信息
     * @return 结果
     */
    public int updateTeamStrInformation(TeamStrInformation teamStrInformation);

    /**
     * 批量删除5.1.1-2 学院教学管理人员信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTeamStrInformationByIds(String ids);

    /**
     * 删除5.1.1-2 学院教学管理人员信息信息
     * 
     * @param id 5.1.1-2 学院教学管理人员信息ID
     * @return 结果
     */
    public int deleteTeamStrInformationById(Long id);
}
