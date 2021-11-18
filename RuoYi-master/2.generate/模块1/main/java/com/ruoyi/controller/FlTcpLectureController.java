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
import com.ruoyi.domain.FlTcpLecture;
import com.ruoyi.service.IFlTcpLectureService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 1.2.3-4 学术讲座(fl_tcp_lecture)Controller
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
@Controller
@RequestMapping("/system/lecture")
public class FlTcpLectureController extends BaseController
{
    private String prefix = "system/lecture";

    @Autowired
    private IFlTcpLectureService flTcpLectureService;

    @RequiresPermissions("system:lecture:view")
    @GetMapping()
    public String lecture()
    {
        return prefix + "/lecture";
    }

    /**
     * 查询1.2.3-4 学术讲座(fl_tcp_lecture)列表
     */
    @RequiresPermissions("system:lecture:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(FlTcpLecture flTcpLecture)
    {
        startPage();
        List<FlTcpLecture> list = flTcpLectureService.selectFlTcpLectureList(flTcpLecture);
        return getDataTable(list);
    }

    /**
     * 导出1.2.3-4 学术讲座(fl_tcp_lecture)列表
     */
    @RequiresPermissions("system:lecture:export")
    @Log(title = "1.2.3-4 学术讲座(fl_tcp_lecture)", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(FlTcpLecture flTcpLecture)
    {
        List<FlTcpLecture> list = flTcpLectureService.selectFlTcpLectureList(flTcpLecture);
        ExcelUtil<FlTcpLecture> util = new ExcelUtil<FlTcpLecture>(FlTcpLecture.class);
        return util.exportExcel(list, "lecture");
    }

    /**
     * 新增1.2.3-4 学术讲座(fl_tcp_lecture)
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存1.2.3-4 学术讲座(fl_tcp_lecture)
     */
    @RequiresPermissions("system:lecture:add")
    @Log(title = "1.2.3-4 学术讲座(fl_tcp_lecture)", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(FlTcpLecture flTcpLecture)
    {
        return toAjax(flTcpLectureService.insertFlTcpLecture(flTcpLecture));
    }

    /**
     * 修改1.2.3-4 学术讲座(fl_tcp_lecture)
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        FlTcpLecture flTcpLecture = flTcpLectureService.selectFlTcpLectureById(id);
        mmap.put("flTcpLecture", flTcpLecture);
        return prefix + "/edit";
    }

    /**
     * 修改保存1.2.3-4 学术讲座(fl_tcp_lecture)
     */
    @RequiresPermissions("system:lecture:edit")
    @Log(title = "1.2.3-4 学术讲座(fl_tcp_lecture)", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(FlTcpLecture flTcpLecture)
    {
        return toAjax(flTcpLectureService.updateFlTcpLecture(flTcpLecture));
    }

    /**
     * 删除1.2.3-4 学术讲座(fl_tcp_lecture)
     */
    @RequiresPermissions("system:lecture:remove")
    @Log(title = "1.2.3-4 学术讲座(fl_tcp_lecture)", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(flTcpLectureService.deleteFlTcpLectureByIds(ids));
    }
}
