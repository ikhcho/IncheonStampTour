<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" import="java.util.*"%>

<%@ page import="com.stamp.stamp.StampVo" %>
<%@ page import="com.stamp.stamp.StampService" %>
	
<%
	StampVo sv = (StampVo) request.getAttribute("sv");
	String id = (String)session.getAttribute("Sid");
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;

	try{

		String jdbcURL="jdbc:mysql://localhost:3306/stamptour";
		String dbID="root";
		String dbPW="admin"; //비밀번호 입력
		String query="update stamp set p2=\"yes\" where Sid=\"" + id +"\"";
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(jdbcURL,dbID,dbPW);

		// 유적지 Stamp 하위 7개
	    stmt = con.createStatement();

	    stmt.executeUpdate(query);    
  
		stmt.close();
		con.close();


	}catch(Exception e){

	    out.println(e);

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
}
</style>


</head>
<body>
<div data-role="page" data-theme="a" id="background" height="wrapped">
		<div style="width:80%"class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<center>
						<br/>
						<h1 class="text-center login-title" id="title" >${sv.getTitle()}</h1>

						<br/>
						
						<div id="stamp">
							<iframe src="http://192.168.0.24" style="width:95%; height:400px"></iframe>
							<!-- <iframe src="http://iq.ifac.or.kr/treasure/view.php?no=5" style="width:95%; height:400px">></iframe> -->
							<a href="<%= request.getContextPath()%>/stamp?Sid=<%=session.getAttribute("Sid") %>"><p>스탬프 확인</p></a>
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
