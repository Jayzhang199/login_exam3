package cn.itheima.exam.service;

import cn.itheima.exam.domain.Customer;

import java.util.List;
import java.util.Map;

public interface CustomerService {
    List<Customer> query();
    List<Customer> queryCondition(Map<String,Object> map);

    void delete(String id);
}
