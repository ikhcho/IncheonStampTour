<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="com.stamp.data.RestaurantVo" %>

<%
	List<RestaurantVo> rv = (List<RestaurantVo>) request.getAttribute("rv");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html data-wf-site="574543bcf8eeecce0f106a19" data-wf-page="574543bdf8eeecce0f106a1d" data-wf-status="1" data-wf-domain="sims-marvelous-site.webflow.io">

<head>

<meta charset="utf-8">
<title>인천 스탬프 투어</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="generator" content="Webflow">
<link rel="stylesheet" type="text/css" href="https://daks2k3a4ib2z.cloudfront.net/574543bcf8eeecce0f106a19/css/sims-marvelous-site.webflow.4aa249b25.css">
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.4.7/webfont.js"></script>
<script>WebFont.load({
  google: {
    families: ["Lato:100,100italic,300,300italic,400,400italic,700,700italic,900,900italic"]
  }
});</script>
<script type="text/javascript" src="https://daks2k3a4ib2z.cloudfront.net/0globals/modernizr-2.7.1.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="https://daks2k3a4ib2z.cloudfront.net/img/favicon.ico">
<link rel="apple-touch-icon" href="https://daks2k3a4ib2z.cloudfront.net/img/webclip.png"></head>

<body>

<div data-collapse="medium" data-animation="default" data-duration="400" data-contain="1" class="w-nav navigation-bar">

<div class="w-container">
<a href="<%=request.getContextPath()%>/restaurant" class="w-nav-brand">
<div class="site-name">인천맛집</div></a>
<nav role="navigation" class="w-nav-menu navigation-menu">

<!-- home link -->
<a href="<%=request.getContextPath()%>/home?log=<%=session.getAttribute("log") %>" class="w-nav-link navigation-link">메인화면</a>

<!-- about link -->
<a href="<%=request.getContextPath()%>/course" class="w-nav-link navigation-link">추천코스</a>

<!-- contact link -->
<a href="<%=request.getContextPath()%>/place" class="w-nav-link navigation-link">추천 여행지</a>

<a href="<%=request.getContextPath()%>/stamp?Sid=<%=session.getAttribute("Sid") %>" class="w-nav-link navigation-link">스탬프</a>

</nav>
<div class="w-nav-button menu-button">
<div class="w-icon-nav-menu">
</div></div></div></div>
<div class="content-wrapper">
<div class="w-container"><div class="w-row">
<div class="w-col w-col-3 w-hidden-small w-hidden-tiny"></div>
<div class="w-col w-col-9 content-column">
<div class="w-dyn-list"><div class="w-dyn-items">

<!-- 반복할 부분 -->
<%
	for(int i=0; i<19; i++)
	{
%>

<div class="w-dyn-item">
<div class="post-wrapper">
<div class="post-content"><div class="w-row">
<div class="w-col w-col-4 w-col-medium-4">
<!-- 사진 이랑 사진 링크걸기 -->
                                                 <!-- 상세 링크-->                                                                        <!-- 이미지-->   
<a class="w-inline-block blog-image" href="<% out.print(rv.get(i).getLink());%>" style="background-image: url('<% out.print(rv.get(i).getImage());%>');"></a></div>
<div class="w-col w-col-8 w-col-medium-8">
<!-- 식당이름 -->
<h2 class="blog-title"><% out.print(rv.get(i).getName());%></h2></a>  
<div class="details-wrapper">

<!-- 주소 -->
<a class="post-info"><% out.print(rv.get(i).getAddr());%></a></div>  
  
<!-- 전화번호-->
<a class="post-info"><% out.print(rv.get(i).getTel());%></a></div>	
<div class="post-summary-wrapper">

<!-- 내용 -->
<p class="post-summary"><% out.print(rv.get(i).getDescription());%></p>
</div></div></div></div></div>

<%
	}
%>
</div>
<!-- 반복부분끝!!-->

</div></div></div></div></div>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<!--[if lte IE 9]><script src="//cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif]-->
</body></html>