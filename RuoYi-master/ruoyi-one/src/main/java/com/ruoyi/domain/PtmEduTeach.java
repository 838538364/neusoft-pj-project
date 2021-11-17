package com.ruoyi.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 各学院聘请企业人员授课情况对象 ptm_edu_teach
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
public class PtmEduTeach extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 所属学院 */
    @Excel(name = "所属学院")
    private String college;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 职称 */
    @Excel(name = "职称")
    private String title;

    /** 任职时间 */
    @Excel(name = "任职时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date workTime;

    /** 学年学期 */
    @Excel(name = "学年学期")
    private String year;

    /** 课程代码 */
    @Excel(name = "课程代码")
    private String courseCode;

    /** 课程名称 */
    @Excel(name = "课程名称")
    private String courseName;

    /** 授课对象 */
    @Excel(name = "授课对象")
    private String teachObject;

    /** 授课人数 */
    @Excel(name = "授课人数")
    private String teachNumber;

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
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setWorkTime(Date workTime) 
    {
        this.workTime = workTime;
    }

    public Date getWorkTime() 
    {
        return workTime;
    }
    public void setYear(String year) 
    {
        this.year = year;
    }

    public String getYear() 
    {
        return year;
    }
    public void setCourseCode(String courseCode) 
    {
        this.courseCode = courseCode;
    }

    public String getCourseCode() 
    {
        return courseCode;
    }
    public void setCourseName(String courseName) 
    {
        this.courseName = courseName;
    }

    public String getCourseName() 
    {
        return courseName;
    }
    public void setTeachObject(String teachObject) 
    {
        this.teachObject = teachObject;
    }

    public String getTeachObject() 
    {
        return teachObject;
    }
    public void setTeachNumber(String teachNumber) 
    {
        this.teachNumber = teachNumber;
    }

    public String getTeachNumber() 
    {
        return teachNumber;
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
            .append("name", getName())
            .append("title", getTitle())
            .append("workTime", getWorkTime())
            .append("year", getYear())
            .append("courseCode", getCourseCode())
            .append("courseName", getCourseName())
            .append("teachObject", getTeachObject())
            .append("teachNumber", getTeachNumber())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
