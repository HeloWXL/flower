package com.bs.flower.controller;

import com.bs.flower.Vo.CartProductVo;
import com.bs.flower.entity.Cart;
import com.bs.flower.service.CartService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Cart)表控制层
 *
 * @author makejava
 * @since 2020-02-27 22:13:02
 */
@Api(tags = "购物车接口")
@RestController
@RequestMapping("cart")
public class CartController {
    /**
     * 服务对象
     */
    @Resource
    private CartService cartService;

    @ApiOperation(value = "加入购物车")
    @PostMapping("insertCart")
    public int insert(@RequestBody Cart cart){
        return cartService.insert(cart);
    }

    @ApiOperation(value = "删除购物车")
    @GetMapping("deleteCartId")
    public boolean deleteCartId(@RequestParam("cartId") Integer cartId){
        return cartService.deleteById(cartId);
    }

    @ApiOperation(value = "清空购物车")
    @GetMapping("deleteAllCartByUserId")
    public int deleteAllCartByUserId(@RequestParam("userId") Integer userId){
        return cartService.deleteAllCart(userId);
    }

    @ApiOperation(value = "查询当前用户的购物车")
    @GetMapping("getCartByUserId")
    public List<CartProductVo> getCartByUserId(@RequestParam("userId") Integer userId){
        return cartService.getAllCartByUserId(userId);
    }
}