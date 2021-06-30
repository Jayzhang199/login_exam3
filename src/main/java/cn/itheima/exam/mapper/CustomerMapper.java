package cn.itheima.exam.mapper;

import cn.itheima.exam.domain.Customer;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;
@Mapper
public interface CustomerMapper {
    List<Customer> queryCondition(Map<String,Object> map);
    List<Customer> query();

    void delete(String id);
}
