<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>

<%@ page import="com.stamp.stamp.StampVo" %>
<%@ page import="com.stamp.stamp.StampService" %>

<%@page import="com.stamp.data.TreasureVo"%>
<%
	int count=0;
	StampVo sv = (StampVo) request.getAttribute("sv");

	session.setAttribute("mac", "88C25532F0AB");
	if(session.getAttribute("Sid") != "noid")
	{
	if(sv.getP1().equals("yes")) count++;
	if(sv.getP2().equals("yes")) count++;
	if(sv.getP3().equals("yes")) count++;
	if(sv.getP4().equals("yes")) count++;
	if(sv.getP5().equals("yes")) count++;
	if(sv.getP6().equals("yes")) count++;
	if(sv.getP7().equals("yes")) count++;
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
	background-image: url("resources/img/stamp_background.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}
#stamp{
	border-style: outset;
    border-width: 5px;
	width:90%;
	background-color:#ffffff;
	margin-top:80px;
}
#stamp_btn{
	float:right;
	width:60px;
	height:60px;
	background-image: url("resources/img/stamp_button.jpg");
}
#stamp_img{
	background-image: url("resources/img/st.png");

}
</style>

</head>
<body>
<div data-role="page" data-theme="a" id="background" height="wrapped">
		<div style="width:90%"class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<center>
						<br/>
						<h1 class="text-center login-title" id="title" >보유 스탬프</h1>
						<br/>
						
						<div >
							<a href="<%= request.getContextPath()%>/arduino_request?mac=<%=session.getAttribute("mac") %>">
							<button id= stamp_btn></button></a>
						</div>
						<div id="stamp">
							<div style="margin-bottom:5px">
							<%
									if(session.getAttribute("Sid").equals("noid"))
									{
							%>
							<h2><a href="<%=request.getContextPath()%>/">로그인</a> 후 이용해주세요</h2>
							
							<%
									}else{
							%>
							
							
							<h4 align="center"> <%=session.getAttribute("Sid")%> 회원님은 <br/>
							현재 
							<%
							out.print(count);	
							out.print("개의 스탬프가 있습니다.</h4>");
									}
							%>

							</div>
							
							<div style="margin-top:10px;">
							<table width="100%"align="center" border="1" cellspacing="0" cellpadding="4" >
							<tr>
							<td >연미정</td><td>용궁사</td><td>강화산성</td><td width="80px">강화고려궁지</td>
							</tr>
							<tr>
							<td>
							<%
								if(session.getAttribute("Sid") != "noid" && sv.getP1().equals("yes"))
								{
							%>
							<img src="resources/img/st.png">
							<%}%>
							</td>
							<td>
							<%
								if(session.getAttribute("Sid") != "noid" && sv.getP2().equals("yes"))
								{
							%>							
							<img src="resources/img/st.png">
							<%}%>
							</td>
							<td>
							<%
								if(session.getAttribute("Sid") != "noid" && sv.getP3().equals("yes"))
								{
							%>							
							<img src="resources/img/st.png">							
							<%}%>
							</td>
							<td>
							<%
								if(session.getAttribute("Sid") != "noid" && sv.getP4().equals("yes"))
								{
							%>
							<img src="resources/img/st.png">
							<%}%>
							</td>
							</tr>
							<tr>
							<td>홍예문</td><td>석릉</td><td>용흥궁</td>
							</tr>
							<tr>
							<td>
							<%
								if(session.getAttribute("Sid") != "noid" && sv.getP5().equals("yes"))
								{
							%>							
							<img src="resources/img/st.png">
							<%}%>
							</td>
							<td>
							<%
								if(session.getAttribute("Sid") != "noid" && sv.getP6().equals("yes"))
								{
							%>						
							<img src="resources/img/st.png">						
							<%}%>
							</td>
							<td>
							<%
								if(session.getAttribute("Sid") != "noid" && sv.getP7().equals("yes"))
								{
							%>						
							<img src="resources/img/st.png">						
							<%}%>
							</td>
							</tr>
							</table>
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
					<li><a href="<%=request.getContextPath()%>/">
					<%if(session.getAttribute("Sid").equals("noid")){ %>로그인<%}else{%>로그아웃<%}%>
					</a></li>
					<li><a href="<%=request.getContextPath()%>/home?log=<%=session.getAttribute("log") %>">메인화면</a></li>
					<li><a href="<%=request.getContextPath()%>/history">역사</a></li>
					<li><a href="<%=request.getContextPath()%>/festival?redirection=festival">축제</a></li>
				</ul>
			</div>
		</div>
	</div>
	

</body>
</html>
