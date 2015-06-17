<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="wach_error.jsp"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="wach.css" type="text/css" media="screen" />
<link rel="stylesheet" href="../public/stylesheets/WACHproject.css">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="../public/stylesheets/bootstrap.min.css">

<script src="../public/javascripts/jquery-1.11.2.js"></script>
<!-- Google Map -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJgrkT1ePRP78wOOFm18XArOM_HaElurI&sensor=false"></script>
<script type="text/javascript">
	$(document).on(
			'pageshow',
			function() {
				var myPosition = new google.maps.LatLng(37.489930, 126.723225);
				var mapOptions = {
					center : myPosition,
					zoom : 16,
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};
				var map = new google.maps.Map(document.getElementById("map"),
						mapOptions);
				var marker = new google.maps.Marker({
					position : myPosition,
					map : map
				});
			});
</script>
<!-- End of the Google Map -->
<script src="../public/javascripts/jquery.mobile-1.4.5.js"></script>
<script src="../public/javascripts/bootstrap.min.js"></script>
</head>

<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />

<body>
	<div data-role="page" id="main" data-theme="a">
		<!-- Header -->
		<div data-role="header" data-theme="a">
			<a href="#mypanel"
				class="ui-btn ui-shadow ui-corner-all ui-icon-bars ui-btn-icon-notext ui-btn-a ui-btn-inline"></a>
			<div align="center">
				<img src="../public/images/header.jpg" width="100%" height="40%">
			</div>
		</div>
		<!--End Header  -->

		<!-- Panel Attribute -->
		<div data-role="panel" data-position="left" data-display="overlay"
			data-theme="a" id="mypanel">
			<a onclick="location.href='wach_control.jsp?action=mMain'"
				class="ui-link"><img src="../public/images/mMainLogo.jpg"
				width="100%"></a>

			<h2 class="panel-title" align="center">메뉴 & 영업안내</h2>
			<a
				class="ui-alt-icon ui-btn ui-shadow ui-corner-all ui-icon-grid ui-btn-icon-left"
				onclick="location.href='wach_control.jsp?action=mMenuFinder'">메뉴</a>
			<a
				class="ui-alt-icon ui-btn ui-shadow ui-corner-all ui-icon-shop ui-btn-icon-left"
				onclick="location.href='wach_control.jsp?action=mBusiness'">영업안내</a>
			<h2 class="panel-title" align="center">찾아오시는길</h2>
			<a
				class="ui-alt-icon ui-btn ui-shadow ui-corner-all ui-icon-location ui-btn-icon-left"
				onclick="location.href='wach_control.jsp?action=mGuideWayStart'">길안내</a>
			<h2 class="panel-title" align="center">WACH Project</h2>
			<a
				class="ui-alt-icon ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-left"
				onclick="location.href='wach_control.jsp?action=mProject'">About
				Project</a>

			<div align="center">
				<a onclick="location.href='wach_control.jsp?action=mMain'"
					class="ui-link"><img src="../public/images/incheonUni.jpg"
					width="70%" style="padding-top: 8px;"></a>
			</div>
		</div>
		<!-- End Panel Attribute -->

		<div data-role="content">
			<div class="section-main">
				<p>
				<div class="section-title" align="center">
					<img src="../public/images/tableNumberLogo00.png" width="100%"
						height="20%">
					<div class="mMain-title" align="center">지도 매장 검색</div>
					<br />

					<!-- Google Map  -->
					<div class="section-contents" align="center">
						<div id="map"></div>
					</div>
					<!-- End of the Google Map  -->
				</div>
			</div>
		</div>

		<!-- Footer -->
		<div data-role="footer" data-theme="a">
			<h4>&copy; 2015 WACH Team Project</h4>
		</div>
		<!-- End Footer -->
</body>
</html>