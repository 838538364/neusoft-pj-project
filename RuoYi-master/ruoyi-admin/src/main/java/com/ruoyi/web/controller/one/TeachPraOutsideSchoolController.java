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
import com.ruoyi.system.domain.TeachPraOutsideSchool;
import com.ruoyi.system.service.ITeachPraOutsideSchoolService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 4.3.2-10学生校外实习情况Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/school")
public class TeachPraOutsideSchoolController extends BaseController
{
    private String prefix = "system/school";

    @Autowired
    private ITeachPraOutsideSchoolService teachPraOutsideSchoolService;

    @RequiresPermissions("system:school:view")
    @GetMapping()
    public String school()
    {
        return prefix + "/school";
    }

    /**
     * 查询4.3.2-10学生校外实习情况列表
     */
    @RequiresPermissions("system:school:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TeachPraOutsideSchool teachPraOutsideSchool)
    {
        startPage();
        List<TeachPraOutsideSchool> list = teachPraOutsideSchoolService.selectTeachPraOutsideSchoolList(teachPraOutsideSchool);
        return getDataTable(list);
    }

    /**
     * 导出4.3.2-10学生校外实习情况列表
     */
    @RequiresPermissions("system:school:export")
    @Log(title = "4.3.2-10学生校外实习情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TeachPraOutsideSchool teachPraOutsideSchool)
    {
        List<TeachPraOutsideSchool> list = teachPraOutsideSchoolService.selectTeachPraOutsideSchoolList(teachPraOutsideSchool);
        ExcelUtil<TeachPraOutsideSchool> util = new ExcelUtil<TeachPraOutsideSchool>(TeachPraOutsideSchool.class);
        return util.exportExcel(list, "school");
    }

    /**
     * 新增4.3.2-10学生校外实习情况
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存4.3.2-10学生校外实习情况
     */
    @RequiresPermissions("system:school:add")
    @Log(title = "4.3.2-10学生校外实习情况", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TeachPraOutsideSchool teachPraOutsideSchool)
    {
        return toAjax(teachPraOutsideSchoolService.insertTeachPraOutsideSchool(teachPraOutsideSchool));
    }

    /**
     * 修改4.3.2-10学生校外实习情况
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TeachPraOutsideSchool teachPraOutsideSchool = teachPraOutsideSchoolService.selectTeachPraOutsideSchoolById(id);
        mmap.put("teachPraOutsideSchool", teachPraOutsideSchool);
        return prefix + "/edit";
    }

    /**
     * 修改保存4.3.2-10学生校外实习情况
     */
    @RequiresPermissions("system:school:edit")
    @Log(title = "4.3.2-10学生校外实习情况", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TeachPraOutsideSchool teachPraOutsideSchool)
    {
        return toAjax(teachPraOutsideSchoolService.updateTeachPraOutsideSchool(teachPraOutsideSchool));
    }

    /**
     * 删除4.3.2-10学生校外实习情况
     */
    @RequiresPermissions("system:school:remove")
    @Log(title = "4.3.2-10学生校外实习情况", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(teachPraOutsideSchoolService.deleteTeachPraOutsideSchoolByIds(ids));
    }
}
