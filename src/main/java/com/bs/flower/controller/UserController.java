package com.bs.flower.controller;

import com.bs.flower.entity.User;
import com.bs.flower.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.HttpRequest;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * (User)表控制层
 *
 * @author makejava
 * @since 2020-02-27 22:13:36
 */
@Api("用户接口")
@RestController
@RequestMapping("user")
public class UserController {
    private static final String USER = "USERSESSION";
    /**
     * 服务对象
     */
    @Resource
    private UserService userService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public User selectOne(Integer id) {
        return this.userService.queryById(id);
    }

    @ApiOperation("登录验证")
    @PostMapping("checkLogin")
    @ResponseBody
    public Boolean checkLogin(@RequestParam("userName") String userName, @RequestParam("password") String password, HttpSession session){
       User user =  userService.checkLogin(userName,password);
       if(user!=null){
           session.setAttribute(USER,user);
           return true;
       }else{
           return false;
       }
    }


    @ApiOperation("用户注册")
    @PostMapping("register")
    public int register(@RequestBody User user){
        return userService.register(user);
    }


    @ApiOperation(value = "退出登录")
    @GetMapping("/logout")
    @ResponseBody
    public void removeStudentSession(HttpServletRequest request, HttpServletResponse response){
        request.getSession().removeAttribute(USER);
        if ( request.getSession().getAttribute(USER) == null) {
            try {
                response.sendRedirect("/flower/index");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}