package com.bs.flower.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (Order)实体类
 *
 * @author makejava
 * @since 2020-02-27 22:13:13
 */
@Data
public class Order implements Serializable {
    private static final long serialVersionUID = -42638833750958591L;

    @TableId(value = "order_id",type = IdType.AUTO)
    private Integer orderId;
    
    private String orderNo;
    
    private Integer userId;
    
    private Integer productId;
    
    private Object price;
    
    private Integer amout;
    
    private String receiverName;
    
    private String receiverPhone;
    
    private String receiverAddress;
    
    private Date createTime;
    
    private Date sendTime;
    
    private Date receiveTime;
}