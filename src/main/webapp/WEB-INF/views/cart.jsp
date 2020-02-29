<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>我的购物车</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link rel="shortcut icon" href="${ctx}/res/img/logo.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/res/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${ctx}/res/css/cart//style.css">
    <script>
        var ctx = '${ctx}';
        var user = '${USERSESSION}';
        var userId ='${USERSESSION.userId}';
    </script>
</head>
<body>
<section class="header text-center">
    <nav class="navbar navbar-expand-lg navbar-light navbar-custom">
        <div class="container"><a class="navbar-brand" href="index.html">Floda</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-1"
                    aria-controls="navbar-1" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse pull-xs-right justify-content-end" id="navbar-1">
                <ul class="navbar-nav mt-2 mt-md-0">
                    <li class="nav-item "><a class="nav-link" href="${ctx}/index">首页<span
                            class="sr-only">(current)</span></a></li>
                    <li class="nav-item">
                        <a class="nav-link" href="${ctx}/shop">商铺</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="${ctx}/cart">我的购物车</a>
                    </li>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</section>
<section class="cart text-center">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2 class="mt-5 mb-2">我的购物车</h2>
                <p class="mb-5"><span class="primary-color">3</span> Items in your cart</p>
                <table id="cart" class="table table-condensed">
                    <thead>
                    <tr>
                        <th style="width:60%">商品</th>
                        <th style="width:12%">价格</th>
                        <th style="width:10%">数量</th>
                        <th style="width:16%"></th>
                    </tr>
                    </thead>
                    <tbody id="productList">
                    </tbody>
                </table>
                <div class="float-right text-right" id="sum">
                    <h4>总价:</h4>
                    <h1>46元</h1>
                    <p>(不包括送货)</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 mb-3 mb-m-1 text-md-left"><a href="${ctx}/shop"><i class="fas fa-arrow-left mr-2"></i>
                继续购物</a></div>
            <div class="col-sm-6 text-md-right"><a href="#" class="btn btn-primary btn-lg pl-5 pr-5">结算</a></div>
        </div>
    </div>
</section>
</body>

<!-- Placed at the end of the document so the pages load faster -->
<script src="${ctx}/res/js/jquery-3.1.1.min.js"></script>
<script src="${ctx}/res/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
        integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
        crossorigin="anonymous"></script>
<script>
    $(function () {
        if(user==''||user==null) {
            location.href = ctx+'/login';
            return;
        }
        //展示我的购物车
        showMyCart(userId);
    });

    /**
     * 显示我的购物车
     * @param userId
     */
    function showMyCart(userId) {
        $.ajax({
            url: ctx + '/cart/getCartByUserId',
            data: {
                userId: userId
            },
            type: 'get',
            dataType: 'json',
            success: function (res) {
                $.each(res, function (n, product) {
                    var $node = ('  <tr>\n' +
                        '                        <td data-th="Product" cart_id = '+product.cartId+'>\n' +
                        '                            <div class="row">\n' +
                        '                                <div class="col-md-3 text-left">\n' +
                        '                                    <img src="${ctx}/product/getLocalImg?path=' + product.path + '" alt="" class="img-fluid">\n' +
                        '                                </div>\n' +
                        '                                <div class="col-md-9 text-left mt-sm-2">\n' +
                        '                                    <h4>' + product.productName + '</h4>\n' +
                        '                                    <p>' + product.color + '</p>\n' +
                        '                                </div>\n' +
                        '                            </div>\n' +
                        '                        </td>\n' +
                        '                        <td data-th="Price" class="price">' + product.price + '元</td>\n' +
                        '                        <td data-th="Quantity">\n' +
                        '                            <input type="number" class="form-control text-center" value="'+product.amout+'">\n' +
                        '                        </td>\n' +
                        '                        <td class="actions" data-th="">\n' +
                        '                            <div class="text-right">\n' +
                        '                                <button class="btn btn-white btn-md mb-2"><i class="fas fa-sync"></i></button>\n' +
                        '                                <button class="btn btn-white btn-md mb-2"><i class="fas fa-trash"></i></button>\n' +
                        '                            </div>\n' +
                        '                        </td>\n' +
                        '                    </tr>')
                    $("#productList").append($node);
                })
            }
        })
    }
</script>
</html>
