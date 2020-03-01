package com.bs.flower.service.impl;

import com.bs.flower.Vo.CartProductVo;
import com.bs.flower.Vo.OrderProduct;
import com.bs.flower.dao.CartDao;
import com.bs.flower.entity.Order;
import com.bs.flower.dao.OrderDao;
import com.bs.flower.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

/**
 * (Order)表服务实现类
 *
 * @author makejava
 * @since 2020-02-27 22:13:13
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderDao orderDao;
    @Resource
    private CartDao cartDao;


    /**
     * 通过ID查询单条数据
     *
     * @param orderId 主键
     * @return 实例对象
     */
    @Override
    public Order queryById(Integer orderId) {
        return this.orderDao.queryById(orderId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Order> queryAllByLimit(int offset, int limit) {
        return this.orderDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param order 实例对象
     * @return 实例对象
     */
    @Override
    public int insert(Order order) {
        List<CartProductVo> list = cartDao.getAllCartByUserId(order.getUserId());
        for (CartProductVo c:list
             ) {
            order.setProductId(c.getProductId());
            order.setOrderNo(UUID.randomUUID().toString());
            order.setAmout(c.getAmout());
            order.setPrice(c.getPrice());
            order.setStatus(0);
            this.orderDao.insert(order);
            //删除用户购物车信息
            this.cartDao.deleteById(c.getCartId());
        }
        return  1;
    }


    /**
     * 通过主键删除数据
     *
     * @param orderId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer orderId) {
        return this.orderDao.deleteById(orderId) > 0;
    }

    /**
    * @Description: 根据状态查询用户的订单信息
    * @Date: 2020/3/1 12:44 PM
    */ 
    @Override
    public List<OrderProduct> getOrderByStatus(int userId, int status) {
        return this.orderDao.getOrderByStatus(userId,status);
    }

    @Override
    public OrderProduct getOrderById(int orderId) {
        return this.orderDao.getOrderById(orderId);
    }
}