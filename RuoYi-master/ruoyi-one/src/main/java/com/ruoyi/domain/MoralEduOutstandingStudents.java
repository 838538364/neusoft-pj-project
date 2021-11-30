package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(对象 moral_edu_outstanding_students
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class MoralEduOutstandingStudents extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 学院名称 */
    @Excel(name = "学院名称")
    private String collegeName;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 性别 */
    @Excel(name = "性别")
    private String sex;

    /** 学历层次 */
    @Excel(name = "学历层次")
    private String educationLevel;

    /** 职务 */
    @Excel(name = "职务")
    private String jobTitle;

    /** 年级专业班级 */
    @Excel(name = "年级专业班级")
    private String gradeProfessionalClass;

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
    public void setCollegeName(String collegeName) 
    {
        this.collegeName = collegeName;
    }

    public String getCollegeName() 
    {
        return collegeName;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setEducationLevel(String educationLevel) 
    {
        this.educationLevel = educationLevel;
    }

    public String getEducationLevel() 
    {
        return educationLevel;
    }
    public void setJobTitle(String jobTitle) 
    {
        this.jobTitle = jobTitle;
    }

    public String getJobTitle() 
    {
        return jobTitle;
    }
    public void setGradeProfessionalClass(String gradeProfessionalClass) 
    {
        this.gradeProfessionalClass = gradeProfessionalClass;
    }

    public String getGradeProfessionalClass() 
    {
        return gradeProfessionalClass;
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
            .append("collegeName", getCollegeName())
            .append("name", getName())
            .append("sex", getSex())
            .append("educationLevel", getEducationLevel())
            .append("jobTitle", getJobTitle())
            .append("gradeProfessionalClass", getGradeProfessionalClass())
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
