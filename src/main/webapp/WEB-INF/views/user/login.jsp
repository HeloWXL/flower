<%--
  Created by IntelliJ IDEA.
  User: wangxianlin
  Date: 2020/2/29
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>用户登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${ctx}/res/css/user/style.css" rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="${ctx}/res/js/jquery-3.1.1.min.js"></script>
    <script>
        var ctx = '${ctx}';
    </script>
</head>
<body>

<h1>登录</h1>
<div class="login-form">
    <div class="close"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>
    <div class="avtar"><img src="${ctx}/res/img/login.jpg" /></div>
    <form>
        <input type="text" class="text"  placeholder="用户名" id="username">
        <div class="key"><input type="password" placeholder="密码" id="password"></div>
    </form>
    <div class="signin"><input type="submit" value="登录" id="login"></div>
</div>
</body>
<script>
    /**
     * 点击登录
     */
    $('#login').click(function (e) {
        e.preventDefault();
        var username = $("#username").val();
        var password = $("#password").val();
        login(username,password);
    });

    /**
     * 登录函数
     * @param username
     * @param password
     */
    function login(username,password) {
            if(username==""||username==null){
                alert("用户名不能为空");
                return ;
            }

            if(password==""||password==null){
                alert("密码不能为空");
                return ;
            }
            $.ajax({
                url:ctx+'/user/checkLogin',
                data:{
                    userName:username,
                    password:password
                },
                type:'post',
                dataType:'json',
                success:function (res) {
                    if(res==true){
                        location.href=ctx+'/index';
                    }else{
                        alert("用户名或密码错误");
                       $("#username").val('');
                       $("#password").val('');
                    }
                }
            })

    }
</script>
</html>
