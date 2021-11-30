package com.ruoyi.system.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 7.1.1-2“五四彰”、“七一彰”对象 moral_edu_commend
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class MoralEduCommend extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 日期 */
    @Excel(name = "日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date time;

    /** 姓名 */
    @Excel(name = "姓名")
    private String stuName;

    /** 性别 */
    @Excel(name = "性别")
    private String sex;

    /** 专业名称 */
    @Excel(name = "专业名称")
    private String marjor;

    /** 培养层次 */
    @Excel(name = "培养层次")
    private String eduLevel;

    /** 五四表彰 */
    @Excel(name = "五四表彰")
    private String fiveFour;

    /** 七一表彰 */
    @Excel(name = "七一表彰")
    private String sevenOne;

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
    public void setTime(Date time) 
    {
        this.time = time;
    }

    public Date getTime() 
    {
        return time;
    }
    public void setStuName(String stuName) 
    {
        this.stuName = stuName;
    }

    public String getStuName() 
    {
        return stuName;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setMarjor(String marjor) 
    {
        this.marjor = marjor;
    }

    public String getMarjor() 
    {
        return marjor;
    }
    public void setEduLevel(String eduLevel) 
    {
        this.eduLevel = eduLevel;
    }

    public String getEduLevel() 
    {
        return eduLevel;
    }
    public void setFiveFour(String fiveFour) 
    {
        this.fiveFour = fiveFour;
    }

    public String getFiveFour() 
    {
        return fiveFour;
    }
    public void setSevenOne(String sevenOne) 
    {
        this.sevenOne = sevenOne;
    }

    public String getSevenOne() 
    {
        return sevenOne;
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
            .append("time", getTime())
            .append("stuName", getStuName())
            .append("sex", getSex())
            .append("marjor", getMarjor())
            .append("eduLevel", getEduLevel())
            .append("fiveFour", getFiveFour())
            .append("sevenOne", getSevenOne())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
