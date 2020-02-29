
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>我的购物车</title>
    <meta charset="utf-8">
    <title>Aurum - Bootstrap 4 Ecommerce Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="shortcut icon" href="${ctx}/res/img/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/res/bootstrap/css/bootstrap.css">
    <%--<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>--%>
    <link rel="stylesheet" href="${ctx}/res/css/cart//style.css">
    <script>
        var ctx = '${ctx}';
    </script>
</head>
<body>
<section class="header text-center">
    <nav class="navbar navbar-expand-lg navbar-light navbar-custom">
        <div class="container"><a class="navbar-brand" href="index.html">Floda</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-1" aria-controls="navbar-1" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse pull-xs-right justify-content-end" id="navbar-1">
                <ul class="navbar-nav mt-2 mt-md-0">
                    <li class="nav-item "><a class="nav-link" href="${ctx}/index">首页<span class="sr-only">(current)</span></a></li>
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
            <div class="col-sm-6 mb-3 mb-m-1 text-md-left"><a href="${ctx}/shop"><i class="fas fa-arrow-left mr-2"></i>继续购物</a></div>
            <div class="col-sm-6 text-md-right"><a href="catalog.html" class="btn btn-primary btn-lg pl-5 pr-5">结算</a></div>
        </div>
        <div class="row">
            <div class="col-12 text-center">
                <h2 class="mt-5 mb-2">我的购物车</h2>
                <p class="mb-5"><span class="primary-color">3</span> Items in your cart</p>
                <table id="cart" class="table table-condensed" >
                    <thead>
                    <tr>
                        <th style="width:60%">商品</th>
                        <th style="width:12%">价格</th>
                        <th style="width:10%">数量</th>
                        <th style="width:16%"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-md-3 text-left">
                                    <img src="${ctx}/res/img/product/product-1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="col-md-9 text-left mt-sm-2">
                                    <h4>你的温柔</h4>
                                    <p>粉红色</p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">0 元</td>
                        <td data-th="Quantity">
                            <input type="number" class="form-control text-center" value="1">
                        </td>
                        <td class="actions" data-th="">
                            <div class="text-right">
                                <button class="btn btn-white btn-md mb-2"><i class="fas fa-sync"></i></button>
                                <button class="btn btn-white btn-md mb-2"><i class="fas fa-trash"></i></button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-md-3 text-left">
                                    <img src="${ctx}/res/img/product/product-1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="col-md-9 text-left mt-sm-2">
                                    <h4>你的温柔</h4>
                                    <p>粉红色</p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">0 元</td>
                        <td data-th="Quantity">
                            <input type="number" class="form-control text-center" value="1">
                        </td>
                        <td class="actions" data-th="">
                            <div class="text-right">
                                <button class="btn btn-white btn-md mb-2"><i class="fas fa-sync"></i></button>
                                <button class="btn btn-white btn-md mb-2"><i class="fas fa-trash"></i></button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-md-3 text-left">
                                    <img src="${ctx}/res/img/product/product-1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="col-md-9 text-left mt-sm-2">
                                    <h4>你的温柔</h4>
                                    <p>粉红色</p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">0 元</td>
                        <td data-th="Quantity">
                            <input type="number" class="form-control text-center" value="1">
                        </td>
                        <td class="actions" data-th="">
                            <div class="text-right">
                                <button class="btn btn-white btn-md mb-2"><i class="fas fa-sync"></i></button>
                                <button class="btn btn-white btn-md mb-2"><i class="fas fa-trash"></i></button>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="float-right text-right">
                    <h4>总价:</h4>
                    <h1>0元</h1>
                    <p>(不包括送货)</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 mb-3 mb-m-1 text-md-left"><a href="${ctx}/shop"><i class="fas fa-arrow-left mr-2"></i> 继续购物</a></div>
            <div class="col-sm-6 text-md-right"><a href="#" class="btn btn-primary btn-lg pl-5 pr-5">结算</a></div>
        </div>
    </div>
</section>
</body>

<!-- Placed at the end of the document so the pages load faster -->
<script src="${ctx}/res/js/jquery-3.1.1.min.js"></script>
<script src="${ctx}/res/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>


</html>
