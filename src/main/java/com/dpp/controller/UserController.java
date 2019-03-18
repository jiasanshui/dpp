package com.dpp.controller;

import com.dpp.entity.User;
import com.dpp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * 用户的增删查改
 */
@Controller
@RequestMapping("user")
public class UserController {

    //依赖注入
    @Autowired
    private UserService userService;
    @Autowired
    private HttpSession session;

    @RequestMapping("add")
    public Object addUser(User user){
        int add = userService.addUser(user);
        if (add>0){
            return "index";
        }
        return "register";
    }

    /**
     * 用户登录
     * @param map
     * @param request
     * @return
     */
    @RequestMapping("login")
    public Object userLogin(@RequestParam Map map, HttpServletRequest request){
        Boolean isTrue = userService.userLogin(map);
        if(isTrue){
            return "redirect:/jump/index.do";
        }
        request.setAttribute("error","密码或者用户名错误！");
        return "forward:/jump/login.do";
    }

    /**
     * 退出登录
     * @return
     */
    @ResponseBody
    @RequestMapping("exit")
    public Object exit(){
        session.invalidate();
        return "diaodama";
    }
}
