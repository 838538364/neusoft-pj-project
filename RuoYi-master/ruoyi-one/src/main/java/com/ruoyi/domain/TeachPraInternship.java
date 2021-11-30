package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 4.3.2-11 专业实习基地一览及协议对象 teach_pra_internship
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class TeachPraInternship extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 实习基地名称 */
    @Excel(name = "实习基地名称")
    private String baseName;

    /** 面向专业 */
    @Excel(name = "面向专业")
    private String major;

    /** 基地类型 */
    @Excel(name = "基地类型")
    private String baseType;

    /** 详细地址 */
    @Excel(name = "详细地址")
    private String address;

    /** 基地距学校距离 */
    @Excel(name = "基地距学校距离")
    private String baseDistance;

    /** 合作方联系人 */
    @Excel(name = "合作方联系人")
    private String partner;

    /** 合作方联系人电话 */
    @Excel(name = "合作方联系人电话")
    private String partnerTel;

    /** 协议书起止日期 */
    @Excel(name = "协议书起止日期")
    private String practiceTime;

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
    public void setBaseName(String baseName) 
    {
        this.baseName = baseName;
    }

    public String getBaseName() 
    {
        return baseName;
    }
    public void setMajor(String major) 
    {
        this.major = major;
    }

    public String getMajor() 
    {
        return major;
    }
    public void setBaseType(String baseType) 
    {
        this.baseType = baseType;
    }

    public String getBaseType() 
    {
        return baseType;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setBaseDistance(String baseDistance) 
    {
        this.baseDistance = baseDistance;
    }

    public String getBaseDistance() 
    {
        return baseDistance;
    }
    public void setPartner(String partner) 
    {
        this.partner = partner;
    }

    public String getPartner() 
    {
        return partner;
    }
    public void setPartnerTel(String partnerTel) 
    {
        this.partnerTel = partnerTel;
    }

    public String getPartnerTel() 
    {
        return partnerTel;
    }
    public void setPracticeTime(String practiceTime) 
    {
        this.practiceTime = practiceTime;
    }

    public String getPracticeTime() 
    {
        return practiceTime;
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
            .append("baseName", getBaseName())
            .append("major", getMajor())
            .append("baseType", getBaseType())
            .append("address", getAddress())
            .append("baseDistance", getBaseDistance())
            .append("partner", getPartner())
            .append("partnerTel", getPartnerTel())
            .append("practiceTime", getPracticeTime())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
