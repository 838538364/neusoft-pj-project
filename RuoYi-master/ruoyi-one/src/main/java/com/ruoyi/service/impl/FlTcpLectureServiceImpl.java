package com.ruoyi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.FlTcpLectureMapper;
import com.ruoyi.domain.FlTcpLecture;
import com.ruoyi.service.IFlTcpLectureService;
import com.ruoyi.common.core.text.Convert;

/**
 * 1.2.3-4 学术讲座(fl_tcp_lecture)Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-11-17
 */
@Service
public class FlTcpLectureServiceImpl implements IFlTcpLectureService 
{
    @Autowired
    private FlTcpLectureMapper flTcpLectureMapper;

    /**
     * 查询1.2.3-4 学术讲座(fl_tcp_lecture)
     * 
     * @param id 1.2.3-4 学术讲座(fl_tcp_lecture)ID
     * @return 1.2.3-4 学术讲座(fl_tcp_lecture)
     */
    @Override
    public FlTcpLecture selectFlTcpLectureById(Long id)
    {
        return flTcpLectureMapper.selectFlTcpLectureById(id);
    }

    /**
     * 查询1.2.3-4 学术讲座(fl_tcp_lecture)列表
     * 
     * @param flTcpLecture 1.2.3-4 学术讲座(fl_tcp_lecture)
     * @return 1.2.3-4 学术讲座(fl_tcp_lecture)
     */
    @Override
    public List<FlTcpLecture> selectFlTcpLectureList(FlTcpLecture flTcpLecture)
    {
        return flTcpLectureMapper.selectFlTcpLectureList(flTcpLecture);
    }

    /**
     * 新增1.2.3-4 学术讲座(fl_tcp_lecture)
     * 
     * @param flTcpLecture 1.2.3-4 学术讲座(fl_tcp_lecture)
     * @return 结果
     */
    @Override
    public int insertFlTcpLecture(FlTcpLecture flTcpLecture)
    {
        flTcpLecture.setCreateTime(DateUtils.getNowDate());
        return flTcpLectureMapper.insertFlTcpLecture(flTcpLecture);
    }

    /**
     * 修改1.2.3-4 学术讲座(fl_tcp_lecture)
     * 
     * @param flTcpLecture 1.2.3-4 学术讲座(fl_tcp_lecture)
     * @return 结果
     */
    @Override
    public int updateFlTcpLecture(FlTcpLecture flTcpLecture)
    {
        flTcpLecture.setUpdateTime(DateUtils.getNowDate());
        return flTcpLectureMapper.updateFlTcpLecture(flTcpLecture);
    }

    /**
     * 删除1.2.3-4 学术讲座(fl_tcp_lecture)对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteFlTcpLectureByIds(String ids)
    {
        return flTcpLectureMapper.deleteFlTcpLectureByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除1.2.3-4 学术讲座(fl_tcp_lecture)信息
     * 
     * @param id 1.2.3-4 学术讲座(fl_tcp_lecture)ID
     * @return 结果
     */
    @Override
    public int deleteFlTcpLectureById(Long id)
    {
        return flTcpLectureMapper.deleteFlTcpLectureById(id);
    }
}
