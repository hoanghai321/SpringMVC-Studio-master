<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<body>
	<c:if test="${not empty LoginInfo2 }">
		<nav class="sidebar">
			<header>
				<div class="image-text">
					<span class="image"> <!--<img src="logo.png" alt="">-->
					</span>

					<div class="text logo-text">
						<span class="name">Admin</span> <span class="profession">AVIATO
							STUDIO</span>
					</div>
				</div>
			</header>

			<div class="menu-bar">
				<div class="menu">
					<li class="search-box"><i class='bx bx-search icon'></i> <input
						type="text" placeholder="Search..."></li>
					<ul class="menu-links">
						<li class="nav-link"><a href="<c:url value="/QLTK" />"> <i
								class='bx bx-home-alt icon'></i> <span class="text nav-text">QLTK
							</span>
						</a></li>
						<li class="nav-link"><a href="<c:url value="/BillsAoCuoi" />">
								<i class='bx bx-bell icon'></i> <span class="text nav-text">Bills
									Áo Cưới </span>
						</a></li>
						<li class="nav-link"><a
							href="<c:url value="/BillsAnhCuoi" />"> <i
								class='bx bx-bell icon'></i> <span class="text nav-text">Bills
									Ảnh Cưới </span>
						</a></li>
					</ul>
				</div>

				<div class="bottom-content">
					<li class=""><a href="<c:url value="Logout" />"> <i
							class='bx bx-log-out icon'></i> <span class="text nav-text">Logout</span>
					</a></li>
				</div>
			</div>
		</nav>

		<div class="page-wrapper">
			<div class="cart shopping">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-2">
							<div class="block">
								<div class="product-list">
									<h3>Áo cưới</h3>
									<form method="post">
										<table class="table">
											<thead>
												<tr>
													<th>Id User</th>
													<th>User</th>
													<th>Tên</th>
													<th>Địa chỉ</th>
													<th>Role</th>
													<th></th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${user }">
													<tr>
														<td>${item.id}</td>
														<td>${item.user}</td>
														<td>${item.display_name }</td>
														<td>${item.address}</td>
														<td>${item.id_role}</td>
														<td><a href="<c:url value="EditUsers/${item.id}" />">Sửa </a></td>
														<td><a
															href="<c:url value="DeleteUsers/${item.id}" />">Xoá</a></td>
													</tr>
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
