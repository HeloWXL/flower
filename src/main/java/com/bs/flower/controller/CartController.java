package com.bs.flower.controller;

import com.bs.flower.entity.Cart;
import com.bs.flower.service.CartService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Cart)表控制层
 *
 * @author makejava
 * @since 2020-02-27 22:13:02
 */
@Api("购物车接口")
@RestController
@RequestMapping("cart")
public class CartController {
    /**
     * 服务对象
     */
    @Resource
    private CartService cartService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Cart selectOne(Integer id) {
        return this.cartService.queryById(id);
    }

    @ApiOperation("加入购物车")
    @PostMapping("insertCart")
    public int insert(@RequestBody Cart cart){
        return cartService.insert(cart);
    }

    @ApiOperation("删除购物车")
    @PostMapping("deleteCartId")
    public boolean deleteCartId(@RequestParam("cartId") Integer cartId){
        return cartService.deleteById(cartId);
    }

    @ApiOperation("清空购物车")
    @PostMapping("deleteAllCartByUserId")
    public int deleteAllCartByUserId(@RequestParam("userId") Integer userId){
        return cartService.deleteAllCart(userId);
    }

}