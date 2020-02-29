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
    <title>用户注册</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${ctx}/res/css/user/style.css" rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="${ctx}/res/js/jquery-3.1.1.min.js"></script>
    <script>
        var ctx = '${ctx}';
    </script>
</head>
<body>

<h1>注册</h1>
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
        <input type="text" class="text"  placeholder="昵称" id="nickname">
        <input type="text" class="text"  placeholder="性别" id="sex">
        <input type="text" class="text"  placeholder="手机号码" id="phone">
        <input type="text" class="text"  placeholder="地址" id="address">
        <div class="key"><input type="password" placeholder="密码" id="password"></div>
    </form>
    <div class="signin"><input type="submit" value="注册" id="register"></div>
</div>
</body>
<script>
    /**
     * 点击注册
     */
    $('#register').click(function (e) {
        e.preventDefault();
        var username = $("#username").val();
        var nickname = $("#nickname").val();
        var password = $("#password").val();
        var sex = $("#sex").val();
        var phone = $("#phone").val();
        var address = $("#address").val();

        if(username==""||username==null){
            alert("用户名不能为空");
            return ;
        }

        if(nickname==""||nickname==null){
            alert("昵称不能为空");
            return ;
        }

        if(password==""||password==null){
            alert("密码不能为空");
            return ;
        }

        if(sex==""||sex==null){
            alert("性别不能为空");
            return ;
        }

        if(phone==""||phone==null){
            alert("手机号码不能为空");
            return ;
        }

        if(password==""||password==null){
            alert("密码不能为空");
            return ;
        }
        if(address==""||address==null){
            alert("地址不能为空");
            return ;
        }
        user = {
            userName:username,
            nickName:nickname,
            password:password,
            sex:sex,
            phone:phone,
            address:address
        }
        register(user);
    });

    /**
     * 注册函数
     */
    function register(user) {

        $.ajax({
            url:ctx+'/user/register',
            data:JSON.stringify(user),
            type:'post',
            dataType:'json',
            contentType: 'application/json; charset=utf-8',
            success:function (res) {
                if(res==1){
                    location.href=ctx+'/login';
                }else{
                  alert("服务器内部错误");
                }
            }
        })

    }
</script>
</html>
