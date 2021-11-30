package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 7.1.2-3广东东软学院各专业优秀班集体统计对象 moral_edu_outstanding_cadres
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class MoralEduOutstandingCadres extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 二级学院 */
    @Excel(name = "二级学院")
    private String secondaryCollege;

    /** 年级专业班级 */
    @Excel(name = "年级专业班级")
    private String gradeProfessionalClass;

    /** 成员数 */
    @Excel(name = "成员数")
    private String members;

    /** 班长姓名 */
    @Excel(name = "班长姓名")
    private String monitorName;

    /** 辅导员姓名 */
    @Excel(name = "辅导员姓名")
    private String counselorName;

    /** 受处分人数 */
    @Excel(name = "受处分人数")
    private String peoplePunished;

    /** 获奖人数 */
    @Excel(name = "获奖人数")
    private String winners;

    /** 是否推荐为学风标兵班 */
    @Excel(name = "是否推荐为学风标兵班")
    private String isModelClass;

    /** 荣誉称号 */
    @Excel(name = "荣誉称号")
    private String honoraryTitle;

    /** 表彰时间 */
    @Excel(name = "表彰时间")
    private String recognitionTime;

    /** 表彰单位 */
    @Excel(name = "表彰单位")
    private String recognitionUnit;

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
    public void setSecondaryCollege(String secondaryCollege) 
    {
        this.secondaryCollege = secondaryCollege;
    }

    public String getSecondaryCollege() 
    {
        return secondaryCollege;
    }
    public void setGradeProfessionalClass(String gradeProfessionalClass) 
    {
        this.gradeProfessionalClass = gradeProfessionalClass;
    }

    public String getGradeProfessionalClass() 
    {
        return gradeProfessionalClass;
    }
    public void setMembers(String members) 
    {
        this.members = members;
    }

    public String getMembers() 
    {
        return members;
    }
    public void setMonitorName(String monitorName) 
    {
        this.monitorName = monitorName;
    }

    public String getMonitorName() 
    {
        return monitorName;
    }
    public void setCounselorName(String counselorName) 
    {
        this.counselorName = counselorName;
    }

    public String getCounselorName() 
    {
        return counselorName;
    }
    public void setPeoplePunished(String peoplePunished) 
    {
        this.peoplePunished = peoplePunished;
    }

    public String getPeoplePunished() 
    {
        return peoplePunished;
    }
    public void setWinners(String winners) 
    {
        this.winners = winners;
    }

    public String getWinners() 
    {
        return winners;
    }
    public void setIsModelClass(String isModelClass) 
    {
        this.isModelClass = isModelClass;
    }

    public String getIsModelClass() 
    {
        return isModelClass;
    }
    public void setHonoraryTitle(String honoraryTitle) 
    {
        this.honoraryTitle = honoraryTitle;
    }

    public String getHonoraryTitle() 
    {
        return honoraryTitle;
    }
    public void setRecognitionTime(String recognitionTime) 
    {
        this.recognitionTime = recognitionTime;
    }

    public String getRecognitionTime() 
    {
        return recognitionTime;
    }
    public void setRecognitionUnit(String recognitionUnit) 
    {
        this.recognitionUnit = recognitionUnit;
    }

    public String getRecognitionUnit() 
    {
        return recognitionUnit;
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
            .append("secondaryCollege", getSecondaryCollege())
            .append("gradeProfessionalClass", getGradeProfessionalClass())
            .append("members", getMembers())
            .append("monitorName", getMonitorName())
            .append("counselorName", getCounselorName())
            .append("peoplePunished", getPeoplePunished())
            .append("winners", getWinners())
            .append("isModelClass", getIsModelClass())
            .append("honoraryTitle", getHonoraryTitle())
            .append("recognitionTime", getRecognitionTime())
            .append("recognitionUnit", getRecognitionUnit())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
