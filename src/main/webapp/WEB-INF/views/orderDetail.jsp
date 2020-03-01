<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>商品详情</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <link rel="shortcut icon" href="${ctx}/res/img/logo.ico" type="image/x-icon"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear"
          rel="stylesheet">
    <link href="${ctx}/res/css/index/vendor.css" rel="stylesheet">
    <link href="${ctx}/res/css/index/style.css" rel="stylesheet">
    <script>
        var ctx = '${ctx}';
        var user = '${USERSESSION}';
        var userId = '${USERSESSION.userId}';
    </script>
</head>
<body>
<!-- Start Header Area -->
<header class="header-area">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
        <!-- header top start -->
        <div class="header-top bdr-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="welcome-message">
                            <p>Welcome to My Shop</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header top end -->

        <!-- header middle area start -->
        <div class="header-main-area sticky">
            <div class="container">
                <div class="row align-items-center position-relative">

                    <!-- start logo area -->
                    <div class="col-lg-3">
                        <div class="logo">
                            <a href="${ctx}/index">
                                <img src="${ctx}/res/img/logo/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- start logo area -->

                    <!-- main menu area start -->
                    <div class="col-lg-6 position-static">
                        <div class="main-menu-area">
                            <div class="main-menu">
                                <!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>
                                        <li><a href="${ctx}/index">首页</a></li>
                                        <li><a href="${ctx}/shop">店铺</a></li>
                                    </ul>
                                </nav>
                                <!-- main menu navbar end -->
                            </div>
                        </div>
                    </div>
                    <!-- main menu area end -->

                    <!-- mini cart area start -->
                    <div class="col-lg-3">
                        <div class="header-configure-wrapper">
                            <div class="header-configure-area">
                                <ul class="nav justify-content-end">
                                    <li>
                                        <a href="#" class="offcanvas-btn">
                                            <i class="lnr lnr-magnifier"></i>
                                        </a>
                                    </li>
                                    <li class="user-hover">
                                        <a href="#">
                                            <i class="lnr lnr-user"></i>
                                        </a>
                                        <ul class="dropdown-list">
                                            <c:if test="${userId==''}">
                                                <li><a href="${ctx}/login">登录</a></li>
                                                <li><a href="${ctx}/register">注册</a></li>
                                            </c:if>

                                            <c:if test="${userId!=''}">
                                                <li><a href="#">我的账户</a></li>
                                                <li><a href="${ctx}/user/logout">退出登录</a></li>
                                            </c:if>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="${ctx}/cart" class="minicart-btn">
                                            <i class="lnr lnr-cart"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- mini cart area end -->
                </div>
            </div>
        </div>
        <!-- header middle area end -->
    </div>
    <!-- main header start -->
</header>
<!-- end Header Area -->
<main>
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area common-bg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <h1>订单详情</h1>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="${ctx}/index"><i class="fa fa-home"></i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">订单详情</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="shop-main-wrapper section-space">
        <div class="container">
            <div class="row">
                <!-- product details wrapper start -->
                <div class="col-lg-12 order-1 order-lg-2">
                    <!-- product details inner end -->
                    <div class="product-details-inner">
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="product-large-slider">
                                    <div class="pro-large-img img-zoom">
                                        <img src="${ctx}/product/getLocalImg?path=${order.path}"
                                             alt="product-details"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="product-details-des">
                                    <h2 class="product-name">${order.productName}</h2>
                                    <div class="color-option" style="margin-bottom: 30px;margin-top: 35px;">
                                        <h4>收货人 :</h4>
                                        <div>${order.receiverName}</div>
                                    </div>

                                    <div class="color-option" style="margin-bottom: 30px;">
                                        <h4>收货人手机号码 :</h4>
                                        <div>${order.receiverName}</div>
                                    </div>
                                    <div class="color-option" style="margin-bottom: 30px;">
                                        <h4>收件人地址 :</h4>
                                        <div>${order.receiverAddress}</div>
                                    </div>
                                    <div class="color-option" style="margin-bottom: 30px;">
                                        <h4>总价 :</h4>
                                        <div>${order.price}</div>
                                    </div>
                                    <div class="color-option" style="margin-bottom: 30px;">
                                        <h4>下单时间 :</h4>
                                        <div><fmt:formatDate value="${order.createTime}" pattern="yyyy-MM-dd hh:mm:ss" /></div>
                                    </div>
                                    <c:if test="${not empty order.sendTime}">
                                        <div class="color-option" style="margin-bottom: 30px;">
                                            <h4>发货时间 :</h4>
                                            <div> <fmt:formatDate value="${order.sendTime}" pattern="yyyy-MM-dd hh:mm:ss" /></div>
                                        </div>
                                    </c:if>
                                    <div class="color-option" style="margin-bottom: 30px;">
                                        <h4>状态 :</h4>
                                        <c:if test="${order.status==0}">
                                            <h5 style="color: red">未发货</h5>
                                        </c:if>
                                        <c:if test="${order.status==1}">
                                            <h5 style="color: blue">已发货</h5>
                                        </c:if>
                                        <c:if test="${order.status==2}">
                                            <h5 style="color: green">已完成</h5>
                                        </c:if>
                                    </div>
                                    <div class="quantity-cart-box d-flex align-items-center">
                                        <h4>数量:</h4>
                                        <div class="quantity">
                                            <div class="pro-qty"><input type="text" value="${order.amout}" id="amout">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
<script src="${ctx}/res/js/jquery-3.1.1.min.js"></script>
<script>
    $(function () {
        if (userId == 0) {
            alert("用户未登录");
            location.href = ctx + '/login';
        }
    });


    function dateFormat(fmt, date) {
        var ret;
        var opt = {
            "Y+": date.getFullYear().toString(),        // 年
            "m+": (date.getMonth() + 1).toString(),     // 月
            "d+": date.getDate().toString(),            // 日
            "H+": date.getHours().toString(),           // 时
            "M+": date.getMinutes().toString(),         // 分
            "S+": date.getSeconds().toString()          // 秒
            // 有其他格式化字符需求可以继续添加，必须转化成字符串
        };
        for (let k in opt) {
            ret = new RegExp("(" + k + ")").exec(fmt);
            if (ret) {
                fmt = fmt.replace(ret[1], (ret[1].length == 1) ? (opt[k]) : (opt[k].padStart(ret[1].length, "0")))
            };
        };
        return fmt;
    }
</script>
</html>
