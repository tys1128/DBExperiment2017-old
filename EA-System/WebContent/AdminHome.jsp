<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdminHome</title>
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
	<nav class="navbar navbar-default " role="navigation">
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
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							信息录入 <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="UploadFile.jsp" target="left-frame">文本文件（.txt）</a>
							</li>
							<li>
								<a href="#" target="left-frame">Excle文件</a>
							</li>

						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							查看或修改信息 <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="#" target="left-frame">教师</a>
							</li>
							<li>
								<a href="#" target="left-frame">学生</a>
							</li>

						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							发布信息<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="#" target="left-frame">对教师</a>
							</li>
							<li>
								<a href="#" target="left-frame">对学生</a>
							</li>
							<li>
								<a href="#" target="left-frame">对所有人</a>
							</li>
						</ul>
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
	<div style="height: 100%">
		<iframe id="left-frame" name="left-frame"src="iframe/Info.jsp" width="80%" height="100%"></iframe>
		<iframe id="right-frame" name="right-frame"src="iframe/Info1.jsp" width="20%" height="100%" align="right"></iframe>
	</div>

</body>
</html>