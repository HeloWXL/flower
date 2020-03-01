package com.bs.flower.Vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class OrderProduct {

    private Integer orderId;

    private double price;

    private Integer amout;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date sendTime;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date receiveTime;

    private String productName;

    private String path;

    /**
     * 0 未发货，1 已发货，2 已完成
     */
    private Integer status;

    private String receiverName;

    private String receiverPhone;

    private String receiverAddress;
}
