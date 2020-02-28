package com.bs.flower.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (User)实体类
 *
 * @author makejava
 * @since 2020-02-27 22:13:36
 */
@Data
public class User implements Serializable {
    private static final long serialVersionUID = 223927978628761237L;

    @TableId(value = "user_id",type = IdType.AUTO)
    private Integer userId;
    
    private String userName;
    
    private String nickName;
    
    private String password;
    
    private String sex;
    
    private String phone;
    
    private String address;
    
    private Date createTime;
    
    private Date updateTime;
}