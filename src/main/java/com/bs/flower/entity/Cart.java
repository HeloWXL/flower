package com.bs.flower.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Cart)实体类
 *
 * @author makejava
 * @since 2020-02-27 22:13:02
 */
public class Cart implements Serializable {
    private static final long serialVersionUID = -26871519970896873L;
    
    private Integer cartId;
    
    private Integer userId;
    
    private Integer productId;
    
    private Integer amout;
    
    private Object price;
    
    private Date createTime;


    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getAmout() {
        return amout;
    }

    public void setAmout(Integer amout) {
        this.amout = amout;
    }

    public Object getPrice() {
        return price;
    }

    public void setPrice(Object price) {
        this.price = price;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}