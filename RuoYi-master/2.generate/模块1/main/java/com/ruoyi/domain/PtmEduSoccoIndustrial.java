package com.ruoyi.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 产业学院共建情况统计览对象 ptm_edu_socco_industrial
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
public class PtmEduSoccoIndustrial extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 学院名称 */
    @Excel(name = "学院名称")
    private String collegeName;

    /** 共建单位及行业类 */
    @Excel(name = "共建单位及行业类")
    private String unitIndustry;

    /** 负责人 */
    @Excel(name = "负责人")
    private String manager;

    /** 组建时间 */
    @Excel(name = "组建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date estTime;

    /** 合作年限 */
    @Excel(name = "合作年限")
    private String cooperationYear;

    /** 人才培养 */
    @Excel(name = "人才培养")
    private String personnelTraining;

    /** 师资队伍建设 */
    @Excel(name = "师资队伍建设")
    private String constructionTeacher;

    /** 教材开发 */
    @Excel(name = "教材开发")
    private String textbookDev;

    /** 实验室投入 */
    @Excel(name = "实验室投入")
    private String laboratory;

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
    public void setCollegeName(String collegeName) 
    {
        this.collegeName = collegeName;
    }

    public String getCollegeName() 
    {
        return collegeName;
    }
    public void setUnitIndustry(String unitIndustry) 
    {
        this.unitIndustry = unitIndustry;
    }

    public String getUnitIndustry() 
    {
        return unitIndustry;
    }
    public void setManager(String manager) 
    {
        this.manager = manager;
    }

    public String getManager() 
    {
        return manager;
    }
    public void setEstTime(Date estTime) 
    {
        this.estTime = estTime;
    }

    public Date getEstTime() 
    {
        return estTime;
    }
    public void setCooperationYear(String cooperationYear) 
    {
        this.cooperationYear = cooperationYear;
    }

    public String getCooperationYear() 
    {
        return cooperationYear;
    }
    public void setPersonnelTraining(String personnelTraining) 
    {
        this.personnelTraining = personnelTraining;
    }

    public String getPersonnelTraining() 
    {
        return personnelTraining;
    }
    public void setConstructionTeacher(String constructionTeacher) 
    {
        this.constructionTeacher = constructionTeacher;
    }

    public String getConstructionTeacher() 
    {
        return constructionTeacher;
    }
    public void setTextbookDev(String textbookDev) 
    {
        this.textbookDev = textbookDev;
    }

    public String getTextbookDev() 
    {
        return textbookDev;
    }
    public void setLaboratory(String laboratory) 
    {
        this.laboratory = laboratory;
    }

    public String getLaboratory() 
    {
        return laboratory;
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
            .append("collegeName", getCollegeName())
            .append("unitIndustry", getUnitIndustry())
            .append("manager", getManager())
            .append("estTime", getEstTime())
            .append("cooperationYear", getCooperationYear())
            .append("personnelTraining", getPersonnelTraining())
            .append("constructionTeacher", getConstructionTeacher())
            .append("textbookDev", getTextbookDev())
            .append("laboratory", getLaboratory())
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
