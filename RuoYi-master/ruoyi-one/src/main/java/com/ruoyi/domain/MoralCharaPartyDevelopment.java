package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 7.1.2-1 各专业党员发展计划、发展情况汇总对象 moral_chara_party_development
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class MoralCharaPartyDevelopment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 所在支部 */
    @Excel(name = "所在支部")
    private String collegeName;

    /** 已提交入党申请书数量 */
    @Excel(name = "已提交入党申请书数量")
    private String submitNumber;

    /** 现有入党积极分子存量 */
    @Excel(name = "现有入党积极分子存量")
    private String activistNumber;

    /** 拟发展时间（年/月） */
    @Excel(name = "拟发展时间", readConverterExp = "年=/月")
    private String developmentTime;

    /** 拟发展计划数 */
    @Excel(name = "拟发展计划数")
    private String developmentNumber;

    /** 现有党员数（含预备） */
    @Excel(name = "现有党员数", readConverterExp = "含=预备")
    private String partyNumber;

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
    public void setSubmitNumber(String submitNumber) 
    {
        this.submitNumber = submitNumber;
    }

    public String getSubmitNumber() 
    {
        return submitNumber;
    }
    public void setActivistNumber(String activistNumber) 
    {
        this.activistNumber = activistNumber;
    }

    public String getActivistNumber() 
    {
        return activistNumber;
    }
    public void setDevelopmentTime(String developmentTime) 
    {
        this.developmentTime = developmentTime;
    }

    public String getDevelopmentTime() 
    {
        return developmentTime;
    }
    public void setDevelopmentNumber(String developmentNumber) 
    {
        this.developmentNumber = developmentNumber;
    }

    public String getDevelopmentNumber() 
    {
        return developmentNumber;
    }
    public void setPartyNumber(String partyNumber) 
    {
        this.partyNumber = partyNumber;
    }

    public String getPartyNumber() 
    {
        return partyNumber;
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
            .append("submitNumber", getSubmitNumber())
            .append("activistNumber", getActivistNumber())
            .append("developmentTime", getDevelopmentTime())
            .append("developmentNumber", getDevelopmentNumber())
            .append("partyNumber", getPartyNumber())
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
