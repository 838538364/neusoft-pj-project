package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 *  7.1.1-1近三年个专业思想教育活动统计对象 moral_edu_activities
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class MoralEduActivities extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 日期 */
    @Excel(name = "日期")
    private String activityTime;

    /** 主题 */
    @Excel(name = "主题")
    private String activityTitle;

    /** 活动内容 */
    @Excel(name = "活动内容")
    private String activeContent;

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
    public void setActivityTime(String activityTime) 
    {
        this.activityTime = activityTime;
    }

    public String getActivityTime() 
    {
        return activityTime;
    }
    public void setActivityTitle(String activityTitle) 
    {
        this.activityTitle = activityTitle;
    }

    public String getActivityTitle() 
    {
        return activityTitle;
    }
    public void setActiveContent(String activeContent) 
    {
        this.activeContent = activeContent;
    }

    public String getActiveContent() 
    {
        return activeContent;
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
            .append("activityTime", getActivityTime())
            .append("activityTitle", getActivityTitle())
            .append("activeContent", getActiveContent())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
