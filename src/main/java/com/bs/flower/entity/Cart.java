package com.bs.flower.entity;

import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (Cart)实体类
 *
 * @author makejava
 * @since 2020-02-27 22:13:02
 */
@Data
public class Cart implements Serializable {
    private static final long serialVersionUID = -26871519970896873L;
    
    private Integer cartId;
    
    private Integer userId;
    
    private Integer productId;
    
    private Integer amout;
    
    private Object price;
    
    private Date createTime;
}