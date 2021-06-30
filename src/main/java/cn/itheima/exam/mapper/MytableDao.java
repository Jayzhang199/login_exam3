package cn.itheima.exam.mapper;

import cn.itheima.exam.domain.Mytable;

public interface MytableDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Mytable record);

    int insertSelective(Mytable record);

    Mytable selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Mytable record);

    int updateByPrimaryKey(Mytable record);
}