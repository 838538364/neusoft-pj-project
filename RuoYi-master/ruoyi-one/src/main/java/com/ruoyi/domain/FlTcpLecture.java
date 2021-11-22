package com.ruoyi.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 1.2.3-4 学术讲座(fl_tcp_lecture)对象 fl_tcp_lecture
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
public class FlTcpLecture extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 讲座主题 */
    @Excel(name = "讲座主题")
    private String lectureTitle;

    /** 讲座时间 */
    @Excel(name = "讲座时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lectureTime;

    /** 学号 */
    @Excel(name = "学号")
    private String stuId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String stuName;

    /** 职工姓名 */
    @Excel(name = "职工姓名")
    private String empName;

    /** 职称 */
    @Excel(name = "职称")
    private String title;

    private String useStatus;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setLectureTitle(String lectureTitle) 
    {
        this.lectureTitle = lectureTitle;
    }

    public String getLectureTitle() 
    {
        return lectureTitle;
    }
    public void setLectureTime(Date lectureTime) 
    {
        this.lectureTime = lectureTime;
    }

    public Date getLectureTime() 
    {
        return lectureTime;
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
    public void setEmpName(String empName) 
    {
        this.empName = empName;
    }

    public String getEmpName() 
    {
        return empName;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
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
            .append("lectureTitle", getLectureTitle())
            .append("lectureTime", getLectureTime())
            .append("stuId", getStuId())
            .append("stuName", getStuName())
            .append("empName", getEmpName())
            .append("title", getTitle())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
