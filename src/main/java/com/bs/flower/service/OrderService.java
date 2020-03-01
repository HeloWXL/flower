package com.bs.flower.service;

import com.bs.flower.Vo.OrderProduct;
import com.bs.flower.entity.Order;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * (Order)表服务接口
 *
 * @author makejava
 * @since 2020-02-27 22:13:13
 */
public interface OrderService {

    /**
     * 通过ID查询单条数据
     *
     * @param orderId 主键
     * @return 实例对象
     */
    Order queryById(Integer orderId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Order> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param order 实例对象
     * @return int
     */
    int insert(Order order);

    /**
     * 通过主键删除数据
     *
     * @param orderId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer orderId);

    /**
    * @Description: 根据状态查询用户的订单信息
    * @Date: 2020/3/1 12:44 PM
    */ 
    List<OrderProduct> getOrderByStatus(int userId, int status);


    /**
     * @Description: 根据ID查询订单详情
     * @Date: 2020/3/1 10:53 PM
     */
    OrderProduct getOrderById(@Param("orderId") int orderId);

    /**
     * @Description: 收货
     * @Date: 2020/3/2 12:17 AM
     */
    int receipt(int orderId,Date receiveTime);
}