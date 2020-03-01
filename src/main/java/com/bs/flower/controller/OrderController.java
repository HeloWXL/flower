package com.bs.flower.controller;

import com.bs.flower.Vo.OrderProduct;
import com.bs.flower.entity.Order;
import com.bs.flower.service.OrderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Order)表控制层
 *
 * @author makejava
 * @since 2020-02-27 22:13:13
 */
@Api("订单接口")
@RestController
@RequestMapping("order")
public class OrderController {
    /**
     * 服务对象
     */
    @Resource
    private OrderService orderService;

    @ApiOperation("查询订单详情")
    @GetMapping("getOrderById")
    public Order getOrderById(@RequestParam("orderId") int orderId){
        return this.orderService.queryById(orderId);
    }

    @ApiOperation("添加订单")
    @PostMapping("insertOrder")
    public int insert(@RequestBody Order order){
        return this.orderService.insert(order);
    }

    @ApiOperation("根据状态查询用户的订单信息")
    @GetMapping("getOrderByStatus")
    public List<OrderProduct> getOrderByStatus(@RequestParam("userId") int userId, @RequestParam("status") int status) {
        return this.orderService.getOrderByStatus(userId,status);
    }

    @ApiOperation("收货")
    @GetMapping("receipt")
    public int receipt(@RequestParam("orderId") int orderId) {
        return this.orderService.receipt(orderId);
    }

}