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
import com.ruoyi.system.domain.TeamStrInformation;
import com.ruoyi.system.service.ITeamStrInformationService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 5.1.1-2 学院教学管理人员信息Controller
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
@Controller
@RequestMapping("/system/information")
public class TeamStrInformationController extends BaseController
{
    private String prefix = "system/information";

    @Autowired
    private ITeamStrInformationService teamStrInformationService;

    @RequiresPermissions("system:information:view")
    @GetMapping()
    public String information()
    {
        return prefix + "/information";
    }

    /**
     * 查询5.1.1-2 学院教学管理人员信息列表
     */
    @RequiresPermissions("system:information:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TeamStrInformation teamStrInformation)
    {
        startPage();
        List<TeamStrInformation> list = teamStrInformationService.selectTeamStrInformationList(teamStrInformation);
        return getDataTable(list);
    }

    /**
     * 导出5.1.1-2 学院教学管理人员信息列表
     */
    @RequiresPermissions("system:information:export")
    @Log(title = "5.1.1-2 学院教学管理人员信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TeamStrInformation teamStrInformation)
    {
        List<TeamStrInformation> list = teamStrInformationService.selectTeamStrInformationList(teamStrInformation);
        ExcelUtil<TeamStrInformation> util = new ExcelUtil<TeamStrInformation>(TeamStrInformation.class);
        return util.exportExcel(list, "information");
    }

    /**
     * 新增5.1.1-2 学院教学管理人员信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存5.1.1-2 学院教学管理人员信息
     */
    @RequiresPermissions("system:information:add")
    @Log(title = "5.1.1-2 学院教学管理人员信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TeamStrInformation teamStrInformation)
    {
        return toAjax(teamStrInformationService.insertTeamStrInformation(teamStrInformation));
    }

    /**
     * 修改5.1.1-2 学院教学管理人员信息
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TeamStrInformation teamStrInformation = teamStrInformationService.selectTeamStrInformationById(id);
        mmap.put("teamStrInformation", teamStrInformation);
        return prefix + "/edit";
    }

    /**
     * 修改保存5.1.1-2 学院教学管理人员信息
     */
    @RequiresPermissions("system:information:edit")
    @Log(title = "5.1.1-2 学院教学管理人员信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TeamStrInformation teamStrInformation)
    {
        return toAjax(teamStrInformationService.updateTeamStrInformation(teamStrInformation));
    }

    /**
     * 删除5.1.1-2 学院教学管理人员信息
     */
    @RequiresPermissions("system:information:remove")
    @Log(title = "5.1.1-2 学院教学管理人员信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(teamStrInformationService.deleteTeamStrInformationByIds(ids));
    }
}
