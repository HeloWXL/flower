
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
        var user = '${USERSESSION}';
        var userId = '${USERSESSION.userId}';
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
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-bordered table-condensed" id="tab">
                <thead>
                <tr>
                    <th>
                        图片
                    </th>
                    <th>
                        商品名称
                    </th>

                    <th>
                        数量
                    </th>
                    <th>
                        价格
                    </th>
                </tr>
                </thead>
                <tbody>
            <c:forEach items="${cartList}" var="product">
                <tr class="info">
                    <td align="center">
                        <img src="${ctx}/product/getLocalImg?path=${product.path}" style="width:50px;height:50px">
                    </td>
                    <td align="center">
                            ${product.productName}
                    </td>
                    <td align="center">
                            ${product.amout}
                    </td>
                    <td align="center">
                            ${product.price}元
                    </td>
                </tr>
            </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
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
                                <label for="phone_number">手机号码 <span>*</span></label>
                                <input type="number" class="form-control" id="phone_number" min="0" value="">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="street_address">地址 <span>*</span></label>
                                <input type="text" class="form-control mb-3" id="street_address" value="">
                            </div>
                            <%--<div class="col-12 mb-4">--%>
                                <%--<label for="email_address">Email Address <span>*</span></label>--%>
                                <%--<input type="email" class="form-control" id="email_address" value="">--%>
                            <%--</div>--%>
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
                        <li><span>快递费：</span> <span>免费</span></li>
                        <li><span>总价：</span> <span id="sumPrice"></span></li>
                    </ul>

                    <div id="accordion" role="tablist" class="mb-4">
                    </div>

                    <a href="#" class="btn essence-btn" id="checkOut">提交订单</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="${ctx}/res/js/jquery-3.1.1.min.js"></script>
<script src="${ctx}/res/js/order/plugins.js"></script>
<script src="${ctx}/res/js/order/active.js"></script>
<script>
    $(function () {
        if(user==''||user==null) {
            location.href = ctx+'/login';
            return;
        }
        //获取购物车商品的总价格
        var sumPrice = 0;
        var tb = document.getElementById('tab');
        var rows = tb.rows;
        for(var i = 1; i<rows.length; i++ ){
            var price = rows[i].cells[3].innerHTML;
            price = price.trim().slice(0,-3);

            sumPrice+=parseInt(price);
        }
        $("#sumPrice").html(sumPrice+"元")


        //结算
        $("#checkOut").click(function () {
            //姓名
            var username = $("#first_name").val();
            if(username==''||username==null){
                alert("收货人姓名不能为空");
                return;
            }
            var phone = $("#phone_number").val();
            if(phone==''||phone==null){
                alert("收货人手机号不能为空");
                return;
            }
            var address = $("#street_address").val();
            if(address==''||address==null){
                alert("收货人地址不能为空");
                return;
            }
            var order = {
                userId:userId,
                receiverName:username,
                receiverPhone:phone,
                receiverAddress:address,
                createTime:new Date()
            };
            checkOut(order);
        });
    });



    /**
     * 下订单
     */
    function checkOut(order) {
        $.ajax({
            url:ctx+'/order/insertOrder',
            data:JSON.stringify(order),
            type:'post',
            dataType:'json',
            contentType: 'application/json; charset=utf-8',
            success:function (res) {
                if (res == 1) {
                    alert('下单成功');
                    location.href=ctx+"/shop";
                } else {
                    alert('下单失败');
                    location.href=ctx+"/cart";
                }
            }
        })
    }
</script>
</html>
