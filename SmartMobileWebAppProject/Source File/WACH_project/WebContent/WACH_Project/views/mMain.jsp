<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="wach_error.jsp"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="../public/stylesheets/WACHproject.css">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="../public/stylesheets/bootstrap.min.css">
<link rel="stylesheet"
	href="../public/stylesheets/bootstrap-responsive.css">

<script src="../public/javascripts/jquery-1.11.2.js"></script>
<script src="../public/javascripts/jquery.mobile-1.4.5.js"></script>
<script src="../public/javascripts/bootstrap-carousel.js"></script>
<script src="../public/javascripts/bootstrap.min.js"></script>
</head>
<body>
	<form name=form1 method=post action=wach_control.jsp>
		<div data-role="page" id="main" data-theme="a">
			<!-- Header -->
			<a href="#mypanel"
				class="ui-btn ui-shadow ui-corner-all ui-icon-bars ui-btn-icon-notext ui-btn-a ui-btn-inline"></a>

			<div data-role="header" data-theme="a">
				<div align="center">
					<img src="../public/images/header.jpg" width="100%" height="100%">
				</div>
			</div>
			<!-- End Header -->

			<!-- Panel Attribute -->
			<div data-role="panel" data-position="left" data-display="overlay"
				data-theme="a" id="mypanel">
				<a onclick="location.href='wach_control.jsp?action=mMain'"
					class="ui-link"> <img src="../public/images/mMainLogo.jpg"
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
						class="ui-link"> <img src="../public/images/incheonUni.jpg"
						width="70%" style="padding-top: 8px;"></a>
				</div>
			</div>
			<!-- End Panel Attribute -->

			<!-- Contetns -->
			<div data-role="content">
				<div class="section-main">
					<p>
					<div class="section-title" align="center">
						<h2 class="mMain-title" align="center">
							HOT MENU
							<h2>
								<div class="section-contents" align="center">
									<!-- Carousel Slide -->
									<div id="carousel-example-generic" class="carousel slide"
										data-ride="carousel">
										<!-- Indicators -->
										<ol class="carousel-indicators">
											<li data-target="#carousel-example-generic" data-slide-to="0"
												class="active"></li>
											<li data-target="#carousel-example-generic" data-slide-to="1"></li>
											<li data-target="#carousel-example-generic" data-slide-to="2"></li>
										</ol>

										<!-- Wrapper for slides -->
										<div class="carousel-inner" role="listbox">
											<div class="item active">
												<img
													src="../public/images/menu/seafood/grid_20130522183050.png"
													width="100%" height="100%" />
												<div class="carousel-caption">
													<p class="mBusinessText">
														Western Grilled Seafood Platter<br>웨스턴 그릴드 씨푸드 플래터
													</p>
												</div>
											</div>
											<div class="item">
												<img
													src="../public/images/menu/favorites/grid_20140701174106.png"
													width="100%" height="100%" />
												<div class="carousel-caption">
													<p class="mBusinessText">
														Kakadu Griller<br>카카두
													</p>
												</div>
											</div>
											<div class="item">
												<img
													src="../public/images/menu/pasta/grid_20130523141209.png"
													width="100%" height="100%" />
												<div class="carousel-caption">
													<p class="mBusinessText">
														Toowoomba Pasta<br>투움바 파스타
													</p>
												</div>
											</div>
										</div>
										<br>
										<!-- Controls -->
										<a class="left carousel-control"
											href="#carousel-example-generic" role="button"
											data-slide="prev"> <span aria-hidden="true"><img
												src="../public/images/icons/carat-l-white.png" /></span>
										</a> <a class="right carousel-control"
											href="#carousel-example-generic" role="button"
											data-slide="next"> <span aria-hidden="true"><img
												src="../public/images/icons/carat-r-white.png" /></span>
										</a>

									</div>
								</div>
								<h2 class="mMain-title" align="center">
									EVENTS
									<h2>
										<div class="section-contents" align="center">
											<div id="carousel-example-generic" class="carousel slide"
												data-ride="carousel">
												<!-- Indicators -->
												<ol class="carousel-indicators">
													<li data-target="#carousel-example-generic"
														data-slide-to="0" class="active"></li>
													<li data-target="#carousel-example-generic"
														data-slide-to="1"></li>
													<li data-target="#carousel-example-generic"
														data-slide-to="2"></li>
													<li data-target="#carousel-example-generic"
														data-slide-to="3"></li>
													<li data-target="#carousel-example-generic"
														data-slide-to="4"></li>
												</ol>

												<!-- Wrapper for slides -->
												<div class="carousel-inner" role="listbox">
													<div class="item active">
														<img src="../public/images/img_card00.png" height="100%" />
														<div class="carousel-caption">
															<p class="mBusinessText">
																하나 아웃백 클럽 카드(신용)<br>20%~ 최대 30% 할인
															</p>
														</div>
													</div>
													<div class="item">
														<img src="../public/images/img_card01.png" height="100%" />
														<div class="carousel-caption">
															<p class="mBusinessText">
																신한 2030카드<br>20% 현장 할인
															</p>
														</div>
													</div>
													<div class="item">
														<img src="../public/images/img_card02.png" height="100%" />
														<div class="carousel-caption">
															<p class="mBusinessText">
																하나 Juliet 카드<br>20% 현장 할인
															</p>
														</div>
													</div>
													<div class="item">
														<img src="../public/images/img_card03.png" height="100%" />
														<div class="carousel-caption">
															<p class="mBusinessText">
																하나 EXPAT 플래티늄<br>20% 현장 할인
															</p>
														</div>
													</div>
													<div class="item">
														<img src="../public/images/img_card04.png" height="100%" />
														<div class="carousel-caption">
															<p class="mBusinessText">
																우리 은행 카드(우리e카드)<br>20% 현장 할인
															</p>
														</div>
													</div>
												</div>
												<br>
											</div>
										</div>
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
	</form>
</body>
</html>
