package cn.itheima.exam.serviceImpl;

import cn.itheima.exam.domain.Customer;
import cn.itheima.exam.mapper.CustomerMapper;
import cn.itheima.exam.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Resource
    private CustomerMapper customerMapper;

    @Override
    public List<Customer> query() {
        return customerMapper.query();
    }

    @Override
    public List<Customer> queryCondition(Map<String,Object> map) {
        if(map!=null){
            return customerMapper.queryCondition(map);
        }else{
            return customerMapper.query();
        }
    }

    @Override
    public void delete(String id) {
        customerMapper.delete(id);
    }
}
