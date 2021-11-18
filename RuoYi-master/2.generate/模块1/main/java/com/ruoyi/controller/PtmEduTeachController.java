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
import com.ruoyi.domain.PtmEduTeach;
import com.ruoyi.service.IPtmEduTeachService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 各学院聘请企业人员授课情况Controller
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
@Controller
@RequestMapping("/system/teach")
public class PtmEduTeachController extends BaseController
{
    private String prefix = "system/teach";

    @Autowired
    private IPtmEduTeachService ptmEduTeachService;

    @RequiresPermissions("system:teach:view")
    @GetMapping()
    public String teach()
    {
        return prefix + "/teach";
    }

    /**
     * 查询各学院聘请企业人员授课情况列表
     */
    @RequiresPermissions("system:teach:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PtmEduTeach ptmEduTeach)
    {
        startPage();
        List<PtmEduTeach> list = ptmEduTeachService.selectPtmEduTeachList(ptmEduTeach);
        return getDataTable(list);
    }

    /**
     * 导出各学院聘请企业人员授课情况列表
     */
    @RequiresPermissions("system:teach:export")
    @Log(title = "各学院聘请企业人员授课情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PtmEduTeach ptmEduTeach)
    {
        List<PtmEduTeach> list = ptmEduTeachService.selectPtmEduTeachList(ptmEduTeach);
        ExcelUtil<PtmEduTeach> util = new ExcelUtil<PtmEduTeach>(PtmEduTeach.class);
        return util.exportExcel(list, "teach");
    }

    /**
     * 新增各学院聘请企业人员授课情况
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存各学院聘请企业人员授课情况
     */
    @RequiresPermissions("system:teach:add")
    @Log(title = "各学院聘请企业人员授课情况", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PtmEduTeach ptmEduTeach)
    {
        return toAjax(ptmEduTeachService.insertPtmEduTeach(ptmEduTeach));
    }

    /**
     * 修改各学院聘请企业人员授课情况
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PtmEduTeach ptmEduTeach = ptmEduTeachService.selectPtmEduTeachById(id);
        mmap.put("ptmEduTeach", ptmEduTeach);
        return prefix + "/edit";
    }

    /**
     * 修改保存各学院聘请企业人员授课情况
     */
    @RequiresPermissions("system:teach:edit")
    @Log(title = "各学院聘请企业人员授课情况", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PtmEduTeach ptmEduTeach)
    {
        return toAjax(ptmEduTeachService.updatePtmEduTeach(ptmEduTeach));
    }

    /**
     * 删除各学院聘请企业人员授课情况
     */
    @RequiresPermissions("system:teach:remove")
    @Log(title = "各学院聘请企业人员授课情况", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ptmEduTeachService.deletePtmEduTeachByIds(ids));
    }
}
