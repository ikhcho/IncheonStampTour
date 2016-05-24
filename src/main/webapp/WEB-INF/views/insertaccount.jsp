<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	String mem_id = request.getParameter("mem_id");
	String mem_password = request.getParameter("mem_password");
	String mem_repassword = request.getParameter("mem_repassword");
	String mem_name = request.getParameter("mem_name");
	String mem_email = request.getParameter("mem_email");
	String mem_phone = request.getParameter("mem_phone");
	
	
	String query = new String ();
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	int check_count = 0;
	if(mem_id !="")
	{
		if(mem_password.equals(mem_repassword))
		{
			try{
				Class.forName("org.gjt.mm.mysql.Driver");
			   } catch (ClassNotFoundException e) {
			     out.println(e);
			   }
			try {
				conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1/stamptour?useUnicode=true&characterEncoding=euckr","root","admin");
				stmt = conn.createStatement();
					query = "insert into account values( ?,?,?,?,?)";
					pstmt = conn.prepareStatement(query);
					
					pstmt.setString(1,mem_id);
					pstmt.setString(2,mem_password);
					pstmt.setString(3,mem_name);
					pstmt.setString(4,mem_email);
					pstmt.setString(5,mem_phone);
					
					pstmt.executeUpdate();
			}catch(SQLException e){
				out.println("<scrpt>alert('가입처리가 되지 않았습니다. 다시 시도해 주세요.'); history.back();</script>");
			}finally{
					conn.close();
				}
		}
		else
		{
			out.println("<script>alert('비밀번호를 확인해 주세요.');history.go(-1);</script>");
		}
	}
	else
	{
		out.println("<script>alert('아이디를 확인해 주세요.');history.go(-1);</script>");
	}
%>

<html>
<head>
<meta charset="utf-8">
<title>StampTour</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="resources/css/font-awesome.css" rel="stylesheet">
<link href="resources/mobile/jquery.mobile-1.4.5.min.css"
	rel="stylesheet" />
<link href="resources/mobile/jquery-ui.min.css" rel="stylesheet" />

<script src="resources/mobile/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
	$(document).bind("mobileinit", function(){
		$.mobile.ajaxLinksEnabled = false;
		$.mobile.ajaxFormsEnabled = false;
		$.mobile.ajaxEnabled = false;
	});
	</script>
<script src="resources/mobile/jquery.mobile-1.4.5.min.js"></script>
<script src="resources/mobile/jquery-ui.min.js"></script>

<style type="text/css">
#center{
	background-image: url("resources/img/Login_background.png");
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

<title>인천 스탬프 투어</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body>


<div data-role="page" data-theme="a" id="center" height="wrapped">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<center>
					<br/>
						<h3 class="text-center login-title" id="title" ><%= request.getParameter("mem_id") %>님의 회원가입이 완료되었습니다.</h3>
						<img src="resources/img/confirm.jpg" Style="width:80%"><br/>
						<a href="<%=request.getContextPath()%>/"> <button Style="width:60%">로그인</button></a>
					</center>
				</div>
			</div>
		</div>
	</div>
</body>
</html>