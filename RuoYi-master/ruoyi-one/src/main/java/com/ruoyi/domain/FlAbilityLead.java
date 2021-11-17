package com.ruoyi.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 1.2.2-1学校领导一览对象 fl_ability_lead
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
public class FlAbilityLead extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 工号 */
    @Excel(name = "工号")
    private String empId;

    /** 职工姓名 */
    @Excel(name = "职工姓名")
    private String empName;

    /** 性别 */
    @Excel(name = "性别")
    private String sex;

    /** 职务 */
    @Excel(name = "职务")
    private String post;

    /** 任职时间 */
    @Excel(name = "任职时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date wordTime;

    /** 最高学历 */
    @Excel(name = "最高学历")
    private String highestEducation;

    /** 职称 */
    @Excel(name = "职称")
    private String title;

    /** 个人简历 */
    @Excel(name = "个人简历")
    private String resume;

    /** 是否使用 */
    private String useStatus;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setEmpId(String empId) 
    {
        this.empId = empId;
    }

    public String getEmpId() 
    {
        return empId;
    }
    public void setEmpName(String empName) 
    {
        this.empName = empName;
    }

    public String getEmpName() 
    {
        return empName;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setPost(String post) 
    {
        this.post = post;
    }

    public String getPost() 
    {
        return post;
    }
    public void setWordTime(Date wordTime) 
    {
        this.wordTime = wordTime;
    }

    public Date getWordTime() 
    {
        return wordTime;
    }
    public void setHighestEducation(String highestEducation) 
    {
        this.highestEducation = highestEducation;
    }

    public String getHighestEducation() 
    {
        return highestEducation;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setResume(String resume) 
    {
        this.resume = resume;
    }

    public String getResume() 
    {
        return resume;
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
            .append("empId", getEmpId())
            .append("empName", getEmpName())
            .append("sex", getSex())
            .append("post", getPost())
            .append("wordTime", getWordTime())
            .append("highestEducation", getHighestEducation())
            .append("title", getTitle())
            .append("resume", getResume())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
