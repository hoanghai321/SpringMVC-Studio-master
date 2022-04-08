<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<body>
	<c:if test="${not empty LoginInfo2 }">

		<div class="page-wrapper">
			<div class="cart shopping">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-2">
							<div class="block">
								<div class="product-list">
									<h3>Ảnh cưới</h3>
									<form method="post">
										<table class="table">
											<thead>
												<tr>
													<th>Id</th>
													<th>Ảnh</th>
													<th>Tên</th>
													<th>Id Bill</th>
													<th>Tổng giá</th>
													<th>Số lượng</th>
													<th>Khác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="a" items="${BillDetail2 }">
													<c:forEach var="b" items="${anhcuoi }">
														<c:if test="${a.id_anhcuoi == b.anhCuoiId}">
															<tr>
																<td>${a.id }</td>
																<td><img width="100px"
																	src="<c:url value="${b.anhCuoiImage }" />"></td>
																<td>${b.anhCuoiName }</td>
																<td>${a.id_bills2 }</td>
																<td>${a.quanty }$</td>
																<td>${a.total }</td>
																<td><a
																	href="<c:url value="/DeleteDetailAnhCuoi/${a.id }" />">Xoá
																</a></td>
															</tr>
														</c:if>
													</c:forEach>
												</c:forEach>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>

	<c:if test="${ empty LoginInfo2 }">
		<div style="font-size: 50px; text-align: center; margin-top: 200px">
			<div>Bạn không có quyền truy cập trang web này!!!</div>
			<a href="<c:url value="/Home" />">Nhấn vào đây để quay lại</a>
		</div>
	</c:if>

</body>