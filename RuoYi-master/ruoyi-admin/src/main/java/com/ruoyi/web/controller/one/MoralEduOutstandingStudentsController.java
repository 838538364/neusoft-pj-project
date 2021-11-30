package com.ruoyi.system.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.MoralEduOutstandingStudents;
import com.ruoyi.system.service.IMoralEduOutstandingStudentsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 7.1.2-3广东东软学院各专业优秀个人、优秀学生干部统计(Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/students")
public class MoralEduOutstandingStudentsController extends BaseController
{
    private String prefix = "system/students";

    @Autowired
    private IMoralEduOutstandingStudentsService moralEduOutstandingStudentsService;

    @RequiresPermissions("system:students:view")
    @GetMapping()
    public String students()
    {
        return prefix + "/students";
    }

    /**
     * 查询7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(列表
     */
    @RequiresPermissions("system:students:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MoralEduOutstandingStudents moralEduOutstandingStudents)
    {
        startPage();
        List<MoralEduOutstandingStudents> list = moralEduOutstandingStudentsService.selectMoralEduOutstandingStudentsList(moralEduOutstandingStudents);
        return getDataTable(list);
    }

    /**
     * 导出7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(列表
     */
    @RequiresPermissions("system:students:export")
    @Log(title = "7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MoralEduOutstandingStudents moralEduOutstandingStudents)
    {
        List<MoralEduOutstandingStudents> list = moralEduOutstandingStudentsService.selectMoralEduOutstandingStudentsList(moralEduOutstandingStudents);
        ExcelUtil<MoralEduOutstandingStudents> util = new ExcelUtil<MoralEduOutstandingStudents>(MoralEduOutstandingStudents.class);
        return util.exportExcel(list, "students");
    }

    /**
     * 新增7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     */
    @RequiresPermissions("system:students:add")
    @Log(title = "7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MoralEduOutstandingStudents moralEduOutstandingStudents)
    {
        return toAjax(moralEduOutstandingStudentsService.insertMoralEduOutstandingStudents(moralEduOutstandingStudents));
    }

    /**
     * 修改7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MoralEduOutstandingStudents moralEduOutstandingStudents = moralEduOutstandingStudentsService.selectMoralEduOutstandingStudentsById(id);
        mmap.put("moralEduOutstandingStudents", moralEduOutstandingStudents);
        return prefix + "/edit";
    }

    /**
     * 修改保存7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     */
    @RequiresPermissions("system:students:edit")
    @Log(title = "7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MoralEduOutstandingStudents moralEduOutstandingStudents)
    {
        return toAjax(moralEduOutstandingStudentsService.updateMoralEduOutstandingStudents(moralEduOutstandingStudents));
    }

    /**
     * 删除7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(
     */
    @RequiresPermissions("system:students:remove")
    @Log(title = "7.1.2-3-2广东东软学院各专业优秀个人、优秀学生干部统计(", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(moralEduOutstandingStudentsService.deleteMoralEduOutstandingStudentsByIds(ids));
    }
}
