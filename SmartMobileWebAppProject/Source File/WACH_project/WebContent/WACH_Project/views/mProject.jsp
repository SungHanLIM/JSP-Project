<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="wach_error.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../public/stylesheets/WACHproject.css">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="../public/stylesheets/bootstrap.min.css">

<script src="../public/javascripts/jquery-1.11.2.js"></script>
<script src="../public/javascripts/jquery.mobile-1.4.5.js"></script>
<script src="../public/javascripts/bootstrap.min.js"></script>
</head>
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

		<!-- Contetns -->
		<div data-role="content">
			<div data-role="collapsibleset">
				<div data-role="collapsible" data-collapsed="false">
					<h3>프로젝트</h3>
					<h2 class="mMain-title" align="center">WACH Project</h2>
					<img src="../public/images/aboutProject00.PNG" width="100%" />
					<h2 class="mMain-title" align="center">About Our Project</h2>
					<img src="../public/images/aboutProject01.png" width="100%" />
					<h2 class="mMain-title" align="center">Project Architecture</h2>
					<img src="../public/images/aboutProject02.png" width="100%" />
				</div>
			</div>
		</div>
		<!-- End Contetns -->

		<!-- Footer -->
		<div data-role="footer" data-theme="a">
			<h4>&copy; 2015 WACH Team Project</h4>
		</div>
		<!-- End Footer -->
	</div>
</body>
</html>