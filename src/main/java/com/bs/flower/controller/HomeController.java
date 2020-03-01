package com.bs.flower.controller;

import com.bs.flower.service.CartService;
import com.bs.flower.service.OrderService;
import com.bs.flower.service.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
     * 服务对象
     */
    @Resource
    private CartService cartService;

    /**
     * 服务对象
     */
    @Resource
    private OrderService orderService;

    /**
     * @Description: 跳转到首页
     * @Date: 2020/2/28 12:16 AM
     */
    @ApiOperation("跳转首页")
    @GetMapping("/index")
    public String toIndex(Model model) {
        //爱情类
        model.addAttribute("loveProduct", productService.getAllProductByClassFy(1));
        //生日类
        model.addAttribute("birthProduct", productService.getAllProductByClassFy(2));
        return "index";
    }

    /**
     * @Description: 跳转到商铺
     * @Date: 2020/2/28 12:16 AM
     */
    @ApiOperation("跳转商铺")
    @GetMapping("/shop")
    public String toShop(Model model) {
        model.addAttribute("productList", productService.getAllProduct());
        return "shop";
    }

    /**
     * @Description: 我的订单
     * @Author: wangxianlin
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转订单")
    @GetMapping("/order/{userId}")
    public String toOrder(Model model, @PathVariable("userId") int userId) {
        model.addAttribute("cartList",cartService.getAllCartByUserId(userId));
        return "order";
    }

    /**
     * @Description: 跳转到我的购物车
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转我的购物车")
    @GetMapping("/cart")
    public String toCart() {
        return "cart";
    }

    /**
     * @Description: 跳转到商品详情
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转商品详情")
    @GetMapping("/detail/{id}")
    public String toDetail(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("product", this.productService.queryById(id));
        return "detail";
    }

    /**
     * @Description: 跳转登录
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转登录页面")
    @GetMapping("/login")
    public String toLogin() {
        return "/user/login";
    }

    /**
     * @Description: 跳转注册
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转登录页面")
    @GetMapping("/register")
    public String toRegister() {
        return "/user/register";
    }

    /**
     * @Description: 个人中心
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转个人中心")
    @GetMapping("/info")
    public String toInfo() {
        return "/user/info";
    }


    /**
     * @Description: 订单详情
     * @Date: 2020/2/28 12:17 AM
     */
    @ApiOperation("跳转订单详情")
    @GetMapping("/orderDetail/{orderId}")
    public String toOrderDetail(Model model,@PathVariable("orderId") Integer orderId) {
        model.addAttribute("order",orderService.getOrderById(orderId));
        return "/orderDetail";
    }

}
