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
					<h3>Outback</h3>
					<img src="../public/images/mBusiness01.png" width="100%"
						height="30%" />
					<p class="mBusinessText">
						아웃백은 스테이크하우스입니다<br> 정통의 맛과 조리법, 신선한 재료로 정성껏 준비한 메뉴를 가족, 친구와
						함께 나누는 공간입니다. 눈에 보이는 것을 쫓지 않고 투박하게 쉬운 길로 가지 않고 정직하게 True Taste를
						찾겠습니다.
					</p>
					<p class="mBusinessBigText">"아웃백은 True를 추구하는 스테이크하우스입니다."</p>
					<br> <img src="../public/images/mBusiness02.png" width="100%"
						height="30%" />
					<p class="mBusinessText">
						최상의 맛을 위한 기다림, 아웃백의 HOMEMADE는 기다림부터 시작됩니다.<br /> 최소 3주 이상 숙성을
						기다리는 스테이크부터 6시간 이상 끓여내는 수프, 신선한 생과일을 매일 아침 직접 짜내어 제공하는 주스까지!
					</p>
				</div>
				<div data-role="collapsible">
					<h3>사회공헌 활동</h3>
					<img src="../public/images/mBusiness03.png" width="100%"
						height="30%" />
					<p class="mBusinessMiddleText">아웃백의 러브백 장학금이 학생들의 등록금 부담을 줄이고,
						꿈을 이루는데 보탬이 되었으면 합니다.</p>
					<p class="mBusinessText">아웃백은 2013년 3월 사회복지 공동 모금회 사랑의 열매와 함께
						공익 연계 마케팅 업무 협약을 맺고, 러브백 봄 한정 메뉴를 출시했습니다</p>
					<img src="../public/images/mBusiness04.png" width="100%"
						height="30%" />
					<p class="mBusinessMiddleText">아웃백 고객과 함께 즐기고 나눌 수 있는 따뜻한 송년파티로
						행복을 느낍니다.</p>
					<p class="mBusinessText">아웃백 스테이크하우스는 2011년 12월, 아웃백 페이스북과
						홈페이지를 통해 2012명의 고객을 초청하여 송년파티 이벤트를 진행하였습니다.</p>
					<img src="../public/images/mBusiness05.png" width="100%"
						height="30%" />
					<p class="mBusinessMiddleText">아웃백은 우리 주변의 결식, 소외 아동들에게 지속적인
						사랑을 전달합니다.</p>
					<p class="mBusinessText">아웃백 스테이크하우스는 아동들의 균형 있는 성장을 위해 설치된
						한국지역아동센터연합회를 통하여 지역의 아동들에게 지속적으로 사랑을 전달합니다.</p>
				</div>
				<div data-role="collapsible">
					<h3>True Steak</h3>
					<img src="../public/images/img_myobs_01.jpg" width="100%"
						height="20%" /> <img src="../public/images/img_myobs_02.jpg"
						width="100%" height="80%" /> <img
						src="../public/images/img_myobs_03.jpg" width="100%" height="80%" />
					<img src="../public/images/img_myobs_04.jpg" width="100%"
						height="80%" /> <img src="../public/images/img_myobs_05.jpg"
						width="100%" height="80%" /> <img
						src="../public/images/img_myobs_06.jpg" width="100%" height="80%" />
				</div>
			</div>
		</div>
		<!-- End Contetns -->

		<!-- Footer -->
		<div data-role="footer" data-theme="a">
			<h4>&copy; 2015 WACH Team Project</h4>
		</div>
		<!-- End Footer -->
</body>
</html>
