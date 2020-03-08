package com.bs.flower.service;

import com.bs.flower.entity.Product;
import java.util.List;

/**
 * (Product)表服务接口
 *
 * @author makejava
 * @since 2020-02-28 09:33:50
 */
public interface ProductService {

    /**
     * 通过ID查询单条数据
     *
     * @param productId 主键
     * @return 实例对象
     */
    Product queryById(Integer productId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Product> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param product 实例对象
     * @return 实例对象
     */
    int insert(Product product);

    /**
     * 修改数据
     *
     * @param product 实例对象
     * @return 实例对象
     */
    Product update(Product product);

    /**
     * 通过主键删除数据
     *
     * @param productId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer productId);

    /**
     * @Description: 查询所有的
     * @Date: 2020/2/29 9:57 PM
     */
    List<Product> getAllProduct();
    
    /**
    * @Description: 按照分类查询
    * @params: 
    * @return: 
    * @Author:
    * @Date: 2020/2/29 10:46 PM
    */ 
    List<Product> getAllProductByClassFy(int classFy);

}