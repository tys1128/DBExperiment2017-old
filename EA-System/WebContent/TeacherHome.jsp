<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TeacherHome</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="libs/bootstrap-3.3.7-dist/js/jquery-3.2.1.js"></script>
<script src="libs/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<style type="text/css">
html {
	margin: 0;
	height: 100%;
}

body {
	margin: 0;
	height: 100%;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#example-navbar-collapse">
					<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> 教务系统</a>
			</div>
			
			<div class="collapse navbar-collapse" id="example-navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="button">
						<a href="iframe/teacher/jskb.jsp" target="fy1"> 查看课表 </a>
					</li>
					<li class="button">
						<a href="iframe/teacher/jskcxx.jsp" target="fy1"> 查看课程信息</a>
					</li>
					<li>
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">提交</button>
						</form>
					</li>
				</ul>
			</div>
		</div>

	</nav>
	<marquee><font size=+3 color=red>Hello, World</font></marquee>
	<div style="height: 100%">
		<iframe id="fy1" name="fy1" src="iframe/Info.jsp" width="80%" height="90%"></iframe>
		<iframe id="fy2" name="fy2" src="iframe/Info1.jsp" width="20%" height="90%" style="float:right"></iframe>
	</div>

</body>
</html>