<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>首页</title>
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
        var userId ='${USERSESSION.userId}';
    </script>
</head>
<body>
<header class="header-area">
    <div class="main-header d-none d-lg-block">
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
                                <!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>
                                        <li><a href="${ctx}/index">首页</a></li>
                                        <li><a href="${ctx}/shop">商铺</a></li>
                                    </ul>
                                </nav>
                                <!-- main menu navbar end -->
                            </div>
                        </div>
                    </div>
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

                                            <c:if test="${userId==0}">
                                                <li><a href="${ctx}/login">登录</a></li>
                                                <li><a href="${ctx}/register">注册</a></li>
                                            </c:if>
                                            <c:if test="${userId!=0}">
                                                <li><a href="${ctx}/info">我的账户</a></li>
                                                <li><a href="${ctx}/user/logout">退出登录</a></li>
                                            </c:if>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="${ctx}/cart" class="btn">
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

    <!-- mobile header start -->
    <div class="mobile-header d-lg-none d-md-block sticky">
        <!--mobile header top start -->
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                    <div class="mobile-main-header">
                        <div class="mobile-logo">
                            <a href="${ctx}/index">
                                <img src="${ctx}/res/img/logo/logo.png" alt="Brand Logo">
                            </a>
                        </div>
                        <div class="mobile-menu-toggler">
                            <div class="mini-cart-wrap">
                                <a href="#">
                                    <i class="lnr lnr-cart"></i>
                                </a>
                            </div>
                            <div class="mobile-menu-btn">
                                <div class="off-canvas-btn">
                                    <i class="lnr lnr-menu"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- mobile header top start -->
    </div>
    <!-- mobile header end -->
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
                        <li><a href="${ctx}/index">Home</a></li>
                        <li><a href="${ctx}/shop">Shop</a></li>
                        <li><a href="product-details.html">Product Details</a></li>
                    </ul>
                </nav>
                <!-- mobile menu navigation end -->
            </div>
            <!-- mobile menu end -->
        </div>
    </div>
</aside>
<!-- off-canvas menu end -->


<!-- main wrapper start -->
<main>
    <!-- slider area start -->
    <section class="slider-area">
        <div class="hero-slider-active slick-arrow-style slick-arrow-style_hero slick-dot-style">
            <!-- single slider item start -->
            <div class="hero-single-slide ">
                <div class="hero-slider-item bg-img" data-bg="${ctx}/res/img/slider/home1-slide1.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="hero-slider-content slide-1">
                                    <span>情人节礼物</span>
                                    <h1>清新的</h1>
                                    <h2>& 感受爱</h2>
                                    <a href="${ctx}/shop" class="btn-hero">现在就行动</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single slider item end -->

            <!-- single slider item start -->
            <div class="hero-single-slide">
                <div class="hero-slider-item bg-img" data-bg="${ctx}/res/img/slider/home1-slide2.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="hero-slider-content slide-2">
                                    <span>情人节礼物</span>
                                    <h1>Fresh Your Mind</h1>
                                    <h2>& 感受爱</h2>
                                    <a href="${ctx}/shop" class="btn-hero">现在就行动</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single slider item start -->
        </div>
    </section>
    <!-- slider area end -->

    <!-- banner statistics start -->
    <section class="banner-statistics section-space">
        <div class="container">
            <div class="row mbn-30">
                <!-- start store item -->
                <div class="col-md-4">
                    <div class="banner-item mb-30">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/res/img/banner/img1-top-floda1.jpg" alt="">
                            </a>
                            <figcaption class="banner-content">
                                <h2 class="text1">Top friday</h2>
                                <h2 class="text2">Yellow Gold</h2>
                                <a class="store-link" href="#">buy it now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start store item -->

                <!-- start store item -->
                <div class="col-md-4">
                    <div class="banner-item mb-30">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/res/img/banner/img1-top-floda2.jpg" alt="">
                            </a>
                            <figcaption class="banner-content text-center">
                                <h2 class="text1">Black friday</h2>
                                <h2 class="text2">Orchid stick</h2>
                                <a class="store-link" href="#">buy it now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start store item -->

                <!-- start store item -->
                <div class="col-md-4">
                    <div class="banner-item mb-30">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/res/img/banner/img1-top-floda3.jpg" alt="">
                            </a>
                            <figcaption class="banner-content">
                                <h2 class="text1">10% off</h2>
                                <h2 class="text2">tulip flower</h2>
                                <a class="store-link" href="#">buy it now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start store item -->
            </div>
        </div>
    </section>
    <!-- banner statistics end -->

    <!-- service policy start -->
    <section class="service-policy-area section-space p-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <!-- start policy single item -->
                    <div class="service-policy-item">
                        <div class="icons">
                            <img src="${ctx}/res/img/icon/free_shipping.png" alt="">
                        </div>
                        <div class="policy-terms">
                            <h5>免费送货</h5>
                            <p>免费送货所有订单</p>
                        </div>
                    </div>
                    <!-- end policy single item -->
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <!-- start policy single item -->
                    <div class="service-policy-item">
                        <div class="icons">
                            <img src="${ctx}/res/img/icon/support247.png" alt="">
                        </div>
                        <div class="policy-terms">
                            <h5>支持 24/7</h5>
                            <p>支持24小时送货</p>
                        </div>
                    </div>
                    <!-- end policy single item -->
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <!-- start policy single item -->
                    <div class="service-policy-item">
                        <div class="icons">
                            <img src="${ctx}/res/img/icon/money_back.png" alt="">
                        </div>
                        <div class="policy-terms">
                            <h5>退款</h5>
                            <p>30天免费退货</p>
                        </div>
                    </div>
                    <!-- end policy single item -->
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <!-- start policy single item -->
                    <div class="service-policy-item">
                        <div class="icons">
                            <img src="${ctx}/res/img/icon/promotions.png" alt="">
                        </div>
                        <div class="policy-terms">
                            <h5>订单折扣</h5>
                            <p>订单满15元</p>
                        </div>
                    </div>
                    <!-- end policy single item -->
                </div>
            </div>
        </div>
    </section>
    <!-- service policy end -->

    <!-- our product area start -->
    <section class="our-product section-space">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center">
                        <h2>爱情鲜花</h2>
                        <p>浪漫幸福佳缘，爱情家庭美满。</p>
                    </div>
                </div>
            </div>
            <div class="row mtn-40">
                <c:forEach items="${loveProduct}" var="product">
                    <!-- product single item start -->
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="product-item mt-40">
                            <figure class="product-thumb">
                                <a href="${ctx}/detail/${product.productId}">
                                    <img class="pri-img" src="${ctx}/product/getLocalImg?path=${product.path}"
                                         alt="product">
                                    <img class="sec-img" src="${ctx}/product/getLocalImg?path=${product.path}"
                                         alt="product">
                                </a>
                                <div class="product-badge">
                                    <div class="product-label new">
                                        <span>新品</span>
                                    </div>
                                    <div class="product-label discount">
                                        <span>10%</span>
                                    </div>
                                </div>
                                <div class="button-group">
                                    <a data-toggle="modal" data-target="#quick_view"><span
                                            data-toggle="tooltip"
                                            data-placement="left"
                                            title="查看" productId="${product.productId}"><i
                                            class="lnr lnr-magnifier"></i></span></a>
                                    <a  data-placement="left" title="加入购物车"
                                       productId="${product.productId}"><i
                                            class="lnr lnr-cart"></i></a>
                                </div>
                            </figure>
                            <div class="product-caption">
                                <p class="product-name">
                                    <a href="${ctx}//detail/${product.productId}">${product.productName}</a>
                                </p>
                                <div class="price-box">
                                    <span class="price-regular">${product.nowPrice}元</span>
                                    <span class="price-old"><del>${product.primaryPrice}元</del></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- product single item end -->
                </c:forEach>
            </div>
        </div>
    </section>
    <!-- our product area end -->

    <!-- banner statistics start -->
    <section class="banner-statistics-right">
        <div class="container">
            <div class="row">
                <!-- start banner item start -->
                <div class="col-md-6">
                    <div class="banner-item banner-border">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/res/img/banner/banner-1.jpg" alt="">
                            </a>
                            <figcaption class="banner-content banner-content-right">
                                <h2 class="text1">for you</h2>
                                <h2 class="text2">Tulip Flower</h2>
                                <a class="store-link" href="#">shop now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start banner item end -->

                <!-- start banner item start -->
                <div class="col-md-6">
                    <div class="banner-item banner-border">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/res/img/banner/banner-2.jpg" alt="">
                            </a>
                            <figcaption class="banner-content banner-content-right">
                                <h2 class="text1">for you</h2>
                                <h2 class="text2">Flower & Box</h2>
                                <a class="store-link" href="#">shop now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start banner item end -->
            </div>
        </div>
    </section>
    <!-- banner statistics end -->

    <!-- trending product area start -->
    <section class="top-sellers section-space">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center">
                        <h2>生日类</h2>
                        <p>我的祝福，不是最早，不是，但是最诚；我的祝福，不求最美，不求，但求最灵。无论你已经收到多少问候，我依然献上最诚挚的祝愿：幸福一生，生日快乐！</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-carousel--4 slick-row-15 slick-sm-row-10 slick-arrow-style">
                        <c:forEach items="${birthProduct}" var="b_product">
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="${ctx}/detail/${b_product.productId}">
                                        <img class="pri-img" src="${ctx}/product/getLocalImg?path=${b_product.path}"
                                             alt="product">
                                        <img class="sec-img" src="${ctx}/product/getLocalImg?path=${b_product.path}"
                                             alt="product">
                                    </a>
                                    <div class="product-badge">
                                        <div class="product-label new">
                                            <span>新品</span>
                                        </div>
                                    </div>
                                    <div class="button-group">
                                        <a data-toggle="modal" data-target="#quick_view"><span
                                                data-toggle="tooltip" data-placement="left" title="查看" productId="${b_product.productId}"><i
                                                class="lnr lnr-magnifier"></i></span></a>
                                        <a  data-placement="left" title="加入购物车" productid="${b_product.productId}"><i
                                                class="lnr lnr-cart"></i></a>
                                    </div>
                                </figure>
                                <div class="product-caption">
                                    <p class="product-name">
                                        <a href="${ctx}//detail/${b_product.productId}">${b_product.productName}</a>
                                    </p>
                                    <div class="price-box">
                                        <span class="price-regular">${b_product.nowPrice}元</span>
                                        <span class="price-old"><del>${b_product.primaryPrice}元</del></span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- trending product area end -->

    <!-- Instagram Feed Area Start -->
    <div class="instagram-feed-area">
        <div class="instagram-feed-thumb">
            <div id="instafeed" class="instagram-carousel" data-userid="6666969077"
                 data-accesstoken="6666969077.1677ed0.d325f406d94c4dfab939137c5c2cc6c2">
            </div>
        </div>
    </div>
    <!-- Instagram Feed Area End -->

</main>
<!-- main wrapper end -->

<!-- Quick view modal start -->
<div class="modal" id="quick_view">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <!-- product details inner end -->
                <div class="product-details-inner">
                    <div class="row">
                        <div class="col-lg-5 col-md-5">
                            <div class="product-large-slider">
                                <div class="pro-large-img">
                                    <img src="${ctx}/res/img/product/product-details-img1.jpg" alt="product-details"/>
                                </div>
                                <div class="pro-large-img">
                                    <img src="${ctx}/res/img/product/product-details-img2.jpg" alt="product-details"/>
                                </div>
                                <div class="pro-large-img">
                                    <img src="${ctx}/res/img/product/product-details-img3.jpg" alt="product-details"/>
                                </div>
                                <div class="pro-large-img">
                                    <img src="${ctx}/res/img/product/product-details-img4.jpg" alt="product-details"/>
                                </div>
                            </div>
                            <div class="pro-nav slick-row-10 slick-arrow-style">
                                <div class="pro-nav-thumb">
                                    <img src="${ctx}/res/img/product/product-details-img1.jpg" alt="product-details"/>
                                </div>
                                <div class="pro-nav-thumb">
                                    <img src="${ctx}/res/img/product/product-details-img2.jpg" alt="product-details"/>
                                </div>
                                <div class="pro-nav-thumb">
                                    <img src="${ctx}/res/img/product/product-details-img3.jpg" alt="product-details"/>
                                </div>
                                <div class="pro-nav-thumb">
                                    <img src="${ctx}/res/img/product/product-details-img4.jpg" alt="product-details"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7">
                            <div class="product-details-des quick-details">
                                <h3 class="product-name">Orchid flower white stick</h3>
                                <div class="ratings d-flex">
                                    <span><i class="lnr lnr-star"></i></span>
                                    <span><i class="lnr lnr-star"></i></span>
                                    <span><i class="lnr lnr-star"></i></span>
                                    <span><i class="lnr lnr-star"></i></span>
                                    <span><i class="lnr lnr-star"></i></span>
                                    <div class="pro-review">
                                        <span>1 Reviews</span>
                                    </div>
                                </div>
                                <div class="price-box">
                                    <span class="price-regular">$70.00</span>
                                    <span class="price-old"><del>$90.00</del></span>
                                </div>
                                <h5 class="offer-text"><strong>Hurry up</strong>! offer ends in:</h5>
                                <div class="product-countdown" data-countdown="2019/08/25"></div>
                                <div class="availability">
                                    <i class="fa fa-check-circle"></i>
                                    <span>200 in stock</span>
                                </div>
                                <p class="pro-desc">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                                    nonumy
                                    eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
                                <div class="quantity-cart-box d-flex align-items-center">
                                    <h5>qty:</h5>
                                    <div class="quantity">
                                        <div class="pro-qty"><input type="text" value="1"></div>
                                    </div>
                                    <div class="action_link">
                                        <a class="btn btn-cart2" href="#">Add to cart</a>
                                    </div>
                                </div>
                                <div class="useful-links">
                                    <a href="#" data-toggle="tooltip" title="Compare"><i
                                            class="lnr lnr-sync"></i>compare</a>
                                    <a href="#" data-toggle="tooltip" title="Wishlist"><i
                                            class="lnr lnr-heart"></i>wishlist</a>
                                </div>
                                <div class="like-icon">
                                    <a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
                                    <a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
                                    <a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- product details inner end -->
            </div>
        </div>
    </div>
</div>
<!-- Quick view modal end -->

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

<!-- offcanvas mini cart start -->
<div class="offcanvas-minicart-wrapper">
    <div class="minicart-inner">
        <div class="offcanvas-overlay"></div>
        <div class="minicart-inner-content">
            <div class="minicart-close">
                <i class="lnr lnr-cross"></i>
            </div>
            <div class="minicart-content-box">
                <div class="minicart-item-wrapper">
                    <ul>
                        <li class="minicart-item">
                            <div class="minicart-thumb">
                                <a href="product-details.html">
                                    <img src="${ctx}/res/img/cart/cart-1.jpg" alt="product">
                                </a>
                            </div>
                            <div class="minicart-content">
                                <h3 class="product-name">
                                    <a href="product-details.html">Flowers bouquet pink for all flower lovers</a>
                                </h3>
                                <p>
                                    <span class="cart-quantity">1 <strong>&times;</strong></span>
                                    <span class="cart-price">$100.00</span>
                                </p>
                            </div>
                            <button class="minicart-remove"><i class="lnr lnr-cross"></i></button>
                        </li>
                        <li class="minicart-item">
                            <div class="minicart-thumb">
                                <a href="product-details.html">
                                    <img src="${ctx}/res/img/cart/cart-2.jpg" alt="product">
                                </a>
                            </div>
                            <div class="minicart-content">
                                <h3 class="product-name">
                                    <a href="product-details.html">Jasmine flowers white for all flower lovers</a>
                                </h3>
                                <p>
                                    <span class="cart-quantity">1 <strong>&times;</strong></span>
                                    <span class="cart-price">$80.00</span>
                                </p>
                            </div>
                            <button class="minicart-remove"><i class="lnr lnr-cross"></i></button>
                        </li>
                    </ul>
                </div>

                <div class="minicart-pricing-box">
                    <ul>
                        <li>
                            <span>sub-total</span>
                            <span><strong>$300.00</strong></span>
                        </li>
                        <li>
                            <span>Eco Tax (-2.00)</span>
                            <span><strong>$10.00</strong></span>
                        </li>
                        <li>
                            <span>VAT (20%)</span>
                            <span><strong>$60.00</strong></span>
                        </li>
                        <li class="total">
                            <span>total</span>
                            <span><strong>$370.00</strong></span>
                        </li>
                    </ul>
                </div>

                <div class="minicart-button">
                    <a href="#"><i class="fa fa-shopping-cart"></i> view cart</a>
                    <a href="#"><i class="fa fa-share"></i> checkout</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- offcanvas mini cart end -->

<!-- Scroll to top start -->
<div class="scroll-top not-visible">
    <i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->
</body>

<script src="${ctx}/res/js/index/vendor.js" type="application/javascript"></script>
<script src="${ctx}/res/js/index/active.js" type="application/javascript"></script>
<script src="${ctx}/res/js/index/index.js" type="application/javascript"></script>

</html>
