package com.ruoyi.system.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 5.2.1-2 学院制定的教学工作相关实施细则一览对象 qual_system_standards
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class QualSystemStandards extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 类别 */
    @Excel(name = "类别")
    private String type;

    /** 文件名称 */
    @Excel(name = "文件名称")
    private String fileName;

    /** 版本 */
    @Excel(name = "版本")
    private String version;

    /** 发布日期 */
    @Excel(name = "发布日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date releaseTime;

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
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setFileName(String fileName) 
    {
        this.fileName = fileName;
    }

    public String getFileName() 
    {
        return fileName;
    }
    public void setVersion(String version) 
    {
        this.version = version;
    }

    public String getVersion() 
    {
        return version;
    }
    public void setReleaseTime(Date releaseTime) 
    {
        this.releaseTime = releaseTime;
    }

    public Date getReleaseTime() 
    {
        return releaseTime;
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
            .append("type", getType())
            .append("fileName", getFileName())
            .append("version", getVersion())
            .append("releaseTime", getReleaseTime())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
