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
import com.ruoyi.system.domain.TeachPraSelect;
import com.ruoyi.system.service.ITeachPraSelectService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 4.2.3-4实践学期学生选题汇总Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/select")
public class TeachPraSelectController extends BaseController
{
    private String prefix = "system/select";

    @Autowired
    private ITeachPraSelectService teachPraSelectService;

    @RequiresPermissions("system:select:view")
    @GetMapping()
    public String select()
    {
        return prefix + "/select";
    }

    /**
     * 查询4.2.3-4实践学期学生选题汇总列表
     */
    @RequiresPermissions("system:select:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TeachPraSelect teachPraSelect)
    {
        startPage();
        List<TeachPraSelect> list = teachPraSelectService.selectTeachPraSelectList(teachPraSelect);
        return getDataTable(list);
    }

    /**
     * 导出4.2.3-4实践学期学生选题汇总列表
     */
    @RequiresPermissions("system:select:export")
    @Log(title = "4.2.3-4实践学期学生选题汇总", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TeachPraSelect teachPraSelect)
    {
        List<TeachPraSelect> list = teachPraSelectService.selectTeachPraSelectList(teachPraSelect);
        ExcelUtil<TeachPraSelect> util = new ExcelUtil<TeachPraSelect>(TeachPraSelect.class);
        return util.exportExcel(list, "select");
    }

    /**
     * 新增4.2.3-4实践学期学生选题汇总
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存4.2.3-4实践学期学生选题汇总
     */
    @RequiresPermissions("system:select:add")
    @Log(title = "4.2.3-4实践学期学生选题汇总", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TeachPraSelect teachPraSelect)
    {
        return toAjax(teachPraSelectService.insertTeachPraSelect(teachPraSelect));
    }

    /**
     * 修改4.2.3-4实践学期学生选题汇总
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TeachPraSelect teachPraSelect = teachPraSelectService.selectTeachPraSelectById(id);
        mmap.put("teachPraSelect", teachPraSelect);
        return prefix + "/edit";
    }

    /**
     * 修改保存4.2.3-4实践学期学生选题汇总
     */
    @RequiresPermissions("system:select:edit")
    @Log(title = "4.2.3-4实践学期学生选题汇总", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TeachPraSelect teachPraSelect)
    {
        return toAjax(teachPraSelectService.updateTeachPraSelect(teachPraSelect));
    }

    /**
     * 删除4.2.3-4实践学期学生选题汇总
     */
    @RequiresPermissions("system:select:remove")
    @Log(title = "4.2.3-4实践学期学生选题汇总", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(teachPraSelectService.deleteTeachPraSelectByIds(ids));
    }
}
