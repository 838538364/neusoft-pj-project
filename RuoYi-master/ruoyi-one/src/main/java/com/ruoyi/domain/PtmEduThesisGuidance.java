package com.ruoyi.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 各学院聘请企业人员指导毕业论文情况统计对象 ptm_edu_thesis_guidance
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
public class PtmEduThesisGuidance extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 论文(设计)题目 */
    @Excel(name = "论文(设计)题目")
    private String thesisTitle;

    /** 班级 */
    @Excel(name = "班级")
    private String cla;

    /** 学号 */
    @Excel(name = "学号")
    private String stuId;

    /** 作者 */
    @Excel(name = "作者")
    private String stuName;

    /** 专业 */
    @Excel(name = "专业")
    private String major;

    /** 指导老师(企业方) */
    @Excel(name = "指导老师(企业方)", width = 30, dateFormat = "yyyy-MM-dd")
    private Date empName;

    /** 所在单位 */
    @Excel(name = "所在单位")
    private String address;

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
    public void setThesisTitle(String thesisTitle) 
    {
        this.thesisTitle = thesisTitle;
    }

    public String getThesisTitle() 
    {
        return thesisTitle;
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
    public void setMajor(String major) 
    {
        this.major = major;
    }

    public String getMajor() 
    {
        return major;
    }
    public void setEmpName(Date empName) 
    {
        this.empName = empName;
    }

    public Date getEmpName() 
    {
        return empName;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
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
            .append("thesisTitle", getThesisTitle())
            .append("cla", getCla())
            .append("stuId", getStuId())
            .append("stuName", getStuName())
            .append("major", getMajor())
            .append("empName", getEmpName())
            .append("address", getAddress())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
