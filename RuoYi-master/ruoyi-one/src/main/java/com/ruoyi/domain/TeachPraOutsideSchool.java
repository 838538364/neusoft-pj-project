package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 4.3.2-10学生校外实习情况对象 teach_pra_outside_school
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class TeachPraOutsideSchool extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 专业 */
    @Excel(name = "专业")
    private String major;

    /** 层次 */
    @Excel(name = "层次")
    private String eduLevel;

    /** 班级 */
    @Excel(name = "班级")
    private String cla;

    /** 学号 */
    @Excel(name = "学号")
    private String stuId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String stuName;

    /** 实习单位 */
    @Excel(name = "实习单位")
    private String practiceAddress;

    /** 实习指导老师 */
    @Excel(name = "实习指导老师")
    private String practiceName;

    /** 实习时间 */
    @Excel(name = "实习时间")
    private String practiceTime;

    /** 实习成绩 */
    @Excel(name = "实习成绩")
    private String practiceScore;

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
    public void setPracticeAddress(String practiceAddress) 
    {
        this.practiceAddress = practiceAddress;
    }

    public String getPracticeAddress() 
    {
        return practiceAddress;
    }
    public void setPracticeName(String practiceName) 
    {
        this.practiceName = practiceName;
    }

    public String getPracticeName() 
    {
        return practiceName;
    }
    public void setPracticeTime(String practiceTime) 
    {
        this.practiceTime = practiceTime;
    }

    public String getPracticeTime() 
    {
        return practiceTime;
    }
    public void setPracticeScore(String practiceScore) 
    {
        this.practiceScore = practiceScore;
    }

    public String getPracticeScore() 
    {
        return practiceScore;
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
            .append("major", getMajor())
            .append("eduLevel", getEduLevel())
            .append("cla", getCla())
            .append("stuId", getStuId())
            .append("stuName", getStuName())
            .append("practiceAddress", getPracticeAddress())
            .append("practiceName", getPracticeName())
            .append("practiceTime", getPracticeTime())
            .append("practiceScore", getPracticeScore())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
