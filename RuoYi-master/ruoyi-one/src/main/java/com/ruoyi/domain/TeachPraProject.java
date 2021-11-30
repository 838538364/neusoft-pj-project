package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 4.3.2-3实践学期项目汇总对象 teach_pra_project
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class TeachPraProject extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 开课学院 */
    @Excel(name = "开课学院")
    private String college;

    /** 项目编号 */
    @Excel(name = "项目编号")
    private String projectId;

    /** 项目名称 */
    @Excel(name = "项目名称")
    private String projectName;

    /** 指导老师 */
    @Excel(name = "指导老师")
    private String empName;

    /** 面向年级 */
    @Excel(name = "面向年级")
    private String grade;

    /** 面向专业 */
    @Excel(name = "面向专业")
    private String major;

    /** 所在单位 */
    @Excel(name = "所在单位")
    private String stuNum;

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
    public void setCollege(String college) 
    {
        this.college = college;
    }

    public String getCollege() 
    {
        return college;
    }
    public void setProjectId(String projectId) 
    {
        this.projectId = projectId;
    }

    public String getProjectId() 
    {
        return projectId;
    }
    public void setProjectName(String projectName) 
    {
        this.projectName = projectName;
    }

    public String getProjectName() 
    {
        return projectName;
    }
    public void setEmpName(String empName) 
    {
        this.empName = empName;
    }

    public String getEmpName() 
    {
        return empName;
    }
    public void setGrade(String grade) 
    {
        this.grade = grade;
    }

    public String getGrade() 
    {
        return grade;
    }
    public void setMajor(String major) 
    {
        this.major = major;
    }

    public String getMajor() 
    {
        return major;
    }
    public void setStuNum(String stuNum) 
    {
        this.stuNum = stuNum;
    }

    public String getStuNum() 
    {
        return stuNum;
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
            .append("college", getCollege())
            .append("projectId", getProjectId())
            .append("projectName", getProjectName())
            .append("empName", getEmpName())
            .append("grade", getGrade())
            .append("major", getMajor())
            .append("stuNum", getStuNum())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
