package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 4.2.3-4实践学期学生选题汇总对象 teach_pra_select
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class TeachPraSelect extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 开课部门 */
    @Excel(name = "开课部门")
    private String deptName;

    /** 学号 */
    @Excel(name = "学号")
    private String stuId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String stuName;

    /** 年级 */
    @Excel(name = "年级")
    private String grade;

    /** 班级 */
    @Excel(name = "班级")
    private String cla;

    /** 主修专业 */
    @Excel(name = "主修专业")
    private String major;

    /** 培养层次 */
    @Excel(name = "培养层次")
    private String eduLevel;

    /** 项目编号 */
    @Excel(name = "项目编号")
    private String projectId;

    /** 项目名称 */
    @Excel(name = "项目名称")
    private String projectName;

    /** 指导老师 */
    @Excel(name = "指导老师")
    private String empName;

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
    public void setDeptName(String deptName) 
    {
        this.deptName = deptName;
    }

    public String getDeptName() 
    {
        return deptName;
    }
    public void setStuId(String stuId) 
    {
        this.stuId = stuId;
    }

    public String getStuId() 
    {
        return stuId;
    }
    public void setStuName(String stuName) 
    {
        this.stuName = stuName;
    }

    public String getStuName() 
    {
        return stuName;
    }
    public void setGrade(String grade) 
    {
        this.grade = grade;
    }

    public String getGrade() 
    {
        return grade;
    }
    public void setCla(String cla) 
    {
        this.cla = cla;
    }

    public String getCla() 
    {
        return cla;
    }
    public void setMajor(String major) 
    {
        this.major = major;
    }

    public String getMajor() 
    {
        return major;
    }
    public void setEduLevel(String eduLevel) 
    {
        this.eduLevel = eduLevel;
    }

    public String getEduLevel() 
    {
        return eduLevel;
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
            .append("deptName", getDeptName())
            .append("stuId", getStuId())
            .append("stuName", getStuName())
            .append("grade", getGrade())
            .append("cla", getCla())
            .append("major", getMajor())
            .append("eduLevel", getEduLevel())
            .append("projectId", getProjectId())
            .append("projectName", getProjectName())
            .append("empName", getEmpName())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
