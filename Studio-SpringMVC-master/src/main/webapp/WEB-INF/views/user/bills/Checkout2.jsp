<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<body id="body">
	<section class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content">
						<h1 class="page-name">Checkout</h1>
						<ol class="breadcrumb">
							<li><a href="index.html">Home</a></li>
							<li class="active">checkout</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="page-wrapper">
		<div class="checkout shopping">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="block billing-details">
							<h4 class="widget-title">Thông tin thanh toán</h4>

							<form:form action="Checkout2" method="POST" modelAttribute="bills2"
								class="checkout-form">
								<div class="form-group">
									<label for="full_name">Họ và tên:</label>
									<form:input type="text" class="form-control"
										path="display_name" />
								</div>
								<div class="form-group">
									<label for="user_address">Email:</label>
									<form:input type="text" class="form-control" name="email"
										path="user" />
								</div>
								<div class="checkout-country-code clearfix">
									<div class="form-group">
										<label for="user_post_code">Liên hệ:</label>
										<form:input type="text" class="form-control" name="phone"
											path="phone" />
									</div>
									<div class="form-group">
										<label for="user_city">Địa chỉ:</label>
										<form:input class="form-control" name="address" path="address" />
									</div>
								</div>
								<div class="form-group">
									<label for="user_country">Ghi chú:</label>
									<form:input class="form-control" name="note" path="note"
										row="5" cols="30" />
								</div>
								<input type="submit" style="background-color: red;"
									class="btn btn-main pull-right" value="Thanh toán" />
							</form:form>
						</div>

					</div>

					<div class="col-md-4">
						<div class="product-checkout-details">
							<div class="block">
								<h4 class="widget-title">Ảnh Cưới</h4>
								<ul class="summary-prices">
									<li><span>Tổng số lượng:</span> <span class="price">${TotalQuantyCart2 }</span>
									</li>
									<li><span>Giao hàng:</span> <span>Miễn phí</span></li>
								</ul>
								<div class="summary-total">
									<span>Tổng giá</span> <span>${TotalPriceCart2} $</span>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>