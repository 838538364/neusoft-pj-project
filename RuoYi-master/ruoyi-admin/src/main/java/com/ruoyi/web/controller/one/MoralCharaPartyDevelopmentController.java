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
import com.ruoyi.system.domain.MoralCharaPartyDevelopment;
import com.ruoyi.system.service.IMoralCharaPartyDevelopmentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 7.1.2-1 各专业党员发展计划、发展情况汇总Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/development")
public class MoralCharaPartyDevelopmentController extends BaseController
{
    private String prefix = "system/development";

    @Autowired
    private IMoralCharaPartyDevelopmentService moralCharaPartyDevelopmentService;

    @RequiresPermissions("system:development:view")
    @GetMapping()
    public String development()
    {
        return prefix + "/development";
    }

    /**
     * 查询7.1.2-1 各专业党员发展计划、发展情况汇总列表
     */
    @RequiresPermissions("system:development:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MoralCharaPartyDevelopment moralCharaPartyDevelopment)
    {
        startPage();
        List<MoralCharaPartyDevelopment> list = moralCharaPartyDevelopmentService.selectMoralCharaPartyDevelopmentList(moralCharaPartyDevelopment);
        return getDataTable(list);
    }

    /**
     * 导出7.1.2-1 各专业党员发展计划、发展情况汇总列表
     */
    @RequiresPermissions("system:development:export")
    @Log(title = "7.1.2-1 各专业党员发展计划、发展情况汇总", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MoralCharaPartyDevelopment moralCharaPartyDevelopment)
    {
        List<MoralCharaPartyDevelopment> list = moralCharaPartyDevelopmentService.selectMoralCharaPartyDevelopmentList(moralCharaPartyDevelopment);
        ExcelUtil<MoralCharaPartyDevelopment> util = new ExcelUtil<MoralCharaPartyDevelopment>(MoralCharaPartyDevelopment.class);
        return util.exportExcel(list, "development");
    }

    /**
     * 新增7.1.2-1 各专业党员发展计划、发展情况汇总
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存7.1.2-1 各专业党员发展计划、发展情况汇总
     */
    @RequiresPermissions("system:development:add")
    @Log(title = "7.1.2-1 各专业党员发展计划、发展情况汇总", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MoralCharaPartyDevelopment moralCharaPartyDevelopment)
    {
        return toAjax(moralCharaPartyDevelopmentService.insertMoralCharaPartyDevelopment(moralCharaPartyDevelopment));
    }

    /**
     * 修改7.1.2-1 各专业党员发展计划、发展情况汇总
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MoralCharaPartyDevelopment moralCharaPartyDevelopment = moralCharaPartyDevelopmentService.selectMoralCharaPartyDevelopmentById(id);
        mmap.put("moralCharaPartyDevelopment", moralCharaPartyDevelopment);
        return prefix + "/edit";
    }

    /**
     * 修改保存7.1.2-1 各专业党员发展计划、发展情况汇总
     */
    @RequiresPermissions("system:development:edit")
    @Log(title = "7.1.2-1 各专业党员发展计划、发展情况汇总", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MoralCharaPartyDevelopment moralCharaPartyDevelopment)
    {
        return toAjax(moralCharaPartyDevelopmentService.updateMoralCharaPartyDevelopment(moralCharaPartyDevelopment));
    }

    /**
     * 删除7.1.2-1 各专业党员发展计划、发展情况汇总
     */
    @RequiresPermissions("system:development:remove")
    @Log(title = "7.1.2-1 各专业党员发展计划、发展情况汇总", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(moralCharaPartyDevelopmentService.deleteMoralCharaPartyDevelopmentByIds(ids));
    }
}
