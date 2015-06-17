<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="wach_error.jsp"
	import="java.util.*, wach.*"%>

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
<link rel="stylesheet" href="../public/stylesheets/jquery.ratings.css">
<link rel="stylesheet" href="../public/stylesheets/jquery.remodal.css">

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="../public/javascripts/bootstrap-carousel.js"></script>
<script src="../public/javascripts/bootstrap.min.js"></script>
<script src="../public/javascripts/jquery.ratings.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="../public/javascripts/jquery.min.js"><\/script>')
</script>
<script src="../public/javascripts/jquery.remodal.js"></script>
<!-- Events -->
<script>
	$(document).on("open", ".remodal", function() {
		console.log("open");
	});

	$(document).on("opened", ".remodal", function() {
		console.log("opened");
	});

	$(document).on("close", ".remodal", function(e) {
		console.log('close' + (e.reason ? ", reason: " + e.reason : ''));
	});

	$(document).on("closed", ".remodal", function(e) {
		console.log('closed' + (e.reason ? ', reason: ' + e.reason : ''));
	});

	$(document).on("confirm", ".remodal", function() {
		console.log("confirm");
	});

	$(document).on("cancel", ".remodal", function() {
		console.log("cancel");
	});
</script>
</head>

<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />
<jsp:useBean id="side_datas" scope="request" class="java.util.ArrayList" />

<body>

	<div data-role="page" id="main" data-theme="a">

		<!-- Header -->
		<div data-role="header" data-theme="a">
			<a onclick="location.href='wach_control.jsp?action=mMain'"
				class="ui-btn ui-shadow ui-corner-all ui-icon-home ui-btn-icon-notext ui-btn-a ui-btn-inline"></a>
			<div align="center">
				<img src="../public/images/header.jpg" width="100%" height="40%">
			</div>
		</div>
		<!-- End Header  -->

		<!-- Contetns :: 메뉴 출력 -->

		<div align="center">
			<div class="section-main">
				<p>
				<div class="section-title" align="center">
					<h2 class="mMain-title" align="center">
						MENU
						<h2>
							<hr>
							<%
								for (WACH_Define ab : (ArrayList<WACH_Define>) datas) {
							%>

							<p class="mBusinessBigText"
								style="margin-bottom: 0px; margin-bottom: 0px; padding-top: 8px;">
								<%=ab.getMenu_id()%>.
								<%=ab.getMenu_name()%></p>
							<p class="mBusinessMiddleText" style="margin-bottom: 0px;">
								(
								<%=ab.getMenu_enName()%>
								)
							</p>
							<img src="<%=ab.getMenu_picture()%>" width="100%" height="30%" />
							<p class="mBusinessText" style="margin-bottom: 0px;">
								가격(price) :
								<%=ab.getMenu_price()%>원
							</p>
							<p class="mBusinessText" style="margin-bottom: 0px;">
								재료(ingredient) :
								<%=ab.getMenu_compose()%>
							</p>
							<p class="mBusinessText" style="margin-bottom: 0px;">
								조리시간(Cooking Time) :
								<%=ab.getMenu_cookTime()%>분
							</p>
							<br>
							<%-- <a id=<%=ab.getMenu_id()%> class="remodal-cancel" href="#modal">자세히보기</a> --%>
							<%
								}
							%>
						
				</div>
			</div>
		</div>
		<!-- End Contetns -->

		<!-- Modal -->
		<div class="remodal" data-remodal-id="modal">
			<div class="modal-body" align="center">
				<div class='mMain-title' align='center'>SIDE MENU</div>
				<%-- <script>
				<% for (WACH_Define ab : (ArrayList<WACH_Define>) datas) { %>
					
					$('#'+<%= ab.getMenu_id() %>).click( function(){ 
						System.out.println("hey");
					<% for (SideMenu abc : (ArrayList<SideMenu>) side_datas) { %>
					<%=abc.getSideMenu_name()%>
					<% } %>
					 });
				<% } %>
				</script> --%>
			</div>
			<div class="modal-footer"></div>
			<br> <a class="remodal-cancel" href="#">Cancel</a> <a
				class="remodal-confirm" href="#">OK</a>
		</div>

		<!-- Footer -->
		<div data-role="footer" data-theme="a">
			<h4>&copy; 2015 YAHA Team Project</h4>
		</div>
		<!-- End Footer -->
	</div>
</body>
</html>


