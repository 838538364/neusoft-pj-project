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
import com.ruoyi.domain.PtmEduPtStatistics;
import com.ruoyi.service.IPtmEduPtStatisticsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 各专业校外实践教学情况统计Controller
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Controller
@RequestMapping("/system/statistics")
public class PtmEduPtStatisticsController extends BaseController
{
    private String prefix = "system/statistics";

    @Autowired
    private IPtmEduPtStatisticsService ptmEduPtStatisticsService;

    @RequiresPermissions("system:statistics:view")
    @GetMapping()
    public String statistics()
    {
        return prefix + "/statistics";
    }

    /**
     * 查询各专业校外实践教学情况统计列表
     */
    @RequiresPermissions("system:statistics:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PtmEduPtStatistics ptmEduPtStatistics)
    {
        startPage();
        List<PtmEduPtStatistics> list = ptmEduPtStatisticsService.selectPtmEduPtStatisticsList(ptmEduPtStatistics);
        return getDataTable(list);
    }

    /**
     * 导出各专业校外实践教学情况统计列表
     */
    @RequiresPermissions("system:statistics:export")
    @Log(title = "各专业校外实践教学情况统计", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PtmEduPtStatistics ptmEduPtStatistics)
    {
        List<PtmEduPtStatistics> list = ptmEduPtStatisticsService.selectPtmEduPtStatisticsList(ptmEduPtStatistics);
        ExcelUtil<PtmEduPtStatistics> util = new ExcelUtil<PtmEduPtStatistics>(PtmEduPtStatistics.class);
        return util.exportExcel(list, "statistics");
    }

    /**
     * 新增各专业校外实践教学情况统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存各专业校外实践教学情况统计
     */
    @RequiresPermissions("system:statistics:add")
    @Log(title = "各专业校外实践教学情况统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PtmEduPtStatistics ptmEduPtStatistics)
    {
        return toAjax(ptmEduPtStatisticsService.insertPtmEduPtStatistics(ptmEduPtStatistics));
    }

    /**
     * 修改各专业校外实践教学情况统计
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PtmEduPtStatistics ptmEduPtStatistics = ptmEduPtStatisticsService.selectPtmEduPtStatisticsById(id);
        mmap.put("ptmEduPtStatistics", ptmEduPtStatistics);
        return prefix + "/edit";
    }

    /**
     * 修改保存各专业校外实践教学情况统计
     */
    @RequiresPermissions("system:statistics:edit")
    @Log(title = "各专业校外实践教学情况统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PtmEduPtStatistics ptmEduPtStatistics)
    {
        return toAjax(ptmEduPtStatisticsService.updatePtmEduPtStatistics(ptmEduPtStatistics));
    }

    /**
     * 删除各专业校外实践教学情况统计
     */
    @RequiresPermissions("system:statistics:remove")
    @Log(title = "各专业校外实践教学情况统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ptmEduPtStatisticsService.deletePtmEduPtStatisticsByIds(ids));
    }
}
