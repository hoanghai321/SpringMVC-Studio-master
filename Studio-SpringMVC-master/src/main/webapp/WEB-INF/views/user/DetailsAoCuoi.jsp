<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<head>
<title>Sản phẩm</title>	
</head>
<body>
	<style>
.table {
	width: 100%
}

.table, th, td {
	border: 5px solid #ffc107;
	font-size: 20px;
	text-align: center;
}
</style>
	<!-- Modal Cart-->
	<c:forEach var="a" items="${aocuoi}">
		<div class="modal-dialog " role="document">
			<div class="modal-content">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="modal-image">
								<img class="img-responsive"
									src="<c:url value="${a.aoCuoiImage }" />" />
							</div>
						</div>
						<div class="col-md-5 col-sm-6 col-xs-12"
							style="margin-bottom: 40px">
							<form class="product-short-details" method="get" action="<c:url value="/AddCart/${a.aoCuoiId }" />">
								<h2 class="product-title">${a.aoCuoiName }</h2>
								<p class="product-price">Giá: ${a.aoCuoiBan} $</p>
								<button type="submit" class="btn btn-main">Add
									To Cart</button>
							</form>
						</div>
							<c:forEach var="b" items="${aocuoiimages}">
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
	<div class="container">
		<div>
			<div>
				<p class="fashion_taital">Thông tin sản phẩm</p>
			</div>
			<c:forEach var="o" items="${ttspaocuoi}">
				<div>
					<table style="width: 100%;">
						<tr>
							<th>Màu sắc</th>
							<th>Dáng váy</th>
							<th>Size</th>
							<th>Chất liệu vải</th>
							<th>Kiểu cổ</th>
							<th>Kiểu tay</th>
							<th>Chiều dài đuôi</th>
							<th>Lưng áo</th>
							<th>Phù hợp sử dụng</th>

						</tr>
						<tr>
							<td>${o.mauSac }</td>
							<td>${o.dangVay }</td>
							<td>${o.size }</td>
							<td>${o.chatLieu }</td>
							<td>${o.kieuCo }</td>
							<td>${o.kieuTay }</td>
							<td>${o.chieuDaiDuoi }</td>
							<td>${o.lungAo }</td>
							<td>${o.suDung }</td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- /.modal -->
</body>