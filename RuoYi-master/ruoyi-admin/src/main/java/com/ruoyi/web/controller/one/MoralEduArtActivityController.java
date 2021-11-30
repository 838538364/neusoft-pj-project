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
import com.ruoyi.system.domain.MoralEduArtActivity;
import com.ruoyi.system.service.IMoralEduArtActivityService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 7.1.1-3高雅艺术活动情况Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/activity")
public class MoralEduArtActivityController extends BaseController
{
    private String prefix = "system/activity";

    @Autowired
    private IMoralEduArtActivityService moralEduArtActivityService;

    @RequiresPermissions("system:activity:view")
    @GetMapping()
    public String activity()
    {
        return prefix + "/activity";
    }

    /**
     * 查询7.1.1-3高雅艺术活动情况列表
     */
    @RequiresPermissions("system:activity:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MoralEduArtActivity moralEduArtActivity)
    {
        startPage();
        List<MoralEduArtActivity> list = moralEduArtActivityService.selectMoralEduArtActivityList(moralEduArtActivity);
        return getDataTable(list);
    }

    /**
     * 导出7.1.1-3高雅艺术活动情况列表
     */
    @RequiresPermissions("system:activity:export")
    @Log(title = "7.1.1-3高雅艺术活动情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MoralEduArtActivity moralEduArtActivity)
    {
        List<MoralEduArtActivity> list = moralEduArtActivityService.selectMoralEduArtActivityList(moralEduArtActivity);
        ExcelUtil<MoralEduArtActivity> util = new ExcelUtil<MoralEduArtActivity>(MoralEduArtActivity.class);
        return util.exportExcel(list, "activity");
    }

    /**
     * 新增7.1.1-3高雅艺术活动情况
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存7.1.1-3高雅艺术活动情况
     */
    @RequiresPermissions("system:activity:add")
    @Log(title = "7.1.1-3高雅艺术活动情况", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MoralEduArtActivity moralEduArtActivity)
    {
        return toAjax(moralEduArtActivityService.insertMoralEduArtActivity(moralEduArtActivity));
    }

    /**
     * 修改7.1.1-3高雅艺术活动情况
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MoralEduArtActivity moralEduArtActivity = moralEduArtActivityService.selectMoralEduArtActivityById(id);
        mmap.put("moralEduArtActivity", moralEduArtActivity);
        return prefix + "/edit";
    }

    /**
     * 修改保存7.1.1-3高雅艺术活动情况
     */
    @RequiresPermissions("system:activity:edit")
    @Log(title = "7.1.1-3高雅艺术活动情况", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MoralEduArtActivity moralEduArtActivity)
    {
        return toAjax(moralEduArtActivityService.updateMoralEduArtActivity(moralEduArtActivity));
    }

    /**
     * 删除7.1.1-3高雅艺术活动情况
     */
    @RequiresPermissions("system:activity:remove")
    @Log(title = "7.1.1-3高雅艺术活动情况", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(moralEduArtActivityService.deleteMoralEduArtActivityByIds(ids));
    }
}
