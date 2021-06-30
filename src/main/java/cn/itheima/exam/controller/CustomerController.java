package cn.itheima.exam.controller;

import cn.itheima.exam.domain.Customer;
import cn.itheima.exam.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {

    @Resource
    private CustomerService customerService;

    /*@ResponseBody
    @RequestMapping("/query")
    public List<Customer> query(){
        Map<String,Object> map =new HashMap<>();
        List<Customer> list = customerService.query();
        return list;
    }*/

    @ResponseBody
    @RequestMapping("/query")
    public List<Customer> query(@RequestParam(value = "cust_username",required = false,defaultValue = "")String cust_username,
                                @RequestParam(value = "cust_type",required = false,defaultValue = "")String cust_type){
        Map<String,Object> map =new HashMap<>();
        map.put("cust_username",cust_username);
        map.put("cust_type",cust_type);
        System.out.println(cust_username);
        System.out.println(cust_type);
        List<Customer> list = customerService.queryCondition(map);
        return list;
    }

    @RequestMapping(value = "/addCustomer")
    public String addCustomer(){
        return "";
    }

    @RequestMapping(value = "/delete")
    public String delete(@RequestParam(value = "id",required = true)String id){
         customerService.delete(id);
         return "index";
    }
    @RequestMapping(value = "/say/yes")
    public String say(){
        return "yes";
    }
}
