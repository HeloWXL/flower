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
        <input type="text" class="text"  placeholder="用户名" id="username" style="margin-top: 0em;">
        <input type="text" class="text"  placeholder="昵称" id="nickname" style="margin-top: 0em;">
        <input type="text" class="text"  placeholder="性别" id="sex" style="margin-top: 0em;">
        <input type="text" class="text"  placeholder="手机号码" id="phone" style="margin-top: 0em;">
        <input type="text" class="text"  placeholder="地址" id="address" style="margin-top: 0em;">
        <div class="key"><input type="password" placeholder="密码" id="password"></div>
    </form>
    <div class="signin"><input type="submit" value="注册" id="register"></div>
</div>
</body>
<script type="text/javascript" src="${ctx}/res/js/user/register.js"></script>
</html>
