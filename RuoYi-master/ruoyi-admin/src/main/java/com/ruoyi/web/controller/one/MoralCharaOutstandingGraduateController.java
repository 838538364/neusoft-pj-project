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
import com.ruoyi.system.domain.MoralCharaOutstandingGraduate;
import com.ruoyi.system.service.IMoralCharaOutstandingGraduateService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/graduate")
public class MoralCharaOutstandingGraduateController extends BaseController
{
    private String prefix = "system/graduate";

    @Autowired
    private IMoralCharaOutstandingGraduateService moralCharaOutstandingGraduateService;

    @RequiresPermissions("system:graduate:view")
    @GetMapping()
    public String graduate()
    {
        return prefix + "/graduate";
    }

    /**
     * 查询7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例列表
     */
    @RequiresPermissions("system:graduate:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate)
    {
        startPage();
        List<MoralCharaOutstandingGraduate> list = moralCharaOutstandingGraduateService.selectMoralCharaOutstandingGraduateList(moralCharaOutstandingGraduate);
        return getDataTable(list);
    }

    /**
     * 导出7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例列表
     */
    @RequiresPermissions("system:graduate:export")
    @Log(title = "7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate)
    {
        List<MoralCharaOutstandingGraduate> list = moralCharaOutstandingGraduateService.selectMoralCharaOutstandingGraduateList(moralCharaOutstandingGraduate);
        ExcelUtil<MoralCharaOutstandingGraduate> util = new ExcelUtil<MoralCharaOutstandingGraduate>(MoralCharaOutstandingGraduate.class);
        return util.exportExcel(list, "graduate");
    }

    /**
     * 新增7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     */
    @RequiresPermissions("system:graduate:add")
    @Log(title = "7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate)
    {
        return toAjax(moralCharaOutstandingGraduateService.insertMoralCharaOutstandingGraduate(moralCharaOutstandingGraduate));
    }

    /**
     * 修改7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MoralCharaOutstandingGraduate moralCharaOutstandingGraduate = moralCharaOutstandingGraduateService.selectMoralCharaOutstandingGraduateById(id);
        mmap.put("moralCharaOutstandingGraduate", moralCharaOutstandingGraduate);
        return prefix + "/edit";
    }

    /**
     * 修改保存7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     */
    @RequiresPermissions("system:graduate:edit")
    @Log(title = "7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate)
    {
        return toAjax(moralCharaOutstandingGraduateService.updateMoralCharaOutstandingGraduate(moralCharaOutstandingGraduate));
    }

    /**
     * 删除7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     */
    @RequiresPermissions("system:graduate:remove")
    @Log(title = "7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(moralCharaOutstandingGraduateService.deleteMoralCharaOutstandingGraduateByIds(ids));
    }
}
