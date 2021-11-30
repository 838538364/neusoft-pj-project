package com.ruoyi.system.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 5.1.1-2 学院教学管理人员信息对象 team_str_information
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public class TeamStrInformation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String empName;

    /** 性别 */
    @Excel(name = "性别")
    private String sex;

    /** 部门 */
    @Excel(name = "部门")
    private String deptId;

    /** 身份证号 */
    @Excel(name = "身份证号")
    private String idcard;

    /** 最高学历 */
    @Excel(name = "最高学历")
    private String highestEducation;

    /** 最高学位 */
    @Excel(name = "最高学位")
    private String highestDegree;

    /** 联系方式 */
    @Excel(name = "联系方式")
    private String tel;

    /** 系部 */
    @Excel(name = "系部")
    private String department;

    /** 职务 */
    @Excel(name = "职务")
    private String post;

    /** 行政级别 */
    @Excel(name = "行政级别")
    private String adminLevel;

    /** 入职时间 */
    @Excel(name = "入职时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date workTime;

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
    public void setEmpName(String empName) 
    {
        this.empName = empName;
    }

    public String getEmpName() 
    {
        return empName;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setDeptId(String deptId) 
    {
        this.deptId = deptId;
    }

    public String getDeptId() 
    {
        return deptId;
    }
    public void setIdcard(String idcard) 
    {
        this.idcard = idcard;
    }

    public String getIdcard() 
    {
        return idcard;
    }
    public void setHighestEducation(String highestEducation) 
    {
        this.highestEducation = highestEducation;
    }

    public String getHighestEducation() 
    {
        return highestEducation;
    }
    public void setHighestDegree(String highestDegree) 
    {
        this.highestDegree = highestDegree;
    }

    public String getHighestDegree() 
    {
        return highestDegree;
    }
    public void setTel(String tel) 
    {
        this.tel = tel;
    }

    public String getTel() 
    {
        return tel;
    }
    public void setDepartment(String department) 
    {
        this.department = department;
    }

    public String getDepartment() 
    {
        return department;
    }
    public void setPost(String post) 
    {
        this.post = post;
    }

    public String getPost() 
    {
        return post;
    }
    public void setAdminLevel(String adminLevel) 
    {
        this.adminLevel = adminLevel;
    }

    public String getAdminLevel() 
    {
        return adminLevel;
    }
    public void setWorkTime(Date workTime) 
    {
        this.workTime = workTime;
    }

    public Date getWorkTime() 
    {
        return workTime;
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
            .append("empName", getEmpName())
            .append("sex", getSex())
            .append("deptId", getDeptId())
            .append("idcard", getIdcard())
            .append("highestEducation", getHighestEducation())
            .append("highestDegree", getHighestDegree())
            .append("tel", getTel())
            .append("department", getDepartment())
            .append("post", getPost())
            .append("adminLevel", getAdminLevel())
            .append("workTime", getWorkTime())
            .append("useStatus", getUseStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
