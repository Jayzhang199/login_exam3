package cn.itheima.exam.controller;

import cn.itheima.exam.domain.User;
import cn.itheima.exam.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping(value = "/login")
    public String login(){
       return "login";
    }

    @RequestMapping(value="/loginUser")
    public String loginUser(Model model, @RequestParam(value = "p",required = true)String p,
                                         @RequestParam(value = "username",required = true)String username){
        if(p==null || username==null){
            model.addAttribute("errormessage","用户名或者密码不能为空");
            return "login";
        }else{
            User user=new User();
            user.setUsername(username);
            user.setPassword(p);
            User loginUser = userService.login(user);
            if(loginUser!=null){
                model.addAttribute("user",loginUser.getId());
                return "index";
            }
            return "login";
        }
    }
}
