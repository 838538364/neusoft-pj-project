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
import com.ruoyi.system.domain.MoralEduOutstandingCadres;
import com.ruoyi.system.service.IMoralEduOutstandingCadresService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 7.1.2-3广东东软学院各专业优秀班集体统计Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/cadres")
public class MoralEduOutstandingCadresController extends BaseController
{
    private String prefix = "system/cadres";

    @Autowired
    private IMoralEduOutstandingCadresService moralEduOutstandingCadresService;

    @RequiresPermissions("system:cadres:view")
    @GetMapping()
    public String cadres()
    {
        return prefix + "/cadres";
    }

    /**
     * 查询7.1.2-3广东东软学院各专业优秀班集体统计列表
     */
    @RequiresPermissions("system:cadres:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MoralEduOutstandingCadres moralEduOutstandingCadres)
    {
        startPage();
        List<MoralEduOutstandingCadres> list = moralEduOutstandingCadresService.selectMoralEduOutstandingCadresList(moralEduOutstandingCadres);
        return getDataTable(list);
    }

    /**
     * 导出7.1.2-3广东东软学院各专业优秀班集体统计列表
     */
    @RequiresPermissions("system:cadres:export")
    @Log(title = "7.1.2-3广东东软学院各专业优秀班集体统计", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MoralEduOutstandingCadres moralEduOutstandingCadres)
    {
        List<MoralEduOutstandingCadres> list = moralEduOutstandingCadresService.selectMoralEduOutstandingCadresList(moralEduOutstandingCadres);
        ExcelUtil<MoralEduOutstandingCadres> util = new ExcelUtil<MoralEduOutstandingCadres>(MoralEduOutstandingCadres.class);
        return util.exportExcel(list, "cadres");
    }

    /**
     * 新增7.1.2-3广东东软学院各专业优秀班集体统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存7.1.2-3广东东软学院各专业优秀班集体统计
     */
    @RequiresPermissions("system:cadres:add")
    @Log(title = "7.1.2-3广东东软学院各专业优秀班集体统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MoralEduOutstandingCadres moralEduOutstandingCadres)
    {
        return toAjax(moralEduOutstandingCadresService.insertMoralEduOutstandingCadres(moralEduOutstandingCadres));
    }

    /**
     * 修改7.1.2-3广东东软学院各专业优秀班集体统计
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MoralEduOutstandingCadres moralEduOutstandingCadres = moralEduOutstandingCadresService.selectMoralEduOutstandingCadresById(id);
        mmap.put("moralEduOutstandingCadres", moralEduOutstandingCadres);
        return prefix + "/edit";
    }

    /**
     * 修改保存7.1.2-3广东东软学院各专业优秀班集体统计
     */
    @RequiresPermissions("system:cadres:edit")
    @Log(title = "7.1.2-3广东东软学院各专业优秀班集体统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MoralEduOutstandingCadres moralEduOutstandingCadres)
    {
        return toAjax(moralEduOutstandingCadresService.updateMoralEduOutstandingCadres(moralEduOutstandingCadres));
    }

    /**
     * 删除7.1.2-3广东东软学院各专业优秀班集体统计
     */
    @RequiresPermissions("system:cadres:remove")
    @Log(title = "7.1.2-3广东东软学院各专业优秀班集体统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(moralEduOutstandingCadresService.deleteMoralEduOutstandingCadresByIds(ids));
    }
}
