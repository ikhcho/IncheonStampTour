<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.stamp.data.HistoryVo" %>
<%@ page import="java.util.*" %>

<% 
	if(request.getParameter("start") != null)
	{
		if( Integer.parseInt(request.getParameter("start"))>Integer.parseInt(request.getParameter("end")))
		{
			out.println("<script>alert('날짜를 다시 입력해 주세요.');history.go(-1);</script>");
		}
	}
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

<style>
#background{
	background-image: url("resources/img/history.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

</head>
<body>

<div data-role="page" data-theme="a" id="background" height="wrapped">
		<div style="width:90%"" class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
				<br/><br/>
					<h1 align="center" "text-center login-title" id="title" >인천의 역사</h1>
					<br/>
					<center>
						<form method="get" action="history">
							<div data-role="navbar">
							<ul>
							<li><select style=" width:100px" name="start"></li>
								<option>1900</option>
								<option>1910</option>
								<option>1920</option>
								<option>1930</option>
								<option>1940</option>
								<option>1950</option>
								<option>1960</option>
								<option>1970</option>
							</select>
							<li><select style=" width:100px" name="end"></li>
								<option>1910</option>
								<option>1920</option>
								<option>1930</option>
								<option>1940</option>
								<option>1950</option>
								<option>1960</option>
								<option>1970</option>
								<option>1980</option>
							</select>
							<li><input type="submit" value="검색"></li>
							</ul>
							</div>
						</form>
						<table bordercolor="#000000" border="2">
						<c:forEach var="val" items="${hv}">
						<tr>
						<td><h4>${val.date}</h4></td>
						<td><h4>${val.summary}</h4></td>
						</tr>
						</c:forEach>
						</table>
					</center>
				</div>
			</div>
		</div>
		<div data-role="footer" data-position="fixed">
			<div data-role="navbar">
				<ul>
					<li><a href="<%=request.getContextPath()%>/">
					<%if(session.getAttribute("Sid").equals("noid")){ %>로그인<%}else{%>로그아웃<%}%>
					</a></li>
					<li><a href="<%=request.getContextPath()%>/home?log=<%=session.getAttribute("log") %>">메인화면</a></li>
					<li><a class="ui-btn-active" href="<%=request.getContextPath()%>/history">역사</a></li>
					<li><a href="<%=request.getContextPath()%>/festival?redirection=festival">축제</a></li>
				</ul>
			</div>
		</div>
	</div>
	</div>
	

</body>
</html>
