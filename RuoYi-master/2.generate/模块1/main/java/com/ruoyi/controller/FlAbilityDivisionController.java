package com.ruoyi.controller;

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
import com.ruoyi.domain.FlAbilityDivision;
import com.ruoyi.service.IFlAbilityDivisionService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 1.2.2-2学校领导分工一览Controller
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
@Controller
@RequestMapping("/system/division")
public class FlAbilityDivisionController extends BaseController
{
    private String prefix = "system/division";

    @Autowired
    private IFlAbilityDivisionService flAbilityDivisionService;

    @RequiresPermissions("system:division:view")
    @GetMapping()
    public String division()
    {
        return prefix + "/division";
    }

    /**
     * 查询1.2.2-2学校领导分工一览列表
     */
    @RequiresPermissions("system:division:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(FlAbilityDivision flAbilityDivision)
    {
        startPage();
        List<FlAbilityDivision> list = flAbilityDivisionService.selectFlAbilityDivisionList(flAbilityDivision);
        return getDataTable(list);
    }

    /**
     * 导出1.2.2-2学校领导分工一览列表
     */
    @RequiresPermissions("system:division:export")
    @Log(title = "1.2.2-2学校领导分工一览", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(FlAbilityDivision flAbilityDivision)
    {
        List<FlAbilityDivision> list = flAbilityDivisionService.selectFlAbilityDivisionList(flAbilityDivision);
        ExcelUtil<FlAbilityDivision> util = new ExcelUtil<FlAbilityDivision>(FlAbilityDivision.class);
        return util.exportExcel(list, "division");
    }

    /**
     * 新增1.2.2-2学校领导分工一览
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存1.2.2-2学校领导分工一览
     */
    @RequiresPermissions("system:division:add")
    @Log(title = "1.2.2-2学校领导分工一览", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(FlAbilityDivision flAbilityDivision)
    {
        return toAjax(flAbilityDivisionService.insertFlAbilityDivision(flAbilityDivision));
    }

    /**
     * 修改1.2.2-2学校领导分工一览
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        FlAbilityDivision flAbilityDivision = flAbilityDivisionService.selectFlAbilityDivisionById(id);
        mmap.put("flAbilityDivision", flAbilityDivision);
        return prefix + "/edit";
    }

    /**
     * 修改保存1.2.2-2学校领导分工一览
     */
    @RequiresPermissions("system:division:edit")
    @Log(title = "1.2.2-2学校领导分工一览", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(FlAbilityDivision flAbilityDivision)
    {
        return toAjax(flAbilityDivisionService.updateFlAbilityDivision(flAbilityDivision));
    }

    /**
     * 删除1.2.2-2学校领导分工一览
     */
    @RequiresPermissions("system:division:remove")
    @Log(title = "1.2.2-2学校领导分工一览", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(flAbilityDivisionService.deleteFlAbilityDivisionByIds(ids));
    }
}
