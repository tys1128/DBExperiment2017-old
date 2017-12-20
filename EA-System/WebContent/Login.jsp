<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆 教务系统</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="libs/bootstrap-3.3.7-dist/js/jquery-3.2.1.js"></script>
<script src="libs/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

<style type="text/css">
body {
	background-image: url('image/beijing.jpg');
}
marquee{
	font-family:"Comic Sans MS", cursive, sans-serif;
	font-size:30px
}
</style>
</head> 
<body>
	<div class="container">
		<h1 align="center" style="color: dimgray">教务系统</h1>

		<form class="form-group" action="LoginServlet" method="post" style="width: 30%; margin: auto;">
			<div class="input-group">
				<span class="input-group-addon">帐号</span>
				<input type="text" class="form-control " name="uname" autofocus>
			</div>
			<div style="color: gray">学生请输入学号；教师请输入职工号</div>
			<br />
			<div class="input-group">
				<span class="input-group-addon">密码</span>
				<input type="password" class="form-control" name="upassword">
			</div>
			<br> <br>
			<%
			//System.out.println(request.getAttribute("errors"));
				if (request.getAttribute("errors")!=null) {
			%>
			<div class="alert alert-warning">
				<a href="#" class="close" data-dismiss="alert"> &times; </a>
				<strong>抱歉！</strong>您的账号或密码不正确，请重新输入。
			</div>
			<%
				}
			%>
			<br> <br>
			<div align="center">
				<button type="submit" class="btn btn-default">登录</button>
			</div>
		</form>
		<div align="center">
			<br> <br>
			<marquee behavior="alternate" width=300 height=60 style="color: orange">欢迎登录</marquee>
		</div>
	</div>
</body>
</html>