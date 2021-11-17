package com.ruoyi.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 各专业校外实践教学情况统计对象 ptm_edu_pt_statistics
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
public class PtmEduPtStatistics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 实习单位名称 */
    @Excel(name = "实习单位名称")
    private String company;

    /** 所在省市 */
    @Excel(name = "所在省市")
    private String province;

    /** 实习负责人 */
    @Excel(name = "实习负责人")
    private String manager;

    /** 实习名称 */
    @Excel(name = "实习名称")
    private String ipName;

    /** 实践活动专业名称 */
    @Excel(name = "实践活动专业名称")
    private String proName;

    /** 实习实践时间 */
    @Excel(name = "实习实践时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date courseHours;

    /** 指导教师 */
    @Excel(name = "指导教师")
    private String empName;

    /** 学生人数 */
    @Excel(name = "学生人数")
    private String numberStudent;

    /** 实习实践方式 */
    @Excel(name = "实习实践方式")
    private String practiceType;

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
    public void setCompany(String company) 
    {
        this.company = company;
    }

    public String getCompany() 
    {
        return company;
    }
    public void setProvince(String province) 
    {
        this.province = province;
    }

    public String getProvince() 
    {
        return province;
    }
    public void setManager(String manager) 
    {
        this.manager = manager;
    }

    public String getManager() 
    {
        return manager;
    }
    public void setIpName(String ipName) 
    {
        this.ipName = ipName;
    }

    public String getIpName() 
    {
        return ipName;
    }
    public void setProName(String proName) 
    {
        this.proName = proName;
    }

    public String getProName() 
    {
        return proName;
    }
    public void setCourseHours(Date courseHours) 
    {
        this.courseHours = courseHours;
    }

    public Date getCourseHours() 
    {
        return courseHours;
    }
    public void setEmpName(String empName) 
    {
        this.empName = empName;
    }

    public String getEmpName() 
    {
        return empName;
    }
    public void setNumberStudent(String numberStudent) 
    {
        this.numberStudent = numberStudent;
    }

    public String getNumberStudent() 
    {
        return numberStudent;
    }
    public void setPracticeType(String practiceType) 
    {
        this.practiceType = practiceType;
    }

    public String getPracticeType() 
    {
        return practiceType;
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
            .append("company", getCompany())
            .append("province", getProvince())
            .append("manager", getManager())
            .append("ipName", getIpName())
            .append("proName", getProName())
            .append("courseHours", getCourseHours())
            .append("empName", getEmpName())
            .append("numberStudent", getNumberStudent())
            .append("practiceType", getPracticeType())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
