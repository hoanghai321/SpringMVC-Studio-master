<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<title>Giỏ hàng</title>
</head>
<body id="body">
	<section class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content">
						<h1 class="page-name">Cart</h1>
						<ol class="breadcrumb">
							<li><a href="index.html">Home</a></li>
							<li class="active">cart</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="page-wrapper">
		<div class="cart shopping">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="block">
							<div class="product-list">
								<h3>Áo cưới</h3>
								<form method="post">
									<table class="table">
										<thead>
											<tr>
												<th>Hình ảnh</th>
												<th>Áo cưới</th>
												<th>Giá</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>

											<c:forEach var="item" items="${Cart }">
												<tr>
													<td>
														<div class="product-info">
															<img width="80px"
																src="<c:url value="${item.value.aoCuoiDto.aoCuoiImage}"/>">
														</div>
													</td>
													<td>
														<div class="product-info">
															<p>${item.value.aoCuoiDto.aoCuoiName}</p>
														</div>
													</td>
													<td>${item.value.aoCuoiDto.aoCuoiBan }</td>
													<td><a class="product-remove"
														href="<c:url value="/DeleteCart/${item.key }" />">Xoá</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<c:if test="${ empty LoginInfo }">
										<a style="background-color: red;"
											class="btn btn-main pull-right"
											href="<c:url value="/Register" />">Đăng nhập để thanh
											toán</a>
									</c:if>
									<c:if test="${not empty LoginInfo }">
										<a style="background-color: red;" href="/wdstudio1/Checkout"
											class="btn btn-main pull-right">Thanh toán</a>
									</c:if>
									<span class="btn btn-main pull-right">Tổng số lượng:
										${TotalQuantyCart}</span><span class="btn btn-main pull-right">Tổng
										giá: <fmt:formatNumber type="number" groupingUsed="true"
											value="${TotalPriceCart}" />$
									</span>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="page-wrapper">
		<div class="cart shopping">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="block">
							<div class="product-list">
								<h3>Ảnh cưới</h3>
								<form method="post">
									<table class="table">
										<thead>
											<tr>
												<th>Hình ảnh</th>
												<th>Áo cưới</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>

											<c:forEach var="item" items="${Cart2 }">
												<tr class="">
													<td class="">
														<div class="product-info">
															<img width="80px"
																src="<c:url value="${item.value.anhCuoiDto.anhCuoiImage}"/>">
														</div>
													</td>
													<td class="">
														<div class="product-info">
															<p>${item.value.anhCuoiDto.anhCuoiName }</p>
														</div>
													</td>
													<td class="">${item.value.anhCuoiDto.anhCuoiBan }</td>
													<td><a class="product-remove"
														href="<c:url value="/DeleteCart2/${item.key }" />">Xoá</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<c:if test="${ empty LoginInfo }">
										<a style="background-color: red;"
											class="btn btn-main pull-right"
											href="<c:url value="/Register" />">Đăng nhập để thanh
											toán</a>
									</c:if>
									<c:if test="${not empty LoginInfo }">
										<a style="background-color: red;" href="/wdstudio1/Checkout2"
											class="btn btn-main pull-right">Thanh toán</a>
									</c:if>
									<span class="btn btn-main pull-right">Tổng số lượng:
										${TotalQuantyCart2}</span><span class="btn btn-main pull-right">Tổng
										giá: <fmt:formatNumber type="number" groupingUsed="true"
											value="${TotalPriceCart2}" />$
									</span>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>