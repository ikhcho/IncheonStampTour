<%@page import="com.stamp.data.TreasureVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE web-app PUBLIC "-//Sun Microsystems, Inc.//DTD Web Application 2.5//EN" "http://java.sun.com/dtd/web-app_2_3.dtd">


<%

Connection con = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try{

	String jdbcURL="jdbc:mysql://localhost:3306/stamptour";
	String dbID="root";
	String dbPW="admin"; //비밀번호 입력

	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(jdbcURL,dbID,dbPW);

	// 유적지 스탬프 상위 7개
    stmt = con.prepareStatement("select * from treasure order by stampNum+0 desc limit 7");

    stmt.executeQuery();    
  	rs = stmt.getResultSet();  

  	List<TreasureVo> list = new ArrayList<TreasureVo>();
  	
  	String left[] = {"14","49","78","60","20","25","80"};
  	String top[]  = {"18","12","23","49","65","95","92"};

  	int i=0;
    while(rs.next()){	    

    	TreasureVo vo = new TreasureVo();	  		

    		

    	vo.setTitle(rs.getString("title"));     	     
    	vo.setLink(rs.getString("link"));     
    	vo.setRegion(rs.getString("region"));    
    	vo.setGubun(rs.getString("gubun"));     
    	vo.setNumber(rs.getString("number"));    
    	vo.setLocation(rs.getString("location"));  
    	vo.setPoster(rs.getString("poster"));    
    	vo.setDescription(rs.getString("description")); 
    	vo.setStampNum(rs.getString("stampNum"));  
    	vo.setLeft(left[i]);
		vo.setTop(top[i]);
    	
		list.add(vo);
		i++;

    }

    rs.close();   
	stmt.close();
	con.close();

	pageContext.setAttribute("list", list);

	

}catch(Exception e){

    out.println(e);

}

%>


<html data-wf-site="574ae91e0d254d79455e59ab" data-wf-page="574ae91f0d254d79455e59ae" data-wf-status='1' data-wf-domain="leekb.webflow.io">

<head>
<!-- <meta charset="utf-8"> -->
<title>인천 스탬프 투어</title>

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

<script type="text/javascript" src="https://daks2k3a4ib2z.cloudfront.net/0globals/modernizr-2.7.1.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="https://daks2k3a4ib2z.cloudfront.net/img/favicon.ico">
<link rel="apple-touch-icon" href="https://daks2k3a4ib2z.cloudfront.net/img/webclip.png">
</head>

<body>
	<%
	Calendar today = Calendar.getInstance();	
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH)+1;
	int date = today.get(Calendar.DATE);		
	%>
	
	
	<div data-collapse="medium" data-animation="default" data-duration="400" data-contain="1" class="w-nav navigation-bar">
		<div class="w-container">
			
			<!-- home.jsp 대신 제일 첫 화면 경로 지정 해주시면됩니다. -->
			<a href="<%=request.getContextPath()%>/stamp_course %>" class="w-nav-brand brand-link"><h1 class="brand-text">오늘의 추천코스</h1></a>
			<nav role="navigation" class="w-nav-menu navigation-menu">

				<!-- home link -->
				<a href="<%=request.getContextPath()%>/home?log=<%=session.getAttribute("log") %>" class="w-nav-link navigation-link">메인화면</a>
				
				<!-- about link -->
				<a href="<%=request.getContextPath()%>/place" class="w-nav-link navigation-link">추천 여행지</a>
				
				<!-- contact link -->
				<a href="<%=request.getContextPath()%>/restaurant" class="w-nav-link navigation-link">맛집</a>
				
				<a href="<%=request.getContextPath()%>/stamp?Sid=<%=session.getAttribute("Sid") %>" class="w-nav-link navigation-link">스탬프</a>
				
				<!-- contact link -->
				<a href="<%=request.getContextPath()%>/recommend_course" class="w-nav-link navigation-link">이달의 추천 코스</a>
				</nav>
				
			</nav>
			<div class="w-nav-button hamburger-button">
				<div class="w-icon-nav-menu"></div>
			</div>
		</div>
	</div>	
	
	<div class="w-section section">
		<div class="w-container">
			
			
			<div style="position : relative">
			
			
				<!-- course 이미지 -->
				<img width="80%" height="60%" src="resources/img/course2.jpg" style="position: relative;">


				<!-- 유적지 제목 정보 -->
				<c:forEach var="list" items="${list }">
					<a href="${list.link }" style="position: absolute; left: ${list.left}%; top: ${list.top }%;">
						<input type="button" value="${list.title }" style="background-color : rgba(0,0,0,0); text-align: center; color: black; font-size: 10pt;">
					</a>						
				</c:forEach>

			</div>
			
			<!-- 지도 이동 버튼  -->
			</br>
			
			<a href="http://map.naver.com/" target="_blank" title="네이버 맵 바로가기"><img src="resources/img/naver.png"></a>
			
		</div>
	</div>
	
	 

	
	 
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<script src="/resources/js/common.js"></script>
	
</body>
</html>
