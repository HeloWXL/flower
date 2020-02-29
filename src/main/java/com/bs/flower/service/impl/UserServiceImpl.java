package com.bs.flower.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.bs.flower.entity.User;
import com.bs.flower.dao.UserDao;
import com.bs.flower.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * (User)表服务实现类
 *
 * @author makejava
 * @since 2020-02-27 22:13:36
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    /**
     * 通过ID查询单条数据
     *
     * @param userId 主键
     * @return 实例对象
     */
    @Override
    public User queryById(Integer userId) {
        return this.userDao.queryById(userId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<User> queryAllByLimit(int offset, int limit) {
        return this.userDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    @Override
    public User insert(User user) {
        this.userDao.insert(user);
        return user;
    }

    /**
     * 修改数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    @Override
    public User update(User user) {
        this.userDao.update(user);
        return this.queryById(user.getUserId());
    }

    /**
     * 通过主键删除数据
     *
     * @param userId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer userId) {
        return this.userDao.deleteById(userId) > 0;
    }

    /**
    * @Description: 登录认证
    * @Date: 2020/2/29 11:51 AM
    */ 
    @Override
    public User checkLogin(String userName,String password) {
        User user = new User();
        user.setPassword(password);
        user.setUserName(userName);
        return  userDao.selectOne(user);
    }

    /**
    * @Description: 用户注册
    * @Date: 2020/2/29 11:51 AM
    */ 
    @Override
    public int register(User user) {
        user.setCreateTime(new Date());
        return this.userDao.insert(user);
    }
}