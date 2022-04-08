<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<head>
<meta charset="utf-8">
<!-- Mobile Specific Metas
  ================================================== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Constra HTML Template v1.0">

<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/assets/user/images/favicon.png" />" />

<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/themefisher-font/style.css"/>" />

<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/bootstrap/css/bootstrap.min.css" />" />


<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/animate/animate.css" />" />

<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/slick/slick.css" />" />

<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/slick/slick-theme.css" />" />

<link rel="stylesheet"
	href="<c:url value="/assets/user/css/style.css" />" />
</head>
<header>
	<!-- Start Top Header Bar -->
	<section class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-12 col-sm-4">
					<div class="contact-number">
						<i class="tf-ion-ios-telephone"></i> <span>0129-
							12323-123123</span>
					</div>
				</div>
				<div class="col-md-4 col-xs-12 col-sm-4">
					<!-- Site Logo -->
					<div class="logo text-center">
						<a href="index.html"> <!-- replace logo here --> <svg
								width="135px" height="29px" viewBox="0 0 155 29" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
							<g id="Page-1" stroke="none" stroke-width="1" fill="none"
									fill-rule="evenodd" font-size="40"
									font-family="AustinBold, Austin" font-weight="bold">
								<g id="Group" transform="translate(-108.000000, -297.000000)"
									fill="#000000">
									<text id="AVIATO">
										<tspan x="108.94" y="325">AVIATO</tspan>
									</text>
								</g>
							</g>
						</svg>
						</a>
					</div>
				</div>

				<div class="col-md-4 col-xs-12 col-sm-4">
					<ul class="top-menu text-right list-inline">

						<!--  Cart -->
						<li class="dropdown cart-nav dropdown-slide"><a href="#!"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"><i class="tf-ion-android-cart"></i><a
								href="<c:url value="/Cart" />">Cart</a></a></li>

						<c:if test="${ empty LoginInfo }">
							<li class="dropdown cart-nav dropdown-slide"><a href="#!"
								class="dropdown-toggle" data-toggle="dropdown"
								data-hover="dropdown"><a href="<c:url value="/Register" />">Register</a></a></li>
						</c:if>
						<c:if test="${not empty LoginInfo }">
							<li><a href="<c:url value="Home" />">${LoginInfo.display_name}</a></li>
							<a href="<c:url value="Logout" />">Đăng xuất</a>
						</c:if>
					</ul>
				</div>

			</div>
		</div>
	</section>
	<!-- End Top Header Bar -->

	<!-- Main Menu Section -->
	<section class="menu">
		<nav class="navbar navigation">
			<div class="container">
				<div class="navbar-header">
					<h2 class="menu-title">Main Menu</h2>
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>

				<!-- Navbar Links -->

				<div id="navbar" class="navbar-collapse collapse text-center">
					<ul class="nav navbar-nav">
						<li class="dropdown "><a href="/wdstudio1/Home">Trang chủ</a></li>
						<li class="dropdown "><a href="/wdstudio1/AlbumAoCuoi">Áo
								cưới</a></li>
						<li class="dropdown "><a href="/wdstudio1/AlbumAnhCuoi">Ảnh
								cưới</a></li>
						<li class="dropdown "><a href="#">Tuyển dụng</a></li>

						<li class="dropdown search dropdown-slide"><a href="#!"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"><i class="tf-ion-ios-search-strong"></i>
								Search</a>
							<ul class="dropdown-menu search-dropdown">
								<li>
									<form action="post">
										<input type="search" class="form-control"
											placeholder="Search...">
									</form>
								</li>
							</ul></li>
					</ul>
				</div>

			</div>
		</nav>
	</section>

	<div class="hero-slider">
		<div class="slider-item th-fullpage hero-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 text-left">
						<p data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".1">PRODUCTS</p>
						<h1 data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".5">
							The beauty of nature <br> is hidden in details.
						</h1>
						<a data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".8" class="btn" href="shop.html">Về AVIATO
							STUDIO</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>