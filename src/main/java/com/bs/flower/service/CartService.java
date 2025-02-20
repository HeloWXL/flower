package com.bs.flower.service;

import com.bs.flower.Vo.CartProductVo;
import com.bs.flower.entity.Cart;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * (Cart)表服务接口
 *
 * @author makejava
 * @since 2020-02-27 22:13:02
 */
public interface CartService {

    /**
     * 通过ID查询单条数据
     *
     * @param cartId 主键
     * @return 实例对象
     */
    Cart queryById(Integer cartId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Cart> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param cart 实例对象
     * @return 实例对象
     */
    int insert(Cart cart);

    /**
     * 修改数据
     *
     * @param cart 实例对象
     * @return 实例对象
     */
    Cart update(Cart cart);

    /**
     * 通过主键删除数据
     *
     * @param cartId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer cartId);

    /**
    * @Description: 清空当前用户的购物车
    * @params: 
    * @return: 
    * @Author:
    * @Date: 2020/2/29 1:37 PM
    */ 
    int deleteAllCart(Integer userId);

    /**
    * @Description: 查询当前用户的购物车列表
    * @Date: 2020/2/29 1:48 PM
    */
    List<CartProductVo> getAllCartByUserId(int userId);
}