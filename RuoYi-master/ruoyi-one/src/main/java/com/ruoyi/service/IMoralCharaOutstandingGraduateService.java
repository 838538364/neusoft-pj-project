package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.MoralCharaOutstandingGraduate;

/**
 * 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例Service接口
 * 
 * @author ruoyi
 * @date 2021-11-30
 */
public interface IMoralCharaOutstandingGraduateService 
{
    /**
     * 查询7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * 
     * @param id 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例ID
     * @return 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     */
    public MoralCharaOutstandingGraduate selectMoralCharaOutstandingGraduateById(Long id);

    /**
     * 查询7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例列表
     * 
     * @param moralCharaOutstandingGraduate 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * @return 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例集合
     */
    public List<MoralCharaOutstandingGraduate> selectMoralCharaOutstandingGraduateList(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate);

    /**
     * 新增7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * 
     * @param moralCharaOutstandingGraduate 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * @return 结果
     */
    public int insertMoralCharaOutstandingGraduate(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate);

    /**
     * 修改7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * 
     * @param moralCharaOutstandingGraduate 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * @return 结果
     */
    public int updateMoralCharaOutstandingGraduate(MoralCharaOutstandingGraduate moralCharaOutstandingGraduate);

    /**
     * 批量删除7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMoralCharaOutstandingGraduateByIds(String ids);

    /**
     * 删除7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例信息
     * 
     * @param id 7.1.2-2广东东软学院各专业优秀毕业生情况和典型事例ID
     * @return 结果
     */
    public int deleteMoralCharaOutstandingGraduateById(Long id);
}
