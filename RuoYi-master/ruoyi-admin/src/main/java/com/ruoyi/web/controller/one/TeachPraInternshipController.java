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
import com.ruoyi.system.domain.TeachPraInternship;
import com.ruoyi.system.service.ITeachPraInternshipService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 4.3.2-11 专业实习基地一览及协议Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/internship")
public class TeachPraInternshipController extends BaseController
{
    private String prefix = "system/internship";

    @Autowired
    private ITeachPraInternshipService teachPraInternshipService;

    @RequiresPermissions("system:internship:view")
    @GetMapping()
    public String internship()
    {
        return prefix + "/internship";
    }

    /**
     * 查询4.3.2-11 专业实习基地一览及协议列表
     */
    @RequiresPermissions("system:internship:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TeachPraInternship teachPraInternship)
    {
        startPage();
        List<TeachPraInternship> list = teachPraInternshipService.selectTeachPraInternshipList(teachPraInternship);
        return getDataTable(list);
    }

    /**
     * 导出4.3.2-11 专业实习基地一览及协议列表
     */
    @RequiresPermissions("system:internship:export")
    @Log(title = "4.3.2-11 专业实习基地一览及协议", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TeachPraInternship teachPraInternship)
    {
        List<TeachPraInternship> list = teachPraInternshipService.selectTeachPraInternshipList(teachPraInternship);
        ExcelUtil<TeachPraInternship> util = new ExcelUtil<TeachPraInternship>(TeachPraInternship.class);
        return util.exportExcel(list, "internship");
    }

    /**
     * 新增4.3.2-11 专业实习基地一览及协议
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存4.3.2-11 专业实习基地一览及协议
     */
    @RequiresPermissions("system:internship:add")
    @Log(title = "4.3.2-11 专业实习基地一览及协议", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TeachPraInternship teachPraInternship)
    {
        return toAjax(teachPraInternshipService.insertTeachPraInternship(teachPraInternship));
    }

    /**
     * 修改4.3.2-11 专业实习基地一览及协议
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TeachPraInternship teachPraInternship = teachPraInternshipService.selectTeachPraInternshipById(id);
        mmap.put("teachPraInternship", teachPraInternship);
        return prefix + "/edit";
    }

    /**
     * 修改保存4.3.2-11 专业实习基地一览及协议
     */
    @RequiresPermissions("system:internship:edit")
    @Log(title = "4.3.2-11 专业实习基地一览及协议", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TeachPraInternship teachPraInternship)
    {
        return toAjax(teachPraInternshipService.updateTeachPraInternship(teachPraInternship));
    }

    /**
     * 删除4.3.2-11 专业实习基地一览及协议
     */
    @RequiresPermissions("system:internship:remove")
    @Log(title = "4.3.2-11 专业实习基地一览及协议", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(teachPraInternshipService.deleteTeachPraInternshipByIds(ids));
    }
}
