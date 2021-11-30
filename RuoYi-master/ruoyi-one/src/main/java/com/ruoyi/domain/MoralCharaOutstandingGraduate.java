package com.ruoyi.system.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例对象 moral_chara_outstanding_graduate
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class MoralCharaOutstandingGraduate extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String stuName;

    /** 学号 */
    @Excel(name = "学号")
    private String stuId;

    /** 性别 */
    @Excel(name = "性别")
    private String sex;

    /** 政治面貌 */
    @Excel(name = "政治面貌")
    private String political;

    /** 二级学院 */
    @Excel(name = "二级学院")
    private String collegeName;

    /** 专业 */
    @Excel(name = "专业")
    private String major;

    /** 班别 */
    @Excel(name = "班别")
    private String className;

    /** 学制 */
    @Excel(name = "学制")
    private String year;

    /** 辅导员 */
    @Excel(name = "辅导员")
    private String teacherName;

    /** 荣誉称号 */
    @Excel(name = "荣誉称号")
    private String honoraryName;

    /** 表彰单位 */
    @Excel(name = "表彰单位")
    private String commendUnit;

    /** 表彰时间 */
    @Excel(name = "表彰时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date commendTime;

    /** 是否进行专题报道 */
    @Excel(name = "是否进行专题报道")
    private String isReport;

    /** 其他 */
    @Excel(name = "其他")
    private String other;

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
    public void setStuName(String stuName) 
    {
        this.stuName = stuName;
    }

    public String getStuName() 
    {
        return stuName;
    }
    public void setStuId(String stuId) 
    {
        this.stuId = stuId;
    }

    public String getStuId() 
    {
        return stuId;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setPolitical(String political) 
    {
        this.political = political;
    }

    public String getPolitical() 
    {
        return political;
    }
    public void setCollegeName(String collegeName) 
    {
        this.collegeName = collegeName;
    }

    public String getCollegeName() 
    {
        return collegeName;
    }
    public void setMajor(String major) 
    {
        this.major = major;
    }

    public String getMajor() 
    {
        return major;
    }
    public void setClassName(String className) 
    {
        this.className = className;
    }

    public String getClassName() 
    {
        return className;
    }
    public void setYear(String year) 
    {
        this.year = year;
    }

    public String getYear() 
    {
        return year;
    }
    public void setTeacherName(String teacherName) 
    {
        this.teacherName = teacherName;
    }

    public String getTeacherName() 
    {
        return teacherName;
    }
    public void setHonoraryName(String honoraryName) 
    {
        this.honoraryName = honoraryName;
    }

    public String getHonoraryName() 
    {
        return honoraryName;
    }
    public void setCommendUnit(String commendUnit) 
    {
        this.commendUnit = commendUnit;
    }

    public String getCommendUnit() 
    {
        return commendUnit;
    }
    public void setCommendTime(Date commendTime) 
    {
        this.commendTime = commendTime;
    }

    public Date getCommendTime() 
    {
        return commendTime;
    }
    public void setIsReport(String isReport) 
    {
        this.isReport = isReport;
    }

    public String getIsReport() 
    {
        return isReport;
    }
    public void setOther(String other) 
    {
        this.other = other;
    }

    public String getOther() 
    {
        return other;
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
            .append("stuName", getStuName())
            .append("stuId", getStuId())
            .append("sex", getSex())
            .append("political", getPolitical())
            .append("collegeName", getCollegeName())
            .append("major", getMajor())
            .append("className", getClassName())
            .append("year", getYear())
            .append("teacherName", getTeacherName())
            .append("honoraryName", getHonoraryName())
            .append("commendUnit", getCommendUnit())
            .append("commendTime", getCommendTime())
            .append("isReport", getIsReport())
            .append("other", getOther())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
