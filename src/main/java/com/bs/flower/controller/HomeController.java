package com.bs.flower.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
    
    /**
    * @Description: 跳转到首页
    * @Date: 2020/2/28 12:16 AM
    */ 
    @RequestMapping("/index")
    public String toIndex(){
        return "index";
    }

    /**
    * @Description: 跳转到商铺
    * @Date: 2020/2/28 12:16 AM
    */ 
    @RequestMapping("/shop")
    public String toShop(){
        return "shop";
    }

    /**
    * @Description: 我的订单
    * @Author: wangxianlin
    * @Date: 2020/2/28 12:17 AM
    */ 
    @RequestMapping("/order")
    public String toOrder(){
        return "order";
    }

    /**
    * @Description: 跳转到我的购物车
    * @Date: 2020/2/28 12:17 AM
    */ 
    @RequestMapping("/cart")
    public String toCart(){
        return "cart";
    }

    /**
     * @Description: 跳转到商品详情
     * @Date: 2020/2/28 12:17 AM
     */
    @RequestMapping("/detail")
    public String toDetail(){
        return "detail";
    }

}
