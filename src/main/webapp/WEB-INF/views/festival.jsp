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

<style>
.shape {
    border-style: solid;
    border-width: 0 70px 40px 0;
    float: right;
    height: 0px;
    width: 0px;
    -ms-transform: rotate(360deg); /* IE 9 */
    -o-transform: rotate(360deg); /* Opera 10.5 */
    -webkit-transform: rotate(360deg); /* Safari and Chrome */
    transform: rotate(360deg);
}
.listing {
    background: #fff;
    border: 1px solid #ddd;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    margin: 5px 0;
    overflow: hidden;
}
.listing:hover {
    -webkit-transform: scale(1.1);
    -moz-transform: scale(1.1);
    -ms-transform: scale(1.1);
    -o-transform: scale(1.1);
    transform: rotate scale(1.1);
    -webkit-transition: all 0.4s ease-in-out;
    -moz-transition: all 0.4s ease-in-out;
    -o-transition: all 0.4s ease-in-out;
    transition: all 0.4s ease-in-out;
}
.shape {
    border-color: rgba(255,255,255,0) #d9534f rgba(255,255,255,0) rgba(255,255,255,0);
}
.listing-radius {
    border-radius: 7px;
}
.listing-danger {
    border-color: #d9534f;
}
.listing-danger .shape {
    border-color: transparent #d9533f transparent transparent;
}
.listing-success {
    border-color: #5cb85c;
}
.listing-success .shape {
    border-color: transparent #5cb75c transparent transparent;
}
.listing-default {
    border-color: #999999;
}
.listing-default .shape {
    border-color: transparent #999999 transparent transparent;
}
.listing-primary {
    border-color: #428bca;
}
.listing-primary .shape {
    border-color: transparent #318bca transparent transparent;
}
.listing-info {
    border-color: #5bc0de;
}
.listing-info .shape {
    border-color: transparent #5bc0de transparent transparent;
}
.listing-warning {
    border-color: #f0ad4e;
}
.listing-warning .shape {
    border-color: transparent #f0ad4e transparent transparent;
}
.shape-text {
    color: #fff;
    font-size: 12px;
    font-weight: bold;
    position: relative;
    right: -40px;
    top: 2px;
    white-space: nowrap;
    -ms-transform: rotate(30deg); /* IE 9 */
    -o-transform: rotate(360deg); /* Opera 10.5 */
    -webkit-transform: rotate(30deg); /* Safari and Chrome */
    transform: rotate(30deg);
}
.listing-content {
    padding: 0 20px 10px;
}

</style>

</head>
<body>


<div data-role="page" data-theme="a" id="background" height="wrapped">
		<div Style="width:80%"class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
					<br/><br/>
					<h1 class="text-center login-title" id="title" ><%=cal.get(Calendar.MONTH)+1 %>월달 축제</h1>
					<br/>
	 
		        </div>
		        
		        <c:forEach var="val" items="${fv}">
		     <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		            
		            <div class="listing listing-radius listing-success">
		                
		                <div class="shape">
		                    <div class="shape-text">축제</div>
		                </div>
		                <div class="listing-content">
		                    <h5 class="lead">${val.title}</h5>
		                    <p>${val.organ}<br/>
		                    ${val.link}</p>
		                </div>
		                
		            </div>
		        </div>
				</c:forEach>
				 <c:forEach var="val2" items="${cv}">
				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		            <img src="${val2.posterThumb }">
		            <div class="listing listing-danger">
		                <div class="shape">
		                    <div class="shape-text">문화행사</div>
		                </div>
		                <div class="listing-content">
		                    <h5 class="lead">${val2.title}</h5>
		                    <p>${val2.place}<br/>
		                    ${val2.link}</p>
		                </div>
		            </div>
		        </div>
				</c:forEach>
				
				 <!-- 
		            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		            <div class="listing listing-default">
		                <div class="shape">
		                    <div class="shape-text">축제</div>
		                </div>
		                <div class="listing-content">
		                    <h3 class="lead"><% out.println(fv.get(1).getTitle());%></h3>
		                    <p><% out.println(fv.get(1).getDescription());%></p>
		                </div>
		            </div> 
		            </div>
		         
		        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		            <div class="listing listing-radius listing-success">
		                <div class="shape">
		                    <div class="shape-text">축제</div>
		                </div>
		                <div class="listing-content">
		                    <h3 class="lead"><% out.println(fv.get(1).getTitle());%></h3>
		                    <p><% out.println(fv.get(1).getDescription());%></p>
		                </div>
		            </div>
		        </div>
		        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		            <div class="listing listing-danger">
		                <div class="shape">
		                    <div class="shape-text">문화행사</div>
		                </div>
		                <div class="listing-content">
		                    <h3 class="lead"><% out.println(cv.get(1).getTitle());%></h3>
		                    <p><% out.println(cv.get(1).getDescription());%></p>
		                </div>
		            </div>
		        </div>
		           -->
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
</body>
</html>
