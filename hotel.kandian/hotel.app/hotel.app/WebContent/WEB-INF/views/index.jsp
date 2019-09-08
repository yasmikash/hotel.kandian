<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hotel.model.*"%> 
<!DOCTYPE html>
<html lang="en">

<% ArrayList<HPackage> packages =  (ArrayList<HPackage>) request.getAttribute("packages"); %>
<head>
	<title>Hotel Kandian - The Lakeside Hotel in Sri Lanka</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Kandian Hotel, Sri Lankan Hotel" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all">
	<!-- banner slider -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- Custom-CSS -->
	<link href="css/custom.css" rel="stylesheet">
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
		<!-- //Web-Fonts -->
</head>

<body>
	<!-- main banner -->
	<div class="main-top" id="home">
	
		<!-- header -->
			<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
		<!-- //header -->

		<!-- banner -->
		<div class="banner_w3lspvt">
			<div class="csslider infinity" id="slider1">
				<input type="radio" name="slides" checked="checked" id="slides_1" />
				<input type="radio" name="slides" id="slides_2" />
				<input type="radio" name="slides" id="slides_3" />
				<input type="radio" name="slides" id="slides_4" />
				<ul class="banner_slide_bg">
					<li>
						<div class="container">
							<div class="w3ls_banner_txt">
								<p>You are warmly welcomed to the</p>
								<h3 class="w3ls_pvt-title text-wh text-uppercase let">Lakeside Hotel in Sri Lanka</h3>
							</div>
						</div>
					</li>
				</ul>
				<div class="arrows">
					<label for="slides_1"></label>
					<label for="slides_2"></label>
					<label for="slides_3"></label>
					<label for="slides_4"></label>
				</div>
			</div>
		</div>
		<!-- //banner -->
	</div>
	<!-- //main banner -->

	<!-- why -->
	<div class="serives py-5" id="why">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="tittle text-center text-bl font-weight-bold">Why Kandian </h3>
			<p class="sub-tittle text-center mt-2 mb-sm-5 mb-4 pb-xl-3">Sed do eiusmod tempor incididunt ut labore et dolore
				magna
				aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
			<div class="row text-center">
				<div class="col-lg-3 col-md-6 ser-grid">
					<span class="fa fa-cutlery"></span>
					<h4>Restaurant</h4>
					<p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
				</div>
				<div class="col-lg-3 col-md-6 ser-grid mt-md-0 mt-5">
					<span class="fa fa-money"></span>
					<h4>Low Price</h4>
					<p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
				</div>
				<div class="col-lg-3 col-md-6 ser-grid mt-lg-0 mt-5">
					<span class="fa fa-user-secret"></span>
					<h4>Secure Zone</h4>
					<p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
				</div>
				<div class="col-lg-3 col-md-6 ser-grid mt-lg-0 mt-5">
					<span class="fa fa-car"></span>
					<h4>Pick Up</h4>
					<p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- why -->

	<!-- packages -->
	
		<div class="rooms-w3ls bg-li py-5" id="price">
		<div class="container-fluid py-xl-5 py-lg-3">
			<h3 class="tittle text-center text-bl font-weight-bold">Our Packages</h3>
			<p class="sub-tittle text-center mt-2 mb-sm-5 mb-4 pb-xl-3">Sed do eiusmod tempor incididunt ut labore et dolore
				magna
				aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
			<div class="row">
			<% for (HPackage pk : packages) {%>
				<div class="col-lg-4 price-mobamus">
					<div class="price-top">
						<a href="viewRooms?packageId=<%= pk.getPackageId() %>">
							<img src="images/<%= pk.getImg() %>" alt="" class="img-fluid" />
						</a>
					</div>
					<div class="price-w3ls-bottom p-4 pkg-container">
						<h4 class="my-2"><a href="single.html"><%= pk.getPackageName() %></a></h4>
						<div class="price-ovrd">
							<div>
								<span class="p-top-head">$</span>
								<span class="p-midd-head"><%= pk.getMonthPrice() %></span>
								<span class="p-right-head">/ per month</span>
							</div>
						</div>
						<div class="night-price">
							<h6>$<%= pk.getNightPrice() %> / per night</h6>
						</div>
						<div class="description">
						<%= pk.getDescription() %>
						</div>
						<ul class="features-list">
							<li>Perfect for traveling couples </li>
							<li>Breakfast included </li>
							<li>Concierge services </li>
						</ul>
						<a href="viewRooms?packageId=<%= pk.getPackageId() %>" class="btn button-style-2 mt-sm-5 mt-4">View Rooms</a>
					</div>
				</div><% } %>
			</div>
		</div>
	</div></html>
	
	<!-- //packages -->

	<!-- stats -->
	<div class="stats py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="row stats-mobamu py-5">
				<div class="col-lg-4 col-md-6">
					<div class="stats-grid">
						<div class="row">
							<div class="col-4 text-center">
								<span class="fa fa-star"></span>
							</div>
							<div class="col-8">
								<h4 class="numscroller">6000</h4>
								<p>Excellent Ratings</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mt-md-0 mt-4">
					<div class="stats-grid">
						<div class="row">
							<div class="col-4 text-center">
								<span class="fa fa-smile-o"></span>
							</div>
							<div class="col-8">
								<h4 class="numscroller">25k</h4>
								<p>Happy Guests</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mx-lg-0 mx-md-auto mt-lg-0 mt-4">
					<div class="stats-grid">
						<div class="row">
							<div class="col-4 text-center">
								<span class="fa fa-cutlery"></span>
							</div>
							<div class="col-8">
								<h4 class="numscroller">150</h4>
								<p>Food Items</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //stats -->

	<!-- services -->
	<div class="serives-mobamu py-5" id="services">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="tittle text-center text-bl font-weight-bold">Our Services</h3>
			<p class="sub-tittle text-center mt-2 mb-sm-5 mb-4 pb-xl-3">Sed do eiusmod tempor incididunt ut labore et
				dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
			<div class="row welcome-bottom text-center">
				<div class="col-lg-3 col-sm-6 px-2">
					<div class="welcome-grid bg-wh py-5 px-4">
						<img src="images/wh1.jpg" alt="" class="img-fluid">
						<h4 class="mt-4 mb-3 text-bl">Service 01</h4>
						<p>Quis nostrum ullam corporis suscipit.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mt-sm-0 mt-5 px-2">
					<div class="welcome-grid bg-wh py-5 px-4">
						<img src="images/wh2.jpg" alt="" class="img-fluid">
						<h4 class="mt-4 mb-3 text-bl">Service 02</h4>
						<p>Quis nostrum ullam corporis suscipit.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mt-lg-0 mt-5 px-2">
					<div class="welcome-grid bg-wh py-5 px-4">
						<img src="images/wh3.jpg" alt="" class="img-fluid">
						<h4 class="mt-4 mb-3 text-bl">Service 03</h4>
						<p>Quis nostrum ullam corporis suscipit.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mt-lg-0 mt-5 px-2">
					<div class="welcome-grid bg-wh py-5 px-4">
						<img src="images/wh4.jpg" alt="" class="img-fluid">
						<h4 class="mt-4 mb-3 text-bl">Service 04</h4>
						<p>Quis nostrum ullam corporis suscipit.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //services -->


	<!-- middle -->
	<div class="middle py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="welcome-left text-center py-md-5 py-3">
				<h3>Enjoy Your Every Moments With Your Partner In Hotel Kandian</h3>
				<a href="#price" class="btn button-style button-style mt-sm-5 mt-4">Book Now</a>
			</div>
		</div>
	</div>
	<!-- //middle -->

	<!-- footer -->
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	<!-- //footer -->
</body>

</html>