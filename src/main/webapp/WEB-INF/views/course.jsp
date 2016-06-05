<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE web-app PUBLIC "-//Sun Microsystems, Inc.//DTD Web Application 2.5//EN" "http://java.sun.com/dtd/web-app_2_3.dtd">

<html data-wf-site="574ae91e0d254d79455e59ab" data-wf-page="574ae91f0d254d79455e59ae" data-wf-status='1' data-wf-domain="leekb.webflow.io">

<head>
<!-- <meta charset="utf-8"> -->
<title>leekb</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="generator" content="Webflow">

<link rel="stylesheet" type="text/css" href="https://daks2k3a4ib2z.cloudfront.net/574ae91e0d254d79455e59ab/css/leekb.webflow.f4596faa7.css">
<script	src="https://ajax.googleapis.com/ajax/libs/webfont/1.4.7/webfont.js"></script>

<script>
	WebFont
			.load({
				google : {
					families : [
							"Open Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic",
							"Roboto:300,regular,500" ]
				}
			});
</script>


<style type="text/css">
.hero-section.centeredd {
		  padding-top: 195px;
		  padding-bottom: 195px;
		  border-bottom: 4px solid #69b9ff; 																	/* main 이미지 경로  */
		  background-image: linear-gradient(180deg, rgba(46, 157, 255, .5), rgba(46, 157, 255, .22)), url("../resource/images/home.png"); 
		  background-position: 0% 0%, 50% 50%;
		  background-size: auto, cover;
		  text-align: center;
}
</style>

<script type="text/javascript" src="https://daks2k3a4ib2z.cloudfront.net/0globals/modernizr-2.7.1.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="https://daks2k3a4ib2z.cloudfront.net/img/favicon.ico">
<link rel="apple-touch-icon" href="https://daks2k3a4ib2z.cloudfront.net/img/webclip.png">
</head>

<body>

	<div data-collapse="medium" data-animation="default" data-duration="400" data-contain="1" class="w-nav navigation-bar">
		<div class="w-container">
			
			<!-- home.jsp 대신 제일 첫 화면 경로 지정 해주시면됩니다. -->
			<a href="<%=request.getContextPath()%>/home?log=<%=session.getAttribute("log") %>" class="w-nav-brand brand-link"><h1 class="brand-text">인천 스탬프 투어</h1></a>
			<nav role="navigation" class="w-nav-menu navigation-menu">

				<!-- home link -->
				<a href="<%=request.getContextPath()%>/home?log=<%=session.getAttribute("log") %>" class="w-nav-link navigation-link">메인화면</a>
				
				<!-- about link -->
				<a href="<%=request.getContextPath()%>/place" class="w-nav-link navigation-link">추천 여행지</a>
				
				<!-- contact link -->
				<a href="<%=request.getContextPath()%>/restaurant" class="w-nav-link navigation-link">맛집</a>
				
				<a href="<%=request.getContextPath()%>/stamp?Sid=<%=session.getAttribute("Sid") %>" class="w-nav-link navigation-link">스탬프</a>
				</nav>
				
			</nav>
			<div class="w-nav-button hamburger-button">
				<div class="w-icon-nav-menu"></div>
			</div>
		</div>
	</div>
	
	<div class="w-section hero-section centeredd">
		<div data-ix="new-interaction" class="w-container">
			<h1 data-ix="fade-in-bottom-page-loads" class="hero-heading">추천코스</h1>
			
			<div data-ix="fade-in-bottom-page-loads">
				<a href="<%=request.getContextPath()%>/recommend_course" class="button">이달의 추천코스</a>
				<a href="<%=request.getContextPath()%>/stamp_course" class="hollow-button all-caps">오늘의 추천코스</a>
			</div>
		</div>
	</div>
		 
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<script src="resources/js/common.js"></script>

	
</body>
</html>
