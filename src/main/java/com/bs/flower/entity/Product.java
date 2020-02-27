package com.bs.flower.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Product)实体类
 *
 * @author makejava
 * @since 2020-02-27 22:13:25
 */
public class Product implements Serializable {
    private static final long serialVersionUID = 398780288102113981L;
    
    private Integer productId;
    
    private String productName;
    
    private Object primaryPrice;
    
    private Object nowPrice;
    
    private Integer amout;
    
    private String path;
    
    private Integer classfy;
    
    private String color;
    
    private String desc;
    
    private Date createTime;
    
    private Date updateItme;


    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Object getPrimaryPrice() {
        return primaryPrice;
    }

    public void setPrimaryPrice(Object primaryPrice) {
        this.primaryPrice = primaryPrice;
    }

    public Object getNowPrice() {
        return nowPrice;
    }

    public void setNowPrice(Object nowPrice) {
        this.nowPrice = nowPrice;
    }

    public Integer getAmout() {
        return amout;
    }

    public void setAmout(Integer amout) {
        this.amout = amout;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Integer getClassfy() {
        return classfy;
    }

    public void setClassfy(Integer classfy) {
        this.classfy = classfy;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateItme() {
        return updateItme;
    }

    public void setUpdateItme(Date updateItme) {
        this.updateItme = updateItme;
    }

}