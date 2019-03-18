﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title></title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- all css here -->
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/magnific-popup.css">
<link rel="stylesheet" href="static/css/animate.css">
<link rel="stylesheet" href="static/css/owl.carousel.min.css">
<link rel="stylesheet" href="static/css/themify-icons.css">
<link rel="stylesheet" href="static/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="static/css/icofont.css">
<link rel="stylesheet" href="static/css/meanmenu.min.css">
<link rel="stylesheet" href="static/css/jquery-ui.css">
<link rel="stylesheet" href="static/css/bundle.css">
<link rel="stylesheet" href="static/css/style.css">
<link rel="stylesheet" href="static/css/responsive.css">
<script src="static/js/vendor/modernizr-2.8.3.min.js"></script>
<script src="static/js/jquery.min.js"></script>
<style>
	.active{
		color: red;
	}
</style>
	<script>
		//退出登录
		function exit() {
			$.ajax({
				url:"user/exit.do",
				type:"post",
				dataType:"JSON",
				success:function (data) {
					location.reload();
                },
				error:function (data) {
					location.reload();
                }
			})
        }

        //添加查询条件
		var pr = '';
		var tp = '';
		var si = '';

		//条件回显
		$(function () {
		    <% String str = (String)request.getParameter("pr");%>
		    var tpr = '<%=str%>';
		    alert(tpr)
			if(tpr!=''){
			    pr = tpr;
			    $("#price_type_"+pr).removeAttr("class");
			    $("#price_type_"+pr).attr("class","active");
            }
        });

        function url(e,v) {
			if(e=='price'){
				pr = v;
			}
			if(e=='type'){
			    tp = v;
			}
			if(e=='size'){
			    si = v;
			}
            location.href="/jump/index.do?pr="+pr+"&type="+tp+"&size="+si;
        }
	</script>

</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<!-- header start -->
<header>
	<div class="header-top-furniture wrapper-padding-2 res-header-sm">
		<div class="container-fluid">
			<div class="header-bottom-wrapper">
				<div class="logo-2 furniture-logo ptb-30">
					<a href="index.html">
						<img src="static/img/logo/2.png" alt="">
					</a>
				</div>
				<div class="menu-style-2 furniture-menu menu-hover">
					<nav>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="shop.html">Shop</a></li>
							<li><a href="shop-list.html">Shop List</a></li>
						</ul>
					</nav>
				</div>
				<div class="header-cart">
					<a class="icon-cart-furniture" href="#">
						<i class="ti-shopping-cart"></i>
						<span class="shop-count-furniture green">02</span>
					</a>
					<ul class="cart-dropdown">
						<li class="single-product-cart">
							<div class="cart-img">
								<a href="#"><img src="static/img/cart/1.jpg" alt=""></a>
							</div>
							<div class="cart-title">
								<h5><a href="#"> Bits Headphone</a></h5>
								<h6><a href="#">Black</a></h6>
								<span>$80.00 x 1</span>
							</div>
							<div class="cart-delete">
								<a href="#"><i class="ti-trash"></i></a>
							</div>
						</li>
						<li class="single-product-cart">
							<div class="cart-img">
								<a href="#"><img src="static/img/cart/2.jpg" alt=""></a>
							</div>
							<div class="cart-title">
								<h5><a href="#"> Bits Headphone</a></h5>
								<h6><a href="#">Black</a></h6>
								<span>$80.00 x 1</span>
							</div>
							<div class="cart-delete">
								<a href="#"><i class="ti-trash"></i></a>
							</div>
						</li>
						<li class="single-product-cart">
							<div class="cart-img">
								<a href="#"><img src="static/img/cart/3.jpg" alt=""></a>
							</div>
							<div class="cart-title">
								<h5><a href="#"> Bits Headphone</a></h5>
								<h6><a href="#">Black</a></h6>
								<span>$80.00 x 1</span>
							</div>
							<div class="cart-delete">
								<a href="#"><i class="ti-trash"></i></a>
							</div>
						</li>
						<li class="cart-space">
							<div class="cart-sub">
								<h4>Subtotal</h4>
							</div>
							<div class="cart-price">
								<h4>$240.00</h4>
							</div>
						</li>
						<li class="cart-btn-wrapper">
							<a class="cart-btn btn-hover" href="#">view cart</a>
							<a class="cart-btn btn-hover" href="#">checkout</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="mobile-menu-area d-md-block col-md-12 col-lg-12 col-12 d-lg-none d-xl-none">
					<div class="mobile-menu">
						<nav id="mobile-menu-active">
							<ul class="menu-overflow">
								<li><a href="index.html">Home</a></li>
								<li><a href="shop.html">Shop</a></li>
								<li><a href="shop-list.html">Shop List</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="header-bottom-furniture wrapper-padding-2 border-top-3">
		<div class="container-fluid">
			<div class="furniture-bottom-wrapper">
				<div class="furniture-login">
					<c:if test="${empty sessionScope.get('userName')}">
						<ul>
							<li><a href="jump/login.do">登录 </a></li>
							<li><a href="jump/register.do">注册 </a></li>
						</ul>
					</c:if>
					<c:if test="${not empty sessionScope.get('userName')}">
						<ul>
							<li><a href="#">个人中心 </a></li>
							<li><a href="javascript:void(exit());">退出 </a></li>
						</ul>
					</c:if>
				</div>
				<div class="furniture-search">
					<form action="#">
						<input placeholder="搜索 . . ." type="text">
						<button>
							<i class="ti-search"></i>
						</button>
					</form>
				</div>
				<div class="furniture-wishlist">
					<ul>
						<li><a data-toggle="modal" data-target="#exampleCompare" href="#"><i class="ti-reload"></i> Compare</a></li>
						<li><a href="#"><i class="ti-heart"></i> Wishlist</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- header end -->
<div class="breadcrumb-area pt-205 breadcrumb-padding pb-210" style="background-image: url(static/img/bg/breadcrumb.jpg)">
	<div class="container-fluid">
		<div class="breadcrumb-content text-center">
			<h2> shop grid</h2>
			<ul>
				<li><a href="#">home</a></li>
				<li>shop grid</li>
			</ul>
		</div>
	</div>
</div>
<div class="shop-page-wrapper shop-page-padding ptb-100">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-3">
				<div class="shop-sidebar mr-50">
					<%--<div class="sidebar-widget mb-50">
						<h3 class="sidebar-title">搜索产品</h3>
						<div class="sidebar-search">
							<form action="#">
								<input placeholder="搜索产品..." type="text">
								<button id="serachBth"><i class="ti-search"></i></button>
							</form>
						</div>
					</div>--%>
					<%--<div class="sidebar-widget mb-40">
						<h3 class="sidebar-title">价格范围</h3>
						<div class="price_filter">
							<div id="slider-range"></div>
							<div class="price_slider_amount">
								<div class="">
									<label>价格: </label>
									<input type="text" value="100" oninput="changeValue()" id="amount" name="price"  placeholder="Add Your Price" />
								</div>
								<button type="button">查询</button>
							</div>
						</div>
					</div>--%>
					<div class="sidebar-widget mb-45">
						<h3 class="sidebar-title">价格范围</h3>
						<div class="sidebar-categories" id="price">
							<ul>
								<li><a id="price_type" class="active" href="javascript:url('price','')">不限</a></li>
								<li><a id="price_type_1" class="active" href="javascript:url('price','1')">&nbsp;< &nbsp;100 元</a></li>
								<li><a id="price_type_2" href="javascript:url('price','2')">100 - 200元</a></li>
								<li><a id="price_type_3" href="javascript:url('price','3')">200 - 300 元 </a></li>
								<li><a id="price_type_4" href="javascript:url('price','4')">300 - 400 元 </a></li>
								<li><a id="price_type_5" href="javascript:url('price','5')"> &nbsp;> &nbsp;400元 </a></li>
							</ul>
						</div>
					</div>
					<div class="sidebar-widget mb-45">
						<h3 class="sidebar-title">分类</h3>
						<div class="sidebar-categories">
							<ul>
								<li><a href="javascript:url('type','')">全部<span>100</span></a></li>
								<li><a href="javascript:url('type','1')">T恤 <span>4</span></a></li>
								<li><a href="javascript:url('type','2')">包 <span>9</span></a></li>
								<li><a href="javascript:url('type','3')">牛仔裤 <span>5</span> </a></li>
								<li><a href="javascript:url('type','4')">裙子 <span>3</span></a></li>
								<li><a href="javascript:url('type','5')">外套<span>4</span></a></li>
							</ul>
						</div>
					</div>
					<%--<div class="sidebar-widget sidebar-overflow mb-45">--%>
						<%--<h3 class="sidebar-title">颜色</h3>--%>
						<%--<div class="product-color">--%>
							<%--<ul>--%>
								<%--<li class="red">b</li>--%>
								<%--<li class="pink">p</li>--%>
								<%--<li class="blue">b</li>--%>
								<%--<li class="sky">b</li>--%>
								<%--<li class="green">y</li>--%>
								<%--<li class="purple">g</li>--%>
							<%--</ul>--%>
						<%--</div>--%>
					<%--</div>--%>
					<div class="sidebar-widget mb-40">
						<h3 class="sidebar-title">尺寸</h3>
						<div class="product-size">
							<ul>
								<li><a href="javascript:url('size','')">ALL</a></li>
								<li><a href="javascript:url('size','xl')">xl</a></li>
								<li><a href="javascript:url('size','m')">m</a></li>
								<li><a href="javascript:url('size','l')">l</a></li>
								<li><a href="javascript:url('size','ml')">ml</a></li>
								<li><a href="javascript:url('size','xxl')">xxl</a></li>
							</ul>
						</div>
					</div>
					<!-- <div class="sidebar-widget mb-40">
						<h3 class="sidebar-title">分类</h3>
						<div class="product-tags">
							<ul>
								<li><a href="#">衣服</a></li>
								<li><a href="#">包</a></li>
								<li><a href="#">牛仔裤</a></li>
								<li><a href="#">T恤</a></li>
								<li><a href="#">裙子</a></li>
							</ul>
						</div>
					</div> -->
					<div class="sidebar-widget mb-50">
						<h3 class="sidebar-title">销量最高</h3>
						<div class="sidebar-top-rated-all">
							<div class="sidebar-top-rated mb-30">
								<div class="single-top-rated">
									<div class="top-rated-img">
										<a href="#"><img src="static/img/product/sidebar-product/1.jpg" alt=""></a>
									</div>
									<div class="top-rated-text">
										<h4><a href="#">Flying Drone</a></h4>
										<div class="top-rated-rating">
											<ul>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
											</ul>
										</div>
										<span>$140.00</span>
									</div>
								</div>
							</div>
							<div class="sidebar-top-rated mb-30">
								<div class="single-top-rated">
									<div class="top-rated-img">
										<a href="#"><img src="static/img/product/sidebar-product/2.jpg" alt=""></a>
									</div>
									<div class="top-rated-text">
										<h4><a href="#">Flying Drone</a></h4>
										<div class="top-rated-rating">
											<ul>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
											</ul>
										</div>
										<span>$140.00</span>
									</div>
								</div>
							</div>
							<div class="sidebar-top-rated mb-30">
								<div class="single-top-rated">
									<div class="top-rated-img">
										<a href="#"><img src="static/img/product/sidebar-product/3.jpg" alt=""></a>
									</div>
									<div class="top-rated-text">
										<h4><a href="#">Flying Drone</a></h4>
										<div class="top-rated-rating">
											<ul>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
											</ul>
										</div>
										<span>$140.00</span>
									</div>
								</div>
							</div>
							<div class="sidebar-top-rated mb-30">
								<div class="single-top-rated">
									<div class="top-rated-img">
										<a href="#"><img src="static/img/product/sidebar-product/4.jpg" alt=""></a>
									</div>
									<div class="top-rated-text">
										<h4><a href="#">Flying Drone</a></h4>
										<div class="top-rated-rating">
											<ul>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
												<li><i class="pe-7s-star"></i></li>
											</ul>
										</div>
										<span>$140.00</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="shop-product-wrapper res-xl res-xl-btn">
					<div class="shop-bar-area">
						<div class="shop-bar pb-60">
							<div class="shop-found-selector">
								<div class="shop-found">
									<p><span>23</span> Product Found of <span>50</span></p>
								</div>
								<div class="shop-selector">
									<label>排序: </label>
									<select name="select">
										<option value="">默认</option>
										<option value="">首字母升序</option>
										<option value="">首字母降序 </option>
										<option value="">In stock</option>
									</select>
								</div>
							</div>
							<div class="shop-filter-tab">
								<div class="shop-tab nav" role=tablist>
									<a class="active" href="#grid-sidebar1" data-toggle="tab" role="tab" aria-selected="false">
										<i class="ti-layout-grid4-alt"></i>
									</a>
									<a href="#grid-sidebar2" data-toggle="tab" role="tab" aria-selected="true">
										<i class="ti-menu"></i>
									</a>
								</div>
							</div>
						</div>
						<div class="shop-product-content tab-content">
							<div id="grid-sidebar1" class="tab-pane fade active show">
								<div class="row">

								<c:forEach items="${Goods}" var="good">
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="${good.imgurl}" alt="">
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">${good.gname}</a></h4>
												<span>$${good.price}</span>
											</div>
										</div>
								   </div>
								</c:forEach>
									<%--<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/2.jpg" alt="">
												</a>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Denim Stonewash</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/3.jpg" alt="">
												</a>
												<span>new</span>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Mini Waffle 5 Pack</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/4.jpg" alt="">
												</a>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Dagger Smart Trousers</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/4.jpg" alt="">
												</a>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Homme Tapered Smart</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/3.jpg" alt="">
												</a>
												<span>sell</span>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Skinny Jeans Terry</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/2.jpg" alt="">
												</a>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Navy Bird Print</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/1.jpg" alt="">
												</a>
												<span>hot</span>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Leg Smart Trousers</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>--%>
									<%--<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/1.jpg" alt="">
												</a>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Black Faux Suede</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/2.jpg" alt="">
												</a>
												<span>new</span>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Homme Tapered Smart </a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/3.jpg" alt="">
												</a>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Denim Stonewash</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>
									<div class="col-lg-6 col-md-6 col-xl-3">
										<div class="product-wrapper mb-30">
											<div class="product-img">
												<a href="#">
													<img src="static/img/product/fashion-colorful/5.jpg" alt="">
												</a>
												<span>hot</span>
												<div class="product-action">
													<a class="animate-left" title="Wishlist" href="#">
														<i class="pe-7s-like"></i>
													</a>
													<a class="animate-top" title="Add To Cart" href="#">
														<i class="pe-7s-cart"></i>
													</a>
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content">
												<h4><a href="#">Mini Waffle 5 Pack</a></h4>
												<span>$115.00</span>
											</div>
										</div>
								   </div>--%>
								</div>
							</div>
							<%--<div id="grid-sidebar2" class="tab-pane fade">
								<div class="row">
									<div class="col-lg-12 col-xl-6">
										<div class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
											<div class="product-img list-img-width">
												<a href="#">
													<img src="static/img/product/fashion-colorful/1.jpg" alt="">
												</a>
												<span>hot</span>
												<div class="product-action-list-style">
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content-list">
												<div class="product-list-info">
													<h4><a href="#">Dagger Smart Trousers</a></h4>
													<span>$150.00</span>
													<p>Lorem ipsum dolor sit amet, mana consectetur adipisicing elit, sed do eiusmod tempor labore. </p>
												</div>
												<div class="product-list-cart-wishlist">
													<div class="product-list-cart">
														<a class="btn-hover list-btn-style" href="#">add to cart</a>
													</div>
													<div class="product-list-wishlist">
														<a class="btn-hover list-btn-wishlist" href="#">
															<i class="pe-7s-like"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-xl-6">
										<div class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
											<div class="product-img list-img-width">
												<a href="#">
													<img src="static/img/product/fashion-colorful/2.jpg" alt="">
												</a>
												<div class="product-action-list-style">
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content-list">
												<div class="product-list-info">
													<h4><a href="#">Homme Tapered Smart</a></h4>
													<span>$180.00</span>
													<p>Lorem ipsum dolor sit amet, mana consectetur adipisicing elit, sed do eiusmod tempor labore. </p>
												</div>
												<div class="product-list-cart-wishlist">
													<div class="product-list-cart">
														<a class="btn-hover list-btn-style" href="#">add to cart</a>
													</div>
													<div class="product-list-wishlist">
														<a class="btn-hover list-btn-wishlist" href="#">
															<i class="pe-7s-like"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-xl-6">
										<div class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
											<div class="product-img list-img-width">
												<a href="#">
													<img src="static/img/product/fashion-colorful/3.jpg" alt="">
												</a>
												<div class="product-action-list-style">
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content-list">
												<div class="product-list-info">
													<h4><a href="#">Skinny Jeans Terry</a></h4>
													<span>$130.00</span>
													<p>Lorem ipsum dolor sit amet, mana consectetur adipisicing elit, sed do eiusmod tempor labore. </p>
												</div>
												<div class="product-list-cart-wishlist">
													<div class="product-list-cart">
														<a class="btn-hover list-btn-style" href="#">add to cart</a>
													</div>
													<div class="product-list-wishlist">
														<a class="btn-hover list-btn-wishlist" href="#">
															<i class="pe-7s-like"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-xl-6">
										<div class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
											<div class="product-img list-img-width">
												<a href="#">
													<img src="static/img/product/fashion-colorful/4.jpg" alt="">
												</a>
												<span>new</span>
												<div class="product-action-list-style">
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content-list">
												<div class="product-list-info">
													<h4><a href="#">Navy Bird Print</a></h4>
													<span>$120.00</span>
													<p>Lorem ipsum dolor sit amet, mana consectetur adipisicing elit, sed do eiusmod tempor labore. </p>
												</div>
												<div class="product-list-cart-wishlist">
													<div class="product-list-cart">
														<a class="btn-hover list-btn-style" href="#">add to cart</a>
													</div>
													<div class="product-list-wishlist">
														<a class="btn-hover list-btn-wishlist" href="#">
															<i class="pe-7s-like"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-xl-6">
										<div class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
											<div class="product-img list-img-width">
												<a href="#">
													<img src="static/img/product/fashion-colorful/5.jpg" alt="">
												</a>
												<span>hot</span>
												<div class="product-action-list-style">
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content-list">
												<div class="product-list-info">
													<h4><a href="#">Leg Smart Trousers </a></h4>
													<span>$170.00</span>
													<p>Lorem ipsum dolor sit amet, mana consectetur adipisicing elit, sed do eiusmod tempor labore. </p>
												</div>
												<div class="product-list-cart-wishlist">
													<div class="product-list-cart">
														<a class="btn-hover list-btn-style" href="#">add to cart</a>
													</div>
													<div class="product-list-wishlist">
														<a class="btn-hover list-btn-wishlist" href="#">
															<i class="pe-7s-like"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-xl-6">
										<div class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
											<div class="product-img list-img-width">
												<a href="#">
													<img src="static/img/product/fashion-colorful/1.jpg" alt="">
												</a>
												<div class="product-action-list-style">
													<a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
														<i class="pe-7s-look"></i>
													</a>
												</div>
											</div>
											<div class="product-content-list">
												<div class="product-list-info">
													<h4><a href="#">Arifo Stylas Dress</a></h4>
													<span>$190.00</span>
													<p>Lorem ipsum dolor sit amet, mana consectetur adipisicing elit, sed do eiusmod tempor labore. </p>
												</div>
												<div class="product-list-cart-wishlist">
													<div class="product-list-cart">
														<a class="btn-hover list-btn-style" href="#">add to cart</a>
													</div>
													<div class="product-list-wishlist">
														<a class="btn-hover list-btn-wishlist" href="#">
															<i class="pe-7s-like"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>--%>
						</div>
					</div>
				</div>
				<div class="pagination-style mt-30 text-center">
					<ul>
						<li><a href="#"><i class="ti-angle-left"></i></a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">...</a></li>
						<li><a href="#">19</a></li>
						<li class="active"><a href="#"><i class="ti-angle-right"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<footer class="footer-area">
	<div class="footer-top-area bg-img pt-105 pb-65" style="background-image: url(static/img/bg/1.jpg)" data-overlay="9">
		<div class="container">
			<div class="row">
				<div class="col-xl-4 col-md-3">
					<div class="footer-widget mb-40">
						<h3 class="footer-widget-title">Custom Service</h3>
						<div class="footer-widget-content">
							<ul>
								<li><a href="cart.html">Cart</a></li>
								<li><a href="#">My Account</a></li>
								<li><a href="#">Login</a></li>
								<li><a href="#">Register</a></li>
								<li><a href="#">Support</a></li>
								<li><a href="#">Track</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-md-3">
					<div class="footer-widget mb-40">
						<h3 class="footer-widget-title">Categories</h3>
						<div class="footer-widget-content">
							<ul>
								<li><a href="shop.html">Dress</a></li>
								<li><a href="shop.html">Shoes</a></li>
								<li><a href="shop.html">Shirt</a></li>
								<li><a href="shop.html">Baby Product</a></li>
								<li><a href="shop.html">Mans Product</a></li>
								<li><a href="shop.html">Leather</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-md-6">
					<div class="footer-widget mb-40">
						<h3 class="footer-widget-title">Contact</h3>
						<div class="footer-newsletter">
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is dummy.</p>
							<div id="mc_embed_signup" class="subscribe-form pr-40">
								<form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
									<div id="mc_embed_signup_scroll" class="mc-form">
										<input type="email" value="" name="EMAIL" class="email" placeholder="Enter Your E-mail" required>
										<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
										<div class="mc-news" aria-hidden="true">
											<input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1" value="">
										</div>
										<div class="clear">
											<input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button">
										</div>
									</div>
								</form>
							</div>
							<div class="footer-contact">
								<p><span><i class="ti-location-pin"></i></span> 77 Seventh avenue USA 12555. </p>
								<p><span><i class=" ti-headphone-alt "></i></span> +88 (015) 609735 or +88 (012) 112266</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-bottom black-bg ptb-20">
		<div class="container">
			<div class="row">
				<div class="col-12 text-center">
					<div class="copyright">
						<p>Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span class="pe-7s-close" aria-hidden="true"></span>
	</button>
	<div class="modal-dialog modal-quickview-width" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<div class="qwick-view-left">
					<div class="quick-view-learg-img">
						<div class="quick-view-tab-content tab-content">
							<div class="tab-pane active show fade" id="modal1" role="tabpanel">
								<img src="static/img/quick-view/l1.jpg" alt="">
							</div>
							<div class="tab-pane fade" id="modal2" role="tabpanel">
								<img src="static/img/quick-view/l2.jpg" alt="">
							</div>
							<div class="tab-pane fade" id="modal3" role="tabpanel">
								<img src="static/img/quick-view/l3.jpg" alt="">
							</div>
						</div>
					</div>
					<div class="quick-view-list nav" role="tablist">
						<a class="active" href="#modal1" data-toggle="tab" role="tab">
							<img src="static/img/quick-view/s1.jpg" alt="">
						</a>
						<a href="#modal2" data-toggle="tab" role="tab">
							<img src="static/img/quick-view/s2.jpg" alt="">
						</a>
						<a href="#modal3" data-toggle="tab" role="tab">
							<img src="static/img/quick-view/s3.jpg" alt="">
						</a>
					</div>
				</div>
				<div class="qwick-view-right">
					<div class="qwick-view-content">
						<h3>Handcrafted Supper Mug</h3>
						<div class="price">
							<span class="new">$90.00</span>
							<span class="old">$120.00  </span>
						</div>
						<div class="rating-number">
							<div class="quick-view-rating">
								<i class="pe-7s-star"></i>
								<i class="pe-7s-star"></i>
								<i class="pe-7s-star"></i>
								<i class="pe-7s-star"></i>
								<i class="pe-7s-star"></i>
							</div>
							<div class="quick-view-number">
								<span>2 Ratting (S)</span>
							</div>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation .</p>
						<div class="quick-view-select">
							<div class="select-option-part">
								<label>Size*</label>
								<select class="select">
									<option value="">- Please Select -</option>
									<option value="">900</option>
									<option value="">700</option>
								</select>
							</div>
							<div class="select-option-part">
								<label>Color*</label>
								<select class="select">
									<option value="">- Please Select -</option>
									<option value="">orange</option>
									<option value="">pink</option>
									<option value="">yellow</option>
								</select>
							</div>
						</div>
						<div class="quickview-plus-minus">
							<div class="cart-plus-minus">
								<input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
							</div>
							<div class="quickview-btn-cart">
								<a class="btn-hover-black" href="#">add to cart</a>
							</div>
							<div class="quickview-btn-wishlist">
								<a class="btn-hover" href="#"><i class="pe-7s-like"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- modal -->
<div class="modal fade" id="exampleCompare" tabindex="-1" role="dialog" aria-hidden="true">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span class="pe-7s-close" aria-hidden="true"></span>
	</button>
	<div class="modal-dialog modal-compare-width" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<form action="#">
					<div class="table-content compare-style table-responsive">
						<table>
							<thead>
								<tr>
									<th></th>
									<th>
										<a href="#">Remove <span>x</span></a>
										<img src="static/img/cart/4.jpg" alt="">
										<p>Blush Sequin Top </p>
										<span>$75.99</span>
										<a class="compare-btn" href="#">Add to cart</a>
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="compare-title"><h4>Description </h4></td>
									<td class="compare-dec compare-common">
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has beenin the stand ard dummy text ever since the 1500s, when an unknown printer took a galley</p>
									</td>
								</tr>
								<tr>
									<td class="compare-title"><h4>Sku </h4></td>
									<td class="product-none compare-common">
										<p>-</p>
									</td>
								</tr>
								<tr>
									<td class="compare-title"><h4>Availability  </h4></td>
									<td class="compare-stock compare-common">
										<p>In stock</p>
									</td>
								</tr>
								<tr>
									<td class="compare-title"><h4>Weight   </h4></td>
									<td class="compare-none compare-common">
										<p>-</p>
									</td>
								</tr>
								<tr>
									<td class="compare-title"><h4>Dimensions   </h4></td>
									<td class="compare-stock compare-common">
										<p>N/A</p>
									</td>
								</tr>
								<tr>
									<td class="compare-title"><h4>brand   </h4></td>
									<td class="compare-brand compare-common">
										<p>HasTech</p>
									</td>
								</tr>
								<tr>
									<td class="compare-title"><h4>color   </h4></td>
									<td class="compare-color compare-common">
										<p>Grey, Light Yellow, Green, Blue, Purple, Black </p>
									</td>
								</tr>
								<tr>
									<td class="compare-title"><h4>size    </h4></td>
									<td class="compare-size compare-common">
										<p>XS, S, M, L, XL, XXL </p>
									</td>
								</tr>
								<tr>
									<td class="compare-title"></td>
									<td class="compare-price compare-common">
										<p>$75.99 </p>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- all js here -->
<script src="static/js/vendor/jquery-1.12.0.min.js"></script>
<script src="static/js/popper.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/jquery.magnific-popup.min.js"></script>
<script src="static/js/isotope.pkgd.min.js"></script>
<script src="static/js/imagesloaded.pkgd.min.js"></script>
<script src="static/js/jquery.counterup.min.js"></script>
<script src="static/js/waypoints.min.js"></script>
<script src="static/js/ajax-mail.js"></script>
<script src="static/js/owl.carousel.min.js"></script>
<script src="static/js/plugins.js"></script>
<script src="static/js/main.js"></script>
</body>
</html>