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
import com.ruoyi.domain.PtmEduGuided;
import com.ruoyi.service.IPtmEduGuidedService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 各学院聘请企业人员指导实习情况Controller
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
@Controller
@RequestMapping("/system/guided")
public class PtmEduGuidedController extends BaseController
{
    private String prefix = "system/guided";

    @Autowired
    private IPtmEduGuidedService ptmEduGuidedService;

    @RequiresPermissions("system:guided:view")
    @GetMapping()
    public String guided()
    {
        return prefix + "/guided";
    }

    /**
     * 查询各学院聘请企业人员指导实习情况列表
     */
    @RequiresPermissions("system:guided:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PtmEduGuided ptmEduGuided)
    {
        startPage();
        List<PtmEduGuided> list = ptmEduGuidedService.selectPtmEduGuidedList(ptmEduGuided);
        return getDataTable(list);
    }

    /**
     * 导出各学院聘请企业人员指导实习情况列表
     */
    @RequiresPermissions("system:guided:export")
    @Log(title = "各学院聘请企业人员指导实习情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PtmEduGuided ptmEduGuided)
    {
        List<PtmEduGuided> list = ptmEduGuidedService.selectPtmEduGuidedList(ptmEduGuided);
        ExcelUtil<PtmEduGuided> util = new ExcelUtil<PtmEduGuided>(PtmEduGuided.class);
        return util.exportExcel(list, "guided");
    }

    /**
     * 新增各学院聘请企业人员指导实习情况
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存各学院聘请企业人员指导实习情况
     */
    @RequiresPermissions("system:guided:add")
    @Log(title = "各学院聘请企业人员指导实习情况", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PtmEduGuided ptmEduGuided)
    {
        return toAjax(ptmEduGuidedService.insertPtmEduGuided(ptmEduGuided));
    }

    /**
     * 修改各学院聘请企业人员指导实习情况
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PtmEduGuided ptmEduGuided = ptmEduGuidedService.selectPtmEduGuidedById(id);
        mmap.put("ptmEduGuided", ptmEduGuided);
        return prefix + "/edit";
    }

    /**
     * 修改保存各学院聘请企业人员指导实习情况
     */
    @RequiresPermissions("system:guided:edit")
    @Log(title = "各学院聘请企业人员指导实习情况", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PtmEduGuided ptmEduGuided)
    {
        return toAjax(ptmEduGuidedService.updatePtmEduGuided(ptmEduGuided));
    }

    /**
     * 删除各学院聘请企业人员指导实习情况
     */
    @RequiresPermissions("system:guided:remove")
    @Log(title = "各学院聘请企业人员指导实习情况", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ptmEduGuidedService.deletePtmEduGuidedByIds(ids));
    }
}
