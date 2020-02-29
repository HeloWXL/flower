
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>订单页面</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="${ctx}/res/img/logo.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/res/css/order/core-style.css">
    <script>
        var ctx = '${ctx}';
    </script>
</head>
<body>
<!-- ##### Breadcumb Area Start ##### -->
<div class="breadcumb_area bg-img" style="background-image: url(${ctx}/res/img/bg-img/breadcumb.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="page-title text-center">
                    <h2>结算</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Breadcumb Area End ##### -->

<!-- ##### Checkout Area Start ##### -->
<div class="checkout_area section-padding-80">
    <div class="container">
        <div class="row">

            <div class="col-12 col-md-6">
                <div class="checkout_details_area mt-50 clearfix">

                    <div class="cart-page-heading mb-30">
                        <h5>地址信息</h5>
                    </div>
                    <form>
                        <div class="row">
                            <div class="col-12 mb-3">
                                <label for="first_name">姓名<span>*</span></label>
                                <input type="text" class="form-control" id="first_name" value="" required>
                            </div>
                            <div class="col-12 mb-3">
                                <label for="company">Company Name</label>
                                <input type="text" class="form-control" id="company" value="">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="country">Country <span>*</span></label>
                                <select class="w-100" id="country">
                                    <option value="usa">United States</option>
                                    <option value="uk">United Kingdom</option>
                                    <option value="ger">Germany</option>
                                    <option value="fra">France</option>
                                    <option value="ind">India</option>
                                    <option value="aus">Australia</option>
                                    <option value="bra">Brazil</option>
                                    <option value="cana">Canada</option>
                                </select>
                            </div>
                            <div class="col-12 mb-3">
                                <label for="street_address">地址 <span>*</span></label>
                                <input type="text" class="form-control mb-3" id="street_address" value="">
                                <input type="text" class="form-control" id="street_address2" value="">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="postcode">Postcode <span>*</span></label>
                                <input type="text" class="form-control" id="postcode" value="">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="city">Town/City <span>*</span></label>
                                <input type="text" class="form-control" id="city" value="">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="state">Province <span>*</span></label>
                                <input type="text" class="form-control" id="state" value="">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="phone_number">手机号码 <span>*</span></label>
                                <input type="number" class="form-control" id="phone_number" min="0" value="">
                            </div>
                            <div class="col-12 mb-4">
                                <label for="email_address">Email Address <span>*</span></label>
                                <input type="email" class="form-control" id="email_address" value="">
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-5 ml-lg-auto">
                <div class="order-details-confirmation">

                    <div class="cart-page-heading">
                        <h5>你的订单</h5>
                        <p>详细信息</p>
                    </div>

                    <ul class="order-details-form mb-4">
                        <li><span>Product</span> <span>你的鲜花</span></li>
                        <li><span>Cocktail Yellow dress</span> <span>$59.90</span></li>
                        <li><span>Subtotal</span> <span>$59.90</span></li>
                        <li><span>快递费：</span> <span>免费</span></li>
                        <li><span>总价：</span> <span>$59.90</span></li>
                    </ul>

                    <div id="accordion" role="tablist" class="mb-4">
                    </div>

                    <a href="#" class="btn essence-btn">提交订单</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="${ctx}/res/js/jquery-3.1.1.min.js"></script>
<script src="${ctx}/res/js/order/plugins.js"></script>
<script src="${ctx}/res/js/order/active.js"></script>

</html>
