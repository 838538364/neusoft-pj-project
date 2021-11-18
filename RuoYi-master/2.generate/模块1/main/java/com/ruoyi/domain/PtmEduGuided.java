package com.ruoyi.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 各学院聘请企业人员指导实习情况对象 ptm_edu_guided
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
public class PtmEduGuided extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 指导教师 */
    @Excel(name = "指导教师")
    private String empName;

    /** 学历 */
    @Excel(name = "学历")
    private String highestEducation;

    /** 专业 */
    @Excel(name = "专业")
    private String major;

    /** 工作单位 */
    @Excel(name = "工作单位")
    private String workStation;

    /** 指导时间 */
    @Excel(name = "指导时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date teachTime;

    /** 班级 */
    @Excel(name = "班级")
    private String cla;

    /** 学号 */
    @Excel(name = "学号")
    private String stuId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String stuName;

    /** 序号 */
    private Long id;

    public void setEmpName(String empName) 
    {
        this.empName = empName;
    }

    public String getEmpName() 
    {
        return empName;
    }
    public void setHighestEducation(String highestEducation) 
    {
        this.highestEducation = highestEducation;
    }

    public String getHighestEducation() 
    {
        return highestEducation;
    }
    public void setMajor(String major) 
    {
        this.major = major;
    }

    public String getMajor() 
    {
        return major;
    }
    public void setWorkStation(String workStation) 
    {
        this.workStation = workStation;
    }

    public String getWorkStation() 
    {
        return workStation;
    }
    public void setTeachTime(Date teachTime) 
    {
        this.teachTime = teachTime;
    }

    public Date getTeachTime() 
    {
        return teachTime;
    }
    public void setCla(String cla) 
    {
        this.cla = cla;
    }

    public String getCla() 
    {
        return cla;
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
    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("empName", getEmpName())
            .append("highestEducation", getHighestEducation())
            .append("major", getMajor())
            .append("workStation", getWorkStation())
            .append("teachTime", getTeachTime())
            .append("cla", getCla())
            .append("stuId", getStuId())
            .append("stuName", getStuName())
            .append("id", getId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
