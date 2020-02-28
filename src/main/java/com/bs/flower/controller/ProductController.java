package com.bs.flower.controller;

import com.bs.flower.entity.Product;
import com.bs.flower.service.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Product)表控制层
 *
 * @author makejava
 * @since 2020-02-28 09:33:50
 */
@Api("商品接口")
@RestController
@RequestMapping("product")
public class ProductController {
    /**
     * 服务对象
     */
    @Resource
    private ProductService productService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @ApiOperation("商品详情")
    @GetMapping("selectOne")
    public Product selectOne(@RequestParam("id") Integer id) {
        return this.productService.queryById(id);
    }

}