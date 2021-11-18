package com.ruoyi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.FlTcpPaperMapper;
import com.ruoyi.domain.FlTcpPaper;
import com.ruoyi.service.IFlTcpPaperService;
import com.ruoyi.common.core.text.Convert;

/**
 * 1.2.3-3毕业论文统计(fl_tcp_paper)Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-18
 */
@Service
public class FlTcpPaperServiceImpl implements IFlTcpPaperService 
{
    @Autowired
    private FlTcpPaperMapper flTcpPaperMapper;

    /**
     * 查询1.2.3-3毕业论文统计(fl_tcp_paper)
     * 
     * @param id 1.2.3-3毕业论文统计(fl_tcp_paper)ID
     * @return 1.2.3-3毕业论文统计(fl_tcp_paper)
     */
    @Override
    public FlTcpPaper selectFlTcpPaperById(Long id)
    {
        return flTcpPaperMapper.selectFlTcpPaperById(id);
    }

    /**
     * 查询1.2.3-3毕业论文统计(fl_tcp_paper)列表
     * 
     * @param flTcpPaper 1.2.3-3毕业论文统计(fl_tcp_paper)
     * @return 1.2.3-3毕业论文统计(fl_tcp_paper)
     */
    @Override
    public List<FlTcpPaper> selectFlTcpPaperList(FlTcpPaper flTcpPaper)
    {
        return flTcpPaperMapper.selectFlTcpPaperList(flTcpPaper);
    }

    /**
     * 新增1.2.3-3毕业论文统计(fl_tcp_paper)
     * 
     * @param flTcpPaper 1.2.3-3毕业论文统计(fl_tcp_paper)
     * @return 结果
     */
    @Override
    public int insertFlTcpPaper(FlTcpPaper flTcpPaper)
    {
        flTcpPaper.setCreateTime(DateUtils.getNowDate());
        return flTcpPaperMapper.insertFlTcpPaper(flTcpPaper);
    }

    /**
     * 修改1.2.3-3毕业论文统计(fl_tcp_paper)
     * 
     * @param flTcpPaper 1.2.3-3毕业论文统计(fl_tcp_paper)
     * @return 结果
     */
    @Override
    public int updateFlTcpPaper(FlTcpPaper flTcpPaper)
    {
        flTcpPaper.setUpdateTime(DateUtils.getNowDate());
        return flTcpPaperMapper.updateFlTcpPaper(flTcpPaper);
    }

    /**
     * 删除1.2.3-3毕业论文统计(fl_tcp_paper)对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteFlTcpPaperByIds(String ids)
    {
        return flTcpPaperMapper.deleteFlTcpPaperByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除1.2.3-3毕业论文统计(fl_tcp_paper)信息
     * 
     * @param id 1.2.3-3毕业论文统计(fl_tcp_paper)ID
     * @return 结果
     */
    @Override
    public int deleteFlTcpPaperById(Long id)
    {
        return flTcpPaperMapper.deleteFlTcpPaperById(id);
    }
}
