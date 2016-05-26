<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.stamp.stamp.StampVo" %>
<%@ page import="com.stamp.stamp.StampService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>StampTour</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet">

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="resources/css/font-awesome.css" rel="stylesheet">
<link href="resources/mobile/jquery.mobile-1.4.5.min.css"
	rel="stylesheet" />
<link href="resources/mobile/jquery-ui.min.css" rel="stylesheet" />

<script src="resources/mobile/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
	$(document).bind("mobileinit", function() {
		$.mobile.ajaxLinksEnabled = false;
		$.mobile.ajaxFormsEnabled = false;
		$.mobile.ajaxEnabled = false;
	});
</script>
<script src="resources/mobile/jquery.mobile-1.4.5.min.js"></script>
<script src="resources/mobile/jquery-ui.min.js"></script>

<style>
#background{
	background-image: url("resources/img/stamp_background.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}
#stamp{
	width:80%;
	margin-top:2%;
	background-color:#9999ff;
}

</style>


</head>
<body>
<div data-role="page" data-theme="a" id="background" height="wrapped">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<center>
						<br/><br/>
						<h1 class="text-center login-title" id="title" >보유 스탬프</h1>
						<br/>
						<div id="stamp">
							<div style="margin-bottom:5px">
							<h4 align="center"> ${sv.getSID()} 회원님은 <br/>
								현재 ${sv.getStampNum()}개의 스탬프가 있습니다.</h4>
							</div>
							<div style="margin-top:10px;">
								<%
									StampVo sv = (StampVo) request.getAttribute("sv");
							
									for(int i=0; i<sv.getStampNum(); i++)
									{
										out.print("<img src=resources/img/stamp_sign.png>");
									}
								%>
							</div>
							<br/>
							<div >
								<h4>스탬프는 각종 할인 및 증정품에 사용가능합니다.</h4>
								<br/>
							</div>
						</div>
					</center>
				</div>
			</div>
		</div>
		<div data-role="footer" data-position="fixed">
			<div data-role="navbar">
				<ul>
					<li><a class="ui-btn-active"
						href="<%=request.getContextPath()%>/">로그인</a></li>
					<li><a href="<%=request.getContextPath()%>/history">역사</a></li>
					<li><a href="<%=request.getContextPath()%>/home">홈</a></li>
					<li><a href="<%=request.getContextPath()%>/festival?redirection=festival">축제</a></li>
					<li><a href="<%=request.getContextPath()%>/board">게시판</a></li>
				</ul>
			</div>
		</div>
	</div>
	

</body>
</html>
