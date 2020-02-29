package com.bs.flower.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
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

    @TableId(value = "product_id", type = IdType.AUTO)
    private Integer productId;

    private String productName;

    private double primaryPrice;

    private double nowPrice;

    private Integer amout;

    private String path;

    private Integer classfy;

    private String color;

    @TableField("descr")
    private String descr;

    private Date createTime;

    private Date updateItme;

    private String material;

    private String packing;

    private String language;

    private String gift;

}