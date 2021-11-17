package com.ruoyi.web.controller.one;

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
import com.ruoyi.domain.PtmEduSoccoIndustrial;
import com.ruoyi.service.IPtmEduSoccoIndustrialService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 产业学院共建情况统计览Controller
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Controller
@RequestMapping("/system/industrial")
public class PtmEduSoccoIndustrialController extends BaseController
{
    private String prefix = "system/industrial";

    @Autowired
    private IPtmEduSoccoIndustrialService ptmEduSoccoIndustrialService;

    @RequiresPermissions("system:industrial:view")
    @GetMapping()
    public String industrial()
    {
        return prefix + "/industrial";
    }

    /**
     * 查询产业学院共建情况统计览列表
     */
    @RequiresPermissions("system:industrial:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PtmEduSoccoIndustrial ptmEduSoccoIndustrial)
    {
        startPage();
        List<PtmEduSoccoIndustrial> list = ptmEduSoccoIndustrialService.selectPtmEduSoccoIndustrialList(ptmEduSoccoIndustrial);
        return getDataTable(list);
    }

    /**
     * 导出产业学院共建情况统计览列表
     */
    @RequiresPermissions("system:industrial:export")
    @Log(title = "产业学院共建情况统计览", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PtmEduSoccoIndustrial ptmEduSoccoIndustrial)
    {
        List<PtmEduSoccoIndustrial> list = ptmEduSoccoIndustrialService.selectPtmEduSoccoIndustrialList(ptmEduSoccoIndustrial);
        ExcelUtil<PtmEduSoccoIndustrial> util = new ExcelUtil<PtmEduSoccoIndustrial>(PtmEduSoccoIndustrial.class);
        return util.exportExcel(list, "industrial");
    }

    /**
     * 新增产业学院共建情况统计览
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存产业学院共建情况统计览
     */
    @RequiresPermissions("system:industrial:add")
    @Log(title = "产业学院共建情况统计览", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PtmEduSoccoIndustrial ptmEduSoccoIndustrial)
    {
        return toAjax(ptmEduSoccoIndustrialService.insertPtmEduSoccoIndustrial(ptmEduSoccoIndustrial));
    }

    /**
     * 修改产业学院共建情况统计览
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PtmEduSoccoIndustrial ptmEduSoccoIndustrial = ptmEduSoccoIndustrialService.selectPtmEduSoccoIndustrialById(id);
        mmap.put("ptmEduSoccoIndustrial", ptmEduSoccoIndustrial);
        return prefix + "/edit";
    }

    /**
     * 修改保存产业学院共建情况统计览
     */
    @RequiresPermissions("system:industrial:edit")
    @Log(title = "产业学院共建情况统计览", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PtmEduSoccoIndustrial ptmEduSoccoIndustrial)
    {
        return toAjax(ptmEduSoccoIndustrialService.updatePtmEduSoccoIndustrial(ptmEduSoccoIndustrial));
    }

    /**
     * 删除产业学院共建情况统计览
     */
    @RequiresPermissions("system:industrial:remove")
    @Log(title = "产业学院共建情况统计览", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ptmEduSoccoIndustrialService.deletePtmEduSoccoIndustrialByIds(ids));
    }
}
