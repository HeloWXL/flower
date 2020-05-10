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
    <link rel="shortcut icon" href="${ctx}/res/img/logo.ico" type="image/x-icon"/>
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
<script type="text/javascript" src="${ctx}/res/js/user/login.js"></script>
</html>
