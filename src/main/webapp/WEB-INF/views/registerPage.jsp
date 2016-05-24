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

<style type="text/css">
#center{
	background-image: url("resources/img/Login_background.png");
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

<html>

<head>
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
<div data-role="page" data-theme="a" id="center" height="wrapped">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<center>
					<br/>
						<h1 class="text-center login-title" id="title" >회원 가입</h1>

						<div style="width: 62%; margin-top: 20px;"class="account-wall">
							<form action = "insertaccount" name=regForm" method="post">
								<div id="input">
									<input name="mem_id" type="text" placeholder="아이디" required>
									<input name="mem_password" type="password" placeholder="패스워드" required>
									<input type="password" name="mem_repassword" placeholder="패스워드" required>
									<input type="text" name="mem_name" placeholder="이름">
									<input type="text" name="mem_email" placeholder="이메일">
									<input type="text" name="mem_phone" placeholder="전화번호">
								</div>
								<div id="submit">
									<input type="button" value="회원가입" onclick=submit()>
									<input type="reset" value="다시쓰기">
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
