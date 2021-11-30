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
import com.ruoyi.system.domain.TeachPraProject;
import com.ruoyi.system.service.ITeachPraProjectService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 4.3.2-3实践学期项目汇总Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/project")
public class TeachPraProjectController extends BaseController
{
    private String prefix = "system/project";

    @Autowired
    private ITeachPraProjectService teachPraProjectService;

    @RequiresPermissions("system:project:view")
    @GetMapping()
    public String project()
    {
        return prefix + "/project";
    }

    /**
     * 查询4.3.2-3实践学期项目汇总列表
     */
    @RequiresPermissions("system:project:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TeachPraProject teachPraProject)
    {
        startPage();
        List<TeachPraProject> list = teachPraProjectService.selectTeachPraProjectList(teachPraProject);
        return getDataTable(list);
    }

    /**
     * 导出4.3.2-3实践学期项目汇总列表
     */
    @RequiresPermissions("system:project:export")
    @Log(title = "4.3.2-3实践学期项目汇总", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TeachPraProject teachPraProject)
    {
        List<TeachPraProject> list = teachPraProjectService.selectTeachPraProjectList(teachPraProject);
        ExcelUtil<TeachPraProject> util = new ExcelUtil<TeachPraProject>(TeachPraProject.class);
        return util.exportExcel(list, "project");
    }

    /**
     * 新增4.3.2-3实践学期项目汇总
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存4.3.2-3实践学期项目汇总
     */
    @RequiresPermissions("system:project:add")
    @Log(title = "4.3.2-3实践学期项目汇总", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TeachPraProject teachPraProject)
    {
        return toAjax(teachPraProjectService.insertTeachPraProject(teachPraProject));
    }

    /**
     * 修改4.3.2-3实践学期项目汇总
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TeachPraProject teachPraProject = teachPraProjectService.selectTeachPraProjectById(id);
        mmap.put("teachPraProject", teachPraProject);
        return prefix + "/edit";
    }

    /**
     * 修改保存4.3.2-3实践学期项目汇总
     */
    @RequiresPermissions("system:project:edit")
    @Log(title = "4.3.2-3实践学期项目汇总", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TeachPraProject teachPraProject)
    {
        return toAjax(teachPraProjectService.updateTeachPraProject(teachPraProject));
    }

    /**
     * 删除4.3.2-3实践学期项目汇总
     */
    @RequiresPermissions("system:project:remove")
    @Log(title = "4.3.2-3实践学期项目汇总", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(teachPraProjectService.deleteTeachPraProjectByIds(ids));
    }
}
