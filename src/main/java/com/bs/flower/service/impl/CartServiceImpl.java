package com.bs.flower.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.bs.flower.entity.Cart;
import com.bs.flower.dao.CartDao;
import com.bs.flower.service.CartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * (Cart)表服务实现类
 *
 * @author makejava
 * @since 2020-02-27 22:13:02
 */
@Service("cartService")
public class CartServiceImpl implements CartService {
    @Resource
    private CartDao cartDao;

    /**
     * 通过ID查询单条数据
     *
     * @param cartId 主键
     * @return 实例对象
     */
    @Override
    public Cart queryById(Integer cartId) {
        return this.cartDao.queryById(cartId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Cart> queryAllByLimit(int offset, int limit) {
        return this.cartDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param cart 实例对象
     * @return 实例对象
     */
    @Override
    public int insert(Cart cart) {
        cart.setCreateTime(new Date());
        return this.cartDao.insert(cart);
    }

    /**
     * 修改数据
     *
     * @param cart 实例对象
     * @return 实例对象
     */
    @Override
    public Cart update(Cart cart) {
        this.cartDao.update(cart);
        return this.queryById(cart.getCartId());
    }

    /**
     * 通过主键删除数据
     *
     * @param cartId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer cartId) {
        return this.cartDao.deleteById(cartId) > 0;
    }

    @Override
    public int deleteAllCart(Integer userId) {
        return  cartDao.delete(new EntityWrapper<Cart>().eq("user_id",userId));
    }
}