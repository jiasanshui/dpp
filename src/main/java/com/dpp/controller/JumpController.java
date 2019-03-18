package com.dpp.controller;

import com.dpp.entity.Goods;
import com.dpp.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("jump")
public class JumpController {

    @Autowired
    private GoodsService goodsService;


    /**
     * 跳转到网站首页
     * @return
     */
    @RequestMapping("index")
    public Object index(Model model,@RequestParam Map map){
        List<Goods> allGoods = goodsService.getAllGoods(map);
        model.addAttribute("pr",map.get("pr"));
        model.addAttribute("Goods",allGoods);
        return "index";
    }

    /**
     * 跳转到注册页面
     * @return
     */
    @RequestMapping("register")
    public String register(){
        return "register";
    }

    /**
     * 跳转到登录页面
     * @return
     */
    @RequestMapping("login")
    public Object login(){
        return "login";
    }
}
