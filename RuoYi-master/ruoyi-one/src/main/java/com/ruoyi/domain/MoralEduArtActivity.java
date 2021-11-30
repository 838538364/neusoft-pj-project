package com.ruoyi.system.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 7.1.1-3高雅艺术活动情况对象 moral_edu_art_activity
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class MoralEduArtActivity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 日期 */
    @Excel(name = "日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date time;

    /** 活动主题 */
    @Excel(name = "活动主题")
    private String actTitle;

    /** 活动内容 */
    @Excel(name = "活动内容")
    private String actContent;

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
    public void setActTitle(String actTitle) 
    {
        this.actTitle = actTitle;
    }

    public String getActTitle() 
    {
        return actTitle;
    }
    public void setActContent(String actContent) 
    {
        this.actContent = actContent;
    }

    public String getActContent() 
    {
        return actContent;
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
            .append("actTitle", getActTitle())
            .append("actContent", getActContent())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
