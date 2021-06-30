package cn.itheima.exam.serviceImpl;

import cn.itheima.exam.domain.User;
import cn.itheima.exam.mapper.UserMapper;
import cn.itheima.exam.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserSerivceImpl implements UserService{

    @Resource
    private UserMapper userMapper;

    @Override
    public User login(User user) {
        return userMapper.login(user);
    }
}
