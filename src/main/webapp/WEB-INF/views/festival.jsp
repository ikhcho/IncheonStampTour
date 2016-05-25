<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.stamp.data.FestivalVo" %>
<%@ page import="com.stamp.data.CultureVo" %>
<% 
	List<FestivalVo> fv = (List<FestivalVo>) request.getAttribute("fv");
	List<CultureVo> cv = (List<CultureVo>) request.getAttribute("cv");
	Calendar cal = Calendar.getInstance();
%>

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

</head>
<body>
<div data-role="page" data-theme="a" id="background" height="wrapped">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<center>
						<%=cal.get(Calendar.MONTH)+1 %>월  축제페이지입니다.
						
						<!--<c:forEach var="val" items="${fv}">
						 	<div>${val.title} , ${val.link} , ${val.organ}</div>
						</c:forEach>-->
						
						<div>
						축제 : <% out.println(fv.get(1).getTitle());%>
						행사 : <% out.println(cv.get(1).getTitle());%></div>
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
					<li><a href="<%=request.getContextPath()%>/festival">축제</a></li>
					<li><a href="<%=request.getContextPath()%>/board">게시판</a></li>
				</ul>
			</div>
		</div>
	</div>
	</div>
	

</body>
</html>
