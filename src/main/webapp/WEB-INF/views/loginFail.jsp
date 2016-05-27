<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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


<script type="text/javascript">
	function loginCheck() {
		var form = document.f;
		form.action = "<%=request.getContextPath()%>/home";
		form.submit();
	}
	function RegisterCheck() {
		location.replace("<%=request.getContextPath()%>/registerPage");
	}
</script>
<style type="text/css">

#center{
	background-image: url("resources/img/Login_background.png");
	background-size: cover;
	background-repeat: no-repeat;
}
#home{
	float:right; 
	width:70%; 
	height:20px;
}

</style>

</head>
<body>
	<div data-role="page" data-theme="a" id="center" height="wrapped">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<center>
						<h1 class="text-center login-title" id="title" >인천 스탬프 투어</h1>
						
						<img src="resources/img/Login_mascot.png" style="width: 70%"><br/>
					
						<a href="<%=request.getContextPath()%>/home?log=f" id="home"><font size="2px">로그인 없이 이용하기</font></a>
					
						
						<div style="width: 70%; margin-top: 20px;"class="account-wall">
							<form method="post" class="signin" name="f">	
								<div id="input">
									<input id="id" name="id" type="text" class="form-control"
										placeholder="아이디" autocomplete="on" required autofocus>
									<input id="password" name="password" type="password"
										class="form-control" placeholder="패스워드" required>
								</div>
								<div id="submit">
									<button class="btn btn-lg btn-primary btn-block"
										onclick="loginCheck()">Login</button>
									<button class="btn btn-lg btn-primary btn-block"
										onclick="RegisterCheck()">Register</button>
								</div>
							</form>
						</div>

					</center>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


<script>
alert("등록되지 않은 회원입니다.");
history.go(-1);
</script>
