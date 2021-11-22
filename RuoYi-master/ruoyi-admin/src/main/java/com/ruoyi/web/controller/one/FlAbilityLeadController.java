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
import com.ruoyi.domain.FlAbilityLead;
import com.ruoyi.service.IFlAbilityLeadService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 1.2.2-1学校领导一览Controller
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Controller
@RequestMapping("/system/lead")
public class FlAbilityLeadController extends BaseController
{
    private String prefix = "system/lead";

    @Autowired
    private IFlAbilityLeadService flAbilityLeadService;

    @RequiresPermissions("system:lead:view")
    @GetMapping()
    public String lead()
    {
        return prefix + "/lead";
    }

    /**
     * 查询1.2.2-1学校领导一览列表
     */
    @RequiresPermissions("system:lead:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(FlAbilityLead flAbilityLead)
    {
        startPage();
        List<FlAbilityLead> list = flAbilityLeadService.selectFlAbilityLeadList(flAbilityLead);
        return getDataTable(list);
    }

    /**
     * 导出1.2.2-1学校领导一览列表
     */
    @RequiresPermissions("system:lead:export")
    @Log(title = "1.2.2-1学校领导一览", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(FlAbilityLead flAbilityLead)
    {
        List<FlAbilityLead> list = flAbilityLeadService.selectFlAbilityLeadList(flAbilityLead);
        ExcelUtil<FlAbilityLead> util = new ExcelUtil<FlAbilityLead>(FlAbilityLead.class);
        return util.exportExcel(list, "lead");
    }

    @PostMapping("/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception
    {
        // 改成自己的实体类
        ExcelUtil<FlAbilityLead> util = new ExcelUtil<FlAbilityLead>(FlAbilityLead.class);
        List<FlAbilityLead> userList = util.importExcel(file.getInputStream());

        // 遍历插入
        for (int i = 0; i < userList.size(); i++) {
            // 把每条数据插入到数据库
            FlAbilityLead lead = userList.get(i);
            flAbilityLeadService.insertFlAbilityLead(lead);
        }
        
        return AjaxResult.success();
    }


    /**
     * 新增1.2.2-1学校领导一览
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存1.2.2-1学校领导一览
     */
    @RequiresPermissions("system:lead:add")
    @Log(title = "1.2.2-1学校领导一览", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(FlAbilityLead flAbilityLead)
    {
        return toAjax(flAbilityLeadService.insertFlAbilityLead(flAbilityLead));
    }

    /**
     * 修改1.2.2-1学校领导一览
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        FlAbilityLead flAbilityLead = flAbilityLeadService.selectFlAbilityLeadById(id);
        mmap.put("flAbilityLead", flAbilityLead);
        return prefix + "/edit";
    }

    /**
     * 修改保存1.2.2-1学校领导一览
     */
    @RequiresPermissions("system:lead:edit")
    @Log(title = "1.2.2-1学校领导一览", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(FlAbilityLead flAbilityLead)
    {
        return toAjax(flAbilityLeadService.updateFlAbilityLead(flAbilityLead));
    }

    /**
     * 删除1.2.2-1学校领导一览
     */
    @RequiresPermissions("system:lead:remove")
    @Log(title = "1.2.2-1学校领导一览", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(flAbilityLeadService.deleteFlAbilityLeadByIds(ids));
    }


    /**
     * 下载模板
     */
    @GetMapping("/importTemplate")
    public AjaxResult importTemplate(){

        ExcelUtil<FlAbilityLead> util = new ExcelUtil<>(FlAbilityLead.class);
        return util.importTemplateExcel("领导信息模板");
    }
}
