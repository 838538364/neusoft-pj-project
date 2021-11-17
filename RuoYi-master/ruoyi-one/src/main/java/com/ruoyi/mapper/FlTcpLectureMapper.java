package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.FlTcpLecture;

/**
 * 1.2.3-4 学术讲座(fl_tcp_lecture)Mapper接口
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
public interface FlTcpLectureMapper 
{
    /**
     * 查询1.2.3-4 学术讲座(fl_tcp_lecture)
     * 
     * @param id 1.2.3-4 学术讲座(fl_tcp_lecture)ID
     * @return 1.2.3-4 学术讲座(fl_tcp_lecture)
     */
    public FlTcpLecture selectFlTcpLectureById(Long id);

    /**
     * 查询1.2.3-4 学术讲座(fl_tcp_lecture)列表
     * 
     * @param flTcpLecture 1.2.3-4 学术讲座(fl_tcp_lecture)
     * @return 1.2.3-4 学术讲座(fl_tcp_lecture)集合
     */
    public List<FlTcpLecture> selectFlTcpLectureList(FlTcpLecture flTcpLecture);

    /**
     * 新增1.2.3-4 学术讲座(fl_tcp_lecture)
     * 
     * @param flTcpLecture 1.2.3-4 学术讲座(fl_tcp_lecture)
     * @return 结果
     */
    public int insertFlTcpLecture(FlTcpLecture flTcpLecture);

    /**
     * 修改1.2.3-4 学术讲座(fl_tcp_lecture)
     * 
     * @param flTcpLecture 1.2.3-4 学术讲座(fl_tcp_lecture)
     * @return 结果
     */
    public int updateFlTcpLecture(FlTcpLecture flTcpLecture);

    /**
     * 删除1.2.3-4 学术讲座(fl_tcp_lecture)
     * 
     * @param id 1.2.3-4 学术讲座(fl_tcp_lecture)ID
     * @return 结果
     */
    public int deleteFlTcpLectureById(Long id);

    /**
     * 批量删除1.2.3-4 学术讲座(fl_tcp_lecture)
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteFlTcpLectureByIds(String[] ids);
}
