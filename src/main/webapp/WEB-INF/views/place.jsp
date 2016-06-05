<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.util.*" %>
<%@ page import="com.stamp.data.TreasureVo" %>

<%
	List<TreasureVo> tv = (List<TreasureVo>) request.getAttribute("tv");
	int index[] = {80, 79, 81, 82, 144, 142, 139, 152, 159, 162, 100,
						105, 131, 84, 85, 86, 99, 17, 21, 184, 215};
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- This site was created in Webflow. http://www.webflow.com-->
<!-- Last Published: Sun May 22 2016 01:00:16 GMT+0000 (UTC) -->


<html data-wf-site="574103e2762794412692e927" data-wf-page="574103e3762794412692e92b" data-wf-status="1" data-wf-domain="yoseph-jangs-first-site.webflow.io">

<head>
<meta charset="utf-8">

<!-- header title -->
<title>인천 스탬프 투어</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="generator" content="Webflow">

<link rel="stylesheet" type="text/css" href="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/css/yoseph-jangs-first-site.webflow.17876678d.css">
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.4.7/webfont.js"></script>
<script>WebFont.load({
  google: {
    families: ["Lato:100,100italic,300,300italic,400,400italic,700,700italic,900,900italic"]
  }
});
</script>
<script type="text/javascript" src="https://daks2k3a4ib2z.cloudfront.net/0globals/modernizr-2.7.1.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="https://daks2k3a4ib2z.cloudfront.net/img/favicon.ico">
<link rel="apple-touch-icon" href="https://daks2k3a4ib2z.cloudfront.net/img/webclip.png">
</head>

<body>

<!-- navigation container -->
<div data-collapse="medium" data-animation="default" data-duration="400" data-contain="1" class="w-nav navigation-bar">

<div class="w-container">

<!-- site name -->
<a href="<%=request.getContextPath()%>/place" class="w-nav-brand">
<div class="site-name">추천 여행지</div>
</a>

<nav role="navigation" class="w-nav-menu navigation-menu">

<!-- home link -->
<a href="<%=request.getContextPath()%>/home?log=<%=session.getAttribute("log") %>" class="w-nav-link navigation-link">메인화면</a>

<!-- about link -->
<a href="/about" class="w-nav-link navigation-link">추천코스</a>

<!-- contact link -->
<a href="<%=request.getContextPath()%>/restaurant" class="w-nav-link navigation-link">맛집</a>

</nav>

<div class="w-nav-button menu-button">
<div class="w-icon-nav-menu">
</div>
</div>

</div>
</div>
<!-- navigation container end -->

<div class="content-wrapper">
<div class="w-container">
<div class="w-row">

<!-- page description panel - ->

<div class="w-col w-col-3 w-hidden-small w-hidden-tiny">

<div class="white-wrapper">

<!-- profile picture - ->
<img src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e9d6_photo-1437623889155-075d40e2e59f-bw.jpg" class="circle-profile">

<!-- page description - ->
<p class="site-description">Denali is a simple responsive blog template. Easily add new posts using the Editor or change layout and design using the Designer.</p>

<div class="grey-rule"></div>

<h2 class="small-heading">Featured Posts:</h2>

<div class="w-dyn-list feature-posts-list">
<div class="w-dyn-items">

<div class="w-dyn-item">
<a class="small-post-link" href="/posts/half-and-half-variety-milk-viennese-body-cappuccino">According a funnily until pre-set or arrogant well cheerful</a>
</div>

<div class="w-dyn-item">
<a class="small-post-link" href="/posts/steamed-siphon-froth-mazagran-cafe-au-lait">Overlaid the jeepers uselessly much excluding</a>
</div>

</div>
</div>

<div class="grey-rule"></div>

<div class="social-link-group">

<a href="#" class="w-inline-block social-icon-link">
<img width="25" src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e964_social-03.svg">
</a>

<a href="#" class="w-inline-block social-icon-link">
<img width="25" src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e97c_social-07.svg">
</a>

<a href="#" class="w-inline-block social-icon-link">
<img width="25" src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e9c4_social-18.svg">
</a>

<a href="#" class="w-inline-block social-icon-link">
<img width="25" src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e990_social-09.svg">
</a>

</div>

<p class="built-with-webflow">Built with <a class="webflow-link" target="_blank" href-disabled="https://webflow.com" href="https://webflow.com">Webflow</a>
</p>

</div>
</div>
<!-- page description panel end -->

<!-- context panel -->
<div class="w-col w-col-9 content-column">

<!-- list -->
<div class="w-dyn-list">
<div class="w-dyn-items">

<!-- listitem1 -->
<!-- 여기부터 "listitem1 end"까지 jsp의 for문으로 반복해준다 -->
<%
	for(int i=0; i<21; i++)
	{
%>
<div class="w-dyn-item">
<div class="post-wrapper">
<div class="post-content">
<div class="w-row">
<div class="w-col w-col-4 w-col-medium-4">

<!-- listitem1.img -->
<!-- 첫번째 줄의 href="..." 부분을 수정 -->
<!-- xml의 컬럼 4번(link)를 넣어준다 -->
<!-- 두번째 줄의 url('...')부분을 수정 -->
<!-- xml의 컬럼 12번(poster)를 넣어준다 -->
<a class="w-inline-block blog-image" href="<% out.print(tv.get(index[i]).getLink());%>" style="background-image: url('<% out.print(tv.get(index[i]).getPoster());%>');">
</a>

</div><div class="w-col w-col-8 w-col-medium-8">

<!-- listitem1.title -->
<!-- 첫번째 줄의 href="..." 부분을 수정 -->
<!-- xml의 컬럼 4번(link)를 넣어준다 -->
<!-- 두번째 줄의 "blog-title">...<부분을 수정 -->
<!-- xml의 컬럼 3번(title)를 넣어준다 -->
<a class="w-inline-block blog-title-link" href="<% out.print(tv.get(index[i]).getLink());%>">
<h2 class="blog-title"><% out.println(tv.get(index[i]).getTitle());%></h2>
</a>

<div class="details-wrapper">

<!-- item bunryuu -->
<!-- xml의 컬럼 1번(bunryu)와 컬럼 7번(number)를 넣어준다 -->
<div class="post-info"><% out.print(tv.get(index[i]).getGubun()); out.println(tv.get(index[i]).getNumber());%></div>

<div class="post-info">|</div>

<!-- item location -->
<!-- xml의 컬럼 5번(region)과 컬럼 11번(location)를 넣어준다 -->
<a class="post-info when-link" href="/categories/music"><% out.print(tv.get(index[i]).getRegion()); out.println(tv.get(index[i]).getLocation());%></a>

</div>
<div class="post-summary-wrapper">

<!-- item location -->
<!-- xml의 컬럼 13번(description)을 넣어준다 -->
<p class="post-summary"><% out.println(tv.get(index[i]).getDescription());%>}</p>


</div>
</div>
</div>
</div>
</div>
</div>
<%
}
%>

<!-- 여기까지 jsp의 for문으로 반복해준다 -->
<!-- listitem1 end -->



</div>
</div>
<!-- list end -->



<!--
<div class="sidebar-on-mobile">
<div class="white-wrapper">
<img src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e9d6_photo-1437623889155-075d40e2e59f-bw.jpg" class="circle-profile">
<p class="site-description">Denali is a simple responsive blog template. Easily add new posts using the Editor or change layout and design using the Designer.</p>
<div class="grey-rule"></div>
<h2 class="small-heading">Featured Posts:</h2>
<div class="w-dyn-list feature-posts-list">
<div class="w-dyn-items">
<div class="w-dyn-item">
<a class="small-post-link" href="/posts/half-and-half-variety-milk-viennese-body-cappuccino">According a funnily until pre-set or arrogant well cheerful</a>
</div>
<div class="w-dyn-item">
<a class="small-post-link" href="/posts/steamed-siphon-froth-mazagran-cafe-au-lait">Overlaid the jeepers uselessly much excluding</a>
</div>
</div>
</div>
<div class="grey-rule"></div>
<div class="social-link-group">
<a href="#" class="w-inline-block social-icon-link">
<img width="25" src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e964_social-03.svg">
</a>
<a href="#" class="w-inline-block social-icon-link">
<img width="25" src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e97c_social-07.svg">
</a>
<a href="#" class="w-inline-block social-icon-link">
<img width="25" src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e9c4_social-18.svg">
</a>
<a href="#" class="w-inline-block social-icon-link"><img width="25" src="https://daks2k3a4ib2z.cloudfront.net/574103e2762794412692e927/574103e3762794412692e990_social-09.svg">
</a>
</div>

<p class="built-with-webflow">Built with <a class="webflow-link" target="_blank" href-disabled="https://webflow.com" href="https://webflow.com">Webflow</a>
</p>

</div>
</div>
-->

</div>
</div>
</div>
</div>
<!-- -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<!-- -->



<!--[if lte IE 9]><script src="//cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif]-->
</body></html>