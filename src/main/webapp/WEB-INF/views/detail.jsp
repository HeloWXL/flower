<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="${ctx}/res/toastr/toastr.min.css" rel="stylesheet">
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
                                        <a href="${ctx}/cart"  class="minicart-btn">
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

<!-- off-canvas menu start -->
<aside class="off-canvas-wrapper">
    <div class="off-canvas-overlay"></div>
    <div class="off-canvas-inner-content">
        <div class="btn-close-off-canvas">
            <i class="lnr lnr-cross"></i>
        </div>

        <div class="off-canvas-inner">
            <!-- search box start -->
            <div class="search-box-offcanvas">
                <form>
                    <input type="text" placeholder="Search Here...">
                    <button class="search-btn"><i class="lnr lnr-magnifier"></i></button>
                </form>
            </div>
            <!-- search box end -->

            <!-- mobile menu start -->
            <div class="mobile-navigation">

                <!-- mobile menu navigation start -->
                <nav>
                    <ul class="mobile-menu">
                        <li><a href="${ctx}/index">首页</a></li>
                        <li><a href="${ctx}/shop">店铺</a></li>
                    </ul>
                </nav>
                <!-- mobile menu navigation end -->
            </div>
            <!-- mobile menu end -->

            <div class="mobile-settings">
                <ul class="nav">
                    <li>
                        <div class="dropdown mobile-top-dropdown">
                            <a href="#" class="dropdown-toggle" id="currency" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Currency
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="currency">
                                <a class="dropdown-item" href="#">$ USD</a>
                                <a class="dropdown-item" href="#">$ EURO</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="dropdown mobile-top-dropdown">
                            <a href="#" class="dropdown-toggle" id="myaccount" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                My Account
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="myaccount">
                                <a class="dropdown-item" href="#">我的账户</a>
                                <a class="dropdown-item" href="#">登录</a>
                                <a class="dropdown-item" href="#">注册</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- offcanvas widget area end -->
        </div>
    </div>
</aside>
<!-- off-canvas menu end -->


<!-- main wrapper start -->
<main>
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area common-bg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <h1>详情</h1>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="${ctx}/index"><i class="fa fa-home"></i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">详情</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- page main wrapper start -->
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
                                        <img src="${ctx}/product/getLocalImg?path=${product.path}"
                                             alt="product-details"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="product-details-des">
                                    <h3 class="product-name">${product.productName}</h3>
                                    <div class="price-box" id="price">
                                        <span class="price-regular">${product.nowPrice}元</span>
                                        <span class="price-old"><del>${product.primaryPrice}元</del></span>
                                    </div>
                                    <h5 class="offer-text"><strong>快点抢购吧</strong> 倒计时</h5>
                                    <div class="product-countdown" data-countdown="2020/03/25"></div>
                                    <div class="color-option">
                                        <h5>花材 :</h5>
                                        <div>${product.material}</div>
                                    </div>

                                    <div class="color-option">
                                        <h5>包装 :</h5>
                                        <div>${product.packing}</div>
                                    </div>

                                    <div class="color-option">
                                        <h5>花语 :</h5>
                                        <div>${product.language}</div>
                                    </div>
                                    <div class="color-option">
                                        <h5>颜色 :</h5>
                                        <ul class="color-categories">
                                            <li>
                                                ${product.color}
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="color-option">
                                        <h5>附送赠品 :</h5>
                                        <div>${product.gift}</div>
                                    </div>
                                    <div class="quantity-cart-box d-flex align-items-center">
                                        <h5>数量:</h5>
                                        <div class="quantity">
                                            <div class="pro-qty"><input type="text" value="1" id="amout"></div>
                                        </div>
                                        <div class="action_link">
                                            <a class="btn btn-cart2" product_id="${product.productId}"
                                               style="color: #ffffff;" onclick="addCart(this)">加入购物车</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- product details inner end -->

                    <!-- product details reviews start -->
                    <div class="product-details-reviews section-space pb-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product-review-info">
                                    <ul class="nav review-tab">
                                        <li>
                                            <a class="active" data-toggle="tab" href="#tab_one">描述</a>
                                        </li>
                                        <li>
                                            <a data-toggle="tab" href="#tab_two">相关信息</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content reviews-tab">
                                        <div class="tab-pane fade show active" id="tab_one">
                                            <div class="tab-one">
                                                <p>${product.descr}</p>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab_two">
                                            <table class="table table-bordered">
                                                <tbody>
                                                <tr>
                                                    <td>color</td>
                                                    <td>${product.color}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- product details reviews end -->
                </div>
                <!-- product details wrapper end -->
            </div>
        </div>
    </div>
    <!-- page main wrapper end -->

    <!-- related product area start -->
    <section class="related-products">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center">
                        <h2>相关商品</h2>
                        <p>～～...～～</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-carousel--4 slick-row-15 slick-sm-row-10 slick-arrow-style">
                        <!-- product single item start -->
                        <div class="product-item">
                            <figure class="product-thumb">
                                <a href="product-details.html">
                                    <img class="pri-img" src="${ctx}/res/img/product/product-5.jpg" alt="product">
                                    <img class="sec-img" src="${ctx}/res/img/product/product-6.jpg" alt="product">
                                </a>
                                <div class="product-badge">
                                    <div class="product-label new">
                                        <span>new</span>
                                    </div>
                                </div>
                                <div class="button-group">
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i
                                            class="lnr lnr-heart"></i></a>
                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span
                                            data-toggle="tooltip" data-placement="left" title="Quick View"><i
                                            class="lnr lnr-magnifier"></i></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
                                            class="lnr lnr-cart"></i></a>
                                </div>
                            </figure>
                            <div class="product-caption">
                                <p class="product-name">
                                    <a href="product-details.html">Blossom bouquet flower</a>
                                </p>
                                <div class="price-box">
                                    <span class="price-regular">$50.00</span>
                                    <span class="price-old"><del>$80.00</del></span>
                                </div>
                            </div>
                        </div>
                        <!-- product single item end -->

                        <!-- product single item start -->
                        <div class="product-item">
                            <figure class="product-thumb">
                                <a href="product-details.html">
                                    <img class="pri-img" src="${ctx}/res/img/product/product-2.jpg" alt="product">
                                    <img class="sec-img" src="${ctx}/res/img/product/product-1.jpg" alt="product">
                                </a>
                                <div class="product-badge">
                                    <div class="product-label new">
                                        <span>new</span>
                                    </div>
                                    <div class="product-label discount">
                                        <span>10%</span>
                                    </div>
                                </div>
                                <div class="button-group">
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i
                                            class="lnr lnr-heart"></i></a>
                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span
                                            data-toggle="tooltip" data-placement="left" title="Quick View"><i
                                            class="lnr lnr-magnifier"></i></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
                                            class="lnr lnr-cart"></i></a>
                                </div>
                            </figure>
                            <div class="product-caption">
                                <p class="product-name">
                                    <a href="product-details.html">Rose bouquet white</a>
                                </p>
                                <div class="price-box">
                                    <span class="price-regular">$55.00</span>
                                    <span class="price-old"><del>$80.00</del></span>
                                </div>
                            </div>
                        </div>
                        <!-- product single item end -->

                        <!-- product single item start -->
                        <div class="product-item">
                            <figure class="product-thumb">
                                <a href="product-details.html">
                                    <img class="pri-img" src="${ctx}/res/img/product/product-7.jpg" alt="product">
                                    <img class="sec-img" src="${ctx}/res/img/product/product-8.jpg" alt="product">
                                </a>
                                <div class="product-badge">
                                    <div class="product-label new">
                                        <span>new</span>
                                    </div>
                                    <div class="product-label discount">
                                        <span>15%</span>
                                    </div>
                                </div>
                                <div class="button-group">
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i
                                            class="lnr lnr-heart"></i></a>
                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span
                                            data-toggle="tooltip" data-placement="left" title="Quick View"><i
                                            class="lnr lnr-magnifier"></i></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
                                            class="lnr lnr-cart"></i></a>
                                </div>
                            </figure>
                            <div class="product-caption">
                                <p class="product-name">
                                    <a href="product-details.html">Hyacinth white stick</a>
                                </p>
                                <div class="price-box">
                                    <span class="price-regular">$30.00</span>
                                    <span class="price-old"><del>$55.00</del></span>
                                </div>
                            </div>
                        </div>
                        <!-- product single item end -->

                        <!-- product single item start -->
                        <div class="product-item">
                            <figure class="product-thumb">
                                <a href="product-details.html">
                                    <img class="pri-img" src="${ctx}/res/img/product/product-1.jpg" alt="product">
                                    <img class="sec-img" src="${ctx}/res/img/product/product-2.jpg" alt="product">
                                </a>
                                <div class="product-badge">
                                    <div class="product-label new">
                                        <span>new</span>
                                    </div>
                                    <div class="product-label discount">
                                        <span>10%</span>
                                    </div>
                                </div>
                                <div class="button-group">
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i
                                            class="lnr lnr-heart"></i></a>
                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span
                                            data-toggle="tooltip" data-placement="left" title="Quick View"><i
                                            class="lnr lnr-magnifier"></i></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
                                            class="lnr lnr-cart"></i></a>
                                </div>
                            </figure>
                            <div class="product-caption">
                                <p class="product-name">
                                    <a href="product-details.html">Flowers bouquet pink</a>
                                </p>
                                <div class="price-box">
                                    <span class="price-regular">$60.00</span>
                                    <span class="price-old"><del>$70.00</del></span>
                                </div>
                            </div>
                        </div>
                        <!-- product single item end -->

                        <!-- product single item start -->
                        <div class="product-item">
                            <figure class="product-thumb">
                                <a href="product-details.html">
                                    <img class="pri-img" src="${ctx}/res/img/product/product-4.jpg" alt="product">
                                    <img class="sec-img" src="${ctx}/res/img/product/product-3.jpg" alt="product">
                                </a>
                                <div class="product-badge">
                                    <div class="product-label discount">
                                        <span>10%</span>
                                    </div>
                                </div>
                                <div class="button-group">
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i
                                            class="lnr lnr-heart"></i></a>
                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span
                                            data-toggle="tooltip" data-placement="left" title="Quick View"><i
                                            class="lnr lnr-magnifier"></i></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
                                            class="lnr lnr-cart"></i></a>
                                </div>
                            </figure>
                            <div class="product-caption">
                                <p class="product-name">
                                    <a href="product-details.html">Bouquet flowers pink</a>
                                </p>
                                <div class="price-box">
                                    <span class="price-regular">$60.00</span>
                                    <span class="price-old"><del>$70.00</del></span>
                                </div>
                            </div>
                        </div>
                        <!-- product single item end -->

                        <!-- product single item start -->
                        <div class="product-item">
                            <figure class="product-thumb">
                                <a href="product-details.html">
                                    <img class="pri-img" src="${ctx}/res/img/product/product-9.jpg" alt="product">
                                    <img class="sec-img" src="${ctx}/res/img/product/product-10.jpg" alt="product">
                                </a>
                                <div class="product-badge">
                                    <div class="product-label new">
                                        <span>new</span>
                                    </div>
                                    <div class="product-label discount">
                                        <span>30%</span>
                                    </div>
                                </div>
                                <div class="button-group">
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i
                                            class="lnr lnr-heart"></i></a>
                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span
                                            data-toggle="tooltip" data-placement="left" title="Quick View"><i
                                            class="lnr lnr-magnifier"></i></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
                                            class="lnr lnr-cart"></i></a>
                                </div>
                            </figure>
                            <div class="product-caption">
                                <p class="product-name">
                                    <a href="product-details.html">Orchid flower red stick</a>
                                </p>
                                <div class="price-box">
                                    <span class="price-regular">$80.00</span>
                                    <span class="price-old"><del>$90.00</del></span>
                                </div>
                            </div>
                        </div>
                        <!-- product single item end -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- related product area end -->
</main>
<!-- main wrapper end -->

<!-- offcanvas search form start -->
<div class="offcanvas-search-wrapper">
    <div class="offcanvas-search-inner">
        <div class="offcanvas-close">
            <i class="lnr lnr-cross"></i>
        </div>
        <div class="container">
            <div class="offcanvas-search-box">
                <form class="d-flex bdr-bottom w-100">
                    <input type="text" placeholder="Search entire storage here...">
                    <button class="search-btn"><i class="lnr lnr-magnifier"></i>search</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- offcanvas search form end -->
<!-- Scroll to top start -->
<div class="scroll-top not-visible">
    <i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->
</body>
<script src="${ctx}/res/js/jquery-2.1.4.js"></script>
<script src="${ctx}/res/js/index/vendor.js"></script>
<script src="${ctx}/res/js/index/active.js"></script>
<script src="${ctx}/res/toastr/toastr.min.js" type="application/javascript"></script>

<script>

    $(function () {
        toastr.options.positionClass = 'toast-top-right';


    });

    function addCart(_this) {
        if (userId == 0) {
            toastr.error("用户未登录");
            location.href = ctx + '/login';
        }
        var productId = $(_this).attr("product_id");
        var price = $("#price .price-regular").html();
        price = price.slice(0,-3);
        var amout = $("#amout").val();
        addCartToDb(userId,productId,price*amout,amout)
    }

    /**
     * 加入购物车
     * @param userId
     * @param productId
     * @param price
     */
    function addCartToDb(userId, productId, price, amout) {
        var cart = {
            userId: userId,
            productId: productId,
            amout: amout,
            price: price,
            createTime: new Date()
        };
        $.ajax({
            url: ctx + '/cart/insertCart',
            data: JSON.stringify(cart),
            type: 'post',
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            success: function (res) {
                if (res == 1) {
                    toastr.success('加入购物车成功');
                } else {
                    toastr.error('加入购物车失败');
                }
            }
        })
    }
</script>
</html>
