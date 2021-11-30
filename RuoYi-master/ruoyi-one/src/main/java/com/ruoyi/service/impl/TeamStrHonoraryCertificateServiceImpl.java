package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TeamStrHonoraryCertificateMapper;
import com.ruoyi.system.domain.TeamStrHonoraryCertificate;
import com.ruoyi.system.service.ITeamStrHonoraryCertificateService;
import com.ruoyi.common.core.text.Convert;

/**
 * 5.1.1-3 学院教学管理人员获得荣誉证书一览Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Service
public class TeamStrHonoraryCertificateServiceImpl implements ITeamStrHonoraryCertificateService 
{
    @Autowired
    private TeamStrHonoraryCertificateMapper teamStrHonoraryCertificateMapper;

    /**
     * 查询5.1.1-3 学院教学管理人员获得荣誉证书一览
     * 
     * @param id 5.1.1-3 学院教学管理人员获得荣誉证书一览ID
     * @return 5.1.1-3 学院教学管理人员获得荣誉证书一览
     */
    @Override
    public TeamStrHonoraryCertificate selectTeamStrHonoraryCertificateById(Long id)
    {
        return teamStrHonoraryCertificateMapper.selectTeamStrHonoraryCertificateById(id);
    }

    /**
     * 查询5.1.1-3 学院教学管理人员获得荣誉证书一览列表
     * 
     * @param teamStrHonoraryCertificate 5.1.1-3 学院教学管理人员获得荣誉证书一览
     * @return 5.1.1-3 学院教学管理人员获得荣誉证书一览
     */
    @Override
    public List<TeamStrHonoraryCertificate> selectTeamStrHonoraryCertificateList(TeamStrHonoraryCertificate teamStrHonoraryCertificate)
    {
        return teamStrHonoraryCertificateMapper.selectTeamStrHonoraryCertificateList(teamStrHonoraryCertificate);
    }

    /**
     * 新增5.1.1-3 学院教学管理人员获得荣誉证书一览
     * 
     * @param teamStrHonoraryCertificate 5.1.1-3 学院教学管理人员获得荣誉证书一览
     * @return 结果
     */
    @Override
    public int insertTeamStrHonoraryCertificate(TeamStrHonoraryCertificate teamStrHonoraryCertificate)
    {
        teamStrHonoraryCertificate.setCreateTime(DateUtils.getNowDate());
        return teamStrHonoraryCertificateMapper.insertTeamStrHonoraryCertificate(teamStrHonoraryCertificate);
    }

    /**
     * 修改5.1.1-3 学院教学管理人员获得荣誉证书一览
     * 
     * @param teamStrHonoraryCertificate 5.1.1-3 学院教学管理人员获得荣誉证书一览
     * @return 结果
     */
    @Override
    public int updateTeamStrHonoraryCertificate(TeamStrHonoraryCertificate teamStrHonoraryCertificate)
    {
        teamStrHonoraryCertificate.setUpdateTime(DateUtils.getNowDate());
        return teamStrHonoraryCertificateMapper.updateTeamStrHonoraryCertificate(teamStrHonoraryCertificate);
    }

    /**
     * 删除5.1.1-3 学院教学管理人员获得荣誉证书一览对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTeamStrHonoraryCertificateByIds(String ids)
    {
        return teamStrHonoraryCertificateMapper.deleteTeamStrHonoraryCertificateByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除5.1.1-3 学院教学管理人员获得荣誉证书一览信息
     * 
     * @param id 5.1.1-3 学院教学管理人员获得荣誉证书一览ID
     * @return 结果
     */
    @Override
    public int deleteTeamStrHonoraryCertificateById(Long id)
    {
        return teamStrHonoraryCertificateMapper.deleteTeamStrHonoraryCertificateById(id);
    }
}
