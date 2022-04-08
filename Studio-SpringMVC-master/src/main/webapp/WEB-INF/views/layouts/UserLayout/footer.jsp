<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/UserLayout/taglib.jsp"%>
<footer class="footer section text-center">
	<button onclick="topFunction()" id="myBtn" title="Go to top">Đầu
		trang</button>
	<!--nhúng video-->
	<div style="text-align: center">
		<br>
		<h1><strong/>Về AVIATO Studio Wedding</h1>
		<p style="text-align: center; font-size: 18px">
			<i>AVIATO Studio Wedding là một trong những thương hiệu lâu đời
				nhất trong nghành cưới với 27 năm kinh nghiệm. Chúng tôi thấu hiểu
				sâu sắc những mong muốn, lo toan của khách hàng trong ngày trọng
				đại. Với chuyên môn cao và đặc biệt bằng chính cái Tâm của người làm
				nghề. Chúng tôi sẽ làm khách hàng hãnh diện, toả sáng trong ngày
				trọng đại của mình. Và đó chính là sự thành công của chúng tôi.</i>
		</p>

		<video width="700" autoplay muted controls loop>
			<source src="assets/user/videomp4/MiMiVideo.mp4" type="video/mp4" />
		</video>
	</div>
	<section class="call-to-action bg-gray section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="title">
						<h2>SUBSCRIBE TO NEWSLETTER</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat,
							<br> facilis numquam impedit ut sequi. Minus facilis vitae
							excepturi sit laboriosam.
						</p>
					</div>
					<div class="col-lg-6 col-md-offset-3">
						<div class="input-group subscription-form">
							<input type="text" class="form-control"
								placeholder="Enter Your Email Address"> <span
								class="input-group-btn">
								<button class="btn btn-main" type="button">Subscribe
									Now!</button>
							</span>
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->

				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->


	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="social-media">
					<li><a href="https://www.facebook.com/themefisher"> <i
							class="tf-ion-social-facebook"></i>
					</a></li>
					<li><a href="https://www.instagram.com/themefisher"> <i
							class="tf-ion-social-instagram"></i>
					</a></li>
					<li><a href="https://www.twitter.com/themefisher"> <i
							class="tf-ion-social-twitter"></i>
					</a></li>
					<li><a href="https://www.pinterest.com/themefisher/"> <i
							class="tf-ion-social-pinterest"></i>
					</a></li>
				</ul>
				<ul class="footer-menu text-uppercase">
					<li><a href="contact.html">CONTACT</a></li>
					<li><a href="shop.html">SHOP</a></li>
					<li><a href="pricing.html">Pricing</a></li>
					<li><a href="contact.html">PRIVACY POLICY</a></li>
				</ul>
				<p class="copyright-text">
					Copyright &copy;2021, Designed &amp; Developed by <a
						href="https://themefisher.com/">Themefisher</a>
				</p>
			</div>
		</div>
	</div>

	<!-- Main jQuery -->
	<script
		src="<c:url value="/assets/user/plugins/jquery/dist/jquery.min.js" />"></script>
	<!-- Bootstrap 3.1 -->
	<script
		src="<c:url value="/assets/user/plugins/bootstrap/js/bootstrap.min.js" />"></script>
	<!-- Bootstrap Touchpin -->
	<script
		src="<c:url value="/assets/user/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" />"></script>
	<!-- Instagram Feed Js -->
	<script
		src="<c:url value="/assets/user/plugins/instafeed/instafeed.min.js" />"></script>
	<!-- Video Lightbox Plugin -->
	<script
		src="<c:url value="/assets/user/plugins/ekko-lightbox/dist/ekko-lightbox.min.js" />"></script>
	<!-- Count Down Js -->
	<script
		src="<c:url value="/assets/user/plugins/syo-timer/build/jquery.syotimer.min.js" />"></script>
	<!-- slick Carousel -->
	<script src="<c:url value="/assets/user/plugins/slick/slick.min.js" />"></script>
	<script
		src="<c:url value="/assets/user/plugins/slick/slick-animation.min.js" />"></script>

	<!-- Google Mapl -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript"
		src="<c:url value="/assets/user/plugins/google-map/gmap.js" />"></script>

	<!-- Main Js File -->
	<script src="<c:url value="js/script.js" />"></script>
		<script>
		//Get the button
		var mybutton = document.getElementById("myBtn");

		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
				mybutton.style.display = "block";
			} else {
				mybutton.style.display = "none";
			}
		}

		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		}
	</script>
</footer>
