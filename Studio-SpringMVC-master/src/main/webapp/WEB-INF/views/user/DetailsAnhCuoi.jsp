<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<head>
<title>Sản phẩm</title>	
</head>
<body>
	<!-- Modal Cart-->
	<c:forEach var="a" items="${anhcuoi}">
		<div class="modal-dialog " role="document">
			<div class="modal-content">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="modal-image">
								<img class="img-responsive"
									src="<c:url value="${a.anhCuoiImage }" />" alt="product-img" />
							</div>
						</div>
						<div class="col-md-5 col-sm-6 col-xs-12"
							style="margin-bottom: 40px">
							<form class="product-short-details" method="get"
								action="<c:url value="/AddCart2/${a.anhCuoiId }" />">
								<h2 class="product-title">${a.anhCuoiName }</h2>
								<p class="product-price">Giá: ${a.anhCuoiBan} $</p>
								<br />
								<button type="submit" class="btn btn-main">Add To Cart</button>
							</form>
						</div>
						<c:forEach var="b" items="${anhcuoiimages}">
							<div data-slider-id="1" class="owl-thumbs">
								<div class="col-md-7 col-sm-2">
									<ul>
										<li><img src="<c:url value="${b.image1}" />" /></li>&emsp;
										<li><img src="<c:url value="${b.image2}" />" /></li>&emsp;
										<li><img src="<c:url value="${b.image3}" />" /></li>&emsp;
									</ul>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<!-- /.modal -->
</body>