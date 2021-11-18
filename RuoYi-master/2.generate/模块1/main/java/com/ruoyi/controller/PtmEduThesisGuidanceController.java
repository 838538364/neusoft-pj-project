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
import com.ruoyi.domain.PtmEduThesisGuidance;
import com.ruoyi.service.IPtmEduThesisGuidanceService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 各学院聘请企业人员指导毕业论文情况统计Controller
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
@Controller
@RequestMapping("/system/guidance")
public class PtmEduThesisGuidanceController extends BaseController
{
    private String prefix = "system/guidance";

    @Autowired
    private IPtmEduThesisGuidanceService ptmEduThesisGuidanceService;

    @RequiresPermissions("system:guidance:view")
    @GetMapping()
    public String guidance()
    {
        return prefix + "/guidance";
    }

    /**
     * 查询各学院聘请企业人员指导毕业论文情况统计列表
     */
    @RequiresPermissions("system:guidance:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PtmEduThesisGuidance ptmEduThesisGuidance)
    {
        startPage();
        List<PtmEduThesisGuidance> list = ptmEduThesisGuidanceService.selectPtmEduThesisGuidanceList(ptmEduThesisGuidance);
        return getDataTable(list);
    }

    /**
     * 导出各学院聘请企业人员指导毕业论文情况统计列表
     */
    @RequiresPermissions("system:guidance:export")
    @Log(title = "各学院聘请企业人员指导毕业论文情况统计", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PtmEduThesisGuidance ptmEduThesisGuidance)
    {
        List<PtmEduThesisGuidance> list = ptmEduThesisGuidanceService.selectPtmEduThesisGuidanceList(ptmEduThesisGuidance);
        ExcelUtil<PtmEduThesisGuidance> util = new ExcelUtil<PtmEduThesisGuidance>(PtmEduThesisGuidance.class);
        return util.exportExcel(list, "guidance");
    }

    /**
     * 新增各学院聘请企业人员指导毕业论文情况统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存各学院聘请企业人员指导毕业论文情况统计
     */
    @RequiresPermissions("system:guidance:add")
    @Log(title = "各学院聘请企业人员指导毕业论文情况统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PtmEduThesisGuidance ptmEduThesisGuidance)
    {
        return toAjax(ptmEduThesisGuidanceService.insertPtmEduThesisGuidance(ptmEduThesisGuidance));
    }

    /**
     * 修改各学院聘请企业人员指导毕业论文情况统计
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PtmEduThesisGuidance ptmEduThesisGuidance = ptmEduThesisGuidanceService.selectPtmEduThesisGuidanceById(id);
        mmap.put("ptmEduThesisGuidance", ptmEduThesisGuidance);
        return prefix + "/edit";
    }

    /**
     * 修改保存各学院聘请企业人员指导毕业论文情况统计
     */
    @RequiresPermissions("system:guidance:edit")
    @Log(title = "各学院聘请企业人员指导毕业论文情况统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PtmEduThesisGuidance ptmEduThesisGuidance)
    {
        return toAjax(ptmEduThesisGuidanceService.updatePtmEduThesisGuidance(ptmEduThesisGuidance));
    }

    /**
     * 删除各学院聘请企业人员指导毕业论文情况统计
     */
    @RequiresPermissions("system:guidance:remove")
    @Log(title = "各学院聘请企业人员指导毕业论文情况统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ptmEduThesisGuidanceService.deletePtmEduThesisGuidanceByIds(ids));
    }
}
