<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<title>Album Áo Cưới</title>
<body>
	<section class="products section bg-gray">
		<div class="container">
			<div class="row">
				<div class="title text-center">
					<h1>Album Áo Cưới</h1>
				</div>
			</div>
			<div class="row">
				<c:forEach var="a" items="${aocuoi}">
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
								<p class="price">${a.aoCuoiBan}</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
</body>
