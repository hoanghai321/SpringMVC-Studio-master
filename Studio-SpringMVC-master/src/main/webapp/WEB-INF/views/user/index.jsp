<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<head>
<title>Trang chủ</title>
</head>
<body id="body">
	<section class="product-category section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title text-center">
						<h1>Bạn Cần gì?</h1>
					</div>
				</div>
				<div class="col-md-6">
					<div class="category-box">
						<a href="AlbumAoCuoi"> <img
							src="<c:url value="/assets/user/images/2.jpg" />" />
							<div class="content">
								<h3>Áo Cưới</h3>
							</div>
						</a>
					</div>
					<div class="category-box">
						<a href="AlbumAnhCuoi"> <img
							src="<c:url value="/assets/user/images/AnhCuoi/1.jpg" />" />
							<div class="content">
								<h3>Ảnh Cưới</h3>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-6">
					<div class="category-box category-box-2">
						<a href="#!"> <img
							src="<c:url value="/assets/user/images/AnhCuoi/4.jpg" />" />
							<div class="content">
								<h3>Mẫu váy phụ dâu</h3>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="products section bg-gray">
		<div class="container">
			<div class="row">
				<div class="title text-center">
					<h1>Nổi Bật Nhất</h1>
				</div>
			</div>
			<div class="row">
				<c:forEach var="a" items="${aocuoi}" begin="3" end="5">
					<div class="col-md-4">
						<div class="product-item">
							<div class="product-thumb">
								<span class="bage">Hot</span> <img class="img-responsive"
									src="<c:url value="${a.aoCuoiImage }" />" alt="product-img" />
								<div class="preview-meta">
									<ul>
										<li data-toggle="modal" data-target="#product-modal"><a
											href="DetailsAoCuoi/${a.aoCuoiId}"><i
												class="tf-ion-ios-search-strong"></i></a></li>
										<li><a href="#!"><i class="tf-ion-ios-heart"></i></a></li>
										<li><a><form method="get"
													action="<c:url value="/AddCart/${a.aoCuoiId }" />">
													<button type="submit" class="btn btn-light">
														<i class="tf-ion-android-cart"></i>
													</button>
												</form></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h4>
									<a href="product-single.html">${a.aoCuoiName }</a>
								</h4>
								<p class="price">Giá: ${a.aoCuoiBan} $</p>
							</div>
						</div>
					</div>
				</c:forEach>

				<c:forEach var="a" items="${anhcuoi}" begin="0" end="2">
					<div class="col-md-4">
						<div class="product-item">
							<div class="product-thumb">
								<span class="bage">Hot</span> <img class="img-responsive"
									src="<c:url value="${a.anhCuoiImage }" />" alt="product-img" />
								<div class="preview-meta">
									<ul>
										<li data-toggle="modal" data-target="#product-modal"><a
											href="DetailsAnhCuoi/${a.anhCuoiId}"><i
												class="tf-ion-ios-search-strong"></i></a></li>
										<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
										<li><a><form method="get"
													action="<c:url value="/AddCart2/${a.anhCuoiId }" />">
													<button type="submit" class="btn btn-light">
														<i class="tf-ion-android-cart"></i>
													</button>
												</form></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h4>
									<a href="product-single.html">${a.anhCuoiName }</a>
								</h4>
								<p class="price">Giá: ${a.anhCuoiBan } $</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
</body>
