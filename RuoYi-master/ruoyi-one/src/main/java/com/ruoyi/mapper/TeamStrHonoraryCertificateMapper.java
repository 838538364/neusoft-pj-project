package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TeamStrHonoraryCertificate;

/**
 * 5.1.1-3 学院教学管理人员获得荣誉证书一览Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface TeamStrHonoraryCertificateMapper 
{
    /**
     * 查询5.1.1-3 学院教学管理人员获得荣誉证书一览
     * 
     * @param id 5.1.1-3 学院教学管理人员获得荣誉证书一览ID
     * @return 5.1.1-3 学院教学管理人员获得荣誉证书一览
     */
    public TeamStrHonoraryCertificate selectTeamStrHonoraryCertificateById(Long id);

    /**
     * 查询5.1.1-3 学院教学管理人员获得荣誉证书一览列表
     * 
     * @param teamStrHonoraryCertificate 5.1.1-3 学院教学管理人员获得荣誉证书一览
     * @return 5.1.1-3 学院教学管理人员获得荣誉证书一览集合
     */
    public List<TeamStrHonoraryCertificate> selectTeamStrHonoraryCertificateList(TeamStrHonoraryCertificate teamStrHonoraryCertificate);

    /**
     * 新增5.1.1-3 学院教学管理人员获得荣誉证书一览
     * 
     * @param teamStrHonoraryCertificate 5.1.1-3 学院教学管理人员获得荣誉证书一览
     * @return 结果
     */
    public int insertTeamStrHonoraryCertificate(TeamStrHonoraryCertificate teamStrHonoraryCertificate);

    /**
     * 修改5.1.1-3 学院教学管理人员获得荣誉证书一览
     * 
     * @param teamStrHonoraryCertificate 5.1.1-3 学院教学管理人员获得荣誉证书一览
     * @return 结果
     */
    public int updateTeamStrHonoraryCertificate(TeamStrHonoraryCertificate teamStrHonoraryCertificate);

    /**
     * 删除5.1.1-3 学院教学管理人员获得荣誉证书一览
     * 
     * @param id 5.1.1-3 学院教学管理人员获得荣誉证书一览ID
     * @return 结果
     */
    public int deleteTeamStrHonoraryCertificateById(Long id);

    /**
     * 批量删除5.1.1-3 学院教学管理人员获得荣誉证书一览
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTeamStrHonoraryCertificateByIds(String[] ids);
}
