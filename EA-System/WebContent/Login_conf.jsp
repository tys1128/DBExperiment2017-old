<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>登陆范例――用户名及密码固定</h1>
	<hr>
	<br>
	<br>
	<%
		// 接收请求的内容
		String name = request.getParameter("uname") ;
		String password = request.getParameter("upassword") ;

		// System.out.println(name) ;
		// System.out.println(password) ;
	%>
	<%
		// 判断用户名及密码
		// if("mldn"==name&&"lxh"==password)
		if("hr".equals(name)&&"hr".equals(password))		
		{
			// 合法用户
	%>
			<jsp:forward page="AdminHome.jsp"/>
	<%
		}
		else
		{
			// 非法用户
	%>
			<jsp:forward page="Login_failure.jsp"/>
	<%
		}
	%>
</body>
</html>