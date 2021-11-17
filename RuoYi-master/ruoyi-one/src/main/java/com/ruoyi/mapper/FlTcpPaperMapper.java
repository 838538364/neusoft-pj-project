package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.FlTcpPaper;

/**
 * 1.2.3-3毕业论文统计(fl_tcp_paper)Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
public interface FlTcpPaperMapper 
{
    /**
     * 查询1.2.3-3毕业论文统计(fl_tcp_paper)
     * 
     * @param id 1.2.3-3毕业论文统计(fl_tcp_paper)ID
     * @return 1.2.3-3毕业论文统计(fl_tcp_paper)
     */
    public FlTcpPaper selectFlTcpPaperById(Long id);

    /**
     * 查询1.2.3-3毕业论文统计(fl_tcp_paper)列表
     * 
     * @param flTcpPaper 1.2.3-3毕业论文统计(fl_tcp_paper)
     * @return 1.2.3-3毕业论文统计(fl_tcp_paper)集合
     */
    public List<FlTcpPaper> selectFlTcpPaperList(FlTcpPaper flTcpPaper);

    /**
     * 新增1.2.3-3毕业论文统计(fl_tcp_paper)
     * 
     * @param flTcpPaper 1.2.3-3毕业论文统计(fl_tcp_paper)
     * @return 结果
     */
    public int insertFlTcpPaper(FlTcpPaper flTcpPaper);

    /**
     * 修改1.2.3-3毕业论文统计(fl_tcp_paper)
     * 
     * @param flTcpPaper 1.2.3-3毕业论文统计(fl_tcp_paper)
     * @return 结果
     */
    public int updateFlTcpPaper(FlTcpPaper flTcpPaper);

    /**
     * 删除1.2.3-3毕业论文统计(fl_tcp_paper)
     * 
     * @param id 1.2.3-3毕业论文统计(fl_tcp_paper)ID
     * @return 结果
     */
    public int deleteFlTcpPaperById(Long id);

    /**
     * 批量删除1.2.3-3毕业论文统计(fl_tcp_paper)
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteFlTcpPaperByIds(String[] ids);
}
