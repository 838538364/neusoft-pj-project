package com.ruoyi.system.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 5.1.1-3 学院教学管理人员获得荣誉证书一览对象 team_str_honorary_certificate
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class TeamStrHonoraryCertificate extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String empName;

    /** 部门 */
    @Excel(name = "部门")
    private String deptName;

    /** 荣誉名称 */
    @Excel(name = "荣誉名称")
    private String honorName;

    /** 授予单位 */
    @Excel(name = "授予单位")
    private String release;

    /** 级别 */
    @Excel(name = "级别")
    private String level;

    /** 获奖日期 */
    @Excel(name = "获奖日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date honorTime;

    /** 是否使用 */
    @Excel(name = "是否使用")
    private String useStatus;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setEmpName(String empName) 
    {
        this.empName = empName;
    }

    public String getEmpName() 
    {
        return empName;
    }
    public void setDeptName(String deptName) 
    {
        this.deptName = deptName;
    }

    public String getDeptName() 
    {
        return deptName;
    }
    public void setHonorName(String honorName) 
    {
        this.honorName = honorName;
    }

    public String getHonorName() 
    {
        return honorName;
    }
    public void setRelease(String release) 
    {
        this.release = release;
    }

    public String getRelease() 
    {
        return release;
    }
    public void setLevel(String level) 
    {
        this.level = level;
    }

    public String getLevel() 
    {
        return level;
    }
    public void setHonorTime(Date honorTime) 
    {
        this.honorTime = honorTime;
    }

    public Date getHonorTime() 
    {
        return honorTime;
    }
    public void setUseStatus(String useStatus) 
    {
        this.useStatus = useStatus;
    }

    public String getUseStatus() 
    {
        return useStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("empName", getEmpName())
            .append("deptName", getDeptName())
            .append("honorName", getHonorName())
            .append("release", getRelease())
            .append("level", getLevel())
            .append("honorTime", getHonorTime())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
