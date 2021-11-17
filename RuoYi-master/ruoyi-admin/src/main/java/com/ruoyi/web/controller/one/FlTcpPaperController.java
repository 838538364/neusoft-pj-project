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
import com.ruoyi.domain.FlTcpPaper;
import com.ruoyi.service.IFlTcpPaperService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 1.2.3-3毕业论文统计(fl_tcp_paper)Controller
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Controller
@RequestMapping("/system/paper")
public class FlTcpPaperController extends BaseController
{
    private String prefix = "system/paper";

    @Autowired
    private IFlTcpPaperService flTcpPaperService;

    @RequiresPermissions("system:paper:view")
    @GetMapping()
    public String paper()
    {
        return prefix + "/paper";
    }

    /**
     * 查询1.2.3-3毕业论文统计(fl_tcp_paper)列表
     */
    @RequiresPermissions("system:paper:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(FlTcpPaper flTcpPaper)
    {
        startPage();
        List<FlTcpPaper> list = flTcpPaperService.selectFlTcpPaperList(flTcpPaper);
        return getDataTable(list);
    }

    /**
     * 导出1.2.3-3毕业论文统计(fl_tcp_paper)列表
     */
    @RequiresPermissions("system:paper:export")
    @Log(title = "1.2.3-3毕业论文统计(fl_tcp_paper)", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(FlTcpPaper flTcpPaper)
    {
        List<FlTcpPaper> list = flTcpPaperService.selectFlTcpPaperList(flTcpPaper);
        ExcelUtil<FlTcpPaper> util = new ExcelUtil<FlTcpPaper>(FlTcpPaper.class);
        return util.exportExcel(list, "paper");
    }

    /**
     * 新增1.2.3-3毕业论文统计(fl_tcp_paper)
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存1.2.3-3毕业论文统计(fl_tcp_paper)
     */
    @RequiresPermissions("system:paper:add")
    @Log(title = "1.2.3-3毕业论文统计(fl_tcp_paper)", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(FlTcpPaper flTcpPaper)
    {
        return toAjax(flTcpPaperService.insertFlTcpPaper(flTcpPaper));
    }

    /**
     * 修改1.2.3-3毕业论文统计(fl_tcp_paper)
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        FlTcpPaper flTcpPaper = flTcpPaperService.selectFlTcpPaperById(id);
        mmap.put("flTcpPaper", flTcpPaper);
        return prefix + "/edit";
    }

    /**
     * 修改保存1.2.3-3毕业论文统计(fl_tcp_paper)
     */
    @RequiresPermissions("system:paper:edit")
    @Log(title = "1.2.3-3毕业论文统计(fl_tcp_paper)", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(FlTcpPaper flTcpPaper)
    {
        return toAjax(flTcpPaperService.updateFlTcpPaper(flTcpPaper));
    }

    /**
     * 删除1.2.3-3毕业论文统计(fl_tcp_paper)
     */
    @RequiresPermissions("system:paper:remove")
    @Log(title = "1.2.3-3毕业论文统计(fl_tcp_paper)", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(flTcpPaperService.deleteFlTcpPaperByIds(ids));
    }
}
