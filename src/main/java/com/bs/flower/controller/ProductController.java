package com.bs.flower.controller;

import com.bs.flower.entity.Product;
import com.bs.flower.service.ProductService;
import com.bs.flower.util.CommonUtil;
import com.bs.flower.util.ConfigUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.*;

/**
 * (Product)表控制层
 *
 * @author makejava
 * @since 2020-02-28 09:33:50
 */
@Api(tags = "商品接口")
@RestController
@RequestMapping("product")
public class ProductController {
    /**
     * 服务对象
     */
    @Resource
    private ProductService productService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @ApiOperation(value = "商品详情")
    @GetMapping("selectOne")
    public Product selectOne(@RequestParam("id") Integer id) {
        return this.productService.queryById(id);
    }

    @ApiOperation(value = "新增商品")
    @PostMapping("insertProduct")
    public int insertProduct(@RequestBody Product product) {
        return this.productService.insert(product);
    }

    /**
    * @Description: 更新商品图片
    * @Date: 2020/2/29 11:05 AM
    */ 
    @ApiOperation(value = "更新商品图片")
    @PostMapping("/updateImage")
    public Map<String,Object> uploadToLocal(@RequestParam("file") MultipartFile file,
                                            HttpServletResponse response,@RequestParam("id") int id) {
        Map<String,Object> result  = new HashMap<>();
        response.setContentType("text/html;charset=UTF-8");
        String fileName = file.getOriginalFilename();
        try {
            Date date = new Date();
            String picDir = ConfigUtil.getValue("productDir");
            String relativeDir = getRelativeDir(date);
            File fileDir = new File(picDir + relativeDir);
            if (!fileDir.exists()) {
                fileDir.mkdirs();
            }
            //新的文件名
            String newName = CommonUtil.format(date, "HHmmssSSS") +
                    Math.round(Math.random() * 8999 + 1000) +
                    fileName.substring(fileName.lastIndexOf("."));
            //群头像地址
            String imgPath = relativeDir + newName;
            file.transferTo(new File(picDir + imgPath));
            //将图片保存在数据库
            Product product = new Product();
            product.setProductId(id);
            product.setPath(imgPath);
            productService.update(product);

            result.put("code", 200);
            result.put("msg", fileName);
            result.put("data", imgPath);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("code", 500);
            result.put("msg", fileName);
            result.put("data", "图片上传发生未知异常，请联系管理员！");
        }
        return result;
    }

    /**
     * 根据日期得到年/月/日/的相对路径
     * @param date
     * @return
     */
    private String getRelativeDir(Date date) {
        String year = CommonUtil.format(date, "yyyy");
        String month = CommonUtil.format(date, "MM");
        String day = CommonUtil.format(date, "dd");
        String dir = year + "/" + month + "/" + day + "/";
        return dir;
    }

    @ApiOperation(value = "获取图片路径")
    @GetMapping(value = "/getLocalImg")
    public void getLocalImg(HttpServletRequest request, HttpServletResponse response, @RequestParam("path") String path){
        try {
            File file = new File(ConfigUtil.getValue("productDir") + path);
            FileInputStream fin = new FileInputStream(file);
            byte[] data = new byte[(int) file.length()];
            fin.read(data);
            fin.close();
            response.setContentType("image/*");
            OutputStream out = response.getOutputStream();
            out.write(data);
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    @ApiOperation("获取所有的商品")
    @GetMapping("getAllProduct")
    public List<Product> getAllProduct() {
        return this.productService.getAllProduct();
    }
}