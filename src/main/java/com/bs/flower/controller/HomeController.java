package com.bs.flower.controller;

import com.bs.flower.service.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Api("网页跳转")
@Controller
@RequestMapping("/")
public class HomeController {

    /**
     * 服务对象
     */
    @Resource
    private ProductService productService;
    /**
    * @Description: 跳转到首页
    * @Date: 2020/2/28 12:16 AM
    */
    @ApiOperation("跳转首页")
    @GetMapping("/index")
    public String toIndex(){
        return "index";
    }

    /**
    * @Description: 跳转到商铺
    * @Date: 2020/2/28 12:16 AM
    */
    @ApiOperation("跳转商铺")
    @GetMapping("/shop")
    public String toShop(Model model){
        model.addAttribute("productList",productService.getAllProduct());
        return "shop";
    }

    /**
    * @Description: 我的订单
    * @Author: wangxianlin
    * @Date: 2020/2/28 12:17 AM
    */
    @ApiOperation("跳转订单")
    @GetMapping("/order")
    public String toOrder(){
        return "order";
    }

    /**
    * @Description: 跳转到我的购物车
    * @Date: 2020/2/28 12:17 AM
    */
    @ApiOperation("跳转我的购物车")
    @GetMapping("/cart")
    public String toCart(){
        return "cart";
    }

    /**
     * @Description: 跳转到商品详情
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转商品详情")
    @GetMapping("/detail/{id}")
    public String toDetail(@PathVariable("id") Integer id, Model model){
        model.addAttribute("product",this.productService.queryById(id));
        return "detail";
    }

    /**
     * @Description: 跳转登录
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转登录页面")
    @GetMapping("/login")
    public String toLogin(){
        return "/user/login";
    }

    /**
     * @Description: 跳转注册
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转登录页面")
    @GetMapping("/register")
    public String toRegister(){
        return "/user/register";
    }

}
