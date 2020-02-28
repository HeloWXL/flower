package com.bs.flower.entity;

import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (Product)实体类
 *
 * @author makejava
 * @since 2020-02-28 09:33:50
 */
@Data
public class Product implements Serializable {
    private static final long serialVersionUID = 604317430278835337L;
    
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
}