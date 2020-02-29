package com.bs.flower.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.bs.flower.Vo.CartProductVo;
import com.bs.flower.entity.Admin;
import com.bs.flower.entity.Cart;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * (Cart)表数据库访问层
 *
 * @author makejava
 * @since 2020-02-27 22:13:02
 */
@Mapper
public interface CartDao extends BaseMapper<Cart> {

    /**
     * 通过ID查询单条数据
     *
     * @param cartId 主键
     * @return 实例对象
     */
    Cart queryById(Integer cartId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Cart> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param cart 实例对象
     * @return 对象列表
     */
    List<Cart> queryAll(Cart cart);

    /**
     * 修改数据
     *
     * @param cart 实例对象
     * @return 影响行数
     */
    int update(Cart cart);

    /**
     * 通过主键删除数据
     *
     * @param cartId 主键
     * @return 影响行数
     */
    int deleteById(Integer cartId);

    /**
    * @Description: 查询当前用户的购物车列表
    * @Date: 2020/2/29 1:52 PM
    */ 
    @Select("select c.create_time,c.price,c.amout,p.path,p.product_name,p.color,c.product_id,c.cart_id\n" +
            "from cart c ,product p \n" +
            "where c.product_id = p.product_id\n" +
            "and c.user_id = #{userId}")
    List<CartProductVo> getAllCartByUserId(int userId);

}