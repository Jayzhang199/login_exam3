package cn.itheima.exam.mapper;

import cn.itheima.exam.domain.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    User login(User user);
}
