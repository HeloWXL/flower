package com.bs.flower.Vo;

import lombok.Data;

import java.util.Date;

@Data
public class CartProductVo {

    private Integer cartId;

    private Integer amout;

    private double price;

    private Date createTime;

    private Integer productId;

    private String productName;

    private String path;

    private String color;

}
