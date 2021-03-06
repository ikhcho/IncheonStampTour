<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.stamp.member.LoginVo" %>
<%
	
if(request.getParameter("log")!=null)
{
	if(request.getParameter("log").equals("f"))
	{
		session.setAttribute("log","f");
		session.setAttribute("Sid",	"noid");
	}
}
else
{
	LoginVo vo = (LoginVo) request.getAttribute("vo");
	session.setAttribute("Sid",	vo.getId());
	session.setAttribute("log","t");
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


<!-- 위치 정보 참조 : http://doit2day.tistory.com/33-->
<script>
	window.onload = function get() {
		if (navigator.geolocation) {
			navigator.geolocation.watchPosition(showPosition4);
		} else {
			var x4 = document.getElementById("geo");
			x4.innerHTML = "이 브라우저는 위치추적이 지원되지 않습니다.";
		}
	}

	function showPosition4(position) {
		var forAddress = document.getElementById("geo");
		var geocoder = new google.maps.Geocoder();
		var latlng = new google.maps.LatLng(position.coords.latitude,position.coords.longitude); //lat : 위도, lng : 경도
		//document.getElementById("position").innerHTML = "현재 위치 (위도 : " + position.coords.latitude + ", 경도 : " + position.coords.longitude + ")"; 

		geocoder.geocode({
			'latLng' : latlng
		}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				if (results[1]) {
					forAddress.innerHTML = results[3].formatted_address;
				}
			} else {
				alert("Geocoder failed due to: " + status);
			}
		});

	}
</script>

<!-- 날씨 정보 -->
<script type="text/javascript">
	$(function() {
		var url = "http://api.openweathermap.org/data/2.5/weather?q=Incheon&units=metric&APPID=5ef7ab11ac97761d1f0728b1be40395e";
		var iconurl = "http://openweathermap.org/img/w/";
		$.ajax({
			url : url,
			dataType : "jsonp",
			jsonp : "callback",
			success : function(data) {
				if (data != null) {
					var icon = iconurl + data.weather[0].icon + ".png ";
					

					var d = new Date();
					var html = [];
					html.push('<div class="weather">');
					html.push('<img src="', icon,'">');
					html.push('</div>');	
					$("#weatherView1").append(html.join(''));

					var html2 = [];
					html2.push('<div class="weather-list"><h5>');
					html2.push('날씨 : ', data.weather[0].description, '</br>');
					html2.push( '기온 : ', (data.main.temp).toFixed(1) + ' (℃)</br>');
					html2.push('도시 : 인천', '</h5></div>');
					$("#weatherView2").append(html2.join(''));
				}
			}
		});
	});
</script>

<style>
#manubox{
	margin-top: 60px;
    border-style: outset;
    border-width: 5px;
    width: 80%;
}
#background{
	background-image: url("resources/img/home_background.png");
	background-size: cover;
	background-repeat: no-repeat;
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
		<h1 class="text-center login-title" id="title" >인천 스탬프 투어</h1>
		<br/>
		<a href="resources/img/map.jpg"><img src=resources/img/map.jpg style="float:left; width:60px; height:60px; margin-left:20px;"></a>
				<div style="float: right; width: 160px; height: 80px" id="cupload" class="breadcrumbs">
					<div style="float: left; width: 60px; height:60px;" id='weatherView1'></div>
					<div style="float: right; width: 100px; height:60px;" id='weatherView2'></div>
				</div>
		<br/>
		
		<div data-role="content" data-inset="true" id="manubox">
			<div>
				<a href="<%=request.getContextPath()%>/place" style="float:left;margin-left:40px">추천 여행지</a>
				<a href="<%=request.getContextPath()%>/course" style="float:right;margin-right:40px">추천 코스</a>
				<div style="float: left; width: 50%;" id="place">
						<a href="<%=request.getContextPath()%>/place">
						<img src=resources/img/place.jpg style="width: 100%"></a>
				</div>
				<div style="float: right; width:50%;" id="course">
					<a href="<%=request.getContextPath()%>/course">
					<img src=resources/img/course.jpg style="width: 100%"></a>	
				</div>
				
			</div>
			<div>
				
				<div style="float: left; width: 50%;" id="restaurant">
						<a href="<%=request.getContextPath()%>/restaurant">
						<img src=resources/img/restaurant.jpg style="width: 100%"></a>
				</div>
				<div style="float: right; width:50%;" id="stamp">
					<a href="<%=request.getContextPath()%>/stamp?Sid=<%=session.getAttribute("Sid") %>">
					<img src=resources/img/stamp.jpg style="width: 100%"></a>	
				</div>
				<div><a href="<%=request.getContextPath()%>/restaurant" style="float:left;margin-left:40px">추천 맛집</a>
				<a href="<%=request.getContextPath()%>/stamp?Sid=<%=session.getAttribute("Sid") %>" style="float:right;margin-right:50px">스탬프</a>
				</div>
			</div>
			
		</div>
		
		<div class="bottom"></div>
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
					<li><a class="ui-btn-active" href="<%=request.getContextPath()%>/home?log=<%=session.getAttribute("log") %>">메인화면</a></li>
					<li><a href="<%=request.getContextPath()%>/history">역사</a></li>
					<li><a href="<%=request.getContextPath()%>/festival?redirection=festival">축제</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
