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
import com.ruoyi.system.domain.MoralEduActivities;
import com.ruoyi.system.service.IMoralEduActivitiesService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 *  7.1.1-1近三年个专业思想教育活动统计Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/activities")
public class MoralEduActivitiesController extends BaseController
{
    private String prefix = "system/activities";

    @Autowired
    private IMoralEduActivitiesService moralEduActivitiesService;

    @RequiresPermissions("system:activities:view")
    @GetMapping()
    public String activities()
    {
        return prefix + "/activities";
    }

    /**
     * 查询 7.1.1-1近三年个专业思想教育活动统计列表
     */
    @RequiresPermissions("system:activities:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MoralEduActivities moralEduActivities)
    {
        startPage();
        List<MoralEduActivities> list = moralEduActivitiesService.selectMoralEduActivitiesList(moralEduActivities);
        return getDataTable(list);
    }

    /**
     * 导出 7.1.1-1近三年个专业思想教育活动统计列表
     */
    @RequiresPermissions("system:activities:export")
    @Log(title = " 7.1.1-1近三年个专业思想教育活动统计", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MoralEduActivities moralEduActivities)
    {
        List<MoralEduActivities> list = moralEduActivitiesService.selectMoralEduActivitiesList(moralEduActivities);
        ExcelUtil<MoralEduActivities> util = new ExcelUtil<MoralEduActivities>(MoralEduActivities.class);
        return util.exportExcel(list, "activities");
    }

    /**
     * 新增 7.1.1-1近三年个专业思想教育活动统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存 7.1.1-1近三年个专业思想教育活动统计
     */
    @RequiresPermissions("system:activities:add")
    @Log(title = " 7.1.1-1近三年个专业思想教育活动统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MoralEduActivities moralEduActivities)
    {
        return toAjax(moralEduActivitiesService.insertMoralEduActivities(moralEduActivities));
    }

    /**
     * 修改 7.1.1-1近三年个专业思想教育活动统计
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MoralEduActivities moralEduActivities = moralEduActivitiesService.selectMoralEduActivitiesById(id);
        mmap.put("moralEduActivities", moralEduActivities);
        return prefix + "/edit";
    }

    /**
     * 修改保存 7.1.1-1近三年个专业思想教育活动统计
     */
    @RequiresPermissions("system:activities:edit")
    @Log(title = " 7.1.1-1近三年个专业思想教育活动统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MoralEduActivities moralEduActivities)
    {
        return toAjax(moralEduActivitiesService.updateMoralEduActivities(moralEduActivities));
    }

    /**
     * 删除 7.1.1-1近三年个专业思想教育活动统计
     */
    @RequiresPermissions("system:activities:remove")
    @Log(title = " 7.1.1-1近三年个专业思想教育活动统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(moralEduActivitiesService.deleteMoralEduActivitiesByIds(ids));
    }
}
