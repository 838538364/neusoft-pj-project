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
import com.ruoyi.system.domain.QualSystemStandards;
import com.ruoyi.system.service.IQualSystemStandardsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 5.2.1-2 学院制定的教学工作相关实施细则一览Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/standards")
public class QualSystemStandardsController extends BaseController
{
    private String prefix = "system/standards";

    @Autowired
    private IQualSystemStandardsService qualSystemStandardsService;

    @RequiresPermissions("system:standards:view")
    @GetMapping()
    public String standards()
    {
        return prefix + "/standards";
    }

    /**
     * 查询5.2.1-2 学院制定的教学工作相关实施细则一览列表
     */
    @RequiresPermissions("system:standards:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(QualSystemStandards qualSystemStandards)
    {
        startPage();
        List<QualSystemStandards> list = qualSystemStandardsService.selectQualSystemStandardsList(qualSystemStandards);
        return getDataTable(list);
    }

    /**
     * 导出5.2.1-2 学院制定的教学工作相关实施细则一览列表
     */
    @RequiresPermissions("system:standards:export")
    @Log(title = "5.2.1-2 学院制定的教学工作相关实施细则一览", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QualSystemStandards qualSystemStandards)
    {
        List<QualSystemStandards> list = qualSystemStandardsService.selectQualSystemStandardsList(qualSystemStandards);
        ExcelUtil<QualSystemStandards> util = new ExcelUtil<QualSystemStandards>(QualSystemStandards.class);
        return util.exportExcel(list, "standards");
    }

    /**
     * 新增5.2.1-2 学院制定的教学工作相关实施细则一览
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存5.2.1-2 学院制定的教学工作相关实施细则一览
     */
    @RequiresPermissions("system:standards:add")
    @Log(title = "5.2.1-2 学院制定的教学工作相关实施细则一览", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(QualSystemStandards qualSystemStandards)
    {
        return toAjax(qualSystemStandardsService.insertQualSystemStandards(qualSystemStandards));
    }

    /**
     * 修改5.2.1-2 学院制定的教学工作相关实施细则一览
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        QualSystemStandards qualSystemStandards = qualSystemStandardsService.selectQualSystemStandardsById(id);
        mmap.put("qualSystemStandards", qualSystemStandards);
        return prefix + "/edit";
    }

    /**
     * 修改保存5.2.1-2 学院制定的教学工作相关实施细则一览
     */
    @RequiresPermissions("system:standards:edit")
    @Log(title = "5.2.1-2 学院制定的教学工作相关实施细则一览", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(QualSystemStandards qualSystemStandards)
    {
        return toAjax(qualSystemStandardsService.updateQualSystemStandards(qualSystemStandards));
    }

    /**
     * 删除5.2.1-2 学院制定的教学工作相关实施细则一览
     */
    @RequiresPermissions("system:standards:remove")
    @Log(title = "5.2.1-2 学院制定的教学工作相关实施细则一览", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(qualSystemStandardsService.deleteQualSystemStandardsByIds(ids));
    }
}
