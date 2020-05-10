<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>个人中心</title>
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
<header class="header-area">
    <div class="main-header d-none d-lg-block">
        <div class="header-main-area sticky">
            <div class="container">
                <div class="row align-items-center position-relative">
                    <div class="col-lg-3">
                        <div class="logo">
                            <a href="${ctx}/index">
                                <img src="${ctx}/res/img/logo/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-6 position-static">
                        <div class="main-menu-area">
                            <div class="main-menu">
                                <nav class="desktop-menu">
                                    <ul>
                                        <li><a href="${ctx}/">首页</a></li>
                                        <li><a href="${ctx}/shop">店铺</a></li>
                                    </ul>
                                </nav>
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
                                            <c:if test="${empty USERSESSION}">
                                                <li><a href="${ctx}/login">登录</a></li>
                                                <li><a href="${ctx}/register">注册</a></li>
                                            </c:if>
                                            <c:if test="${not empty USERSESSION}">
                                                <li><a href="${ctx}/info">我的账户</a></li>
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
                </div>
            </div>
        </div>
    </div>
</header>
<!-- main wrapper start -->
<main>
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area common-bg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <h1>个人中心</h1>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="${ctx}/"><i class="fa fa-home"></i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">个人中心</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--<aside class="off-canvas-wrapper">--%>
        <%--<div class="off-canvas-overlay"></div>--%>
        <%--<div class="off-canvas-inner-content">--%>
            <%--<div class="btn-close-off-canvas">--%>
                <%--<i class="lnr lnr-cross"></i>--%>
            <%--</div>--%>

            <%--<div class="off-canvas-inner">--%>
                <%--<!-- search box start -->--%>
                <%--<div class="search-box-offcanvas">--%>
                    <%--<form>--%>
                        <%--<input type="text" placeholder="Search Here...">--%>
                        <%--<button class="search-btn"><i class="lnr lnr-magnifier"></i></button>--%>
                    <%--</form>--%>
                <%--</div>--%>
                <%--<!-- search box end -->--%>

                <%--<!-- mobile menu start -->--%>
                <%--<div class="mobile-navigation">--%>
                    <%--<!-- mobile menu navigation start -->--%>
                    <%--<nav>--%>
                        <%--<ul class="mobile-menu">--%>
                            <%--<li><a id="info" >个人信息</a></li>--%>
                            <%--<li><a id="noShipped" >未发货</a></li>--%>
                            <%--<li><a id="shipped"  >已发货</a></li>--%>
                            <%--<li><a id="completeOrder">已完成订单</a></li>--%>
                        <%--</ul>--%>
                    <%--</nav>--%>
                    <%--<!-- mobile menu navigation end -->--%>
                <%--</div>--%>
                <%--<!-- mobile menu end -->--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</aside>--%>


    <div class="shop-main-wrapper section-space">
        <div class="container">
                <div class="row clearfix">

                    <div class="col-md-2 column">
                        <div class="list-group">
                            <a id="info" class="list-group-item active" style="color: #ffffff">个人信息</a>
                            <a id="noShipped" class="list-group-item">未发货</a>
                            <a id="shipped" class="list-group-item">已发货</a>
                            <a  id="completeOrder" class="list-group-item" >已完成订单</a>
                        </div>
                    </div>
                    <div class="col-md-10 column" id="tab" style="display: none">
                        <table class="table">
                        <thead>
                        <tr>
                            <th>
                                图片
                            </th>
                            <th>
                                名称
                            </th>
                            <th>
                                数量
                            </th>
                            <th>
                                价格
                            </th>
                            <th>
                                下单时间
                            </th>
                            <th>
                                发货时间
                            </th>
                            <th>
                                状态
                            </th>
                            <th>
                                操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                    </div>
                    <div class="col-md-4 column" id="myinfo">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="userName" class="col-sm-2 control-label">姓名</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="userName" value="${USERSESSION.userName}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="nickName" class="col-sm-2 control-label">昵称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="nickName" value="${USERSESSION.nickName}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sex" class="col-sm-2 control-label">性别</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="sex" value="${USERSESSION.sex}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="phone" class="col-sm-2 control-label">手机号码</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="phone" value="${USERSESSION.phone}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="address" class="col-sm-2 control-label">地址</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="address" value="${USERSESSION.address}"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
        </div>
    </div>
</main>

<div class="scroll-top not-visible">
    <i class="fa fa-angle-up"></i>
</div>
</body>
<script src="${ctx}/res/js/jquery-2.1.4.js" type="application/javascript"></script>
<script>
    //个人中心
    $("#info").click(function () {
        $(this).addClass("active");
        $(this).attr("style","color: #ffffff")
        $("#tab").hide();
        $("#myinfo").show();
        $(this).siblings().removeClass("active");
        $(this).siblings().removeAttr("style");
    });
    //未发货
    $("#noShipped").click(function () {
        $(this).addClass("active");
        $(this).attr("style","color: #ffffff")
        $("#tab").show();
        $("#myinfo").hide();
        $(this).siblings().removeClass("active");
        $(this).siblings().removeAttr("style");
        $("#tab tbody").empty();
        var status = 0;
        getTabList(userId,status);
    });
    //已发货
    $("#shipped").click(function () {
        $(this).addClass("active");
        $(this).attr("style","color: #ffffff")
        $("#tab").show();
        $("#myinfo").hide();
        $(this).siblings().removeClass("active");
        $(this).siblings().removeAttr("style");
        $("#tab tbody").empty();
        var status = 1;
        getTabList(userId,status);
    });
    //已完成订单
    $("#completeOrder").click(function () {
        $(this).addClass("active");
        $(this).attr("style","color: #ffffff")
        $("#tab").show();
        $("#myinfo").hide();
        $(this).siblings().removeClass("active");
        $(this).siblings().removeAttr("style");
        $("#tab tbody").empty();
        var status = 2;
        getTabList(userId,status);
    });

    /**
     * 获取我的订单信息
     * @param userId
     * @param status
     */
    function getTabList(userId,status) {
        //状态
        var str = "";
        if(status==0){
            str = '<p style="color:red">未发货</p>';
        }else if(status==1){
            str = '<p style="color:blue">已发货</p>';

        }else if(status==2){
            str = '<p style="color:green">已完成</p>';
        }
        $.ajax({
            url:ctx+'/order/getOrderByStatus',
            data:{
                userId:userId,
                status:status
            },
            type:'get',
            dataType:'json',
            success:function (res) {
                $.each(res,function (n,order) {
                    var sendTime = order.sendTime==null?"":order.sendTime;
                    var $node = $(' <tr class="info">\n' +
                        '                                <td style="vertical-align: middle;">\n' +
                        '                                    <img src="${ctx}/product/getLocalImg?path='+order.path+'" style="width:50px;height:50px">\n' +
                        '                                </td>\n' +
                        '                                <td style="vertical-align: middle;">\n' +
                        '                                    '+order.productName+'\n' +
                        '                                </td>\n' +
                        '                                <td style="vertical-align: middle;">\n' +
                        '                                   '+order.amout+'\n' +
                        '                                </td>\n' +
                        '                                <td style="vertical-align: middle;">\n' +
                        '                                    '+order.price+'\n' +
                        '                                </td>\n' +
                        '                                <td style="vertical-align: middle;">\n' +
                        '                                    '+order.createTime+'\n' +
                        '                                </td>\n' +
                        '                                <td style="vertical-align: middle;">\n' +
                        '                                   '+sendTime+'\n' +
                        '                                </td>\n' +
                        '                                <td style="vertical-align: middle;">\n' +
                        '                                    '+str+'\n' +
                        '                                </td>\n' +
                        '                                <td style="vertical-align: middle;">\n' +
                        '                                    <a href="${ctx}/orderDetail/'+order.orderId+'">详情</a>\n' +
                        '                                </td>\n' +
                        '                            </tr>');
                    $("#tab tbody").append($node);
                })
            }
        })
    }


</script>
</html>
