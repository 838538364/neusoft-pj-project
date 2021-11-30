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
import com.ruoyi.system.domain.TeamStrHonoraryCertificate;
import com.ruoyi.system.service.ITeamStrHonoraryCertificateService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 5.1.1-3 学院教学管理人员获得荣誉证书一览Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/certificate")
public class TeamStrHonoraryCertificateController extends BaseController
{
    private String prefix = "system/certificate";

    @Autowired
    private ITeamStrHonoraryCertificateService teamStrHonoraryCertificateService;

    @RequiresPermissions("system:certificate:view")
    @GetMapping()
    public String certificate()
    {
        return prefix + "/certificate";
    }

    /**
     * 查询5.1.1-3 学院教学管理人员获得荣誉证书一览列表
     */
    @RequiresPermissions("system:certificate:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TeamStrHonoraryCertificate teamStrHonoraryCertificate)
    {
        startPage();
        List<TeamStrHonoraryCertificate> list = teamStrHonoraryCertificateService.selectTeamStrHonoraryCertificateList(teamStrHonoraryCertificate);
        return getDataTable(list);
    }

    /**
     * 导出5.1.1-3 学院教学管理人员获得荣誉证书一览列表
     */
    @RequiresPermissions("system:certificate:export")
    @Log(title = "5.1.1-3 学院教学管理人员获得荣誉证书一览", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TeamStrHonoraryCertificate teamStrHonoraryCertificate)
    {
        List<TeamStrHonoraryCertificate> list = teamStrHonoraryCertificateService.selectTeamStrHonoraryCertificateList(teamStrHonoraryCertificate);
        ExcelUtil<TeamStrHonoraryCertificate> util = new ExcelUtil<TeamStrHonoraryCertificate>(TeamStrHonoraryCertificate.class);
        return util.exportExcel(list, "certificate");
    }

    /**
     * 新增5.1.1-3 学院教学管理人员获得荣誉证书一览
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存5.1.1-3 学院教学管理人员获得荣誉证书一览
     */
    @RequiresPermissions("system:certificate:add")
    @Log(title = "5.1.1-3 学院教学管理人员获得荣誉证书一览", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TeamStrHonoraryCertificate teamStrHonoraryCertificate)
    {
        return toAjax(teamStrHonoraryCertificateService.insertTeamStrHonoraryCertificate(teamStrHonoraryCertificate));
    }

    /**
     * 修改5.1.1-3 学院教学管理人员获得荣誉证书一览
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TeamStrHonoraryCertificate teamStrHonoraryCertificate = teamStrHonoraryCertificateService.selectTeamStrHonoraryCertificateById(id);
        mmap.put("teamStrHonoraryCertificate", teamStrHonoraryCertificate);
        return prefix + "/edit";
    }

    /**
     * 修改保存5.1.1-3 学院教学管理人员获得荣誉证书一览
     */
    @RequiresPermissions("system:certificate:edit")
    @Log(title = "5.1.1-3 学院教学管理人员获得荣誉证书一览", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TeamStrHonoraryCertificate teamStrHonoraryCertificate)
    {
        return toAjax(teamStrHonoraryCertificateService.updateTeamStrHonoraryCertificate(teamStrHonoraryCertificate));
    }

    /**
     * 删除5.1.1-3 学院教学管理人员获得荣誉证书一览
     */
    @RequiresPermissions("system:certificate:remove")
    @Log(title = "5.1.1-3 学院教学管理人员获得荣誉证书一览", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(teamStrHonoraryCertificateService.deleteTeamStrHonoraryCertificateByIds(ids));
    }
}
