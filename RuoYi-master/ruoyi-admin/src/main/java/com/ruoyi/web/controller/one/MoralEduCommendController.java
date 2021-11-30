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
import com.ruoyi.system.domain.MoralEduCommend;
import com.ruoyi.system.service.IMoralEduCommendService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 7.1.1-2“五四彰”、“七一彰”Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/commend")
public class MoralEduCommendController extends BaseController
{
    private String prefix = "system/commend";

    @Autowired
    private IMoralEduCommendService moralEduCommendService;

    @RequiresPermissions("system:commend:view")
    @GetMapping()
    public String commend()
    {
        return prefix + "/commend";
    }

    /**
     * 查询7.1.1-2“五四彰”、“七一彰”列表
     */
    @RequiresPermissions("system:commend:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MoralEduCommend moralEduCommend)
    {
        startPage();
        List<MoralEduCommend> list = moralEduCommendService.selectMoralEduCommendList(moralEduCommend);
        return getDataTable(list);
    }

    /**
     * 导出7.1.1-2“五四彰”、“七一彰”列表
     */
    @RequiresPermissions("system:commend:export")
    @Log(title = "7.1.1-2“五四彰”、“七一彰”", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MoralEduCommend moralEduCommend)
    {
        List<MoralEduCommend> list = moralEduCommendService.selectMoralEduCommendList(moralEduCommend);
        ExcelUtil<MoralEduCommend> util = new ExcelUtil<MoralEduCommend>(MoralEduCommend.class);
        return util.exportExcel(list, "commend");
    }

    /**
     * 新增7.1.1-2“五四彰”、“七一彰”
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存7.1.1-2“五四彰”、“七一彰”
     */
    @RequiresPermissions("system:commend:add")
    @Log(title = "7.1.1-2“五四彰”、“七一彰”", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MoralEduCommend moralEduCommend)
    {
        return toAjax(moralEduCommendService.insertMoralEduCommend(moralEduCommend));
    }

    /**
     * 修改7.1.1-2“五四彰”、“七一彰”
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MoralEduCommend moralEduCommend = moralEduCommendService.selectMoralEduCommendById(id);
        mmap.put("moralEduCommend", moralEduCommend);
        return prefix + "/edit";
    }

    /**
     * 修改保存7.1.1-2“五四彰”、“七一彰”
     */
    @RequiresPermissions("system:commend:edit")
    @Log(title = "7.1.1-2“五四彰”、“七一彰”", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MoralEduCommend moralEduCommend)
    {
        return toAjax(moralEduCommendService.updateMoralEduCommend(moralEduCommend));
    }

    /**
     * 删除7.1.1-2“五四彰”、“七一彰”
     */
    @RequiresPermissions("system:commend:remove")
    @Log(title = "7.1.1-2“五四彰”、“七一彰”", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(moralEduCommendService.deleteMoralEduCommendByIds(ids));
    }
}
