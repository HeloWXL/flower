package com.bs.flower.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.bs.flower.Vo.OrderProduct;
import com.bs.flower.entity.Cart;
import com.bs.flower.entity.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * (Order)表数据库访问层
 *
 * @author makejava
 * @since 2020-02-27 22:13:13
 */
@Mapper
public interface OrderDao extends BaseMapper<Order> {

    /**
     * 通过ID查询单条数据
     *
     * @param orderId 主键
     * @return 实例对象
     */
    Order queryById(Integer orderId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Order> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param order 实例对象
     * @return 对象列表
     */
    List<Order> queryAll(Order order);

    /**
     * 修改数据
     *
     * @param order 实例对象
     * @return 影响行数
     */
    int update(Order order);

    /**
     * 通过主键删除数据
     *
     * @param orderId 主键
     * @return 影响行数
     */
    int deleteById(Integer orderId);

    /**
    * @Description: 根据状态查询用户的订单信息
    * @Date: 2020/3/1 12:32 PM
    */ 
    @Select("SELECT\n" +
            "\tp.path,p.product_name,o.amout,o.price,o.create_time,o.send_time,o.order_id\n" +
            "FROM\n" +
            "\tflower.order o,\n" +
            "\tflower.product p \n" +
            "WHERE\n" +
            "\to.product_id = p.product_id \n" +
            "\tAND o.status = #{status} \n" +
            "\tAND o.user_id = #{userId}")
    List<OrderProduct> getOrderByStatus(@Param("userId") int userId, @Param("status") int status);


    /**
    * @Description: 查询订单详情
    * @Date: 2020/3/1 10:52 PM
    */ 
    @Select("SELECT\n" +
            "\tp.path,p.product_name," +
            "o.amout,o.price,o.create_time,o.send_time,o.order_id,o.status,o.receiver_name,o.receiver_phone,o.receiver_address\n" +
            "FROM\n" +
            "\tflower.order o,\n" +
            "\tflower.product p \n" +
            "WHERE\n" +
            "\to.product_id = p.product_id \n" +
            "\tAND o.order_id = #{orderId} \n" +
            "\t")
    OrderProduct getOrderById(@Param("orderId") int orderId);

    /**
    * @Description: 收货
    * @Date: 2020/3/2 12:54 AM
    */ 
    @Update("update flower.order o set o.status = 2 where o.order_id = #{orderId}")
    int receipt(@Param("orderId") int orderId);

}