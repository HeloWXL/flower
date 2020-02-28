package com.bs.flower.entity;

import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (Admin)实体类
 *
 * @author makejava
 * @since 2020-02-27 22:11:29
 */
@Data
public class Admin implements Serializable {
    private static final long serialVersionUID = 971331848188215718L;
    
    private Integer adminId;
    
    private String adminName;
    
    private String adminNick;
    
    private String password;
    
    private String phone;
    
    private Date createTime;
    
    private Date updateTime;

}