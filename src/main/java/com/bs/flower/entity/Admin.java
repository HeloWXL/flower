package com.bs.flower.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Admin)实体类
 *
 * @author makejava
 * @since 2020-02-27 22:11:29
 */
public class Admin implements Serializable {
    private static final long serialVersionUID = 971331848188215718L;
    
    private Integer adminId;
    
    private String adminName;
    
    private String adminNick;
    
    private String password;
    
    private String phone;
    
    private Date createTime;
    
    private Date updateTime;


    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminNick() {
        return adminNick;
    }

    public void setAdminNick(String adminNick) {
        this.adminNick = adminNick;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

}